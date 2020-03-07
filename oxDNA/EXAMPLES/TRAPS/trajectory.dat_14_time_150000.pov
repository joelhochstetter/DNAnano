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
	<36.479252, 52.457382, 49.460861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669239, 52.788696, 49.341972>,  <36.783234, 52.987484, 49.270641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669239, 52.788696, 49.341972>,  <36.479252, 52.457382, 49.460861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669239, 52.788696, 49.341972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015957, 0.345801, 0.938172,
		0.879857, -0.440861, 0.177462,
		0.474970, 0.828289, -0.297220,
		36.811729, 53.037182, 49.252808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016022, 52.671413, 49.914452>,  <36.479252, 52.457382, 49.460861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016022, 52.671413, 49.914452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882816, 53.008385, 49.745026>,  <36.802895, 53.210567, 49.643368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882816, 53.008385, 49.745026>,  <37.016022, 52.671413, 49.914452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882816, 53.008385, 49.745026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077038, 0.423399, 0.902662,
		0.939770, 0.333229, -0.076098,
		-0.333013, 0.842432, -0.423569,
		36.782913, 53.261116, 49.617954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424400, 52.857201, 49.225693>,  <37.016022, 52.671413, 49.914452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424400, 52.857201, 49.225693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632465, 52.591228, 49.011292>,  <37.757305, 52.431644, 48.882652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632465, 52.591228, 49.011292>,  <37.424400, 52.857201, 49.225693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632465, 52.591228, 49.011292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797424, 0.153369, 0.583603,
		-0.305851, -0.730987, 0.610011,
		0.520163, -0.664933, -0.535999,
		37.788513, 52.391750, 48.850491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767101, 52.198792, 49.544624>,  <37.424400, 52.857201, 49.225693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767101, 52.198792, 49.544624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977345, 52.358002, 49.243874>,  <38.103489, 52.453526, 49.063423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977345, 52.358002, 49.243874>,  <37.767101, 52.198792, 49.544624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977345, 52.358002, 49.243874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799321, 0.071521, 0.596633,
		0.291248, -0.914584, -0.280556,
		0.525605, 0.398023, -0.751876,
		38.135025, 52.477409, 49.018311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313633, 51.808720, 49.262344>,  <37.767101, 52.198792, 49.544624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313633, 51.808720, 49.262344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377434, 52.203079, 49.282562>,  <38.415714, 52.439697, 49.294693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377434, 52.203079, 49.282562>,  <38.313633, 51.808720, 49.262344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377434, 52.203079, 49.282562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708448, -0.149971, 0.689645,
		0.687503, -0.074192, -0.722381,
		0.159502, 0.985903, 0.050544,
		38.425285, 52.498852, 49.297726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071236, 51.992439, 49.065125>,  <38.313633, 51.808720, 49.262344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071236, 51.992439, 49.065125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897900, 52.238693, 49.328400>,  <38.793900, 52.386444, 49.486366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897900, 52.238693, 49.328400>,  <39.071236, 51.992439, 49.065125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897900, 52.238693, 49.328400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698204, -0.232458, 0.677107,
		0.569851, 0.752967, -0.329105,
		-0.433336, 0.615633, 0.658192,
		38.767899, 52.423382, 49.525856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757641, 52.290993, 49.286110>,  <39.071236, 51.992439, 49.065125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757641, 52.290993, 49.286110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442043, 52.310226, 49.531116>,  <39.252686, 52.321766, 49.678120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442043, 52.310226, 49.531116>,  <39.757641, 52.290993, 49.286110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442043, 52.310226, 49.531116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594426, -0.192423, 0.780789,
		0.155404, 0.980133, 0.123240,
		-0.788992, 0.048081, 0.612520,
		39.205345, 52.324650, 49.714874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466354, 52.117104, 49.678192>,  <39.757641, 52.290993, 49.286110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466354, 52.117104, 49.678192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613323, 52.344734, 49.383938>,  <40.701504, 52.481312, 49.207386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613323, 52.344734, 49.383938>,  <40.466354, 52.117104, 49.678192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613323, 52.344734, 49.383938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921382, -0.330484, 0.204538,
		-0.126718, -0.752951, -0.645761,
		0.367421, 0.569074, -0.735634,
		40.723549, 52.515457, 49.163246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729847, 51.633366, 49.136600>,  <40.466354, 52.117104, 49.678192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729847, 51.633366, 49.136600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957802, 51.951576, 49.054272>,  <41.094574, 52.142502, 49.004875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957802, 51.951576, 49.054272>,  <40.729847, 51.633366, 49.136600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957802, 51.951576, 49.054272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795403, -0.471163, 0.381235,
		0.206306, -0.380975, -0.901275,
		0.569888, 0.795527, -0.205825,
		41.128769, 52.190235, 48.992523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348564, 51.523560, 48.722126>,  <40.729847, 51.633366, 49.136600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348564, 51.523560, 48.722126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379608, 51.810993, 48.998562>,  <41.398235, 51.983456, 49.164425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379608, 51.810993, 48.998562>,  <41.348564, 51.523560, 48.722126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379608, 51.810993, 48.998562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778206, -0.476958, 0.408543,
		0.623196, 0.506105, -0.596225,
		0.077608, 0.718588, 0.691092,
		41.402889, 52.026569, 49.205891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139523, 51.846176, 48.864498>,  <41.348564, 51.523560, 48.722126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139523, 51.846176, 48.864498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905094, 51.883671, 49.186424>,  <41.764439, 51.906170, 49.379581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905094, 51.883671, 49.186424>,  <42.139523, 51.846176, 48.864498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905094, 51.883671, 49.186424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628974, -0.573543, 0.524823,
		0.510794, 0.813794, 0.277179,
		-0.586072, 0.093738, 0.804818,
		41.729271, 51.911793, 49.427868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907333, 51.854904, 48.747921>,  <42.139523, 51.846176, 48.864498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907333, 51.854904, 48.747921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975910, 52.103725, 49.053513>,  <43.017056, 52.253017, 49.236866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975910, 52.103725, 49.053513>,  <42.907333, 51.854904, 48.747921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975910, 52.103725, 49.053513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944779, -0.323636, 0.051501,
		0.279286, 0.712958, -0.643188,
		0.171441, 0.622054, 0.763975,
		43.027344, 52.290340, 49.282703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522133, 52.364635, 48.701618>,  <42.907333, 51.854904, 48.747921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522133, 52.364635, 48.701618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455669, 52.323254, 49.093880>,  <43.415791, 52.298424, 49.329239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455669, 52.323254, 49.093880>,  <43.522133, 52.364635, 48.701618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455669, 52.323254, 49.093880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966205, -0.215831, 0.140943,
		0.197076, 0.970935, 0.135817,
		-0.166160, -0.103451, 0.980657,
		43.405823, 52.292217, 49.388077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116550, 52.699551, 49.020969>,  <43.522133, 52.364635, 48.701618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116550, 52.699551, 49.020969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957523, 52.426010, 49.265686>,  <43.862106, 52.261887, 49.412518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957523, 52.426010, 49.265686>,  <44.116550, 52.699551, 49.020969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.957523, 52.426010, 49.265686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869364, -0.494008, 0.012761,
		0.293503, 0.536943, 0.790916,
		-0.397571, -0.683848, 0.611791,
		43.838253, 52.220856, 49.449223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518139, 52.669006, 49.710678>,  <44.116550, 52.699551, 49.020969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518139, 52.669006, 49.710678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370449, 52.317135, 49.590794>,  <44.281834, 52.106010, 49.518864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370449, 52.317135, 49.590794>,  <44.518139, 52.669006, 49.710678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370449, 52.317135, 49.590794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928937, -0.358830, -0.091192,
		-0.027327, -0.312088, 0.949660,
		-0.369227, -0.879683, -0.299716,
		44.259682, 52.053230, 49.500877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957806, 52.830448, 50.300632>,  <44.518139, 52.669006, 49.710678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957806, 52.830448, 50.300632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129669, 52.501316, 50.449413>,  <45.232788, 52.303837, 50.538681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129669, 52.501316, 50.449413>,  <44.957806, 52.830448, 50.300632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129669, 52.501316, 50.449413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578627, 0.065349, 0.812970,
		-0.693242, -0.564520, -0.448033,
		0.429659, -0.822829, 0.371948,
		45.258568, 52.254467, 50.560997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474827, 52.388763, 50.741524>,  <44.957806, 52.830448, 50.300632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474827, 52.388763, 50.741524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.827568, 52.290192, 50.902328>,  <45.039211, 52.231049, 50.998810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.827568, 52.290192, 50.902328>,  <44.474827, 52.388763, 50.741524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827568, 52.290192, 50.902328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435634, -0.099523, 0.894605,
		-0.180451, -0.964037, -0.195118,
		0.881851, -0.246432, 0.402008,
		45.092125, 52.216263, 51.022930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720558, 51.691353, 51.067947>,  <44.474827, 52.388763, 50.741524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720558, 51.691353, 51.067947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116013, 51.728996, 51.021046>,  <45.353283, 51.751583, 50.992905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116013, 51.728996, 51.021046>,  <44.720558, 51.691353, 51.067947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.116013, 51.728996, 51.021046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071348, -0.980131, -0.185072,
		-0.132345, 0.174602, -0.975704,
		0.988632, 0.094108, -0.117258,
		45.412601, 51.757229, 50.985867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866978, 51.207199, 50.543293>,  <44.720558, 51.691353, 51.067947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866978, 51.207199, 50.543293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.189262, 51.274597, 50.770424>,  <45.382633, 51.315037, 50.906704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.189262, 51.274597, 50.770424>,  <44.866978, 51.207199, 50.543293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.189262, 51.274597, 50.770424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278005, -0.954104, -0.111350,
		0.523007, 0.247576, -0.815580,
		0.805715, 0.168498, 0.567830,
		45.430977, 51.325146, 50.940773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468479, 51.085342, 50.192169>,  <44.866978, 51.207199, 50.543293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468479, 51.085342, 50.192169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551754, 51.007126, 50.575508>,  <45.601719, 50.960197, 50.805511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551754, 51.007126, 50.575508>,  <45.468479, 51.085342, 50.192169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.551754, 51.007126, 50.575508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229319, -0.942743, -0.242175,
		0.950827, 0.270184, -0.151426,
		0.208188, -0.195541, 0.958343,
		45.614212, 50.948463, 50.863010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.139034, 50.685238, 50.208847>,  <45.468479, 51.085342, 50.192169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.139034, 50.685238, 50.208847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.878632, 50.621178, 50.505642>,  <45.722389, 50.582741, 50.683720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.878632, 50.621178, 50.505642>,  <46.139034, 50.685238, 50.208847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.878632, 50.621178, 50.505642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018468, -0.973859, -0.226403,
		0.758847, -0.161093, 0.631032,
		-0.651008, -0.160151, 0.741985,
		45.683331, 50.573132, 50.728237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.198181, 50.048027, 50.299301>,  <46.139034, 50.685238, 50.208847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.198181, 50.048027, 50.299301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.900799, 50.085983, 50.564110>,  <45.722370, 50.108757, 50.722996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.900799, 50.085983, 50.564110>,  <46.198181, 50.048027, 50.299301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.900799, 50.085983, 50.564110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208648, -0.973387, -0.094787,
		0.635409, -0.208599, 0.743466,
		-0.743452, 0.094894, 0.662023,
		45.677765, 50.114452, 50.762718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.823803, 49.407089, 50.073597>,  <46.198181, 50.048027, 50.299301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.823803, 49.407089, 50.073597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.071545, 49.124104, 49.937416>,  <46.220188, 48.954311, 49.855709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.071545, 49.124104, 49.937416>,  <45.823803, 49.407089, 50.073597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.071545, 49.124104, 49.937416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763854, 0.442746, 0.469577,
		-0.181473, -0.550887, 0.814611,
		0.619350, -0.707460, -0.340450,
		46.257351, 48.911865, 49.835281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.386761, 49.290554, 50.564407>,  <45.823803, 49.407089, 50.073597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.386761, 49.290554, 50.564407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.533310, 49.086662, 50.253036>,  <46.621239, 48.964329, 50.066216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.533310, 49.086662, 50.253036>,  <46.386761, 49.290554, 50.564407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.533310, 49.086662, 50.253036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867429, 0.489802, 0.087535,
		0.336654, -0.707297, 0.621607,
		0.366377, -0.509731, -0.778423,
		46.643223, 48.933743, 50.019508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.975029, 49.117046, 51.085827>,  <46.386761, 49.290554, 50.564407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.975029, 49.117046, 51.085827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.978306, 49.496822, 50.960289>,  <46.980274, 49.724689, 50.884968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.978306, 49.496822, 50.960289>,  <46.975029, 49.117046, 51.085827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.978306, 49.496822, 50.960289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878532, 0.143069, 0.455755,
		0.477613, -0.279459, -0.832940,
		0.008197, 0.949439, -0.313845,
		46.980766, 49.781654, 50.866135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.694477, 49.233486, 50.804874>,  <46.975029, 49.117046, 51.085827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.694477, 49.233486, 50.804874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.510036, 49.572544, 50.909855>,  <47.399372, 49.775978, 50.972843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.510036, 49.572544, 50.909855>,  <47.694477, 49.233486, 50.804874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.510036, 49.572544, 50.909855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821487, 0.295963, 0.487406,
		0.335472, 0.440344, -0.832800,
		-0.461105, 0.847646, 0.262449,
		47.371704, 49.826839, 50.988590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.773834, 49.969513, 50.530487>,  <47.694477, 49.233486, 50.804874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.773834, 49.969513, 50.530487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.714371, 49.926376, 50.923683>,  <47.678692, 49.900494, 51.159599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.714371, 49.926376, 50.923683>,  <47.773834, 49.969513, 50.530487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.714371, 49.926376, 50.923683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982186, 0.099434, 0.159448,
		-0.114938, 0.989183, 0.091143,
		-0.148660, -0.107846, 0.982990,
		47.669773, 49.894024, 51.218578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.301075, 50.353283, 50.695786>,  <47.773834, 49.969513, 50.530487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.301075, 50.353283, 50.695786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.153996, 50.165314, 51.016777>,  <48.065746, 50.052532, 51.209370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.153996, 50.165314, 51.016777>,  <48.301075, 50.353283, 50.695786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.153996, 50.165314, 51.016777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882201, 0.096674, 0.460841,
		-0.294140, 0.877396, 0.379021,
		-0.367699, -0.469925, 0.802476,
		48.043686, 50.024338, 51.257519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.335155, 50.733559, 51.329716>,  <48.301075, 50.353283, 50.695786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.335155, 50.733559, 51.329716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.367435, 50.343525, 51.412373>,  <48.386803, 50.109505, 51.461967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.367435, 50.343525, 51.412373>,  <48.335155, 50.733559, 51.329716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.367435, 50.343525, 51.412373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874736, 0.168676, 0.454297,
		-0.477833, 0.144097, 0.866552,
		0.080704, -0.975082, 0.206646,
		48.391647, 50.050999, 51.474365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.702568, 50.773647, 51.869930>,  <48.335155, 50.733559, 51.329716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.702568, 50.773647, 51.869930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.750092, 50.398674, 51.739021>,  <48.778606, 50.173691, 51.660477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.750092, 50.398674, 51.739021>,  <48.702568, 50.773647, 51.869930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.750092, 50.398674, 51.739021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951205, 0.012928, 0.308289,
		-0.284769, -0.347930, 0.893225,
		0.118810, -0.937431, -0.327271,
		48.785736, 50.117443, 51.640839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.067242, 50.403664, 52.406784>,  <48.702568, 50.773647, 51.869930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.067242, 50.403664, 52.406784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.139923, 50.218193, 52.059914>,  <49.183533, 50.106911, 51.851791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.139923, 50.218193, 52.059914>,  <49.067242, 50.403664, 52.406784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.139923, 50.218193, 52.059914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975361, -0.027216, 0.218927,
		-0.125112, -0.885587, 0.447306,
		0.181705, -0.463675, -0.867173,
		49.194435, 50.079090, 51.799763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.488586, 49.809113, 52.589935>,  <49.067242, 50.403664, 52.406784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.488586, 49.809113, 52.589935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.543900, 49.968468, 52.227242>,  <49.577087, 50.064079, 52.009624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.543900, 49.968468, 52.227242>,  <49.488586, 49.809113, 52.589935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.543900, 49.968468, 52.227242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990384, -0.059466, 0.124913,
		-0.004156, -0.915287, -0.402781,
		0.138283, 0.398389, -0.906733,
		49.585384, 50.087986, 51.955223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.922813, 49.362080, 52.134617>,  <49.488586, 49.809113, 52.589935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.922813, 49.362080, 52.134617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.951008, 49.757721, 52.082909>,  <49.967926, 49.995106, 52.051884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.951008, 49.757721, 52.082909>,  <49.922813, 49.362080, 52.134617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.951008, 49.757721, 52.082909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981065, -0.045305, 0.188304,
		0.180395, -0.140097, -0.973566,
		0.070489, 0.989101, -0.129272,
		49.972153, 50.054451, 52.044128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.448589, 49.628616, 51.572517>,  <49.922813, 49.362080, 52.134617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.448589, 49.628616, 51.572517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.384449, 49.908348, 51.851151>,  <50.345963, 50.076187, 52.018330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.384449, 49.908348, 51.851151>,  <50.448589, 49.628616, 51.572517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.384449, 49.908348, 51.851151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963411, -0.042664, 0.264610,
		0.214769, 0.713523, -0.666902,
		-0.160353, 0.699331, 0.696579,
		50.336342, 50.118149, 52.060123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.004532, 50.176319, 51.478928>,  <50.448589, 49.628616, 51.572517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.004532, 50.176319, 51.478928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.832630, 50.151752, 51.839272>,  <50.729488, 50.137012, 52.055477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.832630, 50.151752, 51.839272>,  <51.004532, 50.176319, 51.478928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.832630, 50.151752, 51.839272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861238, -0.327604, 0.388517,
		0.271261, 0.942817, 0.193685,
		-0.429752, -0.061420, 0.900856,
		50.703705, 50.133327, 52.109528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.259834, 50.635803, 51.944195>,  <51.004532, 50.176319, 51.478928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.259834, 50.635803, 51.944195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.158634, 50.325619, 52.175591>,  <51.097912, 50.139507, 52.314430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.158634, 50.325619, 52.175591>,  <51.259834, 50.635803, 51.944195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.158634, 50.325619, 52.175591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966021, -0.169825, 0.194843,
		-0.052850, 0.608131, 0.792075,
		-0.253004, -0.775459, 0.578492,
		51.082733, 50.092979, 52.349136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.468723, 50.708893, 52.660408>,  <51.259834, 50.635803, 51.944195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.468723, 50.708893, 52.660408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.447693, 50.322735, 52.558228>,  <51.435074, 50.091042, 52.496918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.447693, 50.322735, 52.558228>,  <51.468723, 50.708893, 52.660408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.447693, 50.322735, 52.558228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997148, -0.064617, 0.038979,
		-0.054137, -0.252677, 0.966035,
		-0.052573, -0.965391, -0.255455,
		51.431923, 50.033119, 52.481590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.804436, 50.355934, 53.138302>,  <51.468723, 50.708893, 52.660408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.804436, 50.355934, 53.138302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.781845, 50.092506, 52.838142>,  <51.768291, 49.934448, 52.658047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.781845, 50.092506, 52.838142>,  <51.804436, 50.355934, 53.138302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.781845, 50.092506, 52.838142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838283, -0.439522, 0.322650,
		-0.542303, -0.610824, 0.576890,
		-0.056474, -0.658571, -0.750397,
		51.764904, 49.894936, 52.613022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.872185, 49.733807, 53.459980>,  <51.804436, 50.355934, 53.138302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.872185, 49.733807, 53.459980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.027863, 49.729889, 53.091537>,  <52.121269, 49.727539, 52.870472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.027863, 49.729889, 53.091537>,  <51.872185, 49.733807, 53.459980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.027863, 49.729889, 53.091537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910288, -0.149056, 0.386211,
		-0.141079, -0.988780, -0.049097,
		0.389196, -0.009794, -0.921103,
		52.144623, 49.726948, 52.815208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.149956, 49.083092, 53.409290>,  <51.872185, 49.733807, 53.459980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.149956, 49.083092, 53.409290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.346245, 49.346638, 53.181225>,  <52.464020, 49.504765, 53.044384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.346245, 49.346638, 53.181225>,  <52.149956, 49.083092, 53.409290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.346245, 49.346638, 53.181225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868725, -0.319553, 0.378422,
		0.067129, -0.681019, -0.729182,
		0.490724, 0.658862, -0.570167,
		52.493462, 49.544296, 53.010174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.701820, 48.684834, 53.171196>,  <52.149956, 49.083092, 53.409290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.701820, 48.684834, 53.171196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.838531, 49.059158, 53.136681>,  <52.920559, 49.283752, 53.115971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.838531, 49.059158, 53.136681>,  <52.701820, 48.684834, 53.171196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.838531, 49.059158, 53.136681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872311, -0.281739, 0.399621,
		0.349659, -0.211851, -0.912610,
		0.341778, 0.935811, -0.086287,
		52.941067, 49.339901, 53.110794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.421757, 48.758942, 52.751698>,  <52.701820, 48.684834, 53.171196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.421757, 48.758942, 52.751698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.336483, 49.037319, 53.025986>,  <53.285320, 49.204346, 53.190559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.336483, 49.037319, 53.025986>,  <53.421757, 48.758942, 52.751698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.336483, 49.037319, 53.025986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854049, -0.208129, 0.476743,
		0.474504, 0.687275, -0.549999,
		-0.213183, 0.695943, 0.685724,
		53.272530, 49.246101, 53.231705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.007919, 49.301952, 52.762421>,  <53.421757, 48.758942, 52.751698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.007919, 49.301952, 52.762421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.792938, 49.218536, 53.089264>,  <53.663952, 49.168488, 53.285370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.792938, 49.218536, 53.089264>,  <54.007919, 49.301952, 52.762421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.792938, 49.218536, 53.089264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839494, -0.040414, 0.541864,
		-0.079976, 0.977179, 0.196786,
		-0.537451, -0.208537, 0.817104,
		53.631702, 49.155975, 53.334396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.667450, 49.031155, 52.987335>,  <54.007919, 49.301952, 52.762421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.667450, 49.031155, 52.987335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.724144, 48.807770, 53.314270>,  <54.758160, 48.673740, 53.510429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.724144, 48.807770, 53.314270>,  <54.667450, 49.031155, 52.987335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.724144, 48.807770, 53.314270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989904, 0.081075, -0.116261,
		-0.001338, 0.825560, 0.564313,
		0.141733, -0.558460, 0.817333,
		54.766663, 48.640232, 53.559471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.914597, 49.402504, 53.483070>,  <54.667450, 49.031155, 52.987335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.914597, 49.402504, 53.483070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.037582, 49.027393, 53.547607>,  <55.111374, 48.802326, 53.586330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.037582, 49.027393, 53.547607>,  <54.914597, 49.402504, 53.483070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.037582, 49.027393, 53.547607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945581, 0.282133, -0.162104,
		0.106496, 0.202408, 0.973494,
		0.307466, -0.937780, 0.161347,
		55.129822, 48.746059, 53.596012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.360424, 49.522995, 54.027359>,  <54.914597, 49.402504, 53.483070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.360424, 49.522995, 54.027359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.442062, 49.208065, 53.794647>,  <55.491047, 49.019108, 53.655018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.442062, 49.208065, 53.794647>,  <55.360424, 49.522995, 54.027359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.442062, 49.208065, 53.794647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962693, 0.269277, -0.026688,
		0.177673, -0.554631, 0.812907,
		0.204095, -0.787321, -0.581782,
		55.503292, 48.971870, 53.620113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.879654, 49.105511, 54.268890>,  <55.360424, 49.522995, 54.027359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.879654, 49.105511, 54.268890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.890892, 49.083557, 53.869652>,  <55.897636, 49.070385, 53.630108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.890892, 49.083557, 53.869652>,  <55.879654, 49.105511, 54.268890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.890892, 49.083557, 53.869652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942597, 0.333832, 0.008174,
		0.332748, -0.941033, 0.061116,
		0.028095, -0.054888, -0.998097,
		55.899319, 49.067089, 53.570221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.495399, 48.911606, 54.217873>,  <55.879654, 49.105511, 54.268890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.495399, 48.911606, 54.217873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.361404, 49.101658, 53.892410>,  <56.281006, 49.215687, 53.697132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.361404, 49.101658, 53.892410>,  <56.495399, 48.911606, 54.217873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.361404, 49.101658, 53.892410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904180, 0.405003, -0.135761,
		0.265030, -0.781170, -0.565272,
		-0.334990, 0.475127, -0.813656,
		56.260906, 49.244198, 53.648312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.733681, 48.646507, 53.570900>,  <56.495399, 48.911606, 54.217873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.733681, 48.646507, 53.570900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.659462, 49.037140, 53.527348>,  <56.614929, 49.271519, 53.501217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.659462, 49.037140, 53.527348>,  <56.733681, 48.646507, 53.570900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.659462, 49.037140, 53.527348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927957, 0.137698, -0.346315,
		-0.323212, -0.165300, -0.931778,
		-0.185550, 0.976583, -0.108885,
		56.603798, 49.330116, 53.494682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.636158, 48.950027, 52.761688>,  <56.733681, 48.646507, 53.570900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.636158, 48.950027, 52.761688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.762558, 49.240440, 53.005989>,  <56.838398, 49.414688, 53.152569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.762558, 49.240440, 53.005989>,  <56.636158, 48.950027, 52.761688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.762558, 49.240440, 53.005989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682889, 0.272835, -0.677660,
		-0.658638, 0.631218, -0.409584,
		0.316003, 0.726033, 0.610752,
		56.857357, 49.458252, 53.189213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.751011, 49.522396, 52.441341>,  <56.636158, 48.950027, 52.761688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.751011, 49.522396, 52.441341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.987160, 49.544861, 52.763412>,  <57.128849, 49.558338, 52.956654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.987160, 49.544861, 52.763412>,  <56.751011, 49.522396, 52.441341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.987160, 49.544861, 52.763412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739163, 0.363070, -0.567290,
		-0.324197, 0.930068, 0.172831,
		0.590368, 0.056163, 0.805178,
		57.164268, 49.561710, 53.004967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.801105, 50.158363, 52.463116>,  <56.751011, 49.522396, 52.441341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.801105, 50.158363, 52.463116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.087326, 49.906425, 52.583961>,  <57.259060, 49.755260, 52.656467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.087326, 49.906425, 52.583961>,  <56.801105, 50.158363, 52.463116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.087326, 49.906425, 52.583961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658485, 0.463798, -0.592696,
		0.233191, 0.623043, 0.746619,
		0.715555, -0.629849, 0.302111,
		57.301994, 49.717472, 52.674595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.327541, 50.365154, 52.087746>,  <56.801105, 50.158363, 52.463116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.327541, 50.365154, 52.087746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.510422, 50.089718, 52.312889>,  <57.620152, 49.924458, 52.447975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.510422, 50.089718, 52.312889>,  <57.327541, 50.365154, 52.087746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.510422, 50.089718, 52.312889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885757, 0.295635, -0.357820,
		0.079992, 0.662150, 0.745090,
		0.457205, -0.688591, 0.562855,
		57.647583, 49.883141, 52.481747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.784126, 50.666573, 52.598270>,  <57.327541, 50.365154, 52.087746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.784126, 50.666573, 52.598270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.928436, 50.299114, 52.533859>,  <58.015022, 50.078640, 52.495213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.928436, 50.299114, 52.533859>,  <57.784126, 50.666573, 52.598270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.928436, 50.299114, 52.533859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930794, 0.365545, -0.000027,
		0.058888, -0.149874, 0.986950,
		0.360770, -0.918648, -0.161028,
		58.036667, 50.023521, 52.485550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.337730, 50.442970, 53.144096>,  <57.784126, 50.666573, 52.598270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.337730, 50.442970, 53.144096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.385277, 50.286995, 52.778843>,  <58.413803, 50.193409, 52.559689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.385277, 50.286995, 52.778843>,  <58.337730, 50.442970, 53.144096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.385277, 50.286995, 52.778843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967199, 0.253403, 0.017691,
		0.224493, -0.885286, 0.407273,
		0.118865, -0.389942, -0.913135,
		58.420937, 50.170013, 52.504902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.925869, 49.797218, 53.039963>,  <58.337730, 50.442970, 53.144096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.925869, 49.797218, 53.039963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.863976, 50.062836, 52.747360>,  <58.826839, 50.222206, 52.571796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.863976, 50.062836, 52.747360>,  <58.925869, 49.797218, 53.039963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.863976, 50.062836, 52.747360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970302, 0.241494, 0.013983,
		0.185941, -0.707622, -0.681688,
		-0.154729, 0.664042, -0.731510,
		58.817558, 50.262047, 52.527908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.639458, 49.857738, 53.281578>,  <58.925869, 49.797218, 53.039963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.639458, 49.857738, 53.281578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.753212, 49.702339, 53.632164>,  <59.821465, 49.609100, 53.842514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.753212, 49.702339, 53.632164>,  <59.639458, 49.857738, 53.281578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.753212, 49.702339, 53.632164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499334, 0.840446, 0.210514,
		-0.818406, 0.377781, 0.433004,
		0.284388, -0.388500, 0.876465,
		59.838528, 49.585789, 53.895103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.419643, 50.357384, 53.961105>,  <59.639458, 49.857738, 53.281578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.419643, 50.357384, 53.961105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.747925, 50.128857, 53.958534>,  <59.944893, 49.991741, 53.956993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.747925, 50.128857, 53.958534>,  <59.419643, 50.357384, 53.961105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.747925, 50.128857, 53.958534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538421, 0.769586, 0.343280,
		-0.191174, -0.285193, 0.939211,
		0.820704, -0.571317, -0.006429,
		59.994137, 49.957462, 53.956604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.686424, 50.242329, 54.640175>,  <59.419643, 50.357384, 53.961105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.686424, 50.242329, 54.640175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.985832, 50.238266, 54.374962>,  <60.165478, 50.235828, 54.215836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.985832, 50.238266, 54.374962>,  <59.686424, 50.242329, 54.640175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.985832, 50.238266, 54.374962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402413, 0.801673, 0.442022,
		0.527044, -0.597676, 0.604159,
		0.748524, -0.010156, -0.663030,
		60.210388, 50.235218, 54.176052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.209984, 50.570992, 54.917698>,  <59.686424, 50.242329, 54.640175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.209984, 50.570992, 54.917698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.367584, 50.555984, 54.550362>,  <60.462147, 50.546982, 54.329960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.367584, 50.555984, 54.550362>,  <60.209984, 50.570992, 54.917698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.367584, 50.555984, 54.550362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436829, 0.886748, 0.151193,
		0.808666, -0.460729, 0.365768,
		0.394003, -0.037514, -0.918343,
		60.485786, 50.544731, 54.274860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.800049, 50.115139, 54.724976>,  <60.209984, 50.570992, 54.917698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.800049, 50.115139, 54.724976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.171646, 50.260143, 54.754776>,  <61.394604, 50.347145, 54.772655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.171646, 50.260143, 54.754776>,  <60.800049, 50.115139, 54.724976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.171646, 50.260143, 54.754776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109964, 0.078178, 0.990856,
		0.353375, -0.928694, 0.112490,
		0.928996, 0.362514, 0.074497,
		61.450344, 50.368896, 54.777126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.033588, 49.795563, 55.376320>,  <60.800049, 50.115139, 54.724976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.033588, 49.795563, 55.376320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.280884, 50.098465, 55.292084>,  <61.429260, 50.280205, 55.241543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.280884, 50.098465, 55.292084>,  <61.033588, 49.795563, 55.376320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.280884, 50.098465, 55.292084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101192, 0.189013, 0.976747,
		0.779450, -0.625172, 0.040226,
		0.618238, 0.757255, -0.210589,
		61.466354, 50.325642, 55.228909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.467304, 49.629108, 54.777397>,  <61.033588, 49.795563, 55.376320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.467304, 49.629108, 54.777397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.836319, 49.694618, 54.917175>,  <62.057728, 49.733925, 55.001041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.836319, 49.694618, 54.917175>,  <61.467304, 49.629108, 54.777397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.836319, 49.694618, 54.917175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289711, -0.892099, -0.346738,
		0.254954, 0.421115, -0.870437,
		0.922532, 0.163773, 0.349446,
		62.113079, 49.743752, 55.022011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.793694, 49.116222, 54.510086>,  <61.467304, 49.629108, 54.777397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.793694, 49.116222, 54.510086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.718132, 49.177914, 54.122162>,  <61.672794, 49.214928, 53.889408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.718132, 49.177914, 54.122162>,  <61.793694, 49.116222, 54.510086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.718132, 49.177914, 54.122162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113053, -0.984439, -0.134534,
		-0.975467, 0.084227, 0.203397,
		-0.188901, 0.154229, -0.969809,
		61.661461, 49.224182, 53.831219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.406952, 49.135559, 54.839333>,  <61.793694, 49.116222, 54.510086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.406952, 49.135559, 54.839333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.237717, 48.935989, 54.536789>,  <62.136177, 48.816250, 54.355263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.237717, 48.935989, 54.536789>,  <62.406952, 49.135559, 54.839333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.237717, 48.935989, 54.536789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015955, 0.830518, -0.556764,
		0.905949, -0.247627, -0.343420,
		-0.423086, -0.498921, -0.756357,
		62.110790, 48.786312, 54.309883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.555363, 49.563644, 54.346394>,  <62.406952, 49.135559, 54.839333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.555363, 49.563644, 54.346394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.298019, 49.319298, 54.161816>,  <62.143612, 49.172691, 54.051067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.298019, 49.319298, 54.161816>,  <62.555363, 49.563644, 54.346394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.298019, 49.319298, 54.161816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264734, 0.743090, -0.614600,
		0.718328, -0.273253, -0.639795,
		-0.643367, -0.610860, -0.461443,
		62.105011, 49.136040, 54.023380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.751129, 50.230045, 54.603241>,  <62.555363, 49.563644, 54.346394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.751129, 50.230045, 54.603241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.713524, 50.007801, 54.933685>,  <62.690960, 49.874454, 55.131954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.713524, 50.007801, 54.933685>,  <62.751129, 50.230045, 54.603241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.713524, 50.007801, 54.933685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730759, -0.602051, -0.321754,
		0.676131, 0.573442, 0.462614,
		-0.094010, -0.555607, 0.826113,
		62.685322, 49.841118, 55.181519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.321659, 50.231911, 55.159164>,  <62.751129, 50.230045, 54.603241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.321659, 50.231911, 55.159164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.135323, 49.877991, 55.163635>,  <63.023521, 49.665638, 55.166317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.135323, 49.877991, 55.163635>,  <63.321659, 50.231911, 55.159164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.135323, 49.877991, 55.163635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868758, -0.459716, -0.184175,
		0.168094, -0.076088, 0.982830,
		-0.465837, -0.884800, 0.011173,
		62.995571, 49.612549, 55.166988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.726864, 49.818565, 55.649780>,  <63.321659, 50.231911, 55.159164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.726864, 49.818565, 55.649780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.564896, 49.615185, 55.345802>,  <63.467712, 49.493156, 55.163418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.564896, 49.615185, 55.345802>,  <63.726864, 49.818565, 55.649780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.564896, 49.615185, 55.345802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868354, -0.474134, -0.145459,
		-0.286355, -0.718798, 0.633506,
		-0.404923, -0.508455, -0.759941,
		63.443420, 49.462646, 55.117821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.392082, 49.693630, 55.908974>,  <63.726864, 49.818565, 55.649780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.392082, 49.693630, 55.908974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.716202, 49.648239, 55.679001>,  <64.910675, 49.621006, 55.541016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.716202, 49.648239, 55.679001>,  <64.392082, 49.693630, 55.908974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.716202, 49.648239, 55.679001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529407, 0.562462, 0.635110,
		0.251311, -0.818999, 0.515833,
		0.810291, -0.113475, -0.574937,
		64.959290, 49.614197, 55.506519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.931870, 49.391228, 56.390606>,  <64.392082, 49.693630, 55.908974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.931870, 49.391228, 56.390606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.996239, 49.650169, 56.092606>,  <65.034859, 49.805534, 55.913803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.996239, 49.650169, 56.092606>,  <64.931870, 49.391228, 56.390606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.996239, 49.650169, 56.092606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451615, 0.622885, 0.638794,
		0.877581, -0.439250, -0.192122,
		0.160920, 0.647359, -0.745004,
		65.044518, 49.844376, 55.869102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.727936, 49.442379, 56.082790>,  <64.931870, 49.391228, 56.390606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.727936, 49.442379, 56.082790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.496826, 49.766495, 56.043571>,  <65.358162, 49.960964, 56.020039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.496826, 49.766495, 56.043571>,  <65.727936, 49.442379, 56.082790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.496826, 49.766495, 56.043571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708160, 0.557395, 0.433383,
		0.405818, 0.180961, -0.895860,
		-0.577773, 0.810286, -0.098051,
		65.323494, 50.009583, 56.014156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.111191, 50.062588, 55.770390>,  <65.727936, 49.442379, 56.082790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.111191, 50.062588, 55.770390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.798645, 50.219444, 55.964584>,  <65.611115, 50.313560, 56.081100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.798645, 50.219444, 55.964584>,  <66.111191, 50.062588, 55.770390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.798645, 50.219444, 55.964584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618799, 0.587794, 0.521138,
		-0.081004, 0.707616, -0.701939,
		-0.781361, 0.392145, 0.485486,
		65.564240, 50.337090, 56.110229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.995689, 50.776863, 55.703918>,  <66.111191, 50.062588, 55.770390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.995689, 50.776863, 55.703918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.886528, 50.651897, 56.067879>,  <65.821030, 50.576920, 56.286255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.886528, 50.651897, 56.067879>,  <65.995689, 50.776863, 55.703918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.886528, 50.651897, 56.067879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531286, 0.739558, 0.413267,
		-0.802036, 0.596199, -0.035843,
		-0.272897, -0.312412, 0.909904,
		65.804657, 50.558174, 56.340851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.608788, 51.278229, 56.262165>,  <65.995689, 50.776863, 55.703918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.608788, 51.278229, 56.262165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.846764, 51.013714, 56.444916>,  <65.989548, 50.855003, 56.554565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.846764, 51.013714, 56.444916>,  <65.608788, 51.278229, 56.262165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.846764, 51.013714, 56.444916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485833, 0.748696, 0.451021,
		-0.640318, -0.046367, 0.766709,
		0.594945, -0.661290, 0.456877,
		66.025246, 50.815327, 56.581978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.520515, 51.024502, 57.045361>,  <65.608788, 51.278229, 56.262165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.520515, 51.024502, 57.045361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.905762, 51.022114, 56.937744>,  <66.136909, 51.020679, 56.873177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.905762, 51.022114, 56.937744>,  <65.520515, 51.024502, 57.045361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.905762, 51.022114, 56.937744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223027, 0.577156, 0.785589,
		0.150584, -0.816612, 0.557198,
		0.963111, -0.005973, -0.269037,
		66.194695, 51.020321, 56.857033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.857277, 51.328506, 57.579792>,  <65.520515, 51.024502, 57.045361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.857277, 51.328506, 57.579792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.165100, 51.312912, 57.324837>,  <66.349792, 51.303555, 57.171864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.165100, 51.312912, 57.324837>,  <65.857277, 51.328506, 57.579792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.165100, 51.312912, 57.324837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497552, 0.662269, 0.560216,
		0.400284, -0.748251, 0.529049,
		0.769555, -0.038984, -0.637390,
		66.395966, 51.301216, 57.133621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.309769, 51.407185, 58.092926>,  <65.857277, 51.328506, 57.579792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.309769, 51.407185, 58.092926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.492653, 51.414577, 57.737259>,  <66.602386, 51.419014, 57.523861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.492653, 51.414577, 57.737259>,  <66.309769, 51.407185, 58.092926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.492653, 51.414577, 57.737259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649620, 0.675892, 0.348086,
		0.607411, -0.736769, 0.297025,
		0.457215, 0.018478, -0.889164,
		66.629814, 51.420120, 57.470509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.101189, 51.463909, 58.154190>,  <66.309769, 51.407185, 58.092926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.101189, 51.463909, 58.154190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.981140, 51.597939, 57.796944>,  <66.909111, 51.678356, 57.582596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.981140, 51.597939, 57.796944>,  <67.101189, 51.463909, 58.154190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.981140, 51.597939, 57.796944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494747, 0.855177, 0.154588,
		0.815569, -0.395471, -0.422434,
		-0.300121, 0.335075, -0.893114,
		66.891106, 51.698460, 57.529011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.580833, 51.904770, 58.007782>,  <67.101189, 51.463909, 58.154190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.580833, 51.904770, 58.007782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.280251, 52.018303, 57.769539>,  <67.099899, 52.086422, 57.626595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.280251, 52.018303, 57.769539>,  <67.580833, 51.904770, 58.007782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.280251, 52.018303, 57.769539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354491, 0.935058, -0.001652,
		0.556456, -0.212378, -0.803276,
		-0.751461, 0.283834, -0.595605,
		67.054810, 52.103455, 57.590858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.856705, 52.451427, 57.663605>,  <67.580833, 51.904770, 58.007782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.856705, 52.451427, 57.663605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.465851, 52.496529, 57.591484>,  <67.231339, 52.523590, 57.548214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.465851, 52.496529, 57.591484>,  <67.856705, 52.451427, 57.663605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.465851, 52.496529, 57.591484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131875, 0.986427, -0.097831,
		0.166820, -0.119371, -0.978735,
		-0.977129, 0.112750, -0.180298,
		67.172714, 52.530354, 57.537395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.777374, 52.790409, 56.962029>,  <67.856705, 52.451427, 57.663605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.777374, 52.790409, 56.962029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.426086, 52.870853, 57.135590>,  <67.215309, 52.919121, 57.239727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.426086, 52.870853, 57.135590>,  <67.777374, 52.790409, 56.962029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.426086, 52.870853, 57.135590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211318, 0.977093, -0.025165,
		-0.429028, 0.069592, -0.900606,
		-0.878225, 0.201111, 0.433906,
		67.162621, 52.931187, 57.265762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.380722, 53.434467, 56.791836>,  <67.777374, 52.790409, 56.962029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.380722, 53.434467, 56.791836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.271721, 53.342880, 57.165642>,  <67.206322, 53.287930, 57.389923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.271721, 53.342880, 57.165642>,  <67.380722, 53.434467, 56.791836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.271721, 53.342880, 57.165642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191248, 0.939001, 0.285835,
		-0.942956, 0.256615, -0.212092,
		-0.272504, -0.228968, 0.934513,
		67.189972, 53.274189, 57.445995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.076859, 54.126965, 56.922962>,  <67.380722, 53.434467, 56.791836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.076859, 54.126965, 56.922962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.195435, 53.932129, 57.251564>,  <67.266579, 53.815228, 57.448727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.195435, 53.932129, 57.251564>,  <67.076859, 54.126965, 56.922962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.195435, 53.932129, 57.251564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070688, 0.846618, 0.527486,
		-0.952431, -0.214440, 0.216541,
		0.296442, -0.487088, 0.821504,
		67.284370, 53.786003, 57.498016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.848076, 54.597446, 57.577553>,  <67.076859, 54.126965, 56.922962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.848076, 54.597446, 57.577553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.200378, 54.505154, 57.742981>,  <67.411758, 54.449780, 57.842239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.200378, 54.505154, 57.742981>,  <66.848076, 54.597446, 57.577553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.200378, 54.505154, 57.742981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056144, 0.816259, 0.574951,
		-0.470238, -0.529608, 0.705968,
		0.880752, -0.230728, 0.413570,
		67.464607, 54.435936, 57.867050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.810272, 54.628536, 58.390514>,  <66.848076, 54.597446, 57.577553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.810272, 54.628536, 58.390514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.162979, 54.739738, 58.238091>,  <67.374603, 54.806461, 58.146637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.162979, 54.739738, 58.238091>,  <66.810272, 54.628536, 58.390514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.162979, 54.739738, 58.238091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087495, 0.890238, 0.447013,
		0.463509, -0.360817, 0.809302,
		0.881762, 0.278004, -0.381063,
		67.427505, 54.823139, 58.123772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.182571, 55.089565, 58.723507>,  <66.810272, 54.628536, 58.390514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.182571, 55.089565, 58.723507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.373436, 55.156570, 58.378426>,  <67.487953, 55.196774, 58.171375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.373436, 55.156570, 58.378426>,  <67.182571, 55.089565, 58.723507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.373436, 55.156570, 58.378426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059610, 0.985575, 0.158397,
		0.876792, -0.024155, 0.480263,
		0.477161, 0.167510, -0.862704,
		67.516586, 55.206825, 58.119614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.953735, 55.488457, 58.822773>,  <67.182571, 55.089565, 58.723507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.953735, 55.488457, 58.822773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.704269, 55.574722, 58.522232>,  <67.554588, 55.626480, 58.341908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.704269, 55.574722, 58.522232>,  <67.953735, 55.488457, 58.822773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.704269, 55.574722, 58.522232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028487, 0.954280, 0.297554,
		0.781172, 0.206978, -0.589008,
		-0.623666, 0.215661, -0.751353,
		67.517166, 55.639420, 58.296825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.110283, 56.140091, 58.420177>,  <67.953735, 55.488457, 58.822773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.110283, 56.140091, 58.420177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.723564, 56.043968, 58.385384>,  <67.491531, 55.986294, 58.364510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.723564, 56.043968, 58.385384>,  <68.110283, 56.140091, 58.420177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.723564, 56.043968, 58.385384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248473, 0.804226, 0.539891,
		-0.059786, 0.543575, -0.837229,
		-0.966792, -0.240307, -0.086982,
		67.433525, 55.971874, 58.359287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.697914, 55.741848, 58.690083>,  <68.110283, 56.140091, 58.420177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.697914, 55.741848, 58.690083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.078598, 55.771351, 58.570885>,  <69.307007, 55.789051, 58.499367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.078598, 55.771351, 58.570885>,  <68.697914, 55.741848, 58.690083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.078598, 55.771351, 58.570885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294683, 0.052535, 0.954150,
		0.086037, -0.995891, 0.028261,
		0.951714, 0.073764, -0.297992,
		69.364113, 55.793476, 58.481487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.034790, 55.421680, 59.302242>,  <68.697914, 55.741848, 58.690083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.034790, 55.421680, 59.302242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.349106, 55.535786, 59.082733>,  <69.537697, 55.604248, 58.951027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.349106, 55.535786, 59.082733>,  <69.034790, 55.421680, 59.302242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.349106, 55.535786, 59.082733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617450, -0.310564, 0.722706,
		0.035734, -0.906738, -0.420177,
		0.785798, 0.285264, -0.548768,
		69.584846, 55.621365, 58.918102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.489716, 54.827980, 59.337482>,  <69.034790, 55.421680, 59.302242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.489716, 54.827980, 59.337482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.612946, 55.207745, 59.313164>,  <69.686882, 55.435604, 59.298573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.612946, 55.207745, 59.313164>,  <69.489716, 54.827980, 59.337482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.612946, 55.207745, 59.313164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467555, -0.095448, 0.878796,
		0.828539, -0.299167, -0.473309,
		0.308083, 0.949415, -0.060795,
		69.705368, 55.492569, 59.294926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.124954, 54.772453, 59.679298>,  <69.489716, 54.827980, 59.337482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.124954, 54.772453, 59.679298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.029465, 55.158855, 59.639626>,  <69.972168, 55.390697, 59.615822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.029465, 55.158855, 59.639626>,  <70.124954, 54.772453, 59.679298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.029465, 55.158855, 59.639626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556043, 0.219712, 0.801588,
		0.796131, 0.136217, -0.589594,
		-0.238731, 0.966008, -0.099177,
		69.957848, 55.448658, 59.609871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.670906, 55.177490, 59.552685>,  <70.124954, 54.772453, 59.679298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.670906, 55.177490, 59.552685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.417816, 55.421360, 59.743660>,  <70.265961, 55.567680, 59.858246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.417816, 55.421360, 59.743660>,  <70.670906, 55.177490, 59.552685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.417816, 55.421360, 59.743660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565460, -0.057476, 0.822771,
		0.529065, 0.790564, -0.308380,
		-0.632729, 0.609676, 0.477441,
		70.227997, 55.604263, 59.886890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.960594, 55.922058, 59.922955>,  <70.670906, 55.177490, 59.552685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.960594, 55.922058, 59.922955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.657188, 55.735638, 60.105141>,  <70.475143, 55.623787, 60.214451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.657188, 55.735638, 60.105141>,  <70.960594, 55.922058, 59.922955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.657188, 55.735638, 60.105141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485280, 0.062494, 0.872123,
		-0.434918, 0.882547, 0.178763,
		-0.758518, -0.466052, 0.455462,
		70.429634, 55.595821, 60.241779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.457542, 56.415909, 60.310040>,  <70.960594, 55.922058, 59.922955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.457542, 56.415909, 60.310040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.776070, 56.191505, 60.400513>,  <71.967186, 56.056862, 60.454796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.776070, 56.191505, 60.400513>,  <71.457542, 56.415909, 60.310040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.776070, 56.191505, 60.400513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486500, 0.371793, -0.790625,
		0.359457, 0.739619, 0.568994,
		0.796309, -0.561011, 0.226181,
		72.014961, 56.023201, 60.468369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.080536, 56.859821, 60.455391>,  <71.457542, 56.415909, 60.310040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.080536, 56.859821, 60.455391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.174469, 56.498249, 60.312416>,  <72.230827, 56.281303, 60.226631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.174469, 56.498249, 60.312416>,  <72.080536, 56.859821, 60.455391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.174469, 56.498249, 60.312416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646847, 0.419801, -0.636676,
		0.725563, -0.081690, 0.683290,
		0.234836, -0.903933, -0.357432,
		72.244919, 56.227070, 60.205185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.741379, 56.783894, 60.315609>,  <72.080536, 56.859821, 60.455391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.741379, 56.783894, 60.315609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.081055, 56.949257, 60.447044>,  <73.284859, 57.048473, 60.525906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.081055, 56.949257, 60.447044>,  <72.741379, 56.783894, 60.315609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.081055, 56.949257, 60.447044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045497, 0.677190, -0.734401,
		-0.526123, 0.608696, 0.593871,
		0.849190, 0.413405, 0.328592,
		73.335815, 57.073277, 60.545624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.677216, 57.422092, 60.525726>,  <72.741379, 56.783894, 60.315609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.677216, 57.422092, 60.525726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.057533, 57.399323, 60.403908>,  <73.285721, 57.385662, 60.330818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.057533, 57.399323, 60.403908>,  <72.677216, 57.422092, 60.525726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.057533, 57.399323, 60.403908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207733, 0.612158, -0.762961,
		0.229858, 0.788684, 0.570213,
		0.950796, -0.056920, -0.304545,
		73.342773, 57.382248, 60.312546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.968521, 58.074451, 60.555672>,  <72.677216, 57.422092, 60.525726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.968521, 58.074451, 60.555672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.138550, 57.863998, 60.261055>,  <73.240570, 57.737724, 60.084286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.138550, 57.863998, 60.261055>,  <72.968521, 58.074451, 60.555672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.138550, 57.863998, 60.261055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201273, 0.738403, -0.643623,
		0.882497, 0.421833, 0.207979,
		0.425073, -0.526135, -0.736542,
		73.266075, 57.706158, 60.040092>
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
