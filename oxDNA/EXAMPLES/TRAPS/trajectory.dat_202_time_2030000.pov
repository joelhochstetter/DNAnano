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
	<35.699303, 52.258736, 50.363762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924858, 52.538689, 50.188400>,  <36.060192, 52.706661, 50.083183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924858, 52.538689, 50.188400>,  <35.699303, 52.258736, 50.363762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924858, 52.538689, 50.188400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805177, -0.347871, 0.480287,
		0.183635, -0.623821, -0.759687,
		0.563887, 0.699880, -0.438405,
		36.094025, 52.748653, 50.056877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343445, 51.943745, 50.114235>,  <35.699303, 52.258736, 50.363762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343445, 51.943745, 50.114235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379967, 52.338490, 50.167549>,  <36.401882, 52.575336, 50.199535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379967, 52.338490, 50.167549>,  <36.343445, 51.943745, 50.114235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379967, 52.338490, 50.167549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711704, -0.158283, 0.684415,
		0.696520, 0.032365, -0.716807,
		0.091308, 0.986863, 0.133282,
		36.407360, 52.634548, 50.207535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054176, 51.852943, 50.182682>,  <36.343445, 51.943745, 50.114235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054176, 51.852943, 50.182682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929398, 52.163914, 50.401146>,  <36.854530, 52.350498, 50.532223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929398, 52.163914, 50.401146>,  <37.054176, 51.852943, 50.182682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929398, 52.163914, 50.401146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522167, -0.339958, 0.782158,
		0.793744, 0.529180, -0.299898,
		-0.311950, 0.777430, 0.546160,
		36.835812, 52.397144, 50.564995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571381, 52.035149, 50.715710>,  <37.054176, 51.852943, 50.182682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571381, 52.035149, 50.715710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236526, 52.206741, 50.851463>,  <37.035614, 52.309696, 50.932915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236526, 52.206741, 50.851463>,  <37.571381, 52.035149, 50.715710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236526, 52.206741, 50.851463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287401, -0.182956, 0.940174,
		0.465409, 0.884592, 0.029869,
		-0.837135, 0.428981, 0.339382,
		36.985386, 52.335434, 50.953278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187859, 51.553463, 50.792339>,  <37.571381, 52.035149, 50.715710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187859, 51.553463, 50.792339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400963, 51.238758, 50.917030>,  <38.528824, 51.049934, 50.991844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400963, 51.238758, 50.917030>,  <38.187859, 51.553463, 50.792339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400963, 51.238758, 50.917030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845215, 0.476333, -0.242321,
		0.042162, 0.392576, 0.918753,
		0.532761, -0.786760, 0.311728,
		38.560791, 51.002731, 51.010548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690563, 51.856781, 51.079830>,  <38.187859, 51.553463, 50.792339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690563, 51.856781, 51.079830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811394, 51.482204, 51.008469>,  <38.883892, 51.257458, 50.965652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811394, 51.482204, 51.008469>,  <38.690563, 51.856781, 51.079830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811394, 51.482204, 51.008469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904505, 0.340651, -0.256568,
		0.301035, -0.083869, 0.949918,
		0.302073, -0.936441, -0.178408,
		38.902016, 51.201271, 50.954945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316475, 51.756565, 51.456051>,  <38.690563, 51.856781, 51.079830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316475, 51.756565, 51.456051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314133, 51.487843, 51.159767>,  <39.312729, 51.326611, 50.981998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314133, 51.487843, 51.159767>,  <39.316475, 51.756565, 51.456051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314133, 51.487843, 51.159767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915495, 0.294386, -0.274236,
		0.402286, -0.679716, 0.613312,
		-0.005853, -0.671806, -0.740704,
		39.312378, 51.286301, 50.937557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020782, 51.459244, 51.373249>,  <39.316475, 51.756565, 51.456051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020782, 51.459244, 51.373249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816662, 51.376892, 51.039253>,  <39.694191, 51.327480, 50.838856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816662, 51.376892, 51.039253>,  <40.020782, 51.459244, 51.373249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816662, 51.376892, 51.039253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791801, 0.266441, -0.549601,
		0.335626, -0.941607, 0.027050,
		-0.510301, -0.205879, -0.834989,
		39.663570, 51.315128, 50.788757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459694, 51.053024, 50.802837>,  <40.020782, 51.459244, 51.373249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459694, 51.053024, 50.802837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162098, 51.266144, 50.641541>,  <39.983540, 51.394016, 50.544762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162098, 51.266144, 50.641541>,  <40.459694, 51.053024, 50.802837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162098, 51.266144, 50.641541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652780, 0.450703, -0.608888,
		-0.142676, -0.716233, -0.683121,
		-0.743990, 0.532801, -0.403238,
		39.938900, 51.425983, 50.520569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699665, 51.353893, 50.241711>,  <40.459694, 51.053024, 50.802837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699665, 51.353893, 50.241711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368801, 51.574638, 50.199280>,  <40.170284, 51.707085, 50.173820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368801, 51.574638, 50.199280>,  <40.699665, 51.353893, 50.241711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368801, 51.574638, 50.199280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526641, 0.695364, -0.488997,
		-0.196097, -0.460344, -0.865811,
		-0.827161, 0.551863, -0.106077,
		40.120651, 51.740196, 50.167458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249020, 51.834335, 50.440788>,  <40.699665, 51.353893, 50.241711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249020, 51.834335, 50.440788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423454, 51.607201, 50.720043>,  <41.528114, 51.470921, 50.887596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423454, 51.607201, 50.720043>,  <41.249020, 51.834335, 50.440788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423454, 51.607201, 50.720043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712023, -0.256699, -0.653551,
		0.550319, 0.782093, 0.292368,
		0.436087, -0.567835, 0.698134,
		41.554279, 51.436852, 50.929485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013245, 52.080811, 50.436878>,  <41.249020, 51.834335, 50.440788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013245, 52.080811, 50.436878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976452, 51.703999, 50.565945>,  <41.954376, 51.477909, 50.643387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976452, 51.703999, 50.565945>,  <42.013245, 52.080811, 50.436878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976452, 51.703999, 50.565945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937362, -0.191255, -0.291161,
		0.335995, 0.275675, 0.900617,
		-0.091982, -0.942032, 0.322668,
		41.948856, 51.421391, 50.662746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693428, 51.944729, 50.817978>,  <42.013245, 52.080811, 50.436878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693428, 51.944729, 50.817978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491806, 51.640160, 50.654922>,  <42.370831, 51.457420, 50.557091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491806, 51.640160, 50.654922>,  <42.693428, 51.944729, 50.817978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491806, 51.640160, 50.654922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786336, -0.209379, -0.581237,
		0.357214, -0.613515, 0.704270,
		-0.504057, -0.761419, -0.407636,
		42.340588, 51.411736, 50.532631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153301, 51.373772, 50.700253>,  <42.693428, 51.944729, 50.817978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153301, 51.373772, 50.700253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866070, 51.435223, 50.428738>,  <42.693729, 51.472095, 50.265827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866070, 51.435223, 50.428738>,  <43.153301, 51.373772, 50.700253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866070, 51.435223, 50.428738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657224, -0.171159, -0.734003,
		-0.228948, -0.973191, 0.021935,
		-0.718080, 0.153632, -0.678791,
		42.650646, 51.481312, 50.225101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013691, 50.847565, 50.277363>,  <43.153301, 51.373772, 50.700253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013691, 50.847565, 50.277363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983265, 51.213718, 50.119232>,  <42.965008, 51.433411, 50.024353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983265, 51.213718, 50.119232>,  <43.013691, 50.847565, 50.277363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983265, 51.213718, 50.119232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788161, -0.187654, -0.586164,
		-0.610750, -0.356168, -0.707197,
		-0.076065, 0.915385, -0.395328,
		42.960445, 51.488335, 50.000633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938766, 50.794842, 49.493931>,  <43.013691, 50.847565, 50.277363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938766, 50.794842, 49.493931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102047, 51.141174, 49.609665>,  <43.200016, 51.348972, 49.679104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102047, 51.141174, 49.609665>,  <42.938766, 50.794842, 49.493931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102047, 51.141174, 49.609665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822378, -0.211178, -0.528298,
		-0.396314, 0.453593, -0.798241,
		0.408203, 0.865827, 0.289332,
		43.224506, 51.400921, 49.696465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448135, 50.789349, 49.093056>,  <42.938766, 50.794842, 49.493931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.448135, 50.789349, 49.093056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507874, 51.135906, 49.283661>,  <43.543716, 51.343842, 49.398022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507874, 51.135906, 49.283661>,  <43.448135, 50.789349, 49.093056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507874, 51.135906, 49.283661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911236, 0.066484, -0.406482,
		-0.383853, 0.494922, -0.779557,
		0.149349, 0.866390, 0.476511,
		43.552677, 51.395824, 49.426613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728065, 51.224888, 48.569782>,  <43.448135, 50.789349, 49.093056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728065, 51.224888, 48.569782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865631, 51.293610, 48.939041>,  <43.948170, 51.334843, 49.160599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865631, 51.293610, 48.939041>,  <43.728065, 51.224888, 48.569782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865631, 51.293610, 48.939041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933282, -0.170867, -0.315894,
		0.103464, 0.970200, -0.219104,
		0.343918, 0.171802, 0.923149,
		43.968807, 51.345150, 49.215984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.179260, 51.813229, 48.804539>,  <43.728065, 51.224888, 48.569782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.179260, 51.813229, 48.804539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251404, 51.483913, 49.019821>,  <44.294689, 51.286324, 49.148991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251404, 51.483913, 49.019821>,  <44.179260, 51.813229, 48.804539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251404, 51.483913, 49.019821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967828, 0.050949, -0.246400,
		0.175437, 0.565331, 0.805991,
		0.180362, -0.823289, 0.538205,
		44.305511, 51.236927, 49.181282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.736813, 51.790131, 49.308395>,  <44.179260, 51.813229, 48.804539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.736813, 51.790131, 49.308395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.680317, 51.420639, 49.165977>,  <44.646420, 51.198944, 49.080528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.680317, 51.420639, 49.165977>,  <44.736813, 51.790131, 49.308395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.680317, 51.420639, 49.165977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975553, -0.068697, -0.208750,
		0.168370, -0.376825, 0.910854,
		-0.141235, -0.923734, -0.356046,
		44.637947, 51.143520, 49.059162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274792, 51.314789, 49.546654>,  <44.736813, 51.790131, 49.308395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274792, 51.314789, 49.546654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148823, 51.189278, 49.188354>,  <45.073242, 51.113972, 48.973373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148823, 51.189278, 49.188354>,  <45.274792, 51.314789, 49.546654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148823, 51.189278, 49.188354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944254, -0.008162, -0.329117,
		0.095959, -0.949461, 0.298857,
		-0.314923, -0.313779, -0.895749,
		45.054344, 51.095142, 48.919628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.577770, 50.636414, 49.241020>,  <45.274792, 51.314789, 49.546654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.577770, 50.636414, 49.241020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483868, 50.901661, 48.956722>,  <45.427525, 51.060810, 48.786144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483868, 50.901661, 48.956722>,  <45.577770, 50.636414, 49.241020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483868, 50.901661, 48.956722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964012, 0.064962, -0.257799,
		-0.124780, -0.745687, -0.654508,
		-0.234756, 0.663122, -0.710745,
		45.413441, 51.100597, 48.743500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794468, 50.500618, 48.496288>,  <45.577770, 50.636414, 49.241020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.794468, 50.500618, 48.496288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763893, 50.896690, 48.543106>,  <45.745548, 51.134335, 48.571198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763893, 50.896690, 48.543106>,  <45.794468, 50.500618, 48.496288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.763893, 50.896690, 48.543106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936328, 0.111630, -0.332911,
		-0.342707, 0.084144, -0.935666,
		-0.076436, 0.990181, 0.117043,
		45.740963, 51.193745, 48.578220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.204453, 50.794701, 47.912045>,  <45.794468, 50.500618, 48.496288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.204453, 50.794701, 47.912045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.132946, 51.105286, 48.153755>,  <46.090042, 51.291637, 48.298782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.132946, 51.105286, 48.153755>,  <46.204453, 50.794701, 47.912045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.132946, 51.105286, 48.153755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901827, 0.374870, -0.214896,
		-0.393384, 0.506537, -0.767248,
		-0.178766, 0.776461, 0.604277,
		46.079315, 51.338223, 48.335037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.671658, 51.242432, 47.660828>,  <46.204453, 50.794701, 47.912045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.671658, 51.242432, 47.660828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.573826, 51.378185, 48.024147>,  <46.515129, 51.459637, 48.242138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.573826, 51.378185, 48.024147>,  <46.671658, 51.242432, 47.660828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.573826, 51.378185, 48.024147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896136, 0.436858, 0.078070,
		-0.370301, 0.833051, -0.410978,
		-0.244576, 0.339383, 0.908296,
		46.500454, 51.480000, 48.296635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.931900, 51.862911, 47.708260>,  <46.671658, 51.242432, 47.660828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.931900, 51.862911, 47.708260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.911484, 51.756393, 48.093277>,  <46.899235, 51.692482, 48.324287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.911484, 51.756393, 48.093277>,  <46.931900, 51.862911, 47.708260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.911484, 51.756393, 48.093277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904933, 0.395385, 0.157373,
		-0.422481, 0.879066, 0.220798,
		-0.051041, -0.266295, 0.962539,
		46.896172, 51.676506, 48.382038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.995377, 52.451691, 48.183704>,  <46.931900, 51.862911, 47.708260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.995377, 52.451691, 48.183704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.121239, 52.121143, 48.370514>,  <47.196758, 51.922817, 48.482601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.121239, 52.121143, 48.370514>,  <46.995377, 52.451691, 48.183704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.121239, 52.121143, 48.370514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829311, 0.478694, 0.288263,
		-0.461773, 0.296605, 0.835937,
		0.314658, -0.826364, 0.467026,
		47.215637, 51.873234, 48.510620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.270550, 52.618710, 48.930122>,  <46.995377, 52.451691, 48.183704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.270550, 52.618710, 48.930122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.422356, 52.263382, 48.826694>,  <47.513439, 52.050186, 48.764637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.422356, 52.263382, 48.826694>,  <47.270550, 52.618710, 48.930122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.422356, 52.263382, 48.826694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854477, 0.229386, 0.466102,
		-0.354735, -0.397834, 0.846103,
		0.379515, -0.888319, -0.258569,
		47.536209, 51.996887, 48.749123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.493816, 52.240692, 49.490154>,  <47.270550, 52.618710, 48.930122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.493816, 52.240692, 49.490154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.699978, 52.103729, 49.175926>,  <47.823673, 52.021549, 48.987389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.699978, 52.103729, 49.175926>,  <47.493816, 52.240692, 49.490154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.699978, 52.103729, 49.175926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811177, -0.100650, 0.576075,
		-0.276320, -0.934144, 0.225879,
		0.515402, -0.342409, -0.785568,
		47.854599, 52.001007, 48.940254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.861198, 51.551273, 49.677010>,  <47.493816, 52.240692, 49.490154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.861198, 51.551273, 49.677010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.071896, 51.782322, 49.427567>,  <48.198315, 51.920952, 49.277901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.071896, 51.782322, 49.427567>,  <47.861198, 51.551273, 49.677010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.071896, 51.782322, 49.427567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676862, 0.158767, 0.718784,
		0.514195, -0.800715, -0.307341,
		0.526746, 0.577623, -0.623611,
		48.229919, 51.955608, 49.240482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.594818, 51.249504, 49.558784>,  <47.861198, 51.551273, 49.677010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.594818, 51.249504, 49.558784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.585003, 51.647121, 49.516304>,  <48.579113, 51.885693, 49.490818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.585003, 51.647121, 49.516304>,  <48.594818, 51.249504, 49.558784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.585003, 51.647121, 49.516304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849450, 0.076739, 0.522059,
		0.527098, -0.077400, -0.846272,
		-0.024534, 0.994042, -0.106197,
		48.577644, 51.945335, 49.484444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.235672, 51.489471, 49.345581>,  <48.594818, 51.249504, 49.558784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.235672, 51.489471, 49.345581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.088112, 51.814381, 49.526302>,  <48.999577, 52.009327, 49.634735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.088112, 51.814381, 49.526302>,  <49.235672, 51.489471, 49.345581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.088112, 51.814381, 49.526302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879755, 0.148298, 0.451706,
		0.299907, 0.564111, -0.769308,
		-0.368900, 0.812272, 0.451804,
		48.977444, 52.058064, 49.661842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.582211, 52.210354, 49.178310>,  <49.235672, 51.489471, 49.345581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.582211, 52.210354, 49.178310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.450718, 52.182854, 49.555077>,  <49.371822, 52.166351, 49.781136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.450718, 52.182854, 49.555077>,  <49.582211, 52.210354, 49.178310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.450718, 52.182854, 49.555077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942737, 0.035704, 0.331620,
		-0.056431, 0.996994, 0.053081,
		-0.328728, -0.068755, 0.941919,
		49.352100, 52.162228, 49.837654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.902687, 52.754959, 49.612694>,  <49.582211, 52.210354, 49.178310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.902687, 52.754959, 49.612694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.798855, 52.422329, 49.809101>,  <49.736553, 52.222752, 49.926945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.798855, 52.422329, 49.809101>,  <49.902687, 52.754959, 49.612694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.798855, 52.422329, 49.809101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913820, -0.047076, 0.403381,
		-0.312326, 0.553414, 0.772131,
		-0.259585, -0.831575, 0.491018,
		49.720978, 52.172855, 49.956406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.894543, 52.809517, 50.300556>,  <49.902687, 52.754959, 49.612694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.894543, 52.809517, 50.300556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.984566, 52.432846, 50.200474>,  <50.038578, 52.206844, 50.140427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.984566, 52.432846, 50.200474>,  <49.894543, 52.809517, 50.300556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.984566, 52.432846, 50.200474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902505, 0.104695, 0.417760,
		-0.367198, -0.319829, 0.873427,
		0.225055, -0.941673, -0.250203,
		50.052082, 52.150345, 50.125412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.424538, 53.377625, 50.427914>,  <49.894543, 52.809517, 50.300556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.424538, 53.377625, 50.427914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.321892, 53.763763, 50.446888>,  <50.260303, 53.995449, 50.458275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.321892, 53.763763, 50.446888>,  <50.424538, 53.377625, 50.427914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.321892, 53.763763, 50.446888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603466, 0.121689, 0.788049,
		0.754970, 0.230850, -0.613782,
		-0.256612, 0.965350, 0.047438,
		50.244907, 54.053368, 50.461121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.987267, 53.884621, 50.288765>,  <50.424538, 53.377625, 50.427914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.987267, 53.884621, 50.288765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.718929, 53.995964, 50.563713>,  <50.557926, 54.062771, 50.728683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.718929, 53.995964, 50.563713>,  <50.987267, 53.884621, 50.288765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.718929, 53.995964, 50.563713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736586, 0.142533, 0.661155,
		0.086068, 0.949841, -0.300656,
		-0.670845, 0.278363, 0.687372,
		50.517677, 54.079472, 50.769924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.240429, 54.462086, 50.461609>,  <50.987267, 53.884621, 50.288765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.240429, 54.462086, 50.461609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.073071, 54.285713, 50.779228>,  <50.972656, 54.179890, 50.969799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.073071, 54.285713, 50.779228>,  <51.240429, 54.462086, 50.461609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.073071, 54.285713, 50.779228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842067, 0.139329, 0.521067,
		-0.340391, 0.886658, 0.313003,
		-0.418398, -0.440936, 0.794052,
		50.947552, 54.153431, 51.017445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.394108, 54.829834, 51.038677>,  <51.240429, 54.462086, 50.461609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.394108, 54.829834, 51.038677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.320953, 54.469315, 51.195759>,  <51.277061, 54.253002, 51.290009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.320953, 54.469315, 51.195759>,  <51.394108, 54.829834, 51.038677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.320953, 54.469315, 51.195759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805205, 0.091867, 0.585837,
		-0.564089, 0.423351, 0.708927,
		-0.182888, -0.901296, 0.392706,
		51.266087, 54.198925, 51.313572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.659012, 54.929298, 51.645302>,  <51.394108, 54.829834, 51.038677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.659012, 54.929298, 51.645302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.627380, 54.533058, 51.600662>,  <51.608402, 54.295315, 51.573879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.627380, 54.533058, 51.600662>,  <51.659012, 54.929298, 51.645302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.627380, 54.533058, 51.600662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785506, -0.130850, 0.604862,
		-0.613780, -0.039825, 0.788472,
		-0.079083, -0.990602, -0.111596,
		51.603657, 54.235878, 51.567184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.611168, 54.637859, 52.302345>,  <51.659012, 54.929298, 51.645302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.611168, 54.637859, 52.302345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.778343, 54.361671, 52.066185>,  <51.878651, 54.195957, 51.924488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.778343, 54.361671, 52.066185>,  <51.611168, 54.637859, 52.302345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.778343, 54.361671, 52.066185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661989, -0.213606, 0.718431,
		-0.622171, -0.691100, 0.367811,
		0.417941, -0.690473, -0.590399,
		51.903725, 54.154530, 51.889065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.083828, 54.294434, 52.817032>,  <51.611168, 54.637859, 52.302345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.083828, 54.294434, 52.817032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.980476, 54.577984, 53.079552>,  <51.918465, 54.748116, 53.237064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.980476, 54.577984, 53.079552>,  <52.083828, 54.294434, 52.817032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.980476, 54.577984, 53.079552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958482, 0.272946, 0.082535,
		-0.120627, 0.650377, -0.749973,
		-0.258381, 0.708880, 0.656299,
		51.902962, 54.790649, 53.276440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.326611, 54.987473, 52.559132>,  <52.083828, 54.294434, 52.817032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.326611, 54.987473, 52.559132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.304916, 54.910233, 52.951004>,  <52.291901, 54.863888, 53.186127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.304916, 54.910233, 52.951004>,  <52.326611, 54.987473, 52.559132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.304916, 54.910233, 52.951004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979408, 0.180793, 0.089859,
		-0.194471, 0.964379, 0.179317,
		-0.054239, -0.193099, 0.979679,
		52.288643, 54.852303, 53.244907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.625790, 55.543930, 52.992626>,  <52.326611, 54.987473, 52.559132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.625790, 55.543930, 52.992626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.676331, 55.171921, 53.130669>,  <52.706654, 54.948715, 53.213493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.676331, 55.171921, 53.130669>,  <52.625790, 55.543930, 52.992626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.676331, 55.171921, 53.130669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955561, 0.207516, 0.209380,
		-0.266343, 0.303317, 0.914910,
		0.126350, -0.930019, 0.345108,
		52.714237, 54.892914, 53.234200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.806534, 55.448734, 53.740852>,  <52.625790, 55.543930, 52.992626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.806534, 55.448734, 53.740852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.993095, 55.154041, 53.545021>,  <53.105034, 54.977226, 53.427525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.993095, 55.154041, 53.545021>,  <52.806534, 55.448734, 53.740852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.993095, 55.154041, 53.545021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882013, 0.345286, 0.320671,
		-0.067206, -0.581376, 0.810854,
		0.466407, -0.736736, -0.489577,
		53.133018, 54.933022, 53.398148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.242638, 54.982494, 54.159599>,  <52.806534, 55.448734, 53.740852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.242638, 54.982494, 54.159599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.384884, 55.001999, 53.786255>,  <53.470230, 55.013702, 53.562248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.384884, 55.001999, 53.786255>,  <53.242638, 54.982494, 54.159599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.384884, 55.001999, 53.786255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903081, 0.239358, 0.356585,
		0.240788, -0.969707, 0.041102,
		0.355621, 0.048743, -0.933358,
		53.491570, 55.016628, 53.506248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.870258, 54.536453, 53.929119>,  <53.242638, 54.982494, 54.159599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.870258, 54.536453, 53.929119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.902512, 54.908962, 53.787006>,  <53.921864, 55.132469, 53.701740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.902512, 54.908962, 53.787006>,  <53.870258, 54.536453, 53.929119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.902512, 54.908962, 53.787006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885519, 0.096691, 0.454430,
		0.457552, -0.351253, -0.816864,
		0.080637, 0.931274, -0.355283,
		53.926704, 55.188343, 53.680420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.543892, 54.825138, 53.914642>,  <53.870258, 54.536453, 53.929119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.543892, 54.825138, 53.914642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.407288, 55.193108, 53.837585>,  <54.325325, 55.413891, 53.791351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.407288, 55.193108, 53.837585>,  <54.543892, 54.825138, 53.914642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.407288, 55.193108, 53.837585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894480, 0.381047, 0.233899,
		0.288575, -0.092434, -0.952985,
		-0.341512, 0.919923, -0.192641,
		54.304832, 55.469086, 53.779793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.047058, 55.223705, 53.453091>,  <54.543892, 54.825138, 53.914642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.047058, 55.223705, 53.453091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.832413, 55.457485, 53.696556>,  <54.703629, 55.597755, 53.842636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.832413, 55.457485, 53.696556>,  <55.047058, 55.223705, 53.453091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.832413, 55.457485, 53.696556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843237, 0.398463, 0.360802,
		-0.031658, 0.706854, -0.706650,
		-0.536609, 0.584452, 0.608660,
		54.671429, 55.632820, 53.879154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.104950, 55.953827, 53.309769>,  <55.047058, 55.223705, 53.453091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.104950, 55.953827, 53.309769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.021904, 55.897648, 53.696999>,  <54.972076, 55.863941, 53.929337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.021904, 55.897648, 53.696999>,  <55.104950, 55.953827, 53.309769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.021904, 55.897648, 53.696999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822373, 0.510845, 0.250478,
		-0.529716, 0.848123, 0.009442,
		-0.207613, -0.140447, 0.968076,
		54.959621, 55.855515, 53.987423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.388515, 56.217609, 52.981140>,  <55.104950, 55.953827, 53.309769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.388515, 56.217609, 52.981140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.510765, 56.304600, 52.610348>,  <54.584114, 56.356792, 52.387871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.510765, 56.304600, 52.610348>,  <54.388515, 56.217609, 52.981140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.510765, 56.304600, 52.610348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890417, 0.279577, 0.359158,
		0.337271, -0.935169, -0.108200,
		0.305623, 0.217477, -0.926983,
		54.602451, 56.369843, 52.332253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.966892, 55.751751, 52.601795>,  <54.388515, 56.217609, 52.981140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.966892, 55.751751, 52.601795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.960510, 56.139420, 52.503441>,  <54.956680, 56.372021, 52.444427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.960510, 56.139420, 52.503441>,  <54.966892, 55.751751, 52.601795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.960510, 56.139420, 52.503441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828464, 0.150504, 0.539441,
		0.559815, -0.195099, -0.805322,
		-0.015960, 0.969167, -0.245887,
		54.955723, 56.430168, 52.429676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.408016, 55.859619, 52.174267>,  <54.966892, 55.751751, 52.601795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.408016, 55.859619, 52.174267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.357124, 56.194534, 52.386971>,  <55.326588, 56.395481, 52.514591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.357124, 56.194534, 52.386971>,  <55.408016, 55.859619, 52.174267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.357124, 56.194534, 52.386971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978057, 0.016736, 0.207663,
		0.164974, 0.546509, -0.821043,
		-0.127231, 0.837286, 0.531756,
		55.318954, 56.445721, 52.546497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.761562, 56.342186, 51.840145>,  <55.408016, 55.859619, 52.174267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.761562, 56.342186, 51.840145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.721558, 56.426479, 52.229111>,  <55.697556, 56.477055, 52.462490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.721558, 56.426479, 52.229111>,  <55.761562, 56.342186, 51.840145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.721558, 56.426479, 52.229111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968946, 0.242755, 0.047049,
		-0.226143, 0.946922, -0.228470,
		-0.100014, 0.210735, 0.972413,
		55.691555, 56.489700, 52.520836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.936661, 57.056095, 51.923252>,  <55.761562, 56.342186, 51.840145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.936661, 57.056095, 51.923252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.003960, 56.853359, 52.261436>,  <56.044338, 56.731716, 52.464348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.003960, 56.853359, 52.261436>,  <55.936661, 57.056095, 51.923252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.003960, 56.853359, 52.261436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948816, 0.315829, 0.000515,
		-0.267282, 0.802101, 0.534035,
		0.168251, -0.506839, 0.845462,
		56.054436, 56.701309, 52.515076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.455692, 57.468357, 52.172283>,  <55.936661, 57.056095, 51.923252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.455692, 57.468357, 52.172283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.543457, 57.249825, 52.495613>,  <56.596115, 57.118706, 52.689610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.543457, 57.249825, 52.495613>,  <56.455692, 57.468357, 52.172283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.543457, 57.249825, 52.495613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892513, -0.222236, -0.392468,
		0.394056, 0.807549, 0.438846,
		0.219410, -0.546330, 0.808321,
		56.609280, 57.085926, 52.738110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.101788, 57.690010, 52.414101>,  <56.455692, 57.468357, 52.172283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.101788, 57.690010, 52.414101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.069695, 57.300461, 52.499077>,  <57.050438, 57.066730, 52.550064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.069695, 57.300461, 52.499077>,  <57.101788, 57.690010, 52.414101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.069695, 57.300461, 52.499077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989411, -0.103672, -0.101582,
		0.120952, 0.202045, 0.971879,
		-0.080232, -0.973874, 0.212445,
		57.045624, 57.008297, 52.562809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.500771, 57.605583, 53.000050>,  <57.101788, 57.690010, 52.414101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.500771, 57.605583, 53.000050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.477203, 57.261986, 52.796616>,  <57.463062, 57.055828, 52.674557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.477203, 57.261986, 52.796616>,  <57.500771, 57.605583, 53.000050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.477203, 57.261986, 52.796616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996812, -0.023167, -0.076346,
		0.053799, -0.511460, 0.857621,
		-0.058916, -0.858995, -0.508584,
		57.459530, 57.004288, 52.644039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.983757, 57.198811, 52.599396>,  <57.500771, 57.605583, 53.000050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.983757, 57.198811, 52.599396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.227837, 57.381538, 52.340485>,  <58.374287, 57.491177, 52.185139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.227837, 57.381538, 52.340485>,  <57.983757, 57.198811, 52.599396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.227837, 57.381538, 52.340485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731648, -0.638321, 0.239243,
		-0.303881, -0.619567, -0.723736,
		0.610203, 0.456818, -0.647278,
		58.410896, 57.518585, 52.146301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.313049, 56.597637, 52.188702>,  <57.983757, 57.198811, 52.599396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.313049, 56.597637, 52.188702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.521675, 56.936348, 52.146858>,  <58.646851, 57.139572, 52.121750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.521675, 56.936348, 52.146858>,  <58.313049, 56.597637, 52.188702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.521675, 56.936348, 52.146858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851544, -0.508952, 0.125859,
		0.053331, -0.154726, -0.986517,
		0.521563, 0.846775, -0.104613,
		58.678143, 57.190380, 52.115475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.819809, 56.494434, 51.709061>,  <58.313049, 56.597637, 52.188702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.819809, 56.494434, 51.709061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.962654, 56.777565, 51.952850>,  <59.048363, 56.947441, 52.099125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.962654, 56.777565, 51.952850>,  <58.819809, 56.494434, 51.709061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.962654, 56.777565, 51.952850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838595, -0.530329, 0.124538,
		0.411371, 0.466624, -0.782966,
		0.357117, 0.707823, 0.609471,
		59.069790, 56.989910, 52.135693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.574848, 56.639385, 51.438931>,  <58.819809, 56.494434, 51.709061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.574848, 56.639385, 51.438931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.532394, 56.725368, 51.827267>,  <59.506920, 56.776958, 52.060268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.532394, 56.725368, 51.827267>,  <59.574848, 56.639385, 51.438931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.532394, 56.725368, 51.827267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759236, -0.612960, 0.218723,
		0.642102, 0.760310, -0.098148,
		-0.106136, 0.214960, 0.970838,
		59.500553, 56.789856, 52.118519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.065659, 56.288254, 51.616383>,  <59.574848, 56.639385, 51.438931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.065659, 56.288254, 51.616383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.997047, 56.434761, 51.982208>,  <59.955879, 56.522667, 52.201702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.997047, 56.434761, 51.982208>,  <60.065659, 56.288254, 51.616383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.997047, 56.434761, 51.982208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812456, -0.472470, 0.341596,
		0.557220, 0.801634, -0.216539,
		-0.171527, 0.366273, 0.914562,
		59.945591, 56.544643, 52.256577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.725147, 56.466209, 52.034977>,  <60.065659, 56.288254, 51.616383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.725147, 56.466209, 52.034977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.454254, 56.419121, 52.325493>,  <60.291718, 56.390869, 52.499802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.454254, 56.419121, 52.325493>,  <60.725147, 56.466209, 52.034977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.454254, 56.419121, 52.325493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477279, -0.821544, 0.311882,
		0.559968, 0.557861, 0.612558,
		-0.677230, -0.117717, 0.726294,
		60.251083, 56.383804, 52.543381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.326962, 56.844070, 52.209301>,  <60.725147, 56.466209, 52.034977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.326962, 56.844070, 52.209301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.375771, 56.499763, 52.011639>,  <61.405056, 56.293179, 51.893040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.375771, 56.499763, 52.011639>,  <61.326962, 56.844070, 52.209301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.375771, 56.499763, 52.011639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474469, -0.386719, 0.790776,
		-0.871774, -0.330955, 0.361218,
		0.122022, -0.860765, -0.494160,
		61.412376, 56.241535, 51.863392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.029190, 56.182720, 52.618908>,  <61.326962, 56.844070, 52.209301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.029190, 56.182720, 52.618908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.340759, 56.159588, 52.369129>,  <61.527699, 56.145710, 52.219261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.340759, 56.159588, 52.369129>,  <61.029190, 56.182720, 52.618908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.340759, 56.159588, 52.369129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591112, -0.264859, 0.761864,
		-0.209449, -0.962552, -0.172121,
		0.778921, -0.057828, -0.624450,
		61.574436, 56.142239, 52.181793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.375320, 55.472687, 52.545280>,  <61.029190, 56.182720, 52.618908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.375320, 55.472687, 52.545280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.604279, 55.799126, 52.513397>,  <61.741653, 55.994987, 52.494267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.604279, 55.799126, 52.513397>,  <61.375320, 55.472687, 52.545280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.604279, 55.799126, 52.513397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694382, -0.430715, 0.576471,
		0.436123, -0.385317, -0.813221,
		0.572391, 0.816097, -0.079713,
		61.775997, 56.043957, 52.489483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.716133, 55.324135, 53.070618>,  <61.375320, 55.472687, 52.545280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.716133, 55.324135, 53.070618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.891808, 55.653126, 52.926044>,  <61.997211, 55.850521, 52.839298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.891808, 55.653126, 52.926044>,  <61.716133, 55.324135, 53.070618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.891808, 55.653126, 52.926044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747452, -0.111320, 0.654923,
		0.498427, -0.557792, -0.663656,
		0.439188, 0.822482, -0.361438,
		62.023563, 55.899872, 52.817612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.459373, 55.153641, 52.812183>,  <61.716133, 55.324135, 53.070618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.459373, 55.153641, 52.812183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.404076, 55.521053, 52.960342>,  <62.370895, 55.741501, 53.049236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.404076, 55.521053, 52.960342>,  <62.459373, 55.153641, 52.812183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.404076, 55.521053, 52.960342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845718, -0.085138, 0.526795,
		0.515411, 0.386078, -0.765046,
		-0.138249, 0.918529, 0.370394,
		62.362602, 55.796612, 53.071461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.968391, 55.070404, 53.382530>,  <62.459373, 55.153641, 52.812183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.968391, 55.070404, 53.382530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.045738, 54.761219, 53.624237>,  <63.092144, 54.575706, 53.769260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.045738, 54.761219, 53.624237>,  <62.968391, 55.070404, 53.382530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.045738, 54.761219, 53.624237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737653, -0.291551, -0.608988,
		0.646899, 0.563497, 0.513802,
		0.193364, -0.772961, 0.604270,
		63.103748, 54.529331, 53.805519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.646652, 55.132343, 53.638786>,  <62.968391, 55.070404, 53.382530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.646652, 55.132343, 53.638786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.561790, 54.741852, 53.656509>,  <63.510872, 54.507557, 53.667145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.561790, 54.741852, 53.656509>,  <63.646652, 55.132343, 53.638786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.561790, 54.741852, 53.656509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793987, -0.198628, -0.574570,
		0.569714, -0.086720, 0.817255,
		-0.212156, -0.976231, 0.044307,
		63.498142, 54.448982, 53.669800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.564529, 54.958984, 54.391392>,  <63.646652, 55.132343, 53.638786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.564529, 54.958984, 54.391392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.803009, 54.963428, 54.712494>,  <63.946098, 54.966095, 54.905155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.803009, 54.963428, 54.712494>,  <63.564529, 54.958984, 54.391392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.803009, 54.963428, 54.712494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198212, 0.970988, 0.133773,
		-0.777984, -0.238871, 0.581103,
		0.596199, 0.011108, 0.802760,
		63.981869, 54.966763, 54.953323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.213375, 55.180614, 54.895985>,  <63.564529, 54.958984, 54.391392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.213375, 55.180614, 54.895985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.594177, 55.258438, 54.990494>,  <63.822659, 55.305134, 55.047199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.594177, 55.258438, 54.990494>,  <63.213375, 55.180614, 54.895985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.594177, 55.258438, 54.990494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251837, 0.936650, 0.243442,
		-0.173940, -0.291261, 0.940698,
		0.952010, 0.194559, 0.236271,
		63.879780, 55.316807, 55.061375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.405109, 55.325447, 55.621975>,  <63.213375, 55.180614, 54.895985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.405109, 55.325447, 55.621975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.634148, 55.529697, 55.365417>,  <63.771572, 55.652248, 55.211483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.634148, 55.529697, 55.365417>,  <63.405109, 55.325447, 55.621975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.634148, 55.529697, 55.365417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352585, 0.859678, 0.369644,
		0.740147, 0.014490, 0.672289,
		0.572596, 0.510630, -0.641397,
		63.805927, 55.682888, 55.172997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.828876, 55.798611, 55.970543>,  <63.405109, 55.325447, 55.621975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.828876, 55.798611, 55.970543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.740540, 55.950985, 55.611404>,  <63.687538, 56.042408, 55.395924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.740540, 55.950985, 55.611404>,  <63.828876, 55.798611, 55.970543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.740540, 55.950985, 55.611404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356363, 0.825404, 0.437852,
		0.907874, 0.416653, -0.046532,
		-0.220840, 0.380932, -0.897842,
		63.674286, 56.065266, 55.342052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.493065, 56.200851, 56.052624>,  <63.828876, 55.798611, 55.970543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.493065, 56.200851, 56.052624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.766449, 56.491573, 56.025360>,  <64.930481, 56.666008, 56.009003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.766449, 56.491573, 56.025360>,  <64.493065, 56.200851, 56.052624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.766449, 56.491573, 56.025360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674264, 0.664302, 0.322600,
		0.279746, -0.174525, 0.944078,
		0.683454, 0.726805, -0.068160,
		64.971489, 56.709614, 56.004913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.474030, 56.414135, 56.687103>,  <64.493065, 56.200851, 56.052624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.474030, 56.414135, 56.687103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.583511, 56.689449, 56.418373>,  <64.649200, 56.854637, 56.257137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.583511, 56.689449, 56.418373>,  <64.474030, 56.414135, 56.687103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.583511, 56.689449, 56.418373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707788, 0.617088, 0.343859,
		0.651248, 0.381393, 0.656060,
		0.273702, 0.688289, -0.671823,
		64.665619, 56.895935, 56.216827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.571739, 56.966316, 57.043690>,  <64.474030, 56.414135, 56.687103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.571739, 56.966316, 57.043690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.467461, 57.013012, 56.660355>,  <64.404892, 57.041027, 56.430351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.467461, 57.013012, 56.660355>,  <64.571739, 56.966316, 57.043690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.467461, 57.013012, 56.660355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871999, 0.397537, 0.285625,
		0.414318, 0.910131, -0.001839,
		-0.260687, 0.116736, -0.958340,
		64.389252, 57.048035, 56.372852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.189575, 56.488571, 57.079216>,  <64.571739, 56.966316, 57.043690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.189575, 56.488571, 57.079216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.167641, 56.618690, 56.701607>,  <65.154480, 56.696762, 56.475040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.167641, 56.618690, 56.701607>,  <65.189575, 56.488571, 57.079216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.167641, 56.618690, 56.701607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774862, 0.610151, 0.165240,
		0.629747, -0.722425, -0.285518,
		-0.054835, 0.325297, -0.944021,
		65.151192, 56.716278, 56.418400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.847572, 56.212837, 57.252651>,  <65.189575, 56.488571, 57.079216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.847572, 56.212837, 57.252651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.004173, 55.896568, 57.440933>,  <66.098129, 55.706806, 57.553902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.004173, 55.896568, 57.440933>,  <65.847572, 56.212837, 57.252651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.004173, 55.896568, 57.440933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886760, 0.460789, 0.036486,
		-0.245744, 0.403118, 0.881536,
		0.391493, -0.790677, 0.470705,
		66.121620, 55.659367, 57.582146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.184021, 56.442928, 57.845490>,  <65.847572, 56.212837, 57.252651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.184021, 56.442928, 57.845490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.371292, 56.098541, 57.765961>,  <66.483658, 55.891907, 57.718243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.371292, 56.098541, 57.765961>,  <66.184021, 56.442928, 57.845490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.371292, 56.098541, 57.765961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883482, 0.460220, 0.087501,
		0.016166, -0.216623, 0.976121,
		0.468186, -0.860972, -0.198822,
		66.511749, 55.840248, 57.706314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.752441, 56.343632, 58.302071>,  <66.184021, 56.442928, 57.845490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.752441, 56.343632, 58.302071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.798531, 56.183918, 57.938248>,  <66.826180, 56.088089, 57.719952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.798531, 56.183918, 57.938248>,  <66.752441, 56.343632, 58.302071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.798531, 56.183918, 57.938248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942463, 0.333228, -0.026898,
		0.313830, -0.854127, 0.414702,
		0.115216, -0.399283, -0.909560,
		66.833092, 56.064133, 57.665379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.281120, 55.774479, 58.361549>,  <66.752441, 56.343632, 58.302071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.281120, 55.774479, 58.361549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.262497, 55.969570, 58.012848>,  <67.251328, 56.086624, 57.803627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.262497, 55.969570, 58.012848>,  <67.281120, 55.774479, 58.361549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.262497, 55.969570, 58.012848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924931, 0.350650, 0.146791,
		0.377274, -0.799477, -0.467441,
		-0.046552, 0.487731, -0.871752,
		67.248528, 56.115891, 57.751324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.897751, 55.557285, 57.999920>,  <67.281120, 55.774479, 58.361549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.897751, 55.557285, 57.999920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.776115, 55.905884, 57.846024>,  <67.703133, 56.115044, 57.753685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.776115, 55.905884, 57.846024>,  <67.897751, 55.557285, 57.999920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.776115, 55.905884, 57.846024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830527, 0.440351, 0.341053,
		0.466647, -0.215826, -0.857706,
		-0.304084, 0.871499, -0.384737,
		67.684891, 56.167332, 57.730602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.390274, 55.993614, 57.475876>,  <67.897751, 55.557285, 57.999920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.390274, 55.993614, 57.475876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.157074, 56.255089, 57.668877>,  <68.017159, 56.411976, 57.784676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.157074, 56.255089, 57.668877>,  <68.390274, 55.993614, 57.475876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.157074, 56.255089, 57.668877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811960, 0.447634, 0.374626,
		0.028905, 0.610176, -0.791738,
		-0.582997, 0.653689, 0.482500,
		67.982178, 56.451195, 57.813625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.650261, 56.717384, 57.369282>,  <68.390274, 55.993614, 57.475876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.650261, 56.717384, 57.369282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.430054, 56.733246, 57.702835>,  <68.297928, 56.742764, 57.902966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.430054, 56.733246, 57.702835>,  <68.650261, 56.717384, 57.369282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.430054, 56.733246, 57.702835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691611, 0.581088, 0.428965,
		-0.467549, 0.812874, -0.347323,
		-0.550520, 0.039650, 0.833880,
		68.264900, 56.745140, 57.952999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.455910, 57.463551, 57.642906>,  <68.650261, 56.717384, 57.369282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.455910, 57.463551, 57.642906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.490067, 57.178532, 57.921471>,  <68.510559, 57.007519, 58.088608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.490067, 57.178532, 57.921471>,  <68.455910, 57.463551, 57.642906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.490067, 57.178532, 57.921471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696396, 0.542564, 0.469741,
		-0.712558, 0.444860, 0.542550,
		0.085399, -0.712547, 0.696408,
		68.515686, 56.964767, 58.130394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.440605, 57.705200, 58.236477>,  <68.455910, 57.463551, 57.642906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.440605, 57.705200, 58.236477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.638214, 57.366135, 58.313843>,  <68.756775, 57.162697, 58.360264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.638214, 57.366135, 58.313843>,  <68.440605, 57.705200, 58.236477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.638214, 57.366135, 58.313843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558589, 0.479909, 0.676510,
		-0.666278, -0.226166, 0.710579,
		0.494017, -0.847665, 0.193419,
		68.786423, 57.111835, 58.371868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.490128, 57.541508, 58.923115>,  <68.440605, 57.705200, 58.236477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.490128, 57.541508, 58.923115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.823372, 57.390678, 58.761246>,  <69.023315, 57.300182, 58.664124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.823372, 57.390678, 58.761246>,  <68.490128, 57.541508, 58.923115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.823372, 57.390678, 58.761246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508640, 0.234827, 0.828337,
		-0.217314, -0.895921, 0.387428,
		0.833103, -0.377070, -0.404670,
		69.073303, 57.277557, 58.639843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.877327, 57.285164, 59.488735>,  <68.490128, 57.541508, 58.923115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.877327, 57.285164, 59.488735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.144379, 57.404236, 59.215775>,  <69.304611, 57.475677, 59.051998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.144379, 57.404236, 59.215775>,  <68.877327, 57.285164, 59.488735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.144379, 57.404236, 59.215775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389795, 0.641157, 0.661042,
		0.634291, -0.707327, 0.312029,
		0.667633, 0.297666, -0.682393,
		69.344666, 57.493538, 59.011055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.540382, 57.101116, 59.782303>,  <68.877327, 57.285164, 59.488735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.540382, 57.101116, 59.782303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.551247, 57.413300, 59.532455>,  <69.557762, 57.600609, 59.382545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.551247, 57.413300, 59.532455>,  <69.540382, 57.101116, 59.782303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.551247, 57.413300, 59.532455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468088, 0.542186, 0.697802,
		0.883264, -0.311329, -0.350597,
		0.027157, 0.780454, -0.624623,
		69.559395, 57.647434, 59.345070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.651901, 56.734138, 60.326359>,  <69.540382, 57.101116, 59.782303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.651901, 56.734138, 60.326359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.567017, 56.405087, 60.115364>,  <69.516090, 56.207653, 59.988766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.567017, 56.405087, 60.115364>,  <69.651901, 56.734138, 60.326359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.567017, 56.405087, 60.115364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398523, -0.565707, 0.721911,
		-0.892272, -0.057024, 0.447884,
		-0.212205, -0.822632, -0.527489,
		69.503357, 56.158298, 59.957119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.293716, 57.009499, 60.421665>,  <69.651901, 56.734138, 60.326359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.293716, 57.009499, 60.421665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.368507, 57.339336, 60.635239>,  <70.413383, 57.537239, 60.763382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.368507, 57.339336, 60.635239>,  <70.293716, 57.009499, 60.421665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.368507, 57.339336, 60.635239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880986, 0.099709, -0.462517,
		-0.434625, 0.556870, -0.707811,
		0.186987, 0.824593, 0.533931,
		70.424606, 57.586716, 60.795418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.537079, 57.585861, 59.948765>,  <70.293716, 57.009499, 60.421665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.537079, 57.585861, 59.948765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.662071, 57.617424, 60.327423>,  <70.737068, 57.636360, 60.554619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.662071, 57.617424, 60.327423>,  <70.537079, 57.585861, 59.948765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.662071, 57.617424, 60.327423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947550, 0.044530, -0.316490,
		-0.067128, 0.995887, -0.060855,
		0.312478, 0.078908, 0.946642,
		70.755814, 57.641098, 60.611416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.972748, 58.237141, 60.171978>,  <70.537079, 57.585861, 59.948765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.972748, 58.237141, 60.171978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.105316, 57.899490, 60.340553>,  <71.184860, 57.696899, 60.441696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.105316, 57.899490, 60.340553>,  <70.972748, 58.237141, 60.171978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.105316, 57.899490, 60.340553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924462, 0.201316, -0.323793,
		0.188481, 0.496915, 0.847083,
		0.331429, -0.844125, 0.421435,
		71.204742, 57.646252, 60.466984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.487411, 58.375504, 60.673359>,  <70.972748, 58.237141, 60.171978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.487411, 58.375504, 60.673359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.529243, 58.017601, 60.499702>,  <71.554344, 57.802860, 60.395508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.529243, 58.017601, 60.499702>,  <71.487411, 58.375504, 60.673359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.529243, 58.017601, 60.499702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904736, 0.266846, -0.332032,
		0.412936, -0.358064, 0.837421,
		0.104574, -0.894753, -0.434144,
		71.560616, 57.749176, 60.369461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.176392, 57.996689, 60.802769>,  <71.487411, 58.375504, 60.673359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.176392, 57.996689, 60.802769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.031845, 57.868866, 60.452385>,  <71.945114, 57.792171, 60.242157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.031845, 57.868866, 60.452385>,  <72.176392, 57.996689, 60.802769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.031845, 57.868866, 60.452385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872843, 0.214496, -0.438334,
		0.327961, -0.922971, 0.201410,
		-0.361369, -0.319555, -0.875955,
		71.923431, 57.772999, 60.189598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.046120, 57.294655, 61.171803>,  <72.176392, 57.996689, 60.802769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.046120, 57.294655, 61.171803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.266830, 57.221870, 60.846245>,  <72.399261, 57.178200, 60.650909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.266830, 57.221870, 60.846245>,  <72.046120, 57.294655, 61.171803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.266830, 57.221870, 60.846245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257235, 0.965459, -0.041451,
		0.793325, -0.186490, 0.579531,
		0.551784, -0.181960, -0.813895,
		72.432365, 57.167282, 60.602077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.663025, 57.693146, 61.243542>,  <72.046120, 57.294655, 61.171803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.663025, 57.693146, 61.243542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.621346, 57.639366, 60.849373>,  <72.596336, 57.607098, 60.612869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.621346, 57.639366, 60.849373>,  <72.663025, 57.693146, 61.243542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.621346, 57.639366, 60.849373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421827, 0.891311, -0.166212,
		0.900668, -0.433000, -0.036165,
		-0.104204, -0.134447, -0.985427,
		72.590088, 57.599033, 60.553745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.247086, 57.796703, 60.821857>,  <72.663025, 57.693146, 61.243542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.247086, 57.796703, 60.821857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.943802, 57.912941, 60.588387>,  <72.761833, 57.982685, 60.448303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.943802, 57.912941, 60.588387>,  <73.247086, 57.796703, 60.821857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.943802, 57.912941, 60.588387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554655, 0.758048, -0.343106,
		0.342748, -0.583883, -0.735938,
		-0.758210, 0.290593, -0.583673,
		72.716339, 58.000118, 60.413284>
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
