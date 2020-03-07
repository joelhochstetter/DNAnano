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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.303062, 52.247574, 49.421867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512314, 52.423492, 49.713871>,  <36.637863, 52.529041, 49.889072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512314, 52.423492, 49.713871>,  <36.303062, 52.247574, 49.421867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512314, 52.423492, 49.713871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843610, -0.388898, -0.370243,
		0.121069, 0.809530, -0.574459,
		0.523129, 0.439794, 0.730011,
		36.669254, 52.555431, 49.932873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777786, 52.664036, 49.162792>,  <36.303062, 52.247574, 49.421867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777786, 52.664036, 49.162792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917236, 52.553787, 49.521118>,  <37.000908, 52.487640, 49.736115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917236, 52.553787, 49.521118>,  <36.777786, 52.664036, 49.162792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917236, 52.553787, 49.521118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925337, -0.050756, -0.375733,
		0.149027, 0.959926, 0.237345,
		0.348629, -0.275619, 0.895819,
		37.021824, 52.471100, 49.789864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378548, 52.863338, 48.953411>,  <36.777786, 52.664036, 49.162792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378548, 52.863338, 48.953411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447849, 52.713131, 49.317604>,  <37.489429, 52.623009, 49.536118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447849, 52.713131, 49.317604>,  <37.378548, 52.863338, 48.953411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447849, 52.713131, 49.317604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983801, 0.022759, -0.177816,
		0.046051, 0.926536, 0.373376,
		0.173250, -0.375517, 0.910479,
		37.499825, 52.600475, 49.590748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940193, 53.262558, 49.435188>,  <37.378548, 52.863338, 48.953411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940193, 53.262558, 49.435188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906033, 52.873520, 49.521683>,  <37.885536, 52.640095, 49.573582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906033, 52.873520, 49.521683>,  <37.940193, 53.262558, 49.435188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906033, 52.873520, 49.521683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968865, -0.131688, -0.209664,
		0.232395, 0.191600, 0.953563,
		-0.085401, -0.972598, 0.216238,
		37.880413, 52.581741, 49.586555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497910, 53.237171, 49.842827>,  <37.940193, 53.262558, 49.435188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497910, 53.237171, 49.842827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402283, 52.879276, 49.691940>,  <38.344906, 52.664539, 49.601406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402283, 52.879276, 49.691940>,  <38.497910, 53.237171, 49.842827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402283, 52.879276, 49.691940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970542, -0.232168, -0.064395,
		-0.029962, -0.381502, 0.923882,
		-0.239063, -0.894737, -0.377220,
		38.330563, 52.610855, 49.578773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944996, 52.703789, 50.175594>,  <38.497910, 53.237171, 49.842827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944996, 52.703789, 50.175594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854713, 52.634407, 49.792141>,  <38.800545, 52.592777, 49.562069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854713, 52.634407, 49.792141>,  <38.944996, 52.703789, 50.175594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854713, 52.634407, 49.792141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972453, -0.098942, -0.211056,
		-0.058239, -0.979858, 0.191011,
		-0.225704, -0.173458, -0.958629,
		38.787003, 52.582371, 49.504551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138973, 51.975452, 49.926918>,  <38.944996, 52.703789, 50.175594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138973, 51.975452, 49.926918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146530, 52.292484, 49.683128>,  <39.151066, 52.482704, 49.536854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146530, 52.292484, 49.683128>,  <39.138973, 51.975452, 49.926918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146530, 52.292484, 49.683128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999391, -0.032857, -0.011744,
		-0.029334, -0.608880, -0.792720,
		0.018896, 0.792582, -0.609473,
		39.152199, 52.530258, 49.500286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734528, 51.995033, 49.347179>,  <39.138973, 51.975452, 49.926918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734528, 51.995033, 49.347179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627281, 52.377983, 49.390152>,  <39.562935, 52.607754, 49.415936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627281, 52.377983, 49.390152>,  <39.734528, 51.995033, 49.347179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627281, 52.377983, 49.390152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937396, 0.284984, -0.200184,
		-0.222268, 0.047032, -0.973851,
		-0.268116, 0.957378, 0.107431,
		39.546844, 52.665195, 49.422382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922379, 52.409466, 48.811218>,  <39.734528, 51.995033, 49.347179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922379, 52.409466, 48.811218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926826, 52.620285, 49.151123>,  <39.929493, 52.746777, 49.355064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926826, 52.620285, 49.151123>,  <39.922379, 52.409466, 48.811218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926826, 52.620285, 49.151123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999923, -0.010567, -0.006527,
		0.005539, 0.849768, -0.527128,
		0.011117, 0.527051, 0.849761,
		39.930161, 52.778400, 49.406052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320984, 53.072319, 48.685787>,  <39.922379, 52.409466, 48.811218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320984, 53.072319, 48.685787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348137, 52.909943, 49.050339>,  <40.364429, 52.812515, 49.269070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348137, 52.909943, 49.050339>,  <40.320984, 53.072319, 48.685787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348137, 52.909943, 49.050339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997078, -0.004481, -0.076260,
		0.035041, 0.913888, 0.404452,
		0.067881, -0.405942, 0.911374,
		40.368500, 52.788158, 49.323750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864880, 53.380886, 48.968925>,  <40.320984, 53.072319, 48.685787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864880, 53.380886, 48.968925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824696, 53.042969, 49.179153>,  <40.800587, 52.840218, 49.305290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824696, 53.042969, 49.179153>,  <40.864880, 53.380886, 48.968925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824696, 53.042969, 49.179153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994875, -0.079204, 0.062846,
		-0.011465, 0.529192, 0.848425,
		-0.100457, -0.844797, 0.525572,
		40.794559, 52.789528, 49.336826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478233, 53.328808, 49.336216>,  <40.864880, 53.380886, 48.968925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478233, 53.328808, 49.336216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327980, 52.959297, 49.365997>,  <41.237827, 52.737591, 49.383865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327980, 52.959297, 49.365997>,  <41.478233, 53.328808, 49.336216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327980, 52.959297, 49.365997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919344, -0.361268, 0.155861,
		-0.117082, 0.126995, 0.984969,
		-0.375631, -0.923774, 0.074454,
		41.215290, 52.682163, 49.388332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443527, 53.167934, 50.057724>,  <41.478233, 53.328808, 49.336216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443527, 53.167934, 50.057724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515381, 52.896427, 49.772907>,  <41.558495, 52.733521, 49.602016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515381, 52.896427, 49.772907>,  <41.443527, 53.167934, 50.057724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515381, 52.896427, 49.772907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940254, -0.094337, 0.327142,
		-0.289227, -0.728266, 0.621270,
		0.179637, -0.678770, -0.712040,
		41.569271, 52.692795, 49.559296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645908, 52.449890, 50.361694>,  <41.443527, 53.167934, 50.057724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645908, 52.449890, 50.361694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794571, 52.517532, 49.996559>,  <41.883766, 52.558117, 49.777477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794571, 52.517532, 49.996559>,  <41.645908, 52.449890, 50.361694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794571, 52.517532, 49.996559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897418, -0.317229, 0.306605,
		-0.237729, -0.933149, -0.269661,
		0.371652, 0.169110, -0.912840,
		41.906067, 52.568264, 49.722706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959911, 51.841259, 50.110542>,  <41.645908, 52.449890, 50.361694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959911, 51.841259, 50.110542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106884, 52.203552, 50.026024>,  <42.195068, 52.420929, 49.975311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106884, 52.203552, 50.026024>,  <41.959911, 51.841259, 50.110542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106884, 52.203552, 50.026024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914907, -0.311169, 0.257136,
		0.167146, -0.287800, -0.942992,
		0.367434, 0.905729, -0.211299,
		42.217113, 52.475269, 49.962635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459824, 51.748672, 49.625660>,  <41.959911, 51.841259, 50.110542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459824, 51.748672, 49.625660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559879, 52.095219, 49.798565>,  <42.619911, 52.303146, 49.902306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559879, 52.095219, 49.798565>,  <42.459824, 51.748672, 49.625660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559879, 52.095219, 49.798565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899300, -0.373313, 0.227810,
		0.358734, 0.331745, -0.872500,
		0.250141, 0.866362, 0.432258,
		42.634922, 52.355125, 49.928242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121326, 51.999950, 49.328476>,  <42.459824, 51.748672, 49.625660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121326, 51.999950, 49.328476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099873, 52.133644, 49.704861>,  <43.087002, 52.213860, 49.930691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099873, 52.133644, 49.704861>,  <43.121326, 51.999950, 49.328476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099873, 52.133644, 49.704861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899162, -0.393688, 0.191094,
		0.434316, 0.856326, -0.279419,
		-0.053635, 0.334239, 0.940961,
		43.083782, 52.233917, 49.987148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641357, 52.572857, 49.410091>,  <43.121326, 51.999950, 49.328476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641357, 52.572857, 49.410091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545631, 52.352837, 49.730133>,  <43.488194, 52.220825, 49.922157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545631, 52.352837, 49.730133>,  <43.641357, 52.572857, 49.410091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545631, 52.352837, 49.730133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970146, -0.168813, 0.174125,
		0.039290, 0.817889, 0.574032,
		-0.239319, -0.550054, 0.800105,
		43.473835, 52.187820, 49.970165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940121, 52.314491, 50.025223>,  <43.641357, 52.572857, 49.410091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940121, 52.314491, 50.025223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.240570, 52.095089, 49.878277>,  <44.420841, 51.963448, 49.790112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.240570, 52.095089, 49.878277>,  <43.940121, 52.314491, 50.025223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.240570, 52.095089, 49.878277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650045, 0.517463, 0.556483,
		-0.115140, -0.656788, 0.745233,
		0.751122, -0.548508, -0.367361,
		44.465908, 51.930538, 49.768070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253456, 52.119465, 50.633083>,  <43.940121, 52.314491, 50.025223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253456, 52.119465, 50.633083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523151, 52.048622, 50.346298>,  <44.684971, 52.006119, 50.174229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523151, 52.048622, 50.346298>,  <44.253456, 52.119465, 50.633083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523151, 52.048622, 50.346298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706754, 0.436368, 0.556849,
		0.214240, -0.882166, 0.419385,
		0.674240, -0.177103, -0.716962,
		44.725422, 51.995491, 50.131210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965149, 51.834614, 50.900806>,  <44.253456, 52.119465, 50.633083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965149, 51.834614, 50.900806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.019882, 52.028839, 50.555435>,  <45.052723, 52.145374, 50.348213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.019882, 52.028839, 50.555435>,  <44.965149, 51.834614, 50.900806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.019882, 52.028839, 50.555435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830644, 0.418666, 0.367082,
		0.539728, -0.767431, -0.346039,
		0.136835, 0.485559, -0.863428,
		45.060932, 52.174507, 50.296406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695126, 51.685505, 50.712196>,  <44.965149, 51.834614, 50.900806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.695126, 51.685505, 50.712196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.562263, 52.005486, 50.512299>,  <45.482548, 52.197475, 50.392361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.562263, 52.005486, 50.512299>,  <45.695126, 51.685505, 50.712196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.562263, 52.005486, 50.512299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850124, 0.483422, 0.208786,
		0.408608, -0.355499, -0.840631,
		-0.332156, 0.799953, -0.499748,
		45.462616, 52.245472, 50.362373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.065548, 51.970562, 50.081154>,  <45.695126, 51.685505, 50.712196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.065548, 51.970562, 50.081154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875145, 52.272903, 50.260975>,  <45.760902, 52.454308, 50.368870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875145, 52.272903, 50.260975>,  <46.065548, 51.970562, 50.081154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875145, 52.272903, 50.260975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875981, 0.452802, 0.166215,
		-0.077926, 0.472923, -0.877651,
		-0.476009, 0.755853, 0.449557,
		45.732342, 52.499660, 50.395844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.554569, 52.496239, 50.051796>,  <46.065548, 51.970562, 50.081154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.554569, 52.496239, 50.051796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.278679, 52.595730, 50.323799>,  <46.113144, 52.655422, 50.487000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.278679, 52.595730, 50.323799>,  <46.554569, 52.496239, 50.051796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.278679, 52.595730, 50.323799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702111, 0.459271, 0.544160,
		-0.176963, 0.852764, -0.491403,
		-0.689728, 0.248723, 0.680009,
		46.071762, 52.670345, 50.527802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.475204, 53.220577, 50.054058>,  <46.554569, 52.496239, 50.051796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.475204, 53.220577, 50.054058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.389347, 53.065300, 50.412552>,  <46.337833, 52.972134, 50.627647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.389347, 53.065300, 50.412552>,  <46.475204, 53.220577, 50.054058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.389347, 53.065300, 50.412552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736712, 0.538107, 0.409507,
		-0.641237, 0.748165, 0.170485,
		-0.214640, -0.388190, 0.896236,
		46.324955, 52.948845, 50.681423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246063, 53.735291, 50.638165>,  <46.475204, 53.220577, 50.054058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.246063, 53.735291, 50.638165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.433903, 53.415352, 50.787682>,  <46.546604, 53.223389, 50.877392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.433903, 53.415352, 50.787682>,  <46.246063, 53.735291, 50.638165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.433903, 53.415352, 50.787682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690866, 0.596514, 0.408505,
		-0.549715, 0.066408, 0.832709,
		0.469594, -0.799851, 0.373791,
		46.574780, 53.175396, 50.899818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342907, 53.728294, 51.475227>,  <46.246063, 53.735291, 50.638165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342907, 53.728294, 51.475227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639431, 53.547096, 51.277138>,  <46.817345, 53.438377, 51.158283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639431, 53.547096, 51.277138>,  <46.342907, 53.728294, 51.475227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.639431, 53.547096, 51.277138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662973, 0.609136, 0.435225,
		0.104503, -0.650958, 0.751886,
		0.741314, -0.452997, -0.495224,
		46.861824, 53.411198, 51.128571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.842907, 53.608311, 51.972301>,  <46.342907, 53.728294, 51.475227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.842907, 53.608311, 51.972301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983627, 53.630825, 51.598549>,  <47.068062, 53.644333, 51.374298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983627, 53.630825, 51.598549>,  <46.842907, 53.608311, 51.972301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.983627, 53.630825, 51.598549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593440, 0.758550, 0.269130,
		0.723921, -0.649180, 0.233461,
		0.351806, 0.056284, -0.934379,
		47.089169, 53.647709, 51.318233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.568466, 53.524521, 51.872860>,  <46.842907, 53.608311, 51.972301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.568466, 53.524521, 51.872860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.519417, 53.719788, 51.527222>,  <47.489986, 53.836948, 51.319839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.519417, 53.719788, 51.527222>,  <47.568466, 53.524521, 51.872860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.519417, 53.719788, 51.527222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791844, 0.572991, 0.211340,
		0.598287, -0.658311, -0.456815,
		-0.122624, 0.488168, -0.864092,
		47.482628, 53.866238, 51.267994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.235256, 53.738960, 51.675690>,  <47.568466, 53.524521, 51.872860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.235256, 53.738960, 51.675690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.975155, 53.981239, 51.492256>,  <47.819096, 54.126606, 51.382198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.975155, 53.981239, 51.492256>,  <48.235256, 53.738960, 51.675690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.975155, 53.981239, 51.492256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649823, 0.756145, 0.077300,
		0.393575, -0.247732, -0.885284,
		-0.650253, 0.605701, -0.458581,
		47.780079, 54.162949, 51.354683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.423805, 54.406940, 51.725540>,  <48.235256, 53.738960, 51.675690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.423805, 54.406940, 51.725540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.143894, 54.530514, 51.467896>,  <47.975948, 54.604656, 51.313309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.143894, 54.530514, 51.467896>,  <48.423805, 54.406940, 51.725540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.143894, 54.530514, 51.467896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364688, 0.929800, 0.049749,
		0.614263, -0.200086, -0.763313,
		-0.699774, 0.308930, -0.644111,
		47.933964, 54.623192, 51.274662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.453365, 54.790524, 52.437813>,  <48.423805, 54.406940, 51.725540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.453365, 54.790524, 52.437813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.687168, 54.943192, 52.151405>,  <48.827450, 55.034790, 51.979561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.687168, 54.943192, 52.151405>,  <48.453365, 54.790524, 52.437813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.687168, 54.943192, 52.151405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309904, 0.920570, 0.237718,
		0.749875, 0.082949, 0.656359,
		0.584506, 0.381667, -0.716019,
		48.862518, 55.057690, 51.936600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.025463, 54.942390, 52.909740>,  <48.453365, 54.790524, 52.437813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.025463, 54.942390, 52.909740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.072918, 54.894295, 53.303993>,  <48.101391, 54.865437, 53.540546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.072918, 54.894295, 53.303993>,  <48.025463, 54.942390, 52.909740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.072918, 54.894295, 53.303993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676103, 0.736758, 0.008497,
		-0.727194, 0.665380, 0.168697,
		0.118635, -0.120236, 0.985631,
		48.108509, 54.858223, 53.599682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.897766, 55.565407, 53.194756>,  <48.025463, 54.942390, 52.909740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.897766, 55.565407, 53.194756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.133213, 55.359020, 53.443691>,  <48.274483, 55.235188, 53.593052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.133213, 55.359020, 53.443691>,  <47.897766, 55.565407, 53.194756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.133213, 55.359020, 53.443691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701058, 0.709134, -0.075147,
		-0.402549, 0.480530, 0.779132,
		0.588619, -0.515966, 0.622340,
		48.309799, 55.204231, 53.630394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.107513, 56.080730, 53.659813>,  <47.897766, 55.565407, 53.194756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.107513, 56.080730, 53.659813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.358032, 55.769653, 53.638107>,  <48.508343, 55.583008, 53.625084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.358032, 55.769653, 53.638107>,  <48.107513, 56.080730, 53.659813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.358032, 55.769653, 53.638107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777900, 0.628003, -0.021977,
		0.051168, -0.028446, 0.998285,
		0.626301, -0.777690, -0.054262,
		48.545921, 55.536346, 53.621830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.542503, 55.879322, 54.238205>,  <48.107513, 56.080730, 53.659813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.542503, 55.879322, 54.238205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.736698, 55.747681, 53.914230>,  <48.853214, 55.668697, 53.719845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.736698, 55.747681, 53.914230>,  <48.542503, 55.879322, 54.238205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.736698, 55.747681, 53.914230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745082, 0.640396, 0.186404,
		0.457333, -0.693964, 0.556112,
		0.485490, -0.329100, -0.809934,
		48.882343, 55.648952, 53.671249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.174610, 55.605556, 54.514404>,  <48.542503, 55.879322, 54.238205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.174610, 55.605556, 54.514404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.167763, 55.751026, 54.141857>,  <49.163654, 55.838306, 53.918327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.167763, 55.751026, 54.141857>,  <49.174610, 55.605556, 54.514404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.167763, 55.751026, 54.141857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728432, 0.642622, 0.237536,
		0.684904, -0.674374, -0.275911,
		-0.017119, 0.363672, -0.931370,
		49.162628, 55.860126, 53.862446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.330822, 55.042206, 53.985809>,  <49.174610, 55.605556, 54.514404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.330822, 55.042206, 53.985809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.620560, 54.766434, 53.984138>,  <49.794403, 54.600971, 53.983135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.620560, 54.766434, 53.984138>,  <49.330822, 55.042206, 53.985809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.620560, 54.766434, 53.984138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619702, 0.648399, 0.442208,
		-0.302160, -0.322900, 0.896903,
		0.724340, -0.689430, -0.004181,
		49.837860, 54.559605, 53.982883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.673191, 55.103188, 54.645687>,  <49.330822, 55.042206, 53.985809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.673191, 55.103188, 54.645687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.895866, 54.948246, 54.351730>,  <50.029472, 54.855282, 54.175358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.895866, 54.948246, 54.351730>,  <49.673191, 55.103188, 54.645687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.895866, 54.948246, 54.351730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677614, 0.723482, 0.131957,
		0.480564, -0.571429, 0.665227,
		0.556684, -0.387353, -0.734888,
		50.062870, 54.832039, 54.131264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.400696, 54.711472, 54.784111>,  <49.673191, 55.103188, 54.645687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.400696, 54.711472, 54.784111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.324959, 54.938671, 54.463730>,  <50.279514, 55.074989, 54.271500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.324959, 54.938671, 54.463730>,  <50.400696, 54.711472, 54.784111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.324959, 54.938671, 54.463730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776280, 0.586096, 0.232122,
		0.601281, -0.577812, -0.551901,
		-0.189344, 0.568000, -0.800952,
		50.268154, 55.109070, 54.223446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.076618, 54.778015, 54.489288>,  <50.400696, 54.711472, 54.784111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.076618, 54.778015, 54.489288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.837826, 55.087143, 54.403160>,  <50.694550, 55.272621, 54.351482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.837826, 55.087143, 54.403160>,  <51.076618, 54.778015, 54.489288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.837826, 55.087143, 54.403160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767545, 0.628290, 0.126990,
		0.233421, -0.089454, -0.968252,
		-0.596984, 0.772819, -0.215316,
		50.658730, 55.318989, 54.338566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.257343, 55.211258, 53.946671>,  <51.076618, 54.778015, 54.489288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.257343, 55.211258, 53.946671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.055439, 55.427406, 54.215954>,  <50.934296, 55.557095, 54.377525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.055439, 55.427406, 54.215954>,  <51.257343, 55.211258, 53.946671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.055439, 55.427406, 54.215954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839385, 0.489361, 0.236557,
		-0.201612, 0.684486, -0.700593,
		-0.504763, 0.540375, 0.673209,
		50.904011, 55.589520, 54.417915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.809334, 55.469162, 54.260876>,  <51.257343, 55.211258, 53.946671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.809334, 55.469162, 54.260876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.495430, 55.666199, 54.411346>,  <51.307087, 55.784420, 54.501629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.495430, 55.666199, 54.411346>,  <51.809334, 55.469162, 54.260876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.495430, 55.666199, 54.411346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612578, 0.708807, 0.349773,
		-0.094345, 0.504926, -0.857991,
		-0.784759, 0.492587, 0.376179,
		51.260002, 55.813976, 54.524200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.910637, 56.168949, 54.164024>,  <51.809334, 55.469162, 54.260876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.910637, 56.168949, 54.164024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.695942, 56.095940, 54.493534>,  <51.567127, 56.052135, 54.691238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.695942, 56.095940, 54.493534>,  <51.910637, 56.168949, 54.164024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.695942, 56.095940, 54.493534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671787, 0.498279, 0.548106,
		-0.510509, 0.847588, -0.144829,
		-0.536734, -0.182519, 0.823774,
		51.534924, 56.041183, 54.740665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.668484, 56.818119, 54.475395>,  <51.910637, 56.168949, 54.164024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.668484, 56.818119, 54.475395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.744331, 56.523262, 54.734829>,  <51.789841, 56.346348, 54.890488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.744331, 56.523262, 54.734829>,  <51.668484, 56.818119, 54.475395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.744331, 56.523262, 54.734829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579976, 0.617101, 0.531803,
		-0.792257, 0.275319, 0.544544,
		0.189623, -0.737147, 0.648581,
		51.801220, 56.302116, 54.929405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.320751, 57.055008, 54.912701>,  <51.668484, 56.818119, 54.475395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.320751, 57.055008, 54.912701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.279503, 56.982517, 55.303909>,  <52.254753, 56.939022, 55.538635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.279503, 56.982517, 55.303909>,  <52.320751, 57.055008, 54.912701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.279503, 56.982517, 55.303909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973700, -0.219223, 0.062047,
		0.203160, 0.958697, 0.199063,
		-0.103123, -0.181222, 0.978020,
		52.248566, 56.928150, 55.597317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.617905, 57.629162, 55.459354>,  <52.320751, 57.055008, 54.912701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.617905, 57.629162, 55.459354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.619053, 57.242355, 55.561241>,  <52.619743, 57.010273, 55.622372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.619053, 57.242355, 55.561241>,  <52.617905, 57.629162, 55.459354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.619053, 57.242355, 55.561241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967074, 0.067508, 0.245379,
		-0.254480, 0.245623, 0.935366,
		0.002874, -0.967012, 0.254715,
		52.619915, 56.952251, 55.637657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.647331, 57.490101, 56.258762>,  <52.617905, 57.629162, 55.459354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.647331, 57.490101, 56.258762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.821133, 57.226559, 56.013123>,  <52.925415, 57.068432, 55.865738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.821133, 57.226559, 56.013123>,  <52.647331, 57.490101, 56.258762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.821133, 57.226559, 56.013123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838598, 0.047204, 0.542702,
		-0.328575, -0.750787, 0.573025,
		0.434503, -0.658855, -0.614099,
		52.951485, 57.028904, 55.828892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.891720, 56.970093, 56.680454>,  <52.647331, 57.490101, 56.258762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.891720, 56.970093, 56.680454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.121117, 57.041183, 56.360573>,  <53.258755, 57.083839, 56.168644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.121117, 57.041183, 56.360573>,  <52.891720, 56.970093, 56.680454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.121117, 57.041183, 56.360573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809174, 0.029455, 0.586830,
		0.127851, -0.983639, -0.126921,
		0.573490, 0.177728, -0.799701,
		53.293163, 57.094501, 56.120663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.545376, 56.551315, 56.611393>,  <52.891720, 56.970093, 56.680454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.545376, 56.551315, 56.611393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.655987, 56.888077, 56.426033>,  <53.722355, 57.090134, 56.314819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.655987, 56.888077, 56.426033>,  <53.545376, 56.551315, 56.611393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.655987, 56.888077, 56.426033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772993, 0.091633, 0.627761,
		0.570974, -0.531798, -0.625443,
		0.276531, 0.841899, -0.463396,
		53.738945, 57.140648, 56.287014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.249977, 56.532879, 56.426697>,  <53.545376, 56.551315, 56.611393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.249977, 56.532879, 56.426697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.204536, 56.927864, 56.470528>,  <54.177273, 57.164856, 56.496826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.204536, 56.927864, 56.470528>,  <54.249977, 56.532879, 56.426697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.204536, 56.927864, 56.470528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823945, 0.032006, 0.565766,
		0.555167, 0.154553, -0.817253,
		-0.113598, 0.987466, 0.109575,
		54.170456, 57.224102, 56.503399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.832813, 56.929585, 56.255219>,  <54.249977, 56.532879, 56.426697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.832813, 56.929585, 56.255219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.640388, 57.169395, 56.511078>,  <54.524933, 57.313282, 56.664593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.640388, 57.169395, 56.511078>,  <54.832813, 56.929585, 56.255219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.640388, 57.169395, 56.511078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874537, 0.277127, 0.397978,
		0.061334, 0.750847, -0.657622,
		-0.481065, 0.599524, 0.639646,
		54.496067, 57.349251, 56.702972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.990410, 57.704620, 56.123749>,  <54.832813, 56.929585, 56.255219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.990410, 57.704620, 56.123749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.922623, 57.601349, 56.504196>,  <54.881950, 57.539387, 56.732464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.922623, 57.601349, 56.504196>,  <54.990410, 57.704620, 56.123749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.922623, 57.601349, 56.504196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904599, 0.342259, 0.254084,
		-0.391128, 0.903439, 0.175549,
		-0.169466, -0.258181, 0.951117,
		54.871784, 57.523895, 56.789532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.726192, 57.267036, 55.955860>,  <54.990410, 57.704620, 56.123749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.726192, 57.267036, 55.955860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.728905, 56.923855, 55.750389>,  <55.730534, 56.717945, 55.627106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.728905, 56.923855, 55.750389>,  <55.726192, 57.267036, 55.955860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.728905, 56.923855, 55.750389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741575, -0.340293, 0.578158,
		-0.670835, -0.384852, 0.633931,
		0.006783, -0.857956, -0.513678,
		55.730938, 56.666470, 55.596287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.798779, 56.755417, 56.469090>,  <55.726192, 57.267036, 55.955860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.798779, 56.755417, 56.469090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.898643, 56.592735, 56.117577>,  <55.958561, 56.495125, 55.906670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.898643, 56.592735, 56.117577>,  <55.798779, 56.755417, 56.469090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.898643, 56.592735, 56.117577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757659, -0.483096, 0.438829,
		-0.603010, -0.775378, 0.187531,
		0.249663, -0.406703, -0.878784,
		55.973541, 56.470726, 55.853943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.818417, 55.952015, 56.430237>,  <55.798779, 56.755417, 56.469090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.818417, 55.952015, 56.430237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.086517, 56.156082, 56.214653>,  <56.247379, 56.278522, 56.085300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.086517, 56.156082, 56.214653>,  <55.818417, 55.952015, 56.430237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.086517, 56.156082, 56.214653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742128, -0.458940, 0.488487,
		0.001861, -0.727391, -0.686221,
		0.670256, 0.510172, -0.538963,
		56.287594, 56.309135, 56.052963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.280968, 55.509621, 56.158718>,  <55.818417, 55.952015, 56.430237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.280968, 55.509621, 56.158718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.456024, 55.861595, 56.232681>,  <56.561058, 56.072781, 56.277058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.456024, 55.861595, 56.232681>,  <56.280968, 55.509621, 56.158718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.456024, 55.861595, 56.232681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543508, -0.422709, 0.725201,
		0.716291, -0.216876, -0.663244,
		0.437638, 0.879933, 0.184909,
		56.587315, 56.125576, 56.288155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.095535, 55.487835, 56.152607>,  <56.280968, 55.509621, 56.158718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.095535, 55.487835, 56.152607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.942749, 55.739838, 56.423073>,  <56.851078, 55.891037, 56.585354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.942749, 55.739838, 56.423073>,  <57.095535, 55.487835, 56.152607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.942749, 55.739838, 56.423073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577024, -0.408937, 0.706975,
		0.721906, 0.660201, -0.207329,
		-0.381962, 0.630003, 0.676166,
		56.828159, 55.928837, 56.625923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.661736, 55.754097, 56.377190>,  <57.095535, 55.487835, 56.152607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.661736, 55.754097, 56.377190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.349342, 55.713818, 56.623741>,  <57.161907, 55.689651, 56.771671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.349342, 55.713818, 56.623741>,  <57.661736, 55.754097, 56.377190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.349342, 55.713818, 56.623741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624243, -0.156892, 0.765314,
		0.019642, 0.982469, 0.185388,
		-0.780983, -0.100695, 0.616382,
		57.115047, 55.683609, 56.808655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.943432, 56.130699, 56.855595>,  <57.661736, 55.754097, 56.377190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.943432, 56.130699, 56.855595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.665833, 55.879555, 56.996536>,  <57.499271, 55.728870, 57.081100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.665833, 55.879555, 56.996536>,  <57.943432, 56.130699, 56.855595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.665833, 55.879555, 56.996536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590237, -0.215899, 0.777822,
		-0.412289, 0.747784, 0.520420,
		-0.694001, -0.627859, 0.352357,
		57.457634, 55.691196, 57.102245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.024624, 56.256645, 57.597782>,  <57.943432, 56.130699, 56.855595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.024624, 56.256645, 57.597782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.849373, 55.905045, 57.522514>,  <57.744221, 55.694084, 57.477352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.849373, 55.905045, 57.522514>,  <58.024624, 56.256645, 57.597782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.849373, 55.905045, 57.522514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317098, -0.347003, 0.882631,
		-0.841127, 0.327036, 0.430760,
		-0.438127, -0.878997, -0.188171,
		57.717934, 55.641346, 57.466064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.397854, 56.163834, 58.085606>,  <58.024624, 56.256645, 57.597782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.397854, 56.163834, 58.085606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.596718, 55.838955, 57.963509>,  <57.716038, 55.644028, 57.890251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.596718, 55.838955, 57.963509>,  <57.397854, 56.163834, 58.085606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.596718, 55.838955, 57.963509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298841, -0.169991, 0.939040,
		-0.814572, -0.558072, 0.158204,
		0.497159, -0.812194, -0.305245,
		57.745865, 55.595295, 57.871937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.365196, 55.569740, 58.630398>,  <57.397854, 56.163834, 58.085606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.365196, 55.569740, 58.630398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.679764, 55.493805, 58.395279>,  <57.868504, 55.448242, 58.254208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.679764, 55.493805, 58.395279>,  <57.365196, 55.569740, 58.630398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.679764, 55.493805, 58.395279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516112, -0.320883, 0.794143,
		-0.339390, -0.927895, -0.154358,
		0.786411, -0.189858, -0.587802,
		57.915688, 55.436852, 58.218941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.454994, 54.887005, 58.646595>,  <57.365196, 55.569740, 58.630398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.454994, 54.887005, 58.646595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.751633, 55.150047, 58.593544>,  <57.929615, 55.307873, 58.561714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.751633, 55.150047, 58.593544>,  <57.454994, 54.887005, 58.646595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.751633, 55.150047, 58.593544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432335, -0.317319, 0.844035,
		0.512957, -0.683272, -0.519629,
		0.741594, 0.657607, -0.132631,
		57.974110, 55.347328, 58.553753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.068550, 54.500462, 58.674770>,  <57.454994, 54.887005, 58.646595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.068550, 54.500462, 58.674770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.124557, 54.885605, 58.767120>,  <58.158161, 55.116692, 58.822533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.124557, 54.885605, 58.767120>,  <58.068550, 54.500462, 58.674770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.124557, 54.885605, 58.767120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436468, -0.269320, 0.858465,
		0.888758, -0.019431, -0.457965,
		0.140020, 0.962855, 0.230879,
		58.166565, 55.174461, 58.836384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.682865, 54.480473, 58.836708>,  <58.068550, 54.500462, 58.674770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.682865, 54.480473, 58.836708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.547325, 54.827805, 58.981583>,  <58.466003, 55.036205, 59.068508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.547325, 54.827805, 58.981583>,  <58.682865, 54.480473, 58.836708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.547325, 54.827805, 58.981583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569275, -0.117267, 0.813741,
		0.749071, 0.481918, -0.454585,
		-0.338848, 0.868334, 0.362185,
		58.445671, 55.088306, 59.090237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.012413, 55.145195, 59.060474>,  <58.682865, 54.480473, 58.836708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.012413, 55.145195, 59.060474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.379173, 54.986713, 59.041252>,  <59.599232, 54.891624, 59.029720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.379173, 54.986713, 59.041252>,  <59.012413, 55.145195, 59.060474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.379173, 54.986713, 59.041252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021074, 0.168301, -0.985510,
		0.398555, 0.902604, 0.162665,
		0.916902, -0.396208, -0.048056,
		59.654243, 54.867851, 59.026836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.632156, 55.559841, 58.722015>,  <59.012413, 55.145195, 59.060474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.632156, 55.559841, 58.722015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.648476, 55.167713, 58.644753>,  <59.658268, 54.932438, 58.598396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.648476, 55.167713, 58.644753>,  <59.632156, 55.559841, 58.722015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.648476, 55.167713, 58.644753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071401, 0.195680, -0.978065,
		0.996613, 0.026113, 0.077979,
		0.040799, -0.980320, -0.193153,
		59.660717, 54.873619, 58.586807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.106674, 55.503376, 58.191921>,  <59.632156, 55.559841, 58.722015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.106674, 55.503376, 58.191921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.876137, 55.181137, 58.137024>,  <59.737812, 54.987793, 58.104084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.876137, 55.181137, 58.137024>,  <60.106674, 55.503376, 58.191921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.876137, 55.181137, 58.137024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103231, 0.238372, -0.965672,
		0.810658, -0.542394, -0.220548,
		-0.576348, -0.805597, -0.137246,
		59.703232, 54.939457, 58.095852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.461548, 55.271519, 58.729012>,  <60.106674, 55.503376, 58.191921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.461548, 55.271519, 58.729012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.811958, 55.122375, 58.851357>,  <61.022205, 55.032890, 58.924763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.811958, 55.122375, 58.851357>,  <60.461548, 55.271519, 58.729012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.811958, 55.122375, 58.851357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397734, 0.199921, -0.895455,
		0.272727, 0.906096, 0.323434,
		0.876029, -0.372855, 0.305862,
		61.074768, 55.010517, 58.943115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.918858, 55.804474, 58.601776>,  <60.461548, 55.271519, 58.729012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.918858, 55.804474, 58.601776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.038651, 55.429283, 58.531906>,  <61.110527, 55.204170, 58.489983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.038651, 55.429283, 58.531906>,  <60.918858, 55.804474, 58.601776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.038651, 55.429283, 58.531906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320717, 0.271397, -0.907460,
		0.898583, 0.215746, 0.382103,
		0.299483, -0.937975, -0.174680,
		61.128494, 55.147892, 58.479504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.591969, 55.785198, 58.446110>,  <60.918858, 55.804474, 58.601776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.591969, 55.785198, 58.446110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.383385, 55.496311, 58.264351>,  <61.258236, 55.322979, 58.155296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.383385, 55.496311, 58.264351>,  <61.591969, 55.785198, 58.446110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.383385, 55.496311, 58.264351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166859, 0.435945, -0.884370,
		0.836803, -0.536983, -0.106818,
		-0.521458, -0.722220, -0.454400,
		61.226948, 55.279644, 58.128029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.233280, 55.666992, 58.559456>,  <61.591969, 55.785198, 58.446110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.233280, 55.666992, 58.559456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.612106, 55.718628, 58.677040>,  <62.839401, 55.749607, 58.747589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.612106, 55.718628, 58.677040>,  <62.233280, 55.666992, 58.559456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.612106, 55.718628, 58.677040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146976, 0.639708, -0.754435,
		-0.285435, 0.757701, 0.586869,
		0.947061, 0.129086, 0.293959,
		62.896225, 55.757355, 58.765228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.429115, 56.366306, 58.666443>,  <62.233280, 55.666992, 58.559456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.429115, 56.366306, 58.666443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.742584, 56.142216, 58.559105>,  <62.930664, 56.007763, 58.494701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.742584, 56.142216, 58.559105>,  <62.429115, 56.366306, 58.666443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.742584, 56.142216, 58.559105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095744, 0.535773, -0.838916,
		0.613756, 0.631740, 0.473506,
		0.783668, -0.560226, -0.268349,
		62.977684, 55.974148, 58.478600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.970638, 56.796062, 58.481773>,  <62.429115, 56.366306, 58.666443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.970638, 56.796062, 58.481773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.031776, 56.458305, 58.276390>,  <63.068459, 56.255650, 58.153160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.031776, 56.458305, 58.276390>,  <62.970638, 56.796062, 58.481773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.031776, 56.458305, 58.276390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178780, 0.534612, -0.825970,
		0.971945, 0.034448, 0.232673,
		0.152843, -0.844395, -0.513455,
		63.077629, 56.204987, 58.122353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.716259, 56.845428, 58.225986>,  <62.970638, 56.796062, 58.481773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.716259, 56.845428, 58.225986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.440834, 56.638798, 58.022408>,  <63.275578, 56.514820, 57.900261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.440834, 56.638798, 58.022408>,  <63.716259, 56.845428, 58.225986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.440834, 56.638798, 58.022408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292838, 0.443991, -0.846828,
		0.663421, -0.732134, -0.154442,
		-0.688563, -0.516578, -0.508950,
		63.234264, 56.483826, 57.869724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.023209, 57.351376, 58.469429>,  <63.716259, 56.845428, 58.225986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.023209, 57.351376, 58.469429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.195564, 57.181503, 58.150940>,  <64.298981, 57.079578, 57.959846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.195564, 57.181503, 58.150940>,  <64.023209, 57.351376, 58.469429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.195564, 57.181503, 58.150940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902357, 0.193822, 0.384947,
		-0.009154, -0.884351, 0.466733,
		0.430891, -0.424684, -0.796226,
		64.324829, 57.054100, 57.912071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.401733, 56.758450, 58.707954>,  <64.023209, 57.351376, 58.469429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.401733, 56.758450, 58.707954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.573303, 56.918034, 58.383766>,  <64.676247, 57.013783, 58.189255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.573303, 56.918034, 58.383766>,  <64.401733, 56.758450, 58.707954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.573303, 56.918034, 58.383766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876018, 0.035285, 0.480986,
		0.220491, -0.916291, -0.334358,
		0.428925, 0.398957, -0.810467,
		64.701981, 57.037720, 58.140625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.038879, 56.316551, 58.405518>,  <64.401733, 56.758450, 58.707954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.038879, 56.316551, 58.405518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.053307, 56.698967, 58.289116>,  <65.061966, 56.928417, 58.219276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.053307, 56.698967, 58.289116>,  <65.038879, 56.316551, 58.405518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.053307, 56.698967, 58.289116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870195, 0.113138, 0.479543,
		0.491386, -0.270525, -0.827862,
		0.036065, 0.956042, -0.291004,
		65.064125, 56.985779, 58.201813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.673126, 56.581474, 57.994675>,  <65.038879, 56.316551, 58.405518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.673126, 56.581474, 57.994675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.530098, 56.877026, 58.223129>,  <65.444283, 57.054356, 58.360203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.530098, 56.877026, 58.223129>,  <65.673126, 56.581474, 57.994675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.530098, 56.877026, 58.223129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931975, 0.243242, 0.268804,
		0.059688, 0.628404, -0.775594,
		-0.357574, 0.738879, 0.571138,
		65.422829, 57.098690, 58.394470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.995468, 57.245441, 57.770035>,  <65.673126, 56.581474, 57.994675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.995468, 57.245441, 57.770035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.875046, 57.281036, 58.149811>,  <65.802788, 57.302395, 58.377678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.875046, 57.281036, 58.149811>,  <65.995468, 57.245441, 57.770035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.875046, 57.281036, 58.149811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893452, 0.374338, 0.248222,
		-0.333323, 0.923013, -0.192206,
		-0.301062, 0.088989, 0.949443,
		65.784729, 57.307732, 58.434643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.481026, 57.811096, 57.945370>,  <65.995468, 57.245441, 57.770035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.481026, 57.811096, 57.945370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.410324, 57.570415, 58.256935>,  <66.367905, 57.426006, 58.443874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.410324, 57.570415, 58.256935>,  <66.481026, 57.811096, 57.945370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.410324, 57.570415, 58.256935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976743, -0.009642, 0.214195,
		-0.121371, 0.798662, 0.589414,
		-0.176752, -0.601703, 0.778917,
		66.357300, 57.389904, 58.490612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.815582, 58.102016, 58.581139>,  <66.481026, 57.811096, 57.945370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.815582, 58.102016, 58.581139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.752838, 57.711941, 58.643616>,  <66.715195, 57.477894, 58.681103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.752838, 57.711941, 58.643616>,  <66.815582, 58.102016, 58.581139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.752838, 57.711941, 58.643616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932559, -0.094178, 0.348517,
		-0.325160, 0.200329, 0.924196,
		-0.156857, -0.975192, 0.156196,
		66.705780, 57.419384, 58.690475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.715813, 57.882229, 59.293083>,  <66.815582, 58.102016, 58.581139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.715813, 57.882229, 59.293083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.881004, 57.590530, 59.074852>,  <66.980118, 57.415512, 58.943913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.881004, 57.590530, 59.074852>,  <66.715813, 57.882229, 59.293083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.881004, 57.590530, 59.074852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879385, 0.163465, 0.447169,
		-0.236912, -0.664443, 0.708794,
		0.412981, -0.729243, -0.545574,
		67.004898, 57.371758, 58.911179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.022911, 57.293907, 59.719982>,  <66.715813, 57.882229, 59.293083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.022911, 57.293907, 59.719982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.221680, 57.355675, 59.378403>,  <67.340942, 57.392735, 59.173454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.221680, 57.355675, 59.378403>,  <67.022911, 57.293907, 59.719982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.221680, 57.355675, 59.378403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861770, 0.027989, 0.506526,
		0.102119, -0.987609, -0.119166,
		0.496915, 0.154420, -0.853950,
		67.370750, 57.402000, 59.122219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.661339, 57.088032, 59.957260>,  <67.022911, 57.293907, 59.719982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.661339, 57.088032, 59.957260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.732491, 57.292950, 59.621185>,  <67.775185, 57.415901, 59.419540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.732491, 57.292950, 59.621185>,  <67.661339, 57.088032, 59.957260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.732491, 57.292950, 59.621185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909752, 0.239853, 0.338853,
		0.375115, -0.824635, -0.423397,
		0.177877, 0.512296, -0.840186,
		67.785851, 57.446640, 59.369129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.397148, 56.898048, 59.588623>,  <67.661339, 57.088032, 59.957260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.397148, 56.898048, 59.588623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.280647, 57.273804, 59.516266>,  <68.210747, 57.499256, 59.472851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.280647, 57.273804, 59.516266>,  <68.397148, 56.898048, 59.588623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.280647, 57.273804, 59.516266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870149, 0.338706, 0.357937,
		0.397512, -0.053157, -0.916056,
		-0.291247, 0.939390, -0.180894,
		68.193275, 57.555622, 59.461998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.907890, 57.133656, 59.128792>,  <68.397148, 56.898048, 59.588623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.907890, 57.133656, 59.128792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.767426, 57.393421, 59.398590>,  <68.683144, 57.549278, 59.560471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.767426, 57.393421, 59.398590>,  <68.907890, 57.133656, 59.128792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.767426, 57.393421, 59.398590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934523, 0.198590, 0.295344,
		0.057851, 0.734049, -0.676628,
		-0.351168, 0.649411, 0.674497,
		68.662071, 57.588245, 59.600941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.217422, 57.652325, 59.077251>,  <68.907890, 57.133656, 59.128792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.217422, 57.652325, 59.077251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.113495, 57.652733, 59.463516>,  <69.051140, 57.652977, 59.695274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.113495, 57.652733, 59.463516>,  <69.217422, 57.652325, 59.077251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.113495, 57.652733, 59.463516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951399, 0.171495, 0.255792,
		-0.165344, 0.985184, -0.045529,
		-0.259810, 0.001023, 0.965659,
		69.035553, 57.653038, 59.753216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.569252, 58.173256, 59.543636>,  <69.217422, 57.652325, 59.077251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.569252, 58.173256, 59.543636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.483841, 57.874973, 59.796089>,  <69.432594, 57.696003, 59.947559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.483841, 57.874973, 59.796089>,  <69.569252, 58.173256, 59.543636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.483841, 57.874973, 59.796089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897961, 0.104648, 0.427451,
		-0.384800, 0.658006, 0.647269,
		-0.213530, -0.745706, 0.631132,
		69.419785, 57.651260, 59.985428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.648659, 58.312572, 60.405998>,  <69.569252, 58.173256, 59.543636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.648659, 58.312572, 60.405998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.727875, 57.934677, 60.301498>,  <69.775406, 57.707939, 60.238800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.727875, 57.934677, 60.301498>,  <69.648659, 58.312572, 60.405998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.727875, 57.934677, 60.301498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865853, 0.043690, 0.498387,
		-0.459430, -0.324909, 0.826655,
		0.198047, -0.944736, -0.261250,
		69.787292, 57.651257, 60.223122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.899551, 57.886395, 61.058853>,  <69.648659, 58.312572, 60.405998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.899551, 57.886395, 61.058853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.009483, 57.798340, 60.684471>,  <70.075447, 57.745506, 60.459843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.009483, 57.798340, 60.684471>,  <69.899551, 57.886395, 61.058853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.009483, 57.798340, 60.684471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960637, 0.021853, 0.276944,
		-0.040511, -0.975225, 0.217474,
		0.274835, -0.220133, -0.935952,
		70.091934, 57.732300, 60.403687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.393646, 57.222759, 60.950760>,  <69.899551, 57.886395, 61.058853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.393646, 57.222759, 60.950760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.440422, 57.537045, 60.707787>,  <70.468483, 57.725616, 60.562004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.440422, 57.537045, 60.707787>,  <70.393646, 57.222759, 60.950760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.440422, 57.537045, 60.707787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869858, 0.214118, 0.444410,
		0.479243, -0.580348, -0.658424,
		0.116932, 0.785716, -0.607435,
		70.475502, 57.772758, 60.525555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.021416, 57.081768, 60.658936>,  <70.393646, 57.222759, 60.950760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.021416, 57.081768, 60.658936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.947777, 57.474373, 60.679878>,  <70.903595, 57.709934, 60.692444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.947777, 57.474373, 60.679878>,  <71.021416, 57.081768, 60.658936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.947777, 57.474373, 60.679878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890828, 0.144110, 0.430879,
		0.415368, 0.125965, -0.900890,
		-0.184103, 0.981512, 0.052354,
		70.892548, 57.768826, 60.695583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.524513, 57.605438, 60.323273>,  <71.021416, 57.081768, 60.658936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.524513, 57.605438, 60.323273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.379959, 57.764824, 60.660469>,  <71.293228, 57.860455, 60.862785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.379959, 57.764824, 60.660469>,  <71.524513, 57.605438, 60.323273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.379959, 57.764824, 60.660469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919139, 0.304268, 0.250208,
		-0.156797, 0.865246, -0.476197,
		-0.361383, 0.398460, 0.842990,
		71.271545, 57.884361, 60.913364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.233742, 57.725994, 60.230816>,  <71.524513, 57.605438, 60.323273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.233742, 57.725994, 60.230816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.252670, 57.326752, 60.246498>,  <72.264023, 57.087204, 60.255909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.252670, 57.326752, 60.246498>,  <72.233742, 57.725994, 60.230816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.252670, 57.326752, 60.246498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990903, 0.041953, -0.127873,
		0.125986, 0.044902, 0.991015,
		0.047318, -0.998110, 0.039208,
		72.266869, 57.027317, 60.258259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.281593, 57.272682, 60.878155>,  <72.233742, 57.725994, 60.230816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.281593, 57.272682, 60.878155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.026306, 57.443466, 61.134399>,  <71.873131, 57.545937, 61.288147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.026306, 57.443466, 61.134399>,  <72.281593, 57.272682, 60.878155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.026306, 57.443466, 61.134399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744671, 0.131298, 0.654389,
		0.195287, 0.894688, -0.401742,
		-0.638222, 0.426959, 0.640608,
		71.834839, 57.571552, 61.326580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.662704, 57.745609, 61.345814>,  <72.281593, 57.272682, 60.878155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.662704, 57.745609, 61.345814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.341942, 57.657066, 61.567787>,  <72.149483, 57.603939, 61.700970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.341942, 57.657066, 61.567787>,  <72.662704, 57.745609, 61.345814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.341942, 57.657066, 61.567787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572594, -0.019601, 0.819604,
		-0.170550, 0.974995, 0.142467,
		-0.801903, -0.221360, 0.554934,
		72.101372, 57.590660, 61.734268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.726990, 58.392300, 60.811054>,  <72.662704, 57.745609, 61.345814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.726990, 58.392300, 60.811054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.009216, 58.153042, 60.659058>,  <73.178551, 58.009487, 60.567860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.009216, 58.153042, 60.659058>,  <72.726990, 58.392300, 60.811054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.009216, 58.153042, 60.659058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589428, -0.197690, -0.783258,
		0.393384, 0.776619, -0.492049,
		0.705566, -0.598149, -0.379992,
		73.220886, 57.973598, 60.545059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.801575, 58.446739, 60.101433>,  <72.726990, 58.392300, 60.811054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.801575, 58.446739, 60.101433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.896698, 58.069527, 60.194504>,  <72.953773, 57.843201, 60.250347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.896698, 58.069527, 60.194504>,  <72.801575, 58.446739, 60.101433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.896698, 58.069527, 60.194504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625542, -0.331948, -0.706051,
		0.743067, 0.022350, -0.668844,
		0.237802, -0.943033, 0.232679,
		72.968040, 57.786617, 60.264309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
