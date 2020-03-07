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
	<36.052189, 52.527634, 49.836475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110706, 52.789009, 50.133556>,  <36.145817, 52.945835, 50.311806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110706, 52.789009, 50.133556>,  <36.052189, 52.527634, 49.836475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110706, 52.789009, 50.133556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233045, -0.706886, 0.667834,
		0.961398, -0.270786, 0.048865,
		0.146298, 0.653442, 0.742705,
		36.154594, 52.985043, 50.356369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538456, 52.206230, 50.366543>,  <36.052189, 52.527634, 49.836475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538456, 52.206230, 50.366543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323513, 52.488117, 50.551849>,  <36.194546, 52.657249, 50.663033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323513, 52.488117, 50.551849>,  <36.538456, 52.206230, 50.366543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323513, 52.488117, 50.551849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066890, -0.583204, 0.809567,
		0.840695, 0.404042, 0.360530,
		-0.537361, 0.704715, 0.463270,
		36.162304, 52.699532, 50.690830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331554, 52.139366, 50.427635>,  <36.538456, 52.206230, 50.366543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331554, 52.139366, 50.427635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419075, 52.508659, 50.553978>,  <37.471588, 52.730236, 50.629784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419075, 52.508659, 50.553978>,  <37.331554, 52.139366, 50.427635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419075, 52.508659, 50.553978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857610, -0.027547, -0.513562,
		-0.465437, 0.383247, -0.797803,
		0.218798, 0.923235, 0.315855,
		37.484715, 52.785629, 50.648735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412739, 52.406052, 49.838825>,  <37.331554, 52.139366, 50.427635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412739, 52.406052, 49.838825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587418, 52.607086, 50.137276>,  <37.692226, 52.727707, 50.316345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587418, 52.607086, 50.137276>,  <37.412739, 52.406052, 49.838825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587418, 52.607086, 50.137276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874817, -0.043877, -0.482462,
		-0.209739, 0.863415, -0.458828,
		0.436697, 0.502582, 0.746128,
		37.718426, 52.757862, 50.361115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646824, 53.121948, 49.682838>,  <37.412739, 52.406052, 49.838825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646824, 53.121948, 49.682838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852623, 52.903915, 49.947617>,  <37.976105, 52.773098, 50.106483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852623, 52.903915, 49.947617>,  <37.646824, 53.121948, 49.682838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852623, 52.903915, 49.947617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801481, 0.031271, -0.597202,
		0.304823, 0.837801, 0.452960,
		0.514501, -0.545080, 0.661949,
		38.006973, 52.740391, 50.146202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231514, 53.560848, 49.922192>,  <37.646824, 53.121948, 49.682838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231514, 53.560848, 49.922192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276859, 53.163506, 49.930092>,  <38.304066, 52.925098, 49.934830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276859, 53.163506, 49.930092>,  <38.231514, 53.560848, 49.922192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276859, 53.163506, 49.930092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754498, 0.073142, -0.652214,
		0.646437, 0.088839, 0.757778,
		0.113367, -0.993357, 0.019747,
		38.310871, 52.865498, 49.936016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839085, 53.555458, 49.685265>,  <38.231514, 53.560848, 49.922192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839085, 53.555458, 49.685265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748257, 53.165943, 49.679985>,  <38.693760, 52.932232, 49.676819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748257, 53.165943, 49.679985>,  <38.839085, 53.555458, 49.685265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748257, 53.165943, 49.679985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853820, -0.192542, -0.483652,
		0.468434, -0.121089, 0.875161,
		-0.227070, -0.973789, -0.013194,
		38.680134, 52.873806, 49.676025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417519, 53.371307, 49.240025>,  <38.839085, 53.555458, 49.685265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417519, 53.371307, 49.240025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629101, 53.492901, 49.556961>,  <39.756050, 53.565857, 49.747124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629101, 53.492901, 49.556961>,  <39.417519, 53.371307, 49.240025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629101, 53.492901, 49.556961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358404, 0.926317, -0.116117,
		-0.769258, -0.222559, 0.598925,
		0.528952, 0.303980, 0.792342,
		39.787785, 53.584095, 49.794662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225136, 53.542900, 49.110603>,  <39.417519, 53.371307, 49.240025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225136, 53.542900, 49.110603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026112, 53.888042, 49.146202>,  <39.906696, 54.095127, 49.167561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026112, 53.888042, 49.146202>,  <40.225136, 53.542900, 49.110603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026112, 53.888042, 49.146202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852901, 0.505343, -0.131104,
		-0.158098, 0.010674, -0.987366,
		-0.497559, 0.862852, 0.088997,
		39.876842, 54.146896, 49.172901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380867, 54.079258, 48.615562>,  <40.225136, 53.542900, 49.110603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380867, 54.079258, 48.615562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241829, 54.281055, 48.931705>,  <40.158405, 54.402134, 49.121391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241829, 54.281055, 48.931705>,  <40.380867, 54.079258, 48.615562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241829, 54.281055, 48.931705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835908, 0.548593, 0.017450,
		-0.424780, 0.666730, -0.612399,
		-0.347592, 0.504496, 0.790356,
		40.137550, 54.432404, 49.168812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792473, 54.769287, 48.502373>,  <40.380867, 54.079258, 48.615562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792473, 54.769287, 48.502373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706593, 54.732986, 48.891354>,  <40.655064, 54.711205, 49.124744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706593, 54.732986, 48.891354>,  <40.792473, 54.769287, 48.502373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706593, 54.732986, 48.891354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942086, 0.243406, 0.230711,
		-0.257639, 0.965669, 0.033238,
		-0.214701, -0.090753, 0.972454,
		40.642181, 54.705761, 49.183090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036438, 55.331432, 49.006168>,  <40.792473, 54.769287, 48.502373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036438, 55.331432, 49.006168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005932, 54.955193, 49.138508>,  <40.987629, 54.729450, 49.217911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005932, 54.955193, 49.138508>,  <41.036438, 55.331432, 49.006168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005932, 54.955193, 49.138508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996992, -0.076535, 0.012219,
		0.013828, 0.330783, 0.943606,
		-0.076261, -0.940598, 0.330846,
		40.983055, 54.673012, 49.237762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660568, 55.336102, 49.363625>,  <41.036438, 55.331432, 49.006168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660568, 55.336102, 49.363625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571518, 54.947720, 49.328575>,  <41.518089, 54.714691, 49.307545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571518, 54.947720, 49.328575>,  <41.660568, 55.336102, 49.363625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571518, 54.947720, 49.328575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973003, -0.226900, 0.042203,
		-0.060860, -0.075867, 0.995259,
		-0.222622, -0.970959, -0.087627,
		41.504730, 54.656433, 49.302288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324448, 54.958420, 49.559166>,  <41.660568, 55.336102, 49.363625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324448, 54.958420, 49.559166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099548, 54.644535, 49.454781>,  <41.964607, 54.456203, 49.392151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099548, 54.644535, 49.454781>,  <42.324448, 54.958420, 49.559166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099548, 54.644535, 49.454781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776157, -0.609648, 0.160963,
		-0.285406, -0.112049, 0.951834,
		-0.562248, -0.784713, -0.260965,
		41.930874, 54.409122, 49.376492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171970, 54.493362, 50.178810>,  <42.324448, 54.958420, 49.559166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171970, 54.493362, 50.178810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177055, 54.292805, 49.832760>,  <42.180107, 54.172470, 49.625130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177055, 54.292805, 49.832760>,  <42.171970, 54.493362, 50.178810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177055, 54.292805, 49.832760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824529, -0.484202, 0.292745,
		-0.565676, -0.717041, 0.407261,
		0.012713, -0.501398, -0.865123,
		42.180870, 54.142384, 49.573223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044701, 53.738453, 50.287601>,  <42.171970, 54.493362, 50.178810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044701, 53.738453, 50.287601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265163, 53.819969, 49.963947>,  <42.397442, 53.868877, 49.769756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265163, 53.819969, 49.963947>,  <42.044701, 53.738453, 50.287601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265163, 53.819969, 49.963947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766455, -0.506940, 0.394410,
		-0.329806, -0.837546, -0.435598,
		0.551159, 0.203787, -0.809132,
		42.430511, 53.881104, 49.721207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340347, 53.125618, 50.104813>,  <42.044701, 53.738453, 50.287601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340347, 53.125618, 50.104813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599960, 53.405163, 49.984577>,  <42.755730, 53.572887, 49.912437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599960, 53.405163, 49.984577>,  <42.340347, 53.125618, 50.104813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599960, 53.405163, 49.984577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757704, -0.558452, 0.337662,
		0.068116, -0.446908, -0.891983,
		0.649033, 0.698860, -0.300584,
		42.794670, 53.614822, 49.894402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981773, 52.913044, 49.779392>,  <42.340347, 53.125618, 50.104813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981773, 52.913044, 49.779392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134003, 53.272476, 49.866768>,  <43.225342, 53.488136, 49.919193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134003, 53.272476, 49.866768>,  <42.981773, 52.913044, 49.779392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134003, 53.272476, 49.866768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870539, -0.427817, 0.243177,
		0.311967, 0.097615, -0.945065,
		0.380577, 0.898579, 0.218442,
		43.248177, 53.542049, 49.932301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545238, 52.736362, 49.349129>,  <42.981773, 52.913044, 49.779392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545238, 52.736362, 49.349129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801365, 52.654488, 49.052994>,  <43.955040, 52.605362, 48.875313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801365, 52.654488, 49.052994>,  <43.545238, 52.736362, 49.349129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801365, 52.654488, 49.052994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485234, -0.639367, 0.596454,
		-0.595436, -0.741155, -0.310073,
		0.640316, -0.204692, -0.740336,
		43.993462, 52.593079, 48.830894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600018, 52.726166, 50.105850>,  <43.545238, 52.736362, 49.349129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600018, 52.726166, 50.105850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877491, 52.631653, 50.378021>,  <44.043976, 52.574947, 50.541325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877491, 52.631653, 50.378021>,  <43.600018, 52.726166, 50.105850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877491, 52.631653, 50.378021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525609, -0.811956, 0.253895,
		0.492484, -0.533759, -0.687431,
		0.693682, -0.236281, 0.680424,
		44.085594, 52.560768, 50.582150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858585, 51.942959, 49.992680>,  <43.600018, 52.726166, 50.105850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858585, 51.942959, 49.992680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936516, 52.007954, 50.379593>,  <43.983276, 52.046951, 50.611740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936516, 52.007954, 50.379593>,  <43.858585, 51.942959, 49.992680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936516, 52.007954, 50.379593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394235, -0.890042, 0.228920,
		0.898120, -0.425938, -0.109347,
		0.194829, 0.162489, 0.967284,
		43.994965, 52.056702, 50.669777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291355, 51.373318, 50.225468>,  <43.858585, 51.942959, 49.992680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291355, 51.373318, 50.225468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077122, 51.530029, 50.524708>,  <43.948582, 51.624054, 50.704254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077122, 51.530029, 50.524708>,  <44.291355, 51.373318, 50.225468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077122, 51.530029, 50.524708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486880, -0.867073, 0.105507,
		0.689995, -0.307729, 0.655141,
		-0.535588, 0.391775, 0.748103,
		43.916447, 51.647560, 50.749138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300030, 50.969269, 50.873974>,  <44.291355, 51.373318, 50.225468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300030, 50.969269, 50.873974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952526, 51.166893, 50.860321>,  <43.744022, 51.285469, 50.852131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952526, 51.166893, 50.860321>,  <44.300030, 50.969269, 50.873974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952526, 51.166893, 50.860321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486294, -0.838003, 0.247525,
		0.093692, 0.231636, 0.968280,
		-0.868758, 0.494060, -0.034129,
		43.691898, 51.315109, 50.850082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497826, 50.254089, 51.122150>,  <44.300030, 50.969269, 50.873974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497826, 50.254089, 51.122150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473503, 50.322201, 51.515556>,  <44.458908, 50.363068, 51.751602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473503, 50.322201, 51.515556>,  <44.497826, 50.254089, 51.122150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.473503, 50.322201, 51.515556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984805, -0.150344, 0.086920,
		0.162667, 0.973859, -0.158550,
		-0.060811, 0.170280, 0.983518,
		44.455261, 50.373283, 51.810612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996655, 50.627285, 51.257324>,  <44.497826, 50.254089, 51.122150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996655, 50.627285, 51.257324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936176, 50.491505, 51.628681>,  <44.899891, 50.410034, 51.851494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936176, 50.491505, 51.628681>,  <44.996655, 50.627285, 51.257324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.936176, 50.491505, 51.628681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987941, -0.083572, 0.130338,
		0.033344, 0.936902, 0.347997,
		-0.151197, -0.339455, 0.928391,
		44.890816, 50.389668, 51.907200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.385330, 50.996773, 51.670105>,  <44.996655, 50.627285, 51.257324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.385330, 50.996773, 51.670105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323521, 50.616013, 51.775940>,  <45.286434, 50.387554, 51.839439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323521, 50.616013, 51.775940>,  <45.385330, 50.996773, 51.670105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323521, 50.616013, 51.775940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985914, -0.131215, 0.103715,
		-0.064009, 0.276885, 0.958769,
		-0.154522, -0.951902, 0.264585,
		45.277164, 50.330441, 51.855316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844826, 50.857502, 52.264271>,  <45.385330, 50.996773, 51.670105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844826, 50.857502, 52.264271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770481, 50.542374, 52.029396>,  <45.725876, 50.353294, 51.888470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770481, 50.542374, 52.029396>,  <45.844826, 50.857502, 52.264271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770481, 50.542374, 52.029396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940391, -0.315848, 0.126118,
		-0.284821, -0.528745, 0.799566,
		-0.185857, -0.787825, -0.587187,
		45.714725, 50.306026, 51.853241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.114849, 50.297916, 52.619865>,  <45.844826, 50.857502, 52.264271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.114849, 50.297916, 52.619865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.131775, 50.243084, 52.224003>,  <46.141930, 50.210186, 51.986485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.131775, 50.243084, 52.224003>,  <46.114849, 50.297916, 52.619865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.131775, 50.243084, 52.224003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992142, -0.110973, 0.057788,
		-0.117747, -0.984324, 0.131309,
		0.042310, -0.137082, -0.989656,
		46.144466, 50.201958, 51.927105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.492607, 49.635880, 52.506416>,  <46.114849, 50.297916, 52.619865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.492607, 49.635880, 52.506416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501698, 49.918835, 52.223831>,  <46.507153, 50.088608, 52.054279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501698, 49.918835, 52.223831>,  <46.492607, 49.635880, 52.506416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.501698, 49.918835, 52.223831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980430, 0.122453, 0.154152,
		0.195553, -0.696136, -0.690763,
		0.022725, 0.707390, -0.706458,
		46.508514, 50.131050, 52.011894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.059692, 49.515209, 52.029556>,  <46.492607, 49.635880, 52.506416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.059692, 49.515209, 52.029556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.985706, 49.908077, 52.043037>,  <46.941315, 50.143799, 52.051125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.985706, 49.908077, 52.043037>,  <47.059692, 49.515209, 52.029556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.985706, 49.908077, 52.043037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971397, 0.177529, 0.157708,
		0.148912, 0.061909, -0.986911,
		-0.184968, 0.982166, 0.033702,
		46.930214, 50.202728, 52.053146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.680958, 49.782349, 51.718788>,  <47.059692, 49.515209, 52.029556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.680958, 49.782349, 51.718788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.508286, 50.073303, 51.932167>,  <47.404682, 50.247875, 52.060192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.508286, 50.073303, 51.932167>,  <47.680958, 49.782349, 51.718788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.508286, 50.073303, 51.932167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898616, 0.295392, 0.324396,
		0.078386, 0.619397, -0.781155,
		-0.431677, 0.727386, 0.533445,
		47.378784, 50.291519, 52.092201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.883091, 50.591179, 51.687477>,  <47.680958, 49.782349, 51.718788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.883091, 50.591179, 51.687477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.757328, 50.492180, 52.054058>,  <47.681870, 50.432781, 52.274006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.757328, 50.492180, 52.054058>,  <47.883091, 50.591179, 51.687477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.757328, 50.492180, 52.054058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924966, 0.137257, 0.354398,
		-0.213501, 0.959118, 0.185769,
		-0.314412, -0.247494, 0.916456,
		47.663006, 50.417931, 52.328995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.295719, 50.908188, 52.132248>,  <47.883091, 50.591179, 51.687477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.295719, 50.908188, 52.132248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.166904, 50.620514, 52.378525>,  <48.089615, 50.447910, 52.526291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.166904, 50.620514, 52.378525>,  <48.295719, 50.908188, 52.132248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.166904, 50.620514, 52.378525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932474, -0.128521, 0.337602,
		-0.163668, 0.682833, 0.712006,
		-0.322034, -0.719181, 0.615689,
		48.070293, 50.404758, 52.563232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.428181, 51.191498, 52.782330>,  <48.295719, 50.908188, 52.132248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.428181, 51.191498, 52.782330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.423378, 50.791557, 52.777382>,  <48.420498, 50.551594, 52.774414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.423378, 50.791557, 52.777382>,  <48.428181, 51.191498, 52.782330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.423378, 50.791557, 52.777382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990405, -0.013595, 0.137525,
		-0.137672, -0.010599, 0.990421,
		-0.012008, -0.999851, -0.012369,
		48.419777, 50.491600, 52.773670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.805149, 50.920662, 53.434772>,  <48.428181, 51.191498, 52.782330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.805149, 50.920662, 53.434772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.827641, 50.643578, 53.147163>,  <48.841137, 50.477325, 52.974598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.827641, 50.643578, 53.147163>,  <48.805149, 50.920662, 53.434772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.827641, 50.643578, 53.147163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994570, -0.024299, 0.101188,
		-0.087566, -0.720806, 0.687584,
		0.056229, -0.692711, -0.719020,
		48.844509, 50.435764, 52.931458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.150539, 50.484341, 53.691299>,  <48.805149, 50.920662, 53.434772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.150539, 50.484341, 53.691299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.194397, 50.461555, 53.294365>,  <49.220711, 50.447884, 53.056206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.194397, 50.461555, 53.294365>,  <49.150539, 50.484341, 53.691299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.194397, 50.461555, 53.294365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977311, 0.188196, 0.097183,
		0.181218, -0.980478, 0.076306,
		0.109647, -0.056963, -0.992337,
		49.227291, 50.444466, 52.996662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.719471, 49.962883, 53.481178>,  <49.150539, 50.484341, 53.691299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.719471, 49.962883, 53.481178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.666451, 50.264931, 53.224361>,  <49.634640, 50.446159, 53.070271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.666451, 50.264931, 53.224361>,  <49.719471, 49.962883, 53.481178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.666451, 50.264931, 53.224361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883968, 0.383079, 0.268049,
		0.448363, -0.532017, -0.718282,
		-0.132552, 0.755122, -0.642044,
		49.626686, 50.491467, 53.031750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.352173, 49.985298, 53.009544>,  <49.719471, 49.962883, 53.481178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.352173, 49.985298, 53.009544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.152779, 50.323715, 53.085148>,  <50.033142, 50.526768, 53.130508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.152779, 50.323715, 53.085148>,  <50.352173, 49.985298, 53.009544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.152779, 50.323715, 53.085148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861035, 0.457876, 0.221287,
		0.100676, 0.273051, -0.956717,
		-0.498481, 0.846045, 0.189009,
		50.003235, 50.577530, 53.141850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.583622, 50.468216, 52.542530>,  <50.352173, 49.985298, 53.009544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.583622, 50.468216, 52.542530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.490067, 50.644794, 52.889038>,  <50.433933, 50.750744, 53.096943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.490067, 50.644794, 52.889038>,  <50.583622, 50.468216, 52.542530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.490067, 50.644794, 52.889038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905282, 0.423859, 0.028422,
		-0.354629, 0.790864, -0.498770,
		-0.233886, 0.441448, 0.866268,
		50.419899, 50.777229, 53.148918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.794262, 51.268715, 52.509987>,  <50.583622, 50.468216, 52.542530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.794262, 51.268715, 52.509987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.759888, 51.139549, 52.886993>,  <50.739265, 51.062050, 53.113197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.759888, 51.139549, 52.886993>,  <50.794262, 51.268715, 52.509987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.759888, 51.139549, 52.886993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960182, 0.225573, 0.164826,
		-0.265832, 0.919153, 0.290673,
		-0.085932, -0.322915, 0.942519,
		50.734108, 51.042675, 53.169750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.753395, 51.834370, 53.060284>,  <50.794262, 51.268715, 52.509987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.753395, 51.834370, 53.060284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.922852, 51.487045, 53.163483>,  <51.024525, 51.278652, 53.225403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.922852, 51.487045, 53.163483>,  <50.753395, 51.834370, 53.060284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.922852, 51.487045, 53.163483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900366, 0.434880, -0.014811,
		-0.099338, 0.238568, 0.966032,
		0.423642, -0.868311, 0.257998,
		51.049946, 51.226551, 53.240883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.276932, 52.009869, 53.510994>,  <50.753395, 51.834370, 53.060284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.276932, 52.009869, 53.510994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.399094, 51.673481, 53.332336>,  <51.472389, 51.471649, 53.225140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.399094, 51.673481, 53.332336>,  <51.276932, 52.009869, 53.510994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.399094, 51.673481, 53.332336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941140, 0.337940, 0.007225,
		0.144864, -0.422563, 0.894681,
		0.305402, -0.840974, -0.446646,
		51.490715, 51.421188, 53.198341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.484272, 52.565540, 53.985119>,  <51.276932, 52.009869, 53.510994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.484272, 52.565540, 53.985119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.655418, 52.220882, 53.875946>,  <51.758106, 52.014088, 53.810440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.655418, 52.220882, 53.875946>,  <51.484272, 52.565540, 53.985119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.655418, 52.220882, 53.875946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899398, 0.435795, 0.034158,
		0.089511, -0.260091, 0.961426,
		0.427869, -0.861647, -0.272934,
		51.783779, 51.962387, 53.794067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.092506, 52.485172, 54.370388>,  <51.484272, 52.565540, 53.985119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.092506, 52.485172, 54.370388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.132416, 52.181007, 54.113693>,  <52.156361, 51.998508, 53.959679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.132416, 52.181007, 54.113693>,  <52.092506, 52.485172, 54.370388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.132416, 52.181007, 54.113693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963788, -0.086440, 0.252271,
		-0.247300, -0.643666, 0.724249,
		0.099774, -0.760409, -0.641734,
		52.162350, 51.952885, 53.921173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.581394, 51.946690, 54.654942>,  <52.092506, 52.485172, 54.370388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.581394, 51.946690, 54.654942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.575592, 51.908939, 54.256767>,  <52.572109, 51.886288, 54.017864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.575592, 51.908939, 54.256767>,  <52.581394, 51.946690, 54.654942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.575592, 51.908939, 54.256767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999760, 0.015003, -0.015991,
		0.016444, -0.995424, 0.094134,
		-0.014506, -0.094374, -0.995431,
		52.571239, 51.880627, 53.958138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.963326, 51.402523, 54.456825>,  <52.581394, 51.946690, 54.654942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.963326, 51.402523, 54.456825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.986362, 51.699581, 54.189945>,  <53.000187, 51.877815, 54.029816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.986362, 51.699581, 54.189945>,  <52.963326, 51.402523, 54.456825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.986362, 51.699581, 54.189945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975723, 0.099574, 0.195064,
		0.211300, -0.662236, -0.718885,
		0.057596, 0.742649, -0.667199,
		53.003643, 51.922375, 53.989784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.417313, 51.190098, 53.983517>,  <52.963326, 51.402523, 54.456825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.417313, 51.190098, 53.983517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.410160, 51.589321, 54.007362>,  <53.405869, 51.828857, 54.021671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.410160, 51.589321, 54.007362>,  <53.417313, 51.190098, 53.983517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.410160, 51.589321, 54.007362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922058, -0.006593, 0.386996,
		0.386638, 0.061889, -0.920152,
		-0.017884, 0.998061, 0.059615,
		53.404797, 51.888741, 54.025246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.950603, 51.434330, 53.785187>,  <53.417313, 51.190098, 53.983517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.950603, 51.434330, 53.785187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.873383, 51.747417, 54.021858>,  <53.827049, 51.935268, 54.163860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.873383, 51.747417, 54.021858>,  <53.950603, 51.434330, 53.785187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.873383, 51.747417, 54.021858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920248, -0.064765, 0.385938,
		0.340402, 0.618996, -0.707793,
		-0.193054, 0.782720, 0.591676,
		53.815468, 51.982235, 54.199360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.306637, 51.986450, 53.570633>,  <53.950603, 51.434330, 53.785187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.306637, 51.986450, 53.570633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.256447, 51.992092, 53.967430>,  <54.226334, 51.995476, 54.205509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.256447, 51.992092, 53.967430>,  <54.306637, 51.986450, 53.570633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.256447, 51.992092, 53.967430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992065, -0.006329, 0.125569,
		0.008049, 0.999880, -0.013196,
		-0.125470, 0.014102, 0.991997,
		54.218807, 51.996323, 54.265030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.703030, 52.565025, 53.867039>,  <54.306637, 51.986450, 53.570633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.703030, 52.565025, 53.867039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.663177, 52.259460, 54.122070>,  <54.639267, 52.076122, 54.275089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.663177, 52.259460, 54.122070>,  <54.703030, 52.565025, 53.867039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.663177, 52.259460, 54.122070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961346, 0.091398, 0.259730,
		-0.256685, 0.638810, 0.725282,
		-0.099628, -0.763916, 0.637579,
		54.633289, 52.030285, 54.313343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.861816, 52.810097, 54.509995>,  <54.703030, 52.565025, 53.867039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.861816, 52.810097, 54.509995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.971840, 52.448772, 54.378315>,  <55.037853, 52.231979, 54.299309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.971840, 52.448772, 54.378315>,  <54.861816, 52.810097, 54.509995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.971840, 52.448772, 54.378315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961380, 0.261824, 0.084835,
		0.009559, -0.339817, 0.940443,
		0.275059, -0.903312, -0.329196,
		55.054359, 52.177780, 54.279556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.505840, 53.031200, 54.550686>,  <54.861816, 52.810097, 54.509995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.505840, 53.031200, 54.550686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.486778, 52.642429, 54.458523>,  <55.475342, 52.409168, 54.403225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.486778, 52.642429, 54.458523>,  <55.505840, 53.031200, 54.550686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.486778, 52.642429, 54.458523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996081, -0.063448, 0.061627,
		-0.074515, -0.226566, 0.971141,
		-0.047654, -0.971927, -0.230406,
		55.472481, 52.350853, 54.389400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.611568, 52.390945, 55.071575>,  <55.505840, 53.031200, 54.550686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.611568, 52.390945, 55.071575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.740295, 52.340309, 54.696255>,  <55.817532, 52.309929, 54.471062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.740295, 52.340309, 54.696255>,  <55.611568, 52.390945, 55.071575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.740295, 52.340309, 54.696255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942255, 0.139823, 0.304313,
		0.092673, -0.982051, 0.164277,
		0.321820, -0.126589, -0.938300,
		55.836842, 52.302334, 54.414764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.197292, 52.709129, 54.720219>,  <55.611568, 52.390945, 55.071575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.197292, 52.709129, 54.720219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.526558, 52.563507, 54.894512>,  <56.724117, 52.476135, 54.999088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.526558, 52.563507, 54.894512>,  <56.197292, 52.709129, 54.720219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.526558, 52.563507, 54.894512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534327, 0.237063, -0.811354,
		0.192082, 0.900702, 0.389667,
		0.823164, -0.364056, 0.435734,
		56.773506, 52.454288, 55.025234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.744637, 53.224915, 54.846542>,  <56.197292, 52.709129, 54.720219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.744637, 53.224915, 54.846542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.932198, 52.871689, 54.839348>,  <57.044735, 52.659752, 54.835030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.932198, 52.871689, 54.839348>,  <56.744637, 53.224915, 54.846542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.932198, 52.871689, 54.839348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679347, 0.373593, -0.631598,
		0.564465, 0.283934, 0.775087,
		0.468899, -0.883068, -0.017990,
		57.072868, 52.606770, 54.833950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.503906, 53.399479, 54.823559>,  <56.744637, 53.224915, 54.846542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.503906, 53.399479, 54.823559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.410919, 53.046516, 54.659943>,  <57.355129, 52.834740, 54.561771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.410919, 53.046516, 54.659943>,  <57.503906, 53.399479, 54.823559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.410919, 53.046516, 54.659943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531160, 0.237127, -0.813413,
		0.814757, -0.406357, 0.413576,
		-0.232466, -0.882408, -0.409042,
		57.341179, 52.781796, 54.537231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.206406, 53.710598, 54.540894>,  <57.503906, 53.399479, 54.823559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.206406, 53.710598, 54.540894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.204681, 53.977329, 54.838974>,  <58.203648, 54.137367, 55.017822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.204681, 53.977329, 54.838974>,  <58.206406, 53.710598, 54.540894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.204681, 53.977329, 54.838974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992377, -0.088927, 0.085318,
		0.123161, 0.739885, -0.661363,
		-0.004312, 0.666829, 0.745198,
		58.203388, 54.177380, 55.062534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.574837, 54.421333, 54.316956>,  <58.206406, 53.710598, 54.540894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.574837, 54.421333, 54.316956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.596947, 54.340446, 54.708069>,  <58.610214, 54.291916, 54.942738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.596947, 54.340446, 54.708069>,  <58.574837, 54.421333, 54.316956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.596947, 54.340446, 54.708069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995575, 0.085693, -0.038563,
		-0.075991, 0.975585, 0.206055,
		0.055279, -0.202212, 0.977780,
		58.613529, 54.279781, 55.001404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.069832, 54.866356, 54.669853>,  <58.574837, 54.421333, 54.316956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.069832, 54.866356, 54.669853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.107216, 54.522217, 54.870281>,  <59.129646, 54.315735, 54.990540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.107216, 54.522217, 54.870281>,  <59.069832, 54.866356, 54.669853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.107216, 54.522217, 54.870281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980423, -0.008072, -0.196736,
		0.173305, 0.509649, 0.842747,
		0.093464, -0.860344, 0.501071,
		59.135254, 54.264114, 55.020603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.648670, 54.941959, 55.112228>,  <59.069832, 54.866356, 54.669853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.648670, 54.941959, 55.112228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.577179, 54.555275, 55.038994>,  <59.534283, 54.323265, 54.995052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.577179, 54.555275, 55.038994>,  <59.648670, 54.941959, 55.112228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.577179, 54.555275, 55.038994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965338, -0.136324, -0.222570,
		0.190203, -0.216519, 0.957571,
		-0.178731, -0.966713, -0.183085,
		59.523560, 54.265263, 54.984070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.979038, 55.678638, 55.224899>,  <59.648670, 54.941959, 55.112228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.979038, 55.678638, 55.224899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.028015, 55.797989, 54.846275>,  <60.057400, 55.869598, 54.619099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.028015, 55.797989, 54.846275>,  <59.979038, 55.678638, 55.224899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.028015, 55.797989, 54.846275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856290, 0.450431, 0.252745,
		0.501774, -0.841478, -0.200344,
		0.122438, 0.298373, -0.946563,
		60.064747, 55.887501, 54.562305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.217300, 56.326485, 55.591377>,  <59.979038, 55.678638, 55.224899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.217300, 56.326485, 55.591377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.818924, 56.347172, 55.561890>,  <59.579899, 56.359585, 55.544197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.818924, 56.347172, 55.561890>,  <60.217300, 56.326485, 55.591377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.818924, 56.347172, 55.561890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074312, 0.009664, -0.997188,
		-0.050863, -0.998615, -0.013468,
		-0.995937, 0.051721, -0.073717,
		59.520142, 56.362686, 55.539776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.567951, 56.394039, 56.231194>,  <60.217300, 56.326485, 55.591377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.567951, 56.394039, 56.231194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.362038, 56.120659, 56.438225>,  <60.238487, 55.956631, 56.562443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.362038, 56.120659, 56.438225>,  <60.567951, 56.394039, 56.231194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.362038, 56.120659, 56.438225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824203, -0.228364, 0.518208,
		-0.235975, 0.693355, 0.680863,
		-0.514787, -0.683453, 0.517577,
		60.207600, 55.915623, 56.593498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.557541, 56.414417, 57.059025>,  <60.567951, 56.394039, 56.231194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.557541, 56.414417, 57.059025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.514847, 56.032074, 56.949524>,  <60.489231, 55.802666, 56.883823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.514847, 56.032074, 56.949524>,  <60.557541, 56.414417, 57.059025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.514847, 56.032074, 56.949524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706121, -0.266700, 0.655945,
		-0.700001, -0.123290, 0.703419,
		-0.106731, -0.955861, -0.273748,
		60.482826, 55.745316, 56.867401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.400204, 55.966698, 57.671005>,  <60.557541, 56.414417, 57.059025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.400204, 55.966698, 57.671005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.558502, 55.737740, 57.383743>,  <60.653481, 55.600365, 57.211384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.558502, 55.737740, 57.383743>,  <60.400204, 55.966698, 57.671005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.558502, 55.737740, 57.383743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804727, -0.160652, 0.571495,
		-0.442493, -0.804089, 0.397041,
		0.395747, -0.572392, -0.718159,
		60.677227, 55.566021, 57.168297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.759144, 55.309277, 58.027950>,  <60.400204, 55.966698, 57.671005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.759144, 55.309277, 58.027950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.919296, 55.402107, 57.673363>,  <61.015388, 55.457806, 57.460609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.919296, 55.402107, 57.673363>,  <60.759144, 55.309277, 58.027950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.919296, 55.402107, 57.673363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897599, 0.095367, 0.430374,
		0.184419, -0.968012, -0.170125,
		0.400383, 0.232073, -0.886474,
		61.039410, 55.471729, 57.407421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.345592, 55.006893, 58.122787>,  <60.759144, 55.309277, 58.027950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.345592, 55.006893, 58.122787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.356514, 55.324104, 57.879356>,  <61.363068, 55.514431, 57.733299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.356514, 55.324104, 57.879356>,  <61.345592, 55.006893, 58.122787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.356514, 55.324104, 57.879356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966281, 0.134997, 0.219263,
		0.256037, -0.594042, -0.762600,
		0.027303, 0.793026, -0.608576,
		61.364704, 55.562012, 57.696785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.954304, 54.913425, 57.821125>,  <61.345592, 55.006893, 58.122787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.954304, 54.913425, 57.821125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.844162, 55.296963, 57.793411>,  <61.778076, 55.527084, 57.776783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.844162, 55.296963, 57.793411>,  <61.954304, 54.913425, 57.821125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.844162, 55.296963, 57.793411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938888, 0.283706, 0.194936,
		0.206570, -0.011376, -0.978366,
		-0.275351, 0.958844, -0.069286,
		61.761559, 55.584618, 57.772625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.437119, 54.708580, 58.322514>,  <61.954304, 54.913425, 57.821125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.437119, 54.708580, 58.322514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.381088, 54.348145, 58.158356>,  <62.347469, 54.131882, 58.059860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.381088, 54.348145, 58.158356>,  <62.437119, 54.708580, 58.322514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.381088, 54.348145, 58.158356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989206, -0.109343, -0.097553,
		0.043031, -0.419626, 0.906677,
		-0.140074, -0.901087, -0.410391,
		62.339066, 54.077820, 58.035240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.785248, 54.184227, 58.727135>,  <62.437119, 54.708580, 58.322514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.785248, 54.184227, 58.727135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.773041, 54.104500, 58.335350>,  <62.765717, 54.056664, 58.100281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.773041, 54.104500, 58.335350>,  <62.785248, 54.184227, 58.727135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.773041, 54.104500, 58.335350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990543, -0.137169, -0.002950,
		-0.133764, -0.970286, 0.201622,
		-0.030518, -0.199321, -0.979459,
		62.763885, 54.044704, 58.041512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.133537, 53.619068, 58.604099>,  <62.785248, 54.184227, 58.727135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.133537, 53.619068, 58.604099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.123695, 53.804611, 58.249870>,  <63.117790, 53.915936, 58.037334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.123695, 53.804611, 58.249870>,  <63.133537, 53.619068, 58.604099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.123695, 53.804611, 58.249870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995807, -0.066696, -0.062608,
		-0.088105, -0.883396, -0.460271,
		-0.024609, 0.463857, -0.885568,
		63.116314, 53.943768, 57.984200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.875698, 53.937130, 58.311592>,  <63.133537, 53.619068, 58.604099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.875698, 53.937130, 58.311592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.711113, 54.053009, 57.965927>,  <63.612362, 54.122536, 57.758530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.711113, 54.053009, 57.965927>,  <63.875698, 53.937130, 58.311592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.711113, 54.053009, 57.965927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910447, 0.174561, -0.374986,
		0.042218, -0.941067, -0.335576,
		-0.411466, 0.289693, -0.864161,
		63.587673, 54.139915, 57.706680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.114601, 54.344543, 57.701843>,  <63.875698, 53.937130, 58.311592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.114601, 54.344543, 57.701843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.312920, 54.028477, 57.845970>,  <64.431908, 53.838837, 57.932446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.312920, 54.028477, 57.845970>,  <64.114601, 54.344543, 57.701843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.312920, 54.028477, 57.845970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802799, 0.575250, 0.156849,
		-0.331208, 0.211494, 0.919550,
		0.495798, -0.790163, 0.360315,
		64.461662, 53.791428, 57.954063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.400505, 54.710312, 58.338879>,  <64.114601, 54.344543, 57.701843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.400505, 54.710312, 58.338879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.614861, 54.381443, 58.262085>,  <64.743469, 54.184120, 58.216007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.614861, 54.381443, 58.262085>,  <64.400505, 54.710312, 58.338879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.614861, 54.381443, 58.262085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826934, 0.465238, 0.315806,
		-0.170329, -0.327994, 0.929197,
		0.535880, -0.822176, -0.191986,
		64.775627, 54.134789, 58.204491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.741371, 54.627663, 58.940998>,  <64.400505, 54.710312, 58.338879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.741371, 54.627663, 58.940998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.946175, 54.467445, 58.637047>,  <65.069061, 54.371315, 58.454678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.946175, 54.467445, 58.637047>,  <64.741371, 54.627663, 58.940998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.946175, 54.467445, 58.637047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841304, 0.412367, 0.349516,
		0.173353, -0.818243, 0.548112,
		0.512012, -0.400539, -0.759876,
		65.099777, 54.347282, 58.409084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.247917, 54.243198, 59.183800>,  <64.741371, 54.627663, 58.940998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.247917, 54.243198, 59.183800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.327293, 54.381077, 58.816803>,  <65.374924, 54.463806, 58.596603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.327293, 54.381077, 58.816803>,  <65.247917, 54.243198, 59.183800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.327293, 54.381077, 58.816803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883929, 0.341472, 0.319479,
		0.423424, -0.874402, -0.236925,
		0.198450, 0.344700, -0.917496,
		65.386826, 54.484486, 58.541553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.882500, 54.024033, 58.971577>,  <65.247917, 54.243198, 59.183800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.882500, 54.024033, 58.971577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.797775, 54.374146, 58.797676>,  <65.746941, 54.584213, 58.693336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.797775, 54.374146, 58.797676>,  <65.882500, 54.024033, 58.971577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.797775, 54.374146, 58.797676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907201, 0.341544, 0.245629,
		0.363483, -0.342383, -0.866403,
		-0.211815, 0.875284, -0.434756,
		65.734230, 54.636730, 58.667248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.460922, 54.413822, 59.160149>,  <65.882500, 54.024033, 58.971577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.460922, 54.413822, 59.160149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.316017, 54.640202, 58.863914>,  <66.229073, 54.776031, 58.686172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.316017, 54.640202, 58.863914>,  <66.460922, 54.413822, 59.160149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.316017, 54.640202, 58.863914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812658, 0.580890, 0.046401,
		0.456461, -0.585036, -0.670355,
		-0.362257, 0.565950, -0.740588,
		66.207336, 54.809986, 58.641739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.827347, 54.556740, 58.434429>,  <66.460922, 54.413822, 59.160149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.827347, 54.556740, 58.434429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.631004, 54.868401, 58.590370>,  <66.513199, 55.055397, 58.683937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.631004, 54.868401, 58.590370>,  <66.827347, 54.556740, 58.434429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.631004, 54.868401, 58.590370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870087, 0.415320, 0.265438,
		0.044902, 0.469498, -0.881791,
		-0.490848, 0.779154, 0.389855,
		66.483749, 55.102146, 58.707325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.948921, 55.174690, 57.987194>,  <66.827347, 54.556740, 58.434429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.948921, 55.174690, 57.987194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.920883, 55.176476, 58.386208>,  <66.904060, 55.177547, 58.625614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.920883, 55.176476, 58.386208>,  <66.948921, 55.174690, 57.987194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.920883, 55.176476, 58.386208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890642, 0.450653, 0.060574,
		-0.449270, 0.892688, -0.035564,
		-0.070100, 0.004460, 0.997530,
		66.899857, 55.177814, 58.685467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.897560, 55.745029, 58.404633>,  <66.948921, 55.174690, 57.987194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.897560, 55.745029, 58.404633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.101585, 55.462231, 58.600594>,  <67.223999, 55.292553, 58.718170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.101585, 55.462231, 58.600594>,  <66.897560, 55.745029, 58.404633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.101585, 55.462231, 58.600594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860086, 0.412879, -0.299637,
		0.009572, 0.574189, 0.818667,
		0.510059, -0.706992, 0.489900,
		67.254601, 55.250134, 58.747562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.402542, 56.161201, 58.855473>,  <66.897560, 55.745029, 58.404633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.402542, 56.161201, 58.855473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.522316, 55.794262, 58.750542>,  <67.594185, 55.574100, 58.687584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.522316, 55.794262, 58.750542>,  <67.402542, 56.161201, 58.855473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.522316, 55.794262, 58.750542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936393, 0.335298, -0.103648,
		0.183037, -0.214601, 0.959398,
		0.299441, -0.917345, -0.262323,
		67.612152, 55.519058, 58.671844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.510857, 57.008251, 58.609077>,  <67.402542, 56.161201, 58.855473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.510857, 57.008251, 58.609077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.420410, 56.988586, 58.998222>,  <67.366142, 56.976788, 59.231709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.420410, 56.988586, 58.998222>,  <67.510857, 57.008251, 58.609077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.420410, 56.988586, 58.998222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822550, 0.525364, 0.217723,
		-0.521810, 0.849456, -0.078351,
		-0.226109, -0.049162, 0.972861,
		67.352577, 56.973839, 59.290081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.430885, 57.677361, 58.823132>,  <67.510857, 57.008251, 58.609077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.430885, 57.677361, 58.823132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.556786, 57.446617, 59.124641>,  <67.632324, 57.308170, 59.305546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.556786, 57.446617, 59.124641>,  <67.430885, 57.677361, 58.823132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.556786, 57.446617, 59.124641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802684, 0.585604, 0.112987,
		-0.506588, 0.569477, 0.647352,
		0.314749, -0.576857, 0.753770,
		67.651207, 57.273560, 59.350773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.805931, 58.127102, 59.410748>,  <67.430885, 57.677361, 58.823132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.805931, 58.127102, 59.410748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.925575, 57.749073, 59.358032>,  <67.997360, 57.522255, 59.326405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.925575, 57.749073, 59.358032>,  <67.805931, 58.127102, 59.410748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.925575, 57.749073, 59.358032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949997, 0.307909, -0.051936,
		0.089662, -0.109663, 0.989916,
		0.299109, -0.945075, -0.131787,
		68.015305, 57.465549, 59.318497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.427399, 57.960903, 59.852505>,  <67.805931, 58.127102, 59.410748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.427399, 57.960903, 59.852505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.469711, 57.679302, 59.571594>,  <68.495102, 57.510342, 59.403049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.469711, 57.679302, 59.571594>,  <68.427399, 57.960903, 59.852505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.469711, 57.679302, 59.571594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993688, 0.101355, 0.048082,
		0.037329, -0.702931, 0.710278,
		0.105788, -0.703999, -0.702277,
		68.501450, 57.468102, 59.360912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.953674, 57.409916, 60.024246>,  <68.427399, 57.960903, 59.852505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.953674, 57.409916, 60.024246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.897903, 57.574478, 59.663956>,  <68.864441, 57.673214, 59.447781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.897903, 57.574478, 59.663956>,  <68.953674, 57.409916, 60.024246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.897903, 57.574478, 59.663956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969224, 0.243069, -0.039005,
		0.202892, -0.878444, -0.432633,
		-0.139423, 0.411405, -0.900726,
		68.856079, 57.697899, 59.393738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.340836, 57.058586, 59.636765>,  <68.953674, 57.409916, 60.024246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.340836, 57.058586, 59.636765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.256477, 57.436073, 59.534851>,  <69.205864, 57.662567, 59.473701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.256477, 57.436073, 59.534851>,  <69.340836, 57.058586, 59.636765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.256477, 57.436073, 59.534851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965460, 0.241891, 0.096833,
		0.153014, -0.225567, -0.962136,
		-0.210890, 0.943721, -0.254788,
		69.193207, 57.719189, 59.458416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.723122, 57.330547, 58.978642>,  <69.340836, 57.058586, 59.636765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.723122, 57.330547, 58.978642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.652130, 57.565079, 59.294800>,  <69.609535, 57.705799, 59.484493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.652130, 57.565079, 59.294800>,  <69.723122, 57.330547, 58.978642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.652130, 57.565079, 59.294800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984074, 0.113909, 0.136464,
		-0.010020, 0.802026, -0.597205,
		-0.177475, 0.586327, 0.790394,
		69.598885, 57.740978, 59.531918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.106766, 58.008198, 58.935226>,  <69.723122, 57.330547, 58.978642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.106766, 58.008198, 58.935226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.020210, 57.968304, 59.323708>,  <69.968277, 57.944366, 59.556797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.020210, 57.968304, 59.323708>,  <70.106766, 58.008198, 58.935226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.020210, 57.968304, 59.323708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934031, 0.268408, 0.235675,
		-0.284182, 0.958128, 0.035073,
		-0.216393, -0.099734, 0.971199,
		69.955292, 57.938385, 59.615067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.308113, 58.649227, 59.476673>,  <70.106766, 58.008198, 58.935226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.308113, 58.649227, 59.476673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.328346, 58.279366, 59.627647>,  <70.340485, 58.057449, 59.718231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.328346, 58.279366, 59.627647>,  <70.308113, 58.649227, 59.476673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.328346, 58.279366, 59.627647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935376, 0.176305, 0.306574,
		-0.350019, 0.337539, 0.873816,
		0.050577, -0.924653, 0.377436,
		70.343521, 58.001968, 59.740879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.617500, 58.775822, 60.114059>,  <70.308113, 58.649227, 59.476673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.617500, 58.775822, 60.114059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.667114, 58.391350, 60.015465>,  <70.696884, 58.160667, 59.956310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.667114, 58.391350, 60.015465>,  <70.617500, 58.775822, 60.114059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.667114, 58.391350, 60.015465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868230, -0.015141, 0.495931,
		-0.480410, -0.275515, 0.832645,
		0.124030, -0.961177, -0.246485,
		70.704323, 58.102997, 59.941521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.075180, 59.378723, 60.349041>,  <70.617500, 58.775822, 60.114059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.075180, 59.378723, 60.349041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.849678, 59.514915, 60.048042>,  <70.714378, 59.596630, 59.867443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.849678, 59.514915, 60.048042>,  <71.075180, 59.378723, 60.349041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.849678, 59.514915, 60.048042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690885, -0.693662, 0.203743,
		-0.452609, 0.634751, 0.626287,
		-0.563758, 0.340477, -0.752498,
		70.680550, 59.617058, 59.822292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.400230, 58.910324, 59.865070>,  <71.075180, 59.378723, 60.349041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.400230, 58.910324, 59.865070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.133560, 58.877033, 59.568794>,  <70.973557, 58.857059, 59.391029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.133560, 58.877033, 59.568794>,  <71.400230, 58.910324, 59.865070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.133560, 58.877033, 59.568794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743546, 0.143408, 0.653126,
		0.051864, 0.986158, -0.157488,
		-0.666671, -0.083225, -0.740691,
		70.933556, 58.852066, 59.346588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.674919, 59.581329, 59.711769>,  <71.400230, 58.910324, 59.865070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.674919, 59.581329, 59.711769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.502441, 59.435753, 59.381531>,  <71.398956, 59.348408, 59.183388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.502441, 59.435753, 59.381531>,  <71.674919, 59.581329, 59.711769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.502441, 59.435753, 59.381531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235892, 0.837736, -0.492496,
		0.870875, -0.407116, -0.275380,
		-0.431199, -0.363943, -0.825599,
		71.373077, 59.326569, 59.133850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.801903, 59.489700, 60.557728>,  <71.674919, 59.581329, 59.711769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.801903, 59.489700, 60.557728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.896667, 59.245083, 60.859688>,  <71.953529, 59.098312, 61.040863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.896667, 59.245083, 60.859688>,  <71.801903, 59.489700, 60.557728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.896667, 59.245083, 60.859688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026235, -0.772716, -0.634209,
		0.971176, 0.170059, -0.167025,
		0.236916, -0.611547, 0.754905,
		71.967743, 59.061619, 61.086159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.417191, 59.171200, 60.374264>,  <71.801903, 59.489700, 60.557728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.417191, 59.171200, 60.374264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.187347, 58.966213, 60.629517>,  <72.049438, 58.843224, 60.782669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.187347, 58.966213, 60.629517>,  <72.417191, 59.171200, 60.374264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.187347, 58.966213, 60.629517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214043, -0.846659, -0.487190,
		0.789943, -0.143356, 0.596186,
		-0.574608, -0.512462, 0.638128,
		72.014961, 58.812473, 60.820953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.909882, 58.798576, 60.022282>,  <72.417191, 59.171200, 60.374264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.909882, 58.798576, 60.022282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.287865, 58.715378, 59.921249>,  <73.514656, 58.665459, 59.860630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.287865, 58.715378, 59.921249>,  <72.909882, 58.798576, 60.022282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.287865, 58.715378, 59.921249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075693, -0.889970, 0.449694,
		-0.318318, -0.405823, -0.856727,
		0.944957, -0.207994, -0.252576,
		73.571350, 58.652981, 59.845478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.971413, 58.182549, 59.713409>,  <72.909882, 58.798576, 60.022282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.971413, 58.182549, 59.713409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.339989, 58.224888, 59.862930>,  <73.561134, 58.250290, 59.952644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.339989, 58.224888, 59.862930>,  <72.971413, 58.182549, 59.713409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.339989, 58.224888, 59.862930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043097, -0.928385, 0.369112,
		0.386102, -0.356228, -0.850898,
		0.921449, 0.105844, 0.373803,
		73.616425, 58.256641, 59.975071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.569405, 57.810959, 60.249809>,  <72.971413, 58.182549, 59.713409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.569405, 57.810959, 60.249809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.887566, 57.844147, 60.489960>,  <73.078461, 57.864059, 60.634052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.887566, 57.844147, 60.489960>,  <72.569405, 57.810959, 60.249809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.887566, 57.844147, 60.489960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035440, -0.982523, 0.182736,
		0.605049, -0.166625, -0.778557,
		0.795399, 0.082972, 0.600380,
		73.126183, 57.869038, 60.670074>
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
