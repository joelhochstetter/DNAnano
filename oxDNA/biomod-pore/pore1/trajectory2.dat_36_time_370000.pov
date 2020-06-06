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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<39.264206, 41.889706, 43.093155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556763, 42.051392, 43.312855>,  <39.732296, 42.148403, 43.444675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556763, 42.051392, 43.312855>,  <39.264206, 41.889706, 43.093155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556763, 42.051392, 43.312855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442381, -0.331740, 0.833215,
		0.519008, -0.852384, -0.063813,
		0.731389, 0.404215, 0.549254,
		39.776180, 42.172657, 43.477631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510105, 41.396397, 43.530628>,  <39.264206, 41.889706, 43.093155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510105, 41.396397, 43.530628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571106, 41.757332, 43.691887>,  <39.607704, 41.973892, 43.788643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571106, 41.757332, 43.691887>,  <39.510105, 41.396397, 43.530628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571106, 41.757332, 43.691887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519554, -0.273806, 0.809379,
		0.840719, -0.332886, 0.427059,
		0.152500, 0.902340, 0.403146,
		39.616856, 42.028034, 43.812832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677036, 41.163700, 44.202148>,  <39.510105, 41.396397, 43.530628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677036, 41.163700, 44.202148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554176, 41.544296, 44.209267>,  <39.480461, 41.772655, 44.213539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554176, 41.544296, 44.209267>,  <39.677036, 41.163700, 44.202148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554176, 41.544296, 44.209267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584435, -0.203358, 0.785545,
		0.751061, 0.230880, 0.618548,
		-0.307153, 0.951493, 0.017799,
		39.462029, 41.829742, 44.214607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606880, 41.234917, 44.961281>,  <39.677036, 41.163700, 44.202148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606880, 41.234917, 44.961281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434212, 41.540970, 44.770184>,  <39.330612, 41.724602, 44.655525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434212, 41.540970, 44.770184>,  <39.606880, 41.234917, 44.961281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434212, 41.540970, 44.770184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711722, 0.036483, 0.701513,
		0.554179, 0.642840, 0.528812,
		-0.431668, 0.765131, -0.477742,
		39.304710, 41.770508, 44.626862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526142, 41.690098, 45.482677>,  <39.606880, 41.234917, 44.961281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526142, 41.690098, 45.482677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246834, 41.780769, 45.211079>,  <39.079250, 41.835171, 45.048119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246834, 41.780769, 45.211079>,  <39.526142, 41.690098, 45.482677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246834, 41.780769, 45.211079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689075, 0.044064, 0.723349,
		0.193888, 0.972972, 0.125431,
		-0.698272, 0.226680, -0.678994,
		39.037354, 41.848774, 45.007381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130810, 42.137184, 45.788860>,  <39.526142, 41.690098, 45.482677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130810, 42.137184, 45.788860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892029, 41.993279, 45.502022>,  <38.748760, 41.906937, 45.329918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892029, 41.993279, 45.502022>,  <39.130810, 42.137184, 45.788860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892029, 41.993279, 45.502022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752912, -0.057477, 0.655606,
		-0.277078, 0.931272, -0.236558,
		-0.596951, -0.359762, -0.717092,
		38.712944, 41.885349, 45.286896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527882, 42.502876, 45.897015>,  <39.130810, 42.137184, 45.788860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527882, 42.502876, 45.897015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409630, 42.182060, 45.689423>,  <38.338680, 41.989571, 45.564865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409630, 42.182060, 45.689423>,  <38.527882, 42.502876, 45.897015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409630, 42.182060, 45.689423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665243, -0.217056, 0.714380,
		-0.685606, 0.556440, -0.469381,
		-0.295628, -0.802036, -0.518983,
		38.320942, 41.941448, 45.533730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823559, 42.581219, 45.834415>,  <38.527882, 42.502876, 45.897015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823559, 42.581219, 45.834415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848488, 42.202873, 45.707005>,  <37.863445, 41.975864, 45.630558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848488, 42.202873, 45.707005>,  <37.823559, 42.581219, 45.834415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848488, 42.202873, 45.707005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816664, -0.231795, 0.528517,
		-0.573738, 0.227190, -0.786899,
		0.062325, -0.945863, -0.318527,
		37.867184, 41.919113, 45.611446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146328, 42.359982, 45.643173>,  <37.823559, 42.581219, 45.834415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146328, 42.359982, 45.643173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361137, 42.036781, 45.740124>,  <37.490025, 41.842861, 45.798294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361137, 42.036781, 45.740124>,  <37.146328, 42.359982, 45.643173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361137, 42.036781, 45.740124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767869, -0.349262, 0.537023,
		-0.349262, -0.474505, -0.807998,
		-0.537023, 0.807998, -0.242374,
		37.522243, 41.794380, 45.812836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707050, 41.760082, 45.553783>,  <37.146328, 42.359982, 45.643173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707050, 41.760082, 45.553783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001778, 41.644768, 45.798401>,  <37.178616, 41.575581, 45.945171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001778, 41.644768, 45.798401>,  <36.707050, 41.760082, 45.553783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001778, 41.644768, 45.798401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655698, -0.525184, 0.542441,
		0.164799, -0.800671, -0.575992,
		0.736819, -0.288283, 0.611548,
		37.222824, 41.558281, 45.981865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520256, 41.165577, 45.744156>,  <36.707050, 41.760082, 45.553783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520256, 41.165577, 45.744156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801445, 41.239120, 46.018970>,  <36.970158, 41.283249, 46.183861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801445, 41.239120, 46.018970>,  <36.520256, 41.165577, 45.744156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801445, 41.239120, 46.018970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630125, -0.286938, 0.721532,
		0.329800, -0.940139, -0.085854,
		0.702975, 0.183862, 0.687037,
		37.012337, 41.294281, 46.225082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656616, 40.559502, 46.092102>,  <36.520256, 41.165577, 45.744156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656616, 40.559502, 46.092102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746178, 40.873962, 46.322521>,  <36.799915, 41.062637, 46.460773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746178, 40.873962, 46.322521>,  <36.656616, 40.559502, 46.092102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746178, 40.873962, 46.322521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567199, -0.375541, 0.732977,
		0.792560, -0.490854, 0.361817,
		0.223908, 0.786150, 0.576050,
		36.813351, 41.109806, 46.495335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675430, 40.234524, 46.806114>,  <36.656616, 40.559502, 46.092102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675430, 40.234524, 46.806114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650913, 40.627579, 46.876171>,  <36.636204, 40.863411, 46.918205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650913, 40.627579, 46.876171>,  <36.675430, 40.234524, 46.806114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650913, 40.627579, 46.876171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492223, -0.182409, 0.851142,
		0.868309, -0.034045, 0.494854,
		-0.061289, 0.982633, 0.175145,
		36.632526, 40.922367, 46.928715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998394, 40.284866, 47.467342>,  <36.675430, 40.234524, 46.806114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998394, 40.284866, 47.467342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767586, 40.603989, 47.397427>,  <36.629101, 40.795464, 47.355476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767586, 40.603989, 47.397427>,  <36.998394, 40.284866, 47.467342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767586, 40.603989, 47.397427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563942, -0.234391, 0.791853,
		0.590774, 0.555490, 0.585164,
		-0.577023, 0.797805, -0.174792,
		36.594479, 40.843330, 47.344990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010078, 40.619656, 48.034836>,  <36.998394, 40.284866, 47.467342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010078, 40.619656, 48.034836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685287, 40.759758, 47.848068>,  <36.490414, 40.843819, 47.736008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685287, 40.759758, 47.848068>,  <37.010078, 40.619656, 48.034836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685287, 40.759758, 47.848068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559323, -0.238177, 0.793996,
		0.166888, 0.905867, 0.389299,
		-0.811977, 0.350252, -0.466923,
		36.441696, 40.864834, 47.707993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624321, 40.752281, 48.610184>,  <37.010078, 40.619656, 48.034836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624321, 40.752281, 48.610184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356926, 40.770645, 48.313259>,  <36.196491, 40.781662, 48.135105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356926, 40.770645, 48.313259>,  <36.624321, 40.752281, 48.610184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356926, 40.770645, 48.313259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720493, -0.287500, 0.631058,
		-0.184444, 0.956680, 0.225264,
		-0.668483, 0.045906, -0.742309,
		36.156380, 40.784416, 48.090565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092896, 41.075844, 48.855347>,  <36.624321, 40.752281, 48.610184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092896, 41.075844, 48.855347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937668, 40.882851, 48.541248>,  <35.844532, 40.767056, 48.352791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937668, 40.882851, 48.541248>,  <36.092896, 41.075844, 48.855347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937668, 40.882851, 48.541248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700951, -0.398680, 0.591373,
		-0.598389, 0.779914, -0.183479,
		-0.388070, -0.482481, -0.785247,
		35.821247, 40.738106, 48.305676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469055, 41.049000, 49.008766>,  <36.092896, 41.075844, 48.855347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469055, 41.049000, 49.008766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492104, 40.758743, 48.734505>,  <35.505932, 40.584587, 48.569946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492104, 40.758743, 48.734505>,  <35.469055, 41.049000, 49.008766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492104, 40.758743, 48.734505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457622, -0.629590, 0.627853,
		-0.887278, 0.277591, -0.368349,
		0.057622, -0.725644, -0.685653,
		35.509392, 40.541050, 48.528809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843998, 40.800850, 48.993134>,  <35.469055, 41.049000, 49.008766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843998, 40.800850, 48.993134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049217, 40.503799, 48.820957>,  <35.172348, 40.325569, 48.717651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049217, 40.503799, 48.820957>,  <34.843998, 40.800850, 48.993134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049217, 40.503799, 48.820957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467463, -0.662317, 0.585504,
		-0.719900, -0.099179, -0.686955,
		0.513051, -0.742631, -0.430440,
		35.203133, 40.281010, 48.691826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426102, 40.190544, 49.003258>,  <34.843998, 40.800850, 48.993134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426102, 40.190544, 49.003258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790565, 40.030281, 48.964771>,  <35.009243, 39.934124, 48.941681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790565, 40.030281, 48.964771>,  <34.426102, 40.190544, 49.003258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790565, 40.030281, 48.964771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325605, -0.843205, 0.427769,
		-0.252517, -0.358439, -0.898753,
		0.911162, -0.400657, -0.096214,
		35.063915, 39.910084, 48.935905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292336, 39.500668, 48.713402>,  <34.426102, 40.190544, 49.003258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292336, 39.500668, 48.713402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650089, 39.480507, 48.891178>,  <34.864742, 39.468410, 48.997845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650089, 39.480507, 48.891178>,  <34.292336, 39.500668, 48.713402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650089, 39.480507, 48.891178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322989, -0.760156, 0.563774,
		0.309433, -0.647784, -0.696152,
		0.894387, -0.050400, 0.444444,
		34.918407, 39.465385, 49.024513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331001, 38.847580, 48.915901>,  <34.292336, 39.500668, 48.713402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331001, 38.847580, 48.915901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592621, 39.022514, 49.162788>,  <34.749592, 39.127476, 49.310921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592621, 39.022514, 49.162788>,  <34.331001, 38.847580, 48.915901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592621, 39.022514, 49.162788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205477, -0.682550, 0.701359,
		0.728013, -0.585546, -0.356557,
		0.654046, 0.437334, 0.617222,
		34.788834, 39.153713, 49.347954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580116, 38.266872, 49.261486>,  <34.331001, 38.847580, 48.915901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580116, 38.266872, 49.261486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713966, 38.549828, 49.510525>,  <34.794277, 38.719601, 49.659946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713966, 38.549828, 49.510525>,  <34.580116, 38.266872, 49.261486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713966, 38.549828, 49.510525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164712, -0.606607, 0.777752,
		0.927845, -0.362804, -0.086469,
		0.334624, 0.707391, 0.622595,
		34.814354, 38.762043, 49.697304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088158, 37.931705, 49.682362>,  <34.580116, 38.266872, 49.261486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088158, 37.931705, 49.682362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984894, 38.258972, 49.887867>,  <34.922935, 38.455334, 50.011169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984894, 38.258972, 49.887867>,  <35.088158, 37.931705, 49.682362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984894, 38.258972, 49.887867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293321, -0.573065, 0.765218,
		0.920497, 0.046852, 0.387930,
		-0.258161, 0.818169, 0.513762,
		34.907444, 38.504421, 50.041996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330467, 37.719017, 50.318157>,  <35.088158, 37.931705, 49.682362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330467, 37.719017, 50.318157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099586, 38.038551, 50.385918>,  <34.961056, 38.230270, 50.426575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099586, 38.038551, 50.385918>,  <35.330467, 37.719017, 50.318157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099586, 38.038551, 50.385918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514729, -0.516963, 0.683962,
		0.633947, 0.307590, 0.709577,
		-0.577205, 0.798835, 0.169402,
		34.926426, 38.278202, 50.436737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359447, 37.878056, 50.991432>,  <35.330467, 37.719017, 50.318157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359447, 37.878056, 50.991432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003456, 38.003036, 50.858574>,  <34.789864, 38.078026, 50.778858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003456, 38.003036, 50.858574>,  <35.359447, 37.878056, 50.991432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003456, 38.003036, 50.858574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450670, -0.491519, 0.745189,
		0.069583, 0.812885, 0.578252,
		-0.889975, 0.312453, -0.332141,
		34.736465, 38.096771, 50.758930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991104, 38.132851, 51.593792>,  <35.359447, 37.878056, 50.991432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991104, 38.132851, 51.593792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693943, 38.078018, 51.331707>,  <34.515648, 38.045116, 51.174454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693943, 38.078018, 51.331707>,  <34.991104, 38.132851, 51.593792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693943, 38.078018, 51.331707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555666, -0.419520, 0.717800,
		-0.373275, 0.897335, 0.235489,
		-0.742900, -0.137084, -0.655216,
		34.471073, 38.036892, 51.135143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373379, 38.328602, 51.944874>,  <34.991104, 38.132851, 51.593792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373379, 38.328602, 51.944874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221718, 38.122673, 51.637318>,  <34.130722, 37.999115, 51.452782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221718, 38.122673, 51.637318>,  <34.373379, 38.328602, 51.944874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221718, 38.122673, 51.637318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711669, -0.368838, 0.597900,
		-0.591411, 0.773895, -0.226539,
		-0.379156, -0.514826, -0.768892,
		34.107971, 37.968224, 51.406651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571606, 38.483017, 51.838146>,  <34.373379, 38.328602, 51.944874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571606, 38.483017, 51.838146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672356, 38.122520, 51.697113>,  <33.732807, 37.906223, 51.612492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672356, 38.122520, 51.697113>,  <33.571606, 38.483017, 51.838146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672356, 38.122520, 51.697113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721440, -0.417700, 0.552314,
		-0.645045, 0.115256, -0.755402,
		0.251874, -0.901245, -0.352586,
		33.747917, 37.852146, 51.591339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926121, 38.118919, 51.805714>,  <33.571606, 38.483017, 51.838146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926121, 38.118919, 51.805714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167576, 37.802177, 51.768654>,  <33.312450, 37.612133, 51.746418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167576, 37.802177, 51.768654>,  <32.926121, 38.118919, 51.805714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167576, 37.802177, 51.768654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670405, -0.567051, 0.478550,
		-0.431481, -0.226757, -0.873158,
		0.603639, -0.791855, -0.092653,
		33.348667, 37.564621, 51.740856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513340, 37.456688, 51.539871>,  <32.926121, 38.118919, 51.805714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513340, 37.456688, 51.539871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835472, 37.343834, 51.748425>,  <33.028751, 37.276123, 51.873554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835472, 37.343834, 51.748425>,  <32.513340, 37.456688, 51.539871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835472, 37.343834, 51.748425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556314, -0.663535, 0.500236,
		0.204822, -0.692909, -0.691321,
		0.805334, -0.282132, 0.521381,
		33.077072, 37.259193, 51.904839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353081, 36.809597, 51.723015>,  <32.513340, 37.456688, 51.539871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353081, 36.809597, 51.723015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666069, 36.896523, 51.956429>,  <32.853863, 36.948677, 52.096478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666069, 36.896523, 51.956429>,  <32.353081, 36.809597, 51.723015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666069, 36.896523, 51.956429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419295, -0.508952, 0.751771,
		0.460362, -0.832912, -0.307122,
		0.782469, 0.217312, 0.583538,
		32.900810, 36.961716, 52.131489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548859, 36.165512, 52.043095>,  <32.353081, 36.809597, 51.723015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548859, 36.165512, 52.043095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688942, 36.449493, 52.287491>,  <32.772991, 36.619884, 52.434128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688942, 36.449493, 52.287491>,  <32.548859, 36.165512, 52.043095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688942, 36.449493, 52.287491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380232, -0.488383, 0.785433,
		0.856022, -0.507388, 0.098911,
		0.350212, 0.709958, 0.610992,
		32.794006, 36.662479, 52.470787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833916, 35.747124, 52.644794>,  <32.548859, 36.165512, 52.043095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833916, 35.747124, 52.644794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790737, 36.132469, 52.742996>,  <32.764828, 36.363678, 52.801918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790737, 36.132469, 52.742996>,  <32.833916, 35.747124, 52.644794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790737, 36.132469, 52.742996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453314, -0.267478, 0.850272,
		0.884790, -0.019502, 0.465582,
		-0.107951, 0.963367, 0.245502,
		32.758350, 36.421478, 52.816647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069977, 35.815765, 53.358215>,  <32.833916, 35.747124, 52.644794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069977, 35.815765, 53.358215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818398, 36.116264, 53.278168>,  <32.667450, 36.296566, 53.230141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818398, 36.116264, 53.278168>,  <33.069977, 35.815765, 53.358215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818398, 36.116264, 53.278168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477689, -0.170341, 0.861857,
		0.613381, 0.637658, 0.466000,
		-0.628949, 0.751250, -0.200118,
		32.629711, 36.341640, 53.218132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028717, 36.235535, 53.979393>,  <33.069977, 35.815765, 53.358215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028717, 36.235535, 53.979393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703354, 36.329178, 53.766392>,  <32.508137, 36.385365, 53.638592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703354, 36.329178, 53.766392>,  <33.028717, 36.235535, 53.979393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703354, 36.329178, 53.766392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562204, -0.081447, 0.822978,
		0.149297, 0.968792, 0.197868,
		-0.813410, 0.234110, -0.532500,
		32.459332, 36.399410, 53.606644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646385, 36.658127, 54.479271>,  <33.028717, 36.235535, 53.979393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646385, 36.658127, 54.479271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403397, 36.535812, 54.186020>,  <32.257603, 36.462425, 54.010071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403397, 36.535812, 54.186020>,  <32.646385, 36.658127, 54.479271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403397, 36.535812, 54.186020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691667, -0.250216, 0.677487,
		-0.390605, 0.918633, -0.059503,
		-0.607473, -0.305787, -0.733124,
		32.221153, 36.444077, 53.966084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957050, 36.989273, 54.612717>,  <32.646385, 36.658127, 54.479271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957050, 36.989273, 54.612717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878048, 36.682243, 54.368805>,  <31.830647, 36.498028, 54.222458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878048, 36.682243, 54.368805>,  <31.957050, 36.989273, 54.612717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878048, 36.682243, 54.368805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686385, -0.335831, 0.645053,
		-0.699905, 0.545943, -0.460520,
		-0.197505, -0.767570, -0.609777,
		31.818796, 36.451973, 54.185871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281334, 36.922314, 54.672832>,  <31.957050, 36.989273, 54.612717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281334, 36.922314, 54.672832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383823, 36.569847, 54.513885>,  <31.445316, 36.358368, 54.418518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383823, 36.569847, 54.513885>,  <31.281334, 36.922314, 54.672832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383823, 36.569847, 54.513885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686384, -0.455311, 0.567071,
		-0.680608, 0.127448, -0.721478,
		0.256224, -0.881163, -0.397366,
		31.460691, 36.305496, 54.394676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648142, 36.572453, 54.596157>,  <31.281334, 36.922314, 54.672832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648142, 36.572453, 54.596157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917385, 36.277649, 54.571709>,  <31.078932, 36.100765, 54.557041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917385, 36.277649, 54.571709>,  <30.648142, 36.572453, 54.596157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917385, 36.277649, 54.571709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576596, -0.574757, 0.580682,
		-0.463100, -0.355620, -0.811833,
		0.673109, -0.737013, -0.061121,
		31.119318, 36.056545, 54.553371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259996, 35.982292, 54.552044>,  <30.648142, 36.572453, 54.596157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259996, 35.982292, 54.552044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626827, 35.882980, 54.676834>,  <30.846926, 35.823395, 54.751709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626827, 35.882980, 54.676834>,  <30.259996, 35.982292, 54.552044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626827, 35.882980, 54.676834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390061, -0.720782, 0.572997,
		0.082606, -0.647172, -0.757855,
		0.917076, -0.248277, 0.311978,
		30.901951, 35.808498, 54.770428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179232, 35.261749, 54.512089>,  <30.259996, 35.982292, 54.552044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179232, 35.261749, 54.512089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473412, 35.352676, 54.767410>,  <30.649920, 35.407234, 54.920605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473412, 35.352676, 54.767410>,  <30.179232, 35.261749, 54.512089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473412, 35.352676, 54.767410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300079, -0.735351, 0.607628,
		0.607506, -0.638424, -0.472601,
		0.735452, 0.227320, 0.638307,
		30.694048, 35.420872, 54.958904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555401, 34.714809, 54.669559>,  <30.179232, 35.261749, 54.512089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555401, 34.714809, 54.669559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585035, 34.954681, 54.988281>,  <30.602816, 35.098602, 55.179516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585035, 34.954681, 54.988281>,  <30.555401, 34.714809, 54.669559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585035, 34.954681, 54.988281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339182, -0.736214, 0.585614,
		0.937799, -0.313647, 0.148856,
		0.074086, 0.599678, 0.796804,
		30.607262, 35.134586, 55.227322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735487, 34.214378, 55.191322>,  <30.555401, 34.714809, 54.669559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735487, 34.214378, 55.191322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627497, 34.554741, 55.371574>,  <30.562702, 34.758961, 55.479725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627497, 34.554741, 55.371574>,  <30.735487, 34.214378, 55.191322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627497, 34.554741, 55.371574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216095, -0.509613, 0.832825,
		0.938305, 0.127465, 0.321461,
		-0.269976, 0.850910, 0.450628,
		30.546503, 34.810013, 55.506763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213718, 34.301666, 55.662735>,  <30.735487, 34.214378, 55.191322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213718, 34.301666, 55.662735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857544, 34.467766, 55.737236>,  <30.643839, 34.567425, 55.781937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857544, 34.467766, 55.737236>,  <31.213718, 34.301666, 55.662735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857544, 34.467766, 55.737236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033605, -0.468119, 0.883026,
		0.453861, 0.780021, 0.430786,
		-0.890438, 0.415248, 0.186248,
		30.590412, 34.592339, 55.793110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994823, 33.723873, 56.214039>,  <31.213718, 34.301666, 55.662735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994823, 33.723873, 56.214039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059608, 33.383331, 56.014450>,  <31.098478, 33.179008, 55.894699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059608, 33.383331, 56.014450>,  <30.994823, 33.723873, 56.214039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059608, 33.383331, 56.014450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749799, 0.434901, -0.498661,
		0.641537, -0.293363, 0.708780,
		0.161961, -0.851352, -0.498968,
		31.108196, 33.127926, 55.864761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685299, 33.339485, 56.289513>,  <30.994823, 33.723873, 56.214039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685299, 33.339485, 56.289513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533716, 33.280121, 55.924137>,  <31.442766, 33.244503, 55.704914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533716, 33.280121, 55.924137>,  <31.685299, 33.339485, 56.289513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533716, 33.280121, 55.924137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677212, 0.628232, -0.383025,
		0.630697, -0.763739, -0.137561,
		-0.378951, -0.148414, -0.913438,
		31.420029, 33.235600, 55.650105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642271, 33.434353, 56.946609>,  <31.685299, 33.339485, 56.289513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642271, 33.434353, 56.946609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800953, 33.512085, 57.305466>,  <31.896162, 33.558723, 57.520779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800953, 33.512085, 57.305466>,  <31.642271, 33.434353, 56.946609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800953, 33.512085, 57.305466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607252, 0.677361, -0.415243,
		-0.688381, 0.709520, 0.150708,
		0.396707, 0.194328, 0.897140,
		31.919966, 33.570385, 57.574608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871372, 34.245998, 56.991726>,  <31.642271, 33.434353, 56.946609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871372, 34.245998, 56.991726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069267, 34.107697, 57.310646>,  <32.188004, 34.024715, 57.501999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069267, 34.107697, 57.310646>,  <31.871372, 34.245998, 56.991726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069267, 34.107697, 57.310646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666003, 0.740221, -0.092265,
		-0.558281, 0.576653, 0.596485,
		0.494736, -0.345751, 0.797304,
		32.217690, 34.003971, 57.549839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073929, 34.855003, 57.230072>,  <31.871372, 34.245998, 56.991726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073929, 34.855003, 57.230072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314770, 34.570251, 57.374680>,  <32.459274, 34.399399, 57.461445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314770, 34.570251, 57.374680>,  <32.073929, 34.855003, 57.230072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314770, 34.570251, 57.374680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792938, 0.586116, -0.166485,
		-0.093374, 0.386902, 0.917381,
		0.602105, -0.711881, 0.361517,
		32.495399, 34.356686, 57.483135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591736, 34.920097, 57.912361>,  <32.073929, 34.855003, 57.230072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591736, 34.920097, 57.912361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704681, 34.702759, 57.596123>,  <32.772449, 34.572353, 57.406380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704681, 34.702759, 57.596123>,  <32.591736, 34.920097, 57.912361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704681, 34.702759, 57.596123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457687, 0.800590, -0.386754,
		0.843087, -0.252643, 0.474738,
		0.282359, -0.543349, -0.790598,
		32.789391, 34.539753, 57.358944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305588, 35.028378, 57.840881>,  <32.591736, 34.920097, 57.912361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305588, 35.028378, 57.840881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129837, 34.910011, 57.501617>,  <33.024387, 34.838989, 57.298058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129837, 34.910011, 57.501617>,  <33.305588, 35.028378, 57.840881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129837, 34.910011, 57.501617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543712, 0.663984, -0.513324,
		0.715068, -0.686700, -0.130847,
		-0.439380, -0.295918, -0.848161,
		32.998024, 34.821236, 57.247169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910931, 34.877472, 57.336857>,  <33.305588, 35.028378, 57.840881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910931, 34.877472, 57.336857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574982, 34.955620, 57.134293>,  <33.373413, 35.002510, 57.012756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574982, 34.955620, 57.134293>,  <33.910931, 34.877472, 57.336857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574982, 34.955620, 57.134293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478741, 0.706286, -0.521505,
		0.255782, -0.680434, -0.686720,
		-0.839871, 0.195369, -0.506407,
		33.323021, 35.014229, 56.982372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170822, 34.851833, 56.636379>,  <33.910931, 34.877472, 57.336857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170822, 34.851833, 56.636379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834099, 35.067322, 56.622906>,  <33.632065, 35.196617, 56.614822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834099, 35.067322, 56.622906>,  <34.170822, 34.851833, 56.636379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834099, 35.067322, 56.622906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472941, 0.706064, -0.527069,
		-0.260164, -0.459620, -0.849155,
		-0.841809, 0.538724, -0.033680,
		33.581554, 35.228939, 56.612801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238091, 35.093082, 55.963890>,  <34.170822, 34.851833, 56.636379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238091, 35.093082, 55.963890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978443, 35.347366, 56.130997>,  <33.822655, 35.499935, 56.231262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978443, 35.347366, 56.130997>,  <34.238091, 35.093082, 55.963890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978443, 35.347366, 56.130997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426697, 0.758941, -0.491872,
		-0.629747, -0.141020, -0.763893,
		-0.649114, 0.635705, 0.417768,
		33.783710, 35.538078, 56.256329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978951, 35.581448, 55.471432>,  <34.238091, 35.093082, 55.963890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978951, 35.581448, 55.471432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911297, 35.760513, 55.822655>,  <33.870705, 35.867954, 56.033390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911297, 35.760513, 55.822655>,  <33.978951, 35.581448, 55.471432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911297, 35.760513, 55.822655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147484, 0.892358, -0.426550,
		-0.974496, 0.057356, -0.216951,
		-0.169133, 0.447668, 0.878059,
		33.860558, 35.894814, 56.086071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524570, 36.159725, 55.329494>,  <33.978951, 35.581448, 55.471432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524570, 36.159725, 55.329494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726196, 36.220047, 55.669655>,  <33.847172, 36.256241, 55.873749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726196, 36.220047, 55.669655>,  <33.524570, 36.159725, 55.329494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726196, 36.220047, 55.669655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131862, 0.959657, -0.248335,
		-0.853540, 0.237312, 0.463846,
		0.504066, 0.150800, 0.850398,
		33.877415, 36.265285, 55.924774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272945, 36.839413, 55.574051>,  <33.524570, 36.159725, 55.329494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272945, 36.839413, 55.574051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625885, 36.780716, 55.752907>,  <33.837646, 36.745499, 55.860218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625885, 36.780716, 55.752907>,  <33.272945, 36.839413, 55.574051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625885, 36.780716, 55.752907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260705, 0.943438, -0.204834,
		-0.391786, 0.297305, 0.870697,
		0.882347, -0.146744, 0.447135,
		33.890591, 36.736694, 55.887047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378521, 37.475391, 55.997475>,  <33.272945, 36.839413, 55.574051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378521, 37.475391, 55.997475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743969, 37.313446, 56.012306>,  <33.963238, 37.216278, 56.021206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743969, 37.313446, 56.012306>,  <33.378521, 37.475391, 55.997475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743969, 37.313446, 56.012306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403583, 0.892141, -0.202988,
		0.049103, 0.200419, 0.978479,
		0.913624, -0.404865, 0.037079,
		34.018055, 37.191986, 56.023430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782391, 37.827072, 56.589432>,  <33.378521, 37.475391, 55.997475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782391, 37.827072, 56.589432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023800, 37.654572, 56.321167>,  <34.168648, 37.551071, 56.160210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023800, 37.654572, 56.321167>,  <33.782391, 37.827072, 56.589432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023800, 37.654572, 56.321167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354218, 0.898570, -0.259039,
		0.714344, -0.081222, 0.695065,
		0.603525, -0.431248, -0.670659,
		34.204857, 37.525196, 56.119968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456043, 38.122585, 56.672489>,  <33.782391, 37.827072, 56.589432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456043, 38.122585, 56.672489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483574, 37.974060, 56.302109>,  <34.500092, 37.884945, 56.079880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483574, 37.974060, 56.302109>,  <34.456043, 38.122585, 56.672489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483574, 37.974060, 56.302109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419901, 0.852719, -0.310730,
		0.904956, -0.367421, 0.214607,
		0.068830, -0.371310, -0.925954,
		34.504223, 37.862667, 56.024323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024227, 38.397926, 56.477074>,  <34.456043, 38.122585, 56.672489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024227, 38.397926, 56.477074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869461, 38.253517, 56.137672>,  <34.776600, 38.166870, 55.934032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869461, 38.253517, 56.137672>,  <35.024227, 38.397926, 56.477074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869461, 38.253517, 56.137672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484550, 0.703286, -0.520193,
		0.784543, -0.612412, -0.097177,
		-0.386916, -0.361027, -0.848502,
		34.753387, 38.145210, 55.883121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569424, 38.470097, 56.004848>,  <35.024227, 38.397926, 56.477074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569424, 38.470097, 56.004848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238533, 38.446442, 55.781353>,  <35.039997, 38.432251, 55.647255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238533, 38.446442, 55.781353>,  <35.569424, 38.470097, 56.004848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238533, 38.446442, 55.781353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437517, 0.556127, -0.706613,
		0.352517, -0.828991, -0.434174,
		-0.827231, -0.059135, -0.558742,
		34.990364, 38.428699, 55.613731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862446, 38.393280, 55.374557>,  <35.569424, 38.470097, 56.004848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862446, 38.393280, 55.374557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493736, 38.534515, 55.310490>,  <35.272511, 38.619255, 55.272049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493736, 38.534515, 55.310490>,  <35.862446, 38.393280, 55.374557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493736, 38.534515, 55.310490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359598, 0.624099, -0.693678,
		-0.144968, -0.697014, -0.702251,
		-0.921777, 0.353089, -0.160171,
		35.217201, 38.640442, 55.262440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753372, 38.337383, 54.557426>,  <35.862446, 38.393280, 55.374557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753372, 38.337383, 54.557426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484589, 38.584625, 54.720604>,  <35.323318, 38.732971, 54.818508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484589, 38.584625, 54.720604>,  <35.753372, 38.337383, 54.557426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484589, 38.584625, 54.720604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132703, 0.642413, -0.754782,
		-0.728600, -0.453049, -0.513701,
		-0.671961, 0.618104, 0.407941,
		35.283001, 38.770058, 54.842987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249119, 38.426182, 54.021957>,  <35.753372, 38.337383, 54.557426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249119, 38.426182, 54.021957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193443, 38.734795, 54.270267>,  <35.160038, 38.919964, 54.419254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193443, 38.734795, 54.270267>,  <35.249119, 38.426182, 54.021957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193443, 38.734795, 54.270267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048110, 0.620872, -0.782434,
		-0.989097, -0.138768, -0.049297,
		-0.139184, 0.771532, 0.620779,
		35.151688, 38.966255, 54.456501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687084, 38.678577, 53.589993>,  <35.249119, 38.426182, 54.021957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687084, 38.678577, 53.589993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869247, 38.939476, 53.832371>,  <34.978546, 39.096016, 53.977798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869247, 38.939476, 53.832371>,  <34.687084, 38.678577, 53.589993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869247, 38.939476, 53.832371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100537, 0.638592, -0.762949,
		-0.884588, 0.408373, 0.225244,
		0.455408, 0.652251, 0.605948,
		35.005871, 39.135151, 54.014156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323708, 39.328243, 53.574688>,  <34.687084, 38.678577, 53.589993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323708, 39.328243, 53.574688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707542, 39.376190, 53.676537>,  <34.937843, 39.404957, 53.737644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707542, 39.376190, 53.676537>,  <34.323708, 39.328243, 53.574688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707542, 39.376190, 53.676537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161145, 0.507711, -0.846322,
		-0.230719, 0.853148, 0.467876,
		0.959584, 0.119866, 0.254619,
		34.995419, 39.412151, 53.752922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523548, 39.958527, 53.349541>,  <34.323708, 39.328243, 53.574688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523548, 39.958527, 53.349541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886681, 39.798172, 53.398731>,  <35.104561, 39.701958, 53.428246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886681, 39.798172, 53.398731>,  <34.523548, 39.958527, 53.349541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886681, 39.798172, 53.398731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344714, 0.546483, -0.763236,
		0.238767, 0.735284, 0.634308,
		0.907834, -0.400891, 0.122981,
		35.159031, 39.677906, 53.435627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951626, 40.476761, 53.005283>,  <34.523548, 39.958527, 53.349541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951626, 40.476761, 53.005283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203625, 40.167831, 53.037834>,  <35.354824, 39.982471, 53.057365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203625, 40.167831, 53.037834>,  <34.951626, 40.476761, 53.005283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203625, 40.167831, 53.037834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508066, 0.330633, -0.795331,
		0.587348, 0.542398, 0.600689,
		0.629993, -0.772325, 0.081378,
		35.392624, 39.936134, 53.062248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543594, 40.707832, 52.815052>,  <34.951626, 40.476761, 53.005283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543594, 40.707832, 52.815052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625641, 40.318878, 52.770512>,  <35.674870, 40.085506, 52.743786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625641, 40.318878, 52.770512>,  <35.543594, 40.707832, 52.815052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625641, 40.318878, 52.770512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647201, 0.220099, -0.729855,
		0.734206, 0.077638, 0.674473,
		0.205114, -0.972383, -0.111351,
		35.687176, 40.027164, 52.737106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235935, 40.752449, 52.827065>,  <35.543594, 40.707832, 52.815052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235935, 40.752449, 52.827065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125320, 40.412979, 52.646717>,  <36.058952, 40.209297, 52.538509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125320, 40.412979, 52.646717>,  <36.235935, 40.752449, 52.827065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125320, 40.412979, 52.646717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703338, 0.140969, -0.696738,
		0.654859, -0.509791, 0.557918,
		-0.276541, -0.848670, -0.450870,
		36.042358, 40.158379, 52.511456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852909, 40.314995, 52.710613>,  <36.235935, 40.752449, 52.827065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852909, 40.314995, 52.710613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573452, 40.189186, 52.453560>,  <36.405777, 40.113701, 52.299328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573452, 40.189186, 52.453560>,  <36.852909, 40.314995, 52.710613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573452, 40.189186, 52.453560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685509, -0.037051, -0.727121,
		0.204888, -0.948526, 0.241495,
		-0.698641, -0.314525, -0.642631,
		36.363861, 40.094830, 52.260769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088642, 39.810272, 52.342602>,  <36.852909, 40.314995, 52.710613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088642, 39.810272, 52.342602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790749, 39.944817, 52.112041>,  <36.612011, 40.025543, 51.973705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790749, 39.944817, 52.112041>,  <37.088642, 39.810272, 52.342602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790749, 39.944817, 52.112041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632590, 0.080649, -0.770276,
		-0.212604, -0.938274, -0.272840,
		-0.744735, 0.336359, -0.576396,
		36.567329, 40.045723, 51.939121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300220, 39.640816, 51.696796>,  <37.088642, 39.810272, 52.342602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300220, 39.640816, 51.696796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006912, 39.891319, 51.590881>,  <36.830929, 40.041622, 51.527332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006912, 39.891319, 51.590881>,  <37.300220, 39.640816, 51.696796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006912, 39.891319, 51.590881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485180, 0.209098, -0.849046,
		-0.476355, -0.751051, -0.457174,
		-0.733271, 0.626259, -0.264790,
		36.786930, 40.079197, 51.511444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106209, 39.574474, 50.901321>,  <37.300220, 39.640816, 51.696796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106209, 39.574474, 50.901321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014702, 39.940956, 51.032925>,  <36.959797, 40.160843, 51.111885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014702, 39.940956, 51.032925>,  <37.106209, 39.574474, 50.901321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014702, 39.940956, 51.032925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583090, 0.399595, -0.707340,
		-0.779534, 0.030027, -0.625639,
		-0.228763, 0.916200, 0.329006,
		36.946072, 40.215816, 51.131626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126247, 39.942017, 50.231991>,  <37.106209, 39.574474, 50.901321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126247, 39.942017, 50.231991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114708, 40.246239, 50.491444>,  <37.107784, 40.428772, 50.647114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114708, 40.246239, 50.491444>,  <37.126247, 39.942017, 50.231991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114708, 40.246239, 50.491444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457437, 0.587007, -0.667963,
		-0.888774, 0.277439, -0.364840,
		-0.028844, 0.760559, 0.648628,
		37.106056, 40.474407, 50.686031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835037, 40.508827, 49.910149>,  <37.126247, 39.942017, 50.231991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835037, 40.508827, 49.910149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041260, 40.651962, 50.221573>,  <37.164993, 40.737843, 50.408428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041260, 40.651962, 50.221573>,  <36.835037, 40.508827, 49.910149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041260, 40.651962, 50.221573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336886, 0.750798, -0.568164,
		-0.787848, 0.555208, 0.266532,
		0.515561, 0.357836, 0.778557,
		37.195927, 40.759312, 50.455139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721134, 41.215546, 49.905125>,  <36.835037, 40.508827, 49.910149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721134, 41.215546, 49.905125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063545, 41.139595, 50.097443>,  <37.268990, 41.094025, 50.212833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063545, 41.139595, 50.097443>,  <36.721134, 41.215546, 49.905125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063545, 41.139595, 50.097443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477381, 0.647191, -0.594349,
		-0.198314, 0.738302, 0.644657,
		0.856025, -0.189879, 0.480798,
		37.320354, 41.082630, 50.241680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106525, 41.841022, 49.944969>,  <36.721134, 41.215546, 49.905125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106525, 41.841022, 49.944969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412628, 41.591766, 50.009563>,  <37.596291, 41.442211, 50.048321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412628, 41.591766, 50.009563>,  <37.106525, 41.841022, 49.944969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412628, 41.591766, 50.009563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557634, 0.516383, -0.649918,
		0.321604, 0.587402, 0.742650,
		0.765255, -0.623143, 0.161485,
		37.642204, 41.404823, 50.058010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719681, 42.264759, 50.093090>,  <37.106525, 41.841022, 49.944969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719681, 42.264759, 50.093090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842430, 41.899773, 49.984840>,  <37.916080, 41.680782, 49.919891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842430, 41.899773, 49.984840>,  <37.719681, 42.264759, 50.093090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842430, 41.899773, 49.984840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683052, 0.409159, -0.605003,
		0.662771, 0.000812, 0.748821,
		0.306878, -0.912463, -0.270624,
		37.934494, 41.626034, 49.903652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439350, 42.293503, 49.991261>,  <37.719681, 42.264759, 50.093090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439350, 42.293503, 49.991261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365337, 41.954971, 49.791462>,  <38.320930, 41.751854, 49.671581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365337, 41.954971, 49.791462>,  <38.439350, 42.293503, 49.991261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365337, 41.954971, 49.791462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721749, 0.227931, -0.653549,
		0.666966, -0.481437, 0.568661,
		-0.185027, -0.846325, -0.499498,
		38.309830, 41.701073, 49.641613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103554, 41.969517, 49.949806>,  <38.439350, 42.293503, 49.991261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103554, 41.969517, 49.949806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874557, 41.803368, 49.667046>,  <38.737160, 41.703678, 49.497387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874557, 41.803368, 49.667046>,  <39.103554, 41.969517, 49.949806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874557, 41.803368, 49.667046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729534, 0.135431, -0.670401,
		0.374205, -0.899512, 0.225497,
		-0.572495, -0.415376, -0.706904,
		38.702808, 41.678757, 49.454975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580551, 41.556480, 49.532780>,  <39.103554, 41.969517, 49.949806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580551, 41.556480, 49.532780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259445, 41.635063, 49.307579>,  <39.066780, 41.682213, 49.172459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259445, 41.635063, 49.307579>,  <39.580551, 41.556480, 49.532780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259445, 41.635063, 49.307579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594756, 0.196137, -0.779612,
		-0.042735, -0.960695, -0.274297,
		-0.802770, 0.196457, -0.562998,
		39.018616, 41.694000, 49.138680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738544, 41.253910, 48.963703>,  <39.580551, 41.556480, 49.532780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738544, 41.253910, 48.963703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436409, 41.482529, 48.835457>,  <39.255127, 41.619701, 48.758511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436409, 41.482529, 48.835457>,  <39.738544, 41.253910, 48.963703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436409, 41.482529, 48.835457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496102, 0.179042, -0.849604,
		-0.428184, -0.800799, -0.418783,
		-0.755342, 0.571546, -0.320616,
		39.209808, 41.653992, 48.739273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676521, 41.061714, 48.212635>,  <39.738544, 41.253910, 48.963703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676521, 41.061714, 48.212635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490978, 41.412117, 48.265480>,  <39.379650, 41.622356, 48.297188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490978, 41.412117, 48.265480>,  <39.676521, 41.061714, 48.212635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490978, 41.412117, 48.265480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461114, 0.366072, -0.808310,
		-0.756445, -0.314024, -0.573743,
		-0.463860, 0.876003, 0.132113,
		39.351822, 41.674919, 48.305115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324181, 41.234570, 47.579678>,  <39.676521, 41.061714, 48.212635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324181, 41.234570, 47.579678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372433, 41.583672, 47.768883>,  <39.401382, 41.793133, 47.882408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372433, 41.583672, 47.768883>,  <39.324181, 41.234570, 47.579678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372433, 41.583672, 47.768883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433138, 0.382472, -0.816154,
		-0.893219, 0.303332, -0.331887,
		0.120629, 0.872757, 0.473016,
		39.408623, 41.845497, 47.910786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156219, 41.709465, 47.068050>,  <39.324181, 41.234570, 47.579678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156219, 41.709465, 47.068050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377491, 41.882195, 47.353012>,  <39.510254, 41.985832, 47.523991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377491, 41.882195, 47.353012>,  <39.156219, 41.709465, 47.068050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377491, 41.882195, 47.353012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511579, 0.498832, -0.699610,
		-0.657479, 0.751461, 0.055031,
		0.553180, 0.431826, 0.712403,
		39.543446, 42.011742, 47.566734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155117, 42.370987, 46.797348>,  <39.156219, 41.709465, 47.068050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155117, 42.370987, 46.797348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453079, 42.288109, 47.051018>,  <39.631859, 42.238380, 47.203220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453079, 42.288109, 47.051018>,  <39.155117, 42.370987, 46.797348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453079, 42.288109, 47.051018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629167, 0.534393, -0.564423,
		-0.221952, 0.819447, 0.528436,
		0.744907, -0.207199, 0.634178,
		39.676552, 42.225948, 47.241272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364014, 42.967304, 46.902817>,  <39.155117, 42.370987, 46.797348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364014, 42.967304, 46.902817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654701, 42.708900, 46.996243>,  <39.829113, 42.553856, 47.052299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654701, 42.708900, 46.996243>,  <39.364014, 42.967304, 46.902817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654701, 42.708900, 46.996243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657446, 0.555520, -0.509081,
		0.199124, 0.523512, 0.828423,
		0.726715, -0.646013, 0.233563,
		39.872715, 42.515095, 47.066311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878254, 43.436317, 47.120792>,  <39.364014, 42.967304, 46.902817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878254, 43.436317, 47.120792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052109, 43.081337, 47.059448>,  <40.156422, 42.868347, 47.022644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052109, 43.081337, 47.059448>,  <39.878254, 43.436317, 47.120792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052109, 43.081337, 47.059448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606055, 0.414172, -0.679087,
		0.666173, 0.202216, 0.717860,
		0.434639, -0.887452, -0.153356,
		40.182499, 42.815102, 47.013443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616085, 43.475636, 47.182858>,  <39.878254, 43.436317, 47.120792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616085, 43.475636, 47.182858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547680, 43.163589, 46.942135>,  <40.506638, 42.976360, 46.797703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547680, 43.163589, 46.942135>,  <40.616085, 43.475636, 47.182858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547680, 43.163589, 46.942135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459940, 0.476956, -0.748978,
		0.871326, -0.404880, 0.277241,
		-0.171015, -0.780118, -0.601805,
		40.496376, 42.929554, 46.761593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344799, 43.722263, 47.855659>,  <40.616085, 43.475636, 47.182858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344799, 43.722263, 47.855659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294128, 44.113594, 47.790146>,  <40.263725, 44.348392, 47.750839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294128, 44.113594, 47.790146>,  <40.344799, 43.722263, 47.855659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294128, 44.113594, 47.790146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389150, 0.102863, 0.915413,
		0.912422, 0.179701, 0.367686,
		-0.126680, 0.978328, -0.163785,
		40.256123, 44.407093, 47.741009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606457, 44.216583, 48.375431>,  <40.344799, 43.722263, 47.855659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606457, 44.216583, 48.375431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275673, 44.386833, 48.228470>,  <40.077202, 44.488983, 48.140293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275673, 44.386833, 48.228470>,  <40.606457, 44.216583, 48.375431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275673, 44.386833, 48.228470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381306, 0.055695, 0.922769,
		0.413217, 0.903184, 0.116237,
		-0.826957, 0.425626, -0.367404,
		40.027584, 44.514523, 48.118248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444767, 44.757389, 48.909657>,  <40.606457, 44.216583, 48.375431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444767, 44.757389, 48.909657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095829, 44.738495, 48.715015>,  <39.886467, 44.727158, 48.598232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095829, 44.738495, 48.715015>,  <40.444767, 44.757389, 48.909657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095829, 44.738495, 48.715015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488821, 0.100568, 0.866568,
		0.008003, 0.993808, -0.110820,
		-0.872347, -0.047236, -0.486599,
		39.834126, 44.724323, 48.569035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010353, 45.281193, 49.136578>,  <40.444767, 44.757389, 48.909657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010353, 45.281193, 49.136578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761292, 44.998802, 49.001583>,  <39.611855, 44.829369, 48.920586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761292, 44.998802, 49.001583>,  <40.010353, 45.281193, 49.136578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761292, 44.998802, 49.001583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533369, 0.067331, 0.843199,
		-0.572556, 0.705026, -0.418471,
		-0.622653, -0.705978, -0.337489,
		39.574497, 44.787010, 48.900337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421040, 45.552273, 49.472298>,  <40.010353, 45.281193, 49.136578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421040, 45.552273, 49.472298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345024, 45.185448, 49.332077>,  <39.299416, 44.965355, 49.247944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345024, 45.185448, 49.332077>,  <39.421040, 45.552273, 49.472298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345024, 45.185448, 49.332077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644656, -0.152743, 0.749058,
		-0.740476, 0.368334, -0.562162,
		-0.190037, -0.917060, -0.350552,
		39.288013, 44.910328, 49.226910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683083, 45.439190, 49.626316>,  <39.421040, 45.552273, 49.472298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683083, 45.439190, 49.626316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821976, 45.070984, 49.554680>,  <38.905312, 44.850060, 49.511696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821976, 45.070984, 49.554680>,  <38.683083, 45.439190, 49.626316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821976, 45.070984, 49.554680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457378, -0.332961, 0.824586,
		-0.818678, -0.204410, -0.536640,
		0.347234, -0.920518, -0.179095,
		38.926147, 44.794830, 49.500950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128151, 44.937531, 49.762081>,  <38.683083, 45.439190, 49.626316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128151, 44.937531, 49.762081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445831, 44.700684, 49.816689>,  <38.636440, 44.558575, 49.849453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445831, 44.700684, 49.816689>,  <38.128151, 44.937531, 49.762081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445831, 44.700684, 49.816689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431033, -0.390608, 0.813410,
		-0.428310, -0.704856, -0.565445,
		0.794204, -0.592117, 0.136515,
		38.684093, 44.523048, 49.857643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821251, 44.317791, 49.854214>,  <38.128151, 44.937531, 49.762081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821251, 44.317791, 49.854214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191238, 44.282135, 50.001995>,  <38.413231, 44.260742, 50.090664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191238, 44.282135, 50.001995>,  <37.821251, 44.317791, 49.854214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191238, 44.282135, 50.001995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368974, -0.443632, 0.816730,
		0.091093, -0.891764, -0.443236,
		0.924965, -0.089144, 0.369450,
		38.468727, 44.255390, 50.112831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908386, 43.652969, 50.047157>,  <37.821251, 44.317791, 49.854214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908386, 43.652969, 50.047157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189224, 43.842316, 50.259941>,  <38.357727, 43.955925, 50.387611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189224, 43.842316, 50.259941>,  <37.908386, 43.652969, 50.047157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189224, 43.842316, 50.259941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266184, -0.518423, 0.812640,
		0.660458, -0.712152, -0.237981,
		0.702099, 0.473368, 0.531960,
		38.399853, 43.984325, 50.419529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212196, 43.133469, 50.531109>,  <37.908386, 43.652969, 50.047157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212196, 43.133469, 50.531109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329514, 43.484947, 50.681770>,  <38.399906, 43.695835, 50.772167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329514, 43.484947, 50.681770>,  <38.212196, 43.133469, 50.531109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329514, 43.484947, 50.681770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286381, -0.295141, 0.911525,
		0.912120, -0.375214, 0.165078,
		0.293296, 0.878695, 0.376658,
		38.417503, 43.748554, 50.794769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718491, 42.955379, 51.076347>,  <38.212196, 43.133469, 50.531109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718491, 42.955379, 51.076347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558292, 43.317314, 51.134140>,  <38.462173, 43.534473, 51.168816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558292, 43.317314, 51.134140>,  <38.718491, 42.955379, 51.076347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558292, 43.317314, 51.134140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314369, -0.283796, 0.905887,
		0.860682, 0.317385, 0.398112,
		-0.400498, 0.904835, 0.144482,
		38.438145, 43.588764, 51.177486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950493, 43.244022, 51.716698>,  <38.718491, 42.955379, 51.076347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950493, 43.244022, 51.716698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598763, 43.425804, 51.659756>,  <38.387726, 43.534874, 51.625591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598763, 43.425804, 51.659756>,  <38.950493, 43.244022, 51.716698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598763, 43.425804, 51.659756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271928, -0.233748, 0.933497,
		0.390957, 0.859555, 0.329119,
		-0.879323, 0.454453, -0.142351,
		38.334965, 43.562141, 51.617050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804592, 43.567753, 52.378540>,  <38.950493, 43.244022, 51.716698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804592, 43.567753, 52.378540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462967, 43.554565, 52.170891>,  <38.257992, 43.546654, 52.046299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462967, 43.554565, 52.170891>,  <38.804592, 43.567753, 52.378540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462967, 43.554565, 52.170891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517666, -0.043986, 0.854452,
		-0.051006, 0.998488, 0.020499,
		-0.854061, -0.032971, -0.519127,
		38.206749, 43.544674, 52.015152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301994, 44.137756, 52.689903>,  <38.804592, 43.567753, 52.378540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301994, 44.137756, 52.689903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050861, 43.890869, 52.500221>,  <37.900181, 43.742737, 52.386410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050861, 43.890869, 52.500221>,  <38.301994, 44.137756, 52.689903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050861, 43.890869, 52.500221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474859, -0.178994, 0.861667,
		-0.616714, 0.766164, -0.180712,
		-0.627831, -0.617215, -0.474208,
		37.862511, 43.705704, 52.357960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680603, 44.239815, 53.026615>,  <38.301994, 44.137756, 52.689903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680603, 44.239815, 53.026615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629242, 43.894081, 52.832115>,  <37.598427, 43.686642, 52.715416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629242, 43.894081, 52.832115>,  <37.680603, 44.239815, 53.026615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629242, 43.894081, 52.832115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511445, -0.362363, 0.779177,
		-0.849669, 0.348735, -0.395533,
		-0.128399, -0.864336, -0.486247,
		37.590721, 43.634781, 52.686241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964417, 44.089237, 53.132927>,  <37.680603, 44.239815, 53.026615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964417, 44.089237, 53.132927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158405, 43.752502, 53.038170>,  <37.274799, 43.550461, 52.981316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158405, 43.752502, 53.038170>,  <36.964417, 44.089237, 53.132927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158405, 43.752502, 53.038170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448935, -0.472111, 0.758662,
		-0.750506, -0.261583, -0.606890,
		0.484973, -0.841835, -0.236888,
		37.303898, 43.499950, 52.967102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442417, 43.464245, 52.793083>,  <36.964417, 44.089237, 53.132927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442417, 43.464245, 52.793083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763985, 43.315987, 52.979134>,  <36.956924, 43.227032, 53.090763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763985, 43.315987, 52.979134>,  <36.442417, 43.464245, 52.793083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763985, 43.315987, 52.979134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594408, -0.474581, 0.649193,
		-0.019879, -0.798372, -0.601836,
		0.803918, -0.370642, 0.465124,
		37.005161, 43.204796, 53.118671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309895, 42.837414, 52.873531>,  <36.442417, 43.464245, 52.793083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309895, 42.837414, 52.873531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610107, 42.862709, 53.136654>,  <36.790234, 42.877884, 53.294529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610107, 42.862709, 53.136654>,  <36.309895, 42.837414, 52.873531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610107, 42.862709, 53.136654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514823, -0.568144, 0.642005,
		0.414325, -0.820496, -0.393854,
		0.750528, 0.063234, 0.657806,
		36.835266, 42.881680, 53.333996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492924, 42.201923, 53.043789>,  <36.309895, 42.837414, 52.873531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492924, 42.201923, 53.043789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613579, 42.418564, 53.357651>,  <36.685974, 42.548546, 53.545967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613579, 42.418564, 53.357651>,  <36.492924, 42.201923, 53.043789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613579, 42.418564, 53.357651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670432, -0.464661, 0.578456,
		0.677890, -0.700543, 0.222946,
		0.301639, 0.541600, 0.784655,
		36.704071, 42.581043, 53.593048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560898, 41.713940, 53.578655>,  <36.492924, 42.201923, 53.043789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560898, 41.713940, 53.578655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543575, 42.055771, 53.785660>,  <36.533184, 42.260872, 53.909863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543575, 42.055771, 53.785660>,  <36.560898, 41.713940, 53.578655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543575, 42.055771, 53.785660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679117, -0.405096, 0.612125,
		0.732752, -0.324942, 0.597903,
		-0.043303, 0.854582, 0.517509,
		36.530586, 42.312145, 53.940914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550053, 41.436424, 54.245453>,  <36.560898, 41.713940, 53.578655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550053, 41.436424, 54.245453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424667, 41.812370, 54.299706>,  <36.349434, 42.037937, 54.332256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424667, 41.812370, 54.299706>,  <36.550053, 41.436424, 54.245453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424667, 41.812370, 54.299706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619069, -0.310570, 0.721318,
		0.720064, 0.142141, 0.679193,
		-0.313466, 0.939863, 0.135635,
		36.330627, 42.094330, 54.340397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543987, 41.618771, 54.988949>,  <36.550053, 41.436424, 54.245453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543987, 41.618771, 54.988949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275269, 41.848648, 54.802010>,  <36.114037, 41.986572, 54.689846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275269, 41.848648, 54.802010>,  <36.543987, 41.618771, 54.988949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275269, 41.848648, 54.802010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688695, -0.252291, 0.679742,
		0.272733, 0.778512, 0.565275,
		-0.671801, 0.574690, -0.467349,
		36.073727, 42.021053, 54.661804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266335, 41.989319, 55.601665>,  <36.543987, 41.618771, 54.988949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266335, 41.989319, 55.601665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031040, 42.030663, 55.280842>,  <35.889862, 42.055470, 55.088348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031040, 42.030663, 55.280842>,  <36.266335, 41.989319, 55.601665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031040, 42.030663, 55.280842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798476, -0.231366, 0.555792,
		-0.128121, 0.967360, 0.218629,
		-0.588235, 0.103362, -0.802057,
		35.854568, 42.061672, 55.040226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696831, 42.202347, 55.873184>,  <36.266335, 41.989319, 55.601665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696831, 42.202347, 55.873184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564709, 42.100113, 55.509739>,  <35.485435, 42.038773, 55.291672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564709, 42.100113, 55.509739>,  <35.696831, 42.202347, 55.873184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564709, 42.100113, 55.509739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887436, -0.243784, 0.391186,
		-0.321487, 0.935545, -0.146294,
		-0.330308, -0.255588, -0.908610,
		35.465618, 42.023438, 55.237156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032993, 42.388226, 55.815563>,  <35.696831, 42.202347, 55.873184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032993, 42.388226, 55.815563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041164, 42.129547, 55.510574>,  <35.046066, 41.974339, 55.327579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041164, 42.129547, 55.510574>,  <35.032993, 42.388226, 55.815563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041164, 42.129547, 55.510574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882968, -0.369410, 0.289660,
		-0.468988, 0.667324, -0.578558,
		0.020428, -0.646696, -0.762475,
		35.047295, 41.935539, 55.281834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330540, 42.344177, 55.636570>,  <35.032993, 42.388226, 55.815563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330540, 42.344177, 55.636570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507126, 42.023666, 55.475048>,  <34.613079, 41.831360, 55.378136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507126, 42.023666, 55.475048>,  <34.330540, 42.344177, 55.636570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507126, 42.023666, 55.475048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792861, -0.559057, 0.242541,
		-0.420095, 0.213090, -0.882107,
		0.441465, -0.801279, -0.403808,
		34.639565, 41.783283, 55.353905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957512, 42.191746, 55.130882>,  <34.330540, 42.344177, 55.636570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957512, 42.191746, 55.130882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157845, 41.855026, 55.211422>,  <34.278046, 41.652992, 55.259747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157845, 41.855026, 55.211422>,  <33.957512, 42.191746, 55.130882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157845, 41.855026, 55.211422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865505, -0.484833, 0.125848,
		-0.008320, -0.237295, -0.971402,
		0.500831, -0.841800, 0.201346,
		34.308094, 41.602486, 55.271824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517494, 41.710587, 54.845509>,  <33.957512, 42.191746, 55.130882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517494, 41.710587, 54.845509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735065, 41.467262, 55.076714>,  <33.865608, 41.321266, 55.215435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735065, 41.467262, 55.076714>,  <33.517494, 41.710587, 54.845509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735065, 41.467262, 55.076714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780589, -0.619575, 0.082511,
		0.307927, -0.496067, -0.811849,
		0.543932, -0.608312, 0.578008,
		33.898247, 41.284767, 55.250114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486458, 41.001572, 54.621315>,  <33.517494, 41.710587, 54.845509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486458, 41.001572, 54.621315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586273, 40.967979, 55.007202>,  <33.646160, 40.947823, 55.238735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586273, 40.967979, 55.007202>,  <33.486458, 41.001572, 54.621315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586273, 40.967979, 55.007202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700169, -0.703848, 0.119836,
		0.668951, -0.705369, -0.234436,
		0.249536, -0.083981, 0.964717,
		33.661133, 40.942787, 55.296616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381943, 40.370480, 54.701782>,  <33.486458, 41.001572, 54.621315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381943, 40.370480, 54.701782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384209, 40.520195, 55.072701>,  <33.385567, 40.610023, 55.295250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384209, 40.520195, 55.072701>,  <33.381943, 40.370480, 54.701782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384209, 40.520195, 55.072701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736867, -0.625322, 0.256903,
		0.676014, -0.684749, 0.272258,
		0.005666, 0.374288, 0.927295,
		33.385910, 40.632481, 55.350887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490631, 39.838898, 55.185028>,  <33.381943, 40.370480, 54.701782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490631, 39.838898, 55.185028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301903, 40.117966, 55.400673>,  <33.188667, 40.285404, 55.530060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301903, 40.117966, 55.400673>,  <33.490631, 39.838898, 55.185028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301903, 40.117966, 55.400673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578218, -0.706447, 0.408163,
		0.665619, -0.119146, 0.736720,
		-0.471822, 0.697666, 0.539117,
		33.160355, 40.327267, 55.562408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380775, 39.515198, 55.753826>,  <33.490631, 39.838898, 55.185028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380775, 39.515198, 55.753826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135956, 39.830368, 55.780849>,  <32.989063, 40.019470, 55.797066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135956, 39.830368, 55.780849>,  <33.380775, 39.515198, 55.753826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135956, 39.830368, 55.780849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603955, -0.520871, 0.603268,
		0.510522, 0.328426, 0.794672,
		-0.612051, 0.787928, 0.067561,
		32.952339, 40.066746, 55.801117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244026, 39.473763, 56.417198>,  <33.380775, 39.515198, 55.753826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244026, 39.473763, 56.417198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941330, 39.674217, 56.249290>,  <32.759712, 39.794491, 56.148544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941330, 39.674217, 56.249290>,  <33.244026, 39.473763, 56.417198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941330, 39.674217, 56.249290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648064, -0.490833, 0.582320,
		0.085786, 0.712701, 0.696202,
		-0.756739, 0.501139, -0.419769,
		32.714310, 39.824558, 56.123360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757526, 39.758793, 56.971474>,  <33.244026, 39.473763, 56.417198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757526, 39.758793, 56.971474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513969, 39.766251, 56.654259>,  <32.367836, 39.770725, 56.463932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513969, 39.766251, 56.654259>,  <32.757526, 39.758793, 56.971474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513969, 39.766251, 56.654259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648472, -0.587493, 0.484083,
		-0.456875, 0.809015, 0.369813,
		-0.608892, 0.018648, -0.793034,
		32.331303, 39.771847, 56.416348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096363, 39.968624, 57.252316>,  <32.757526, 39.758793, 56.971474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096363, 39.968624, 57.252316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027233, 39.803833, 56.894455>,  <31.985754, 39.704960, 56.679737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027233, 39.803833, 56.894455>,  <32.096363, 39.968624, 57.252316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027233, 39.803833, 56.894455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803110, -0.466910, 0.370147,
		-0.570215, 0.782478, -0.250166,
		-0.172827, -0.411974, -0.894655,
		31.975386, 39.680241, 56.626057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344530, 40.192921, 57.019848>,  <32.096363, 39.968624, 57.252316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344530, 40.192921, 57.019848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475374, 39.856010, 56.848473>,  <31.553881, 39.653862, 56.745647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475374, 39.856010, 56.848473>,  <31.344530, 40.192921, 57.019848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475374, 39.856010, 56.848473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759560, -0.504080, 0.411061,
		-0.562199, 0.190968, -0.804651,
		0.327109, -0.842280, -0.428445,
		31.573507, 39.603325, 56.719940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708284, 40.032639, 56.793510>,  <31.344530, 40.192921, 57.019848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708284, 40.032639, 56.793510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944471, 39.713913, 56.742233>,  <31.086184, 39.522678, 56.711468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944471, 39.713913, 56.742233>,  <30.708284, 40.032639, 56.793510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944471, 39.713913, 56.742233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758246, -0.602116, 0.250038,
		-0.276421, -0.050437, -0.959712,
		0.590469, -0.796814, -0.128194,
		31.121613, 39.474869, 56.703773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190615, 39.573925, 56.590950>,  <30.708284, 40.032639, 56.793510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190615, 39.573925, 56.590950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489244, 39.316139, 56.657024>,  <30.668423, 39.161469, 56.696671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489244, 39.316139, 56.657024>,  <30.190615, 39.573925, 56.590950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489244, 39.316139, 56.657024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649340, -0.759907, -0.029980,
		0.144848, -0.084881, -0.985806,
		0.746576, -0.644466, 0.165188,
		30.713217, 39.122799, 56.706581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488039, 39.847527, 56.710186>,  <30.190615, 39.573925, 56.590950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488039, 39.847527, 56.710186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213617, 40.138107, 56.694206>,  <29.048964, 40.312454, 56.684616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213617, 40.138107, 56.694206>,  <29.488039, 39.847527, 56.710186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213617, 40.138107, 56.694206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654246, 0.591978, -0.470663,
		-0.318263, -0.349040, -0.881408,
		-0.686055, 0.726452, -0.039953,
		29.007801, 40.356045, 56.682220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576599, 40.253468, 55.975414>,  <29.488039, 39.847527, 56.710186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576599, 40.253468, 55.975414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367840, 40.530922, 56.174007>,  <29.242584, 40.697395, 56.293163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367840, 40.530922, 56.174007>,  <29.576599, 40.253468, 55.975414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367840, 40.530922, 56.174007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437427, 0.717310, -0.542332,
		-0.732312, -0.065865, -0.677776,
		-0.521896, 0.693634, 0.496484,
		29.211271, 40.739014, 56.322952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636072, 40.779495, 55.540920>,  <29.576599, 40.253468, 55.975414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636072, 40.779495, 55.540920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509027, 40.939941, 55.884602>,  <29.432800, 41.036209, 56.090809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509027, 40.939941, 55.884602>,  <29.636072, 40.779495, 55.540920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509027, 40.939941, 55.884602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523923, 0.829481, -0.193564,
		-0.790333, 0.388678, -0.473607,
		-0.317614, 0.401113, 0.859203,
		29.413744, 41.060276, 56.142361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156404, 41.400448, 55.423954>,  <29.636072, 40.779495, 55.540920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156404, 41.400448, 55.423954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334490, 41.446426, 55.779160>,  <29.441341, 41.474014, 55.992283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334490, 41.446426, 55.779160>,  <29.156404, 41.400448, 55.423954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334490, 41.446426, 55.779160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387573, 0.869278, -0.306828,
		-0.807201, 0.480775, 0.342464,
		0.445212, 0.114942, 0.888017,
		29.468054, 41.480907, 56.045567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303467, 42.159317, 55.470711>,  <29.156404, 41.400448, 55.423954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303467, 42.159317, 55.470711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559866, 41.987022, 55.724827>,  <29.713705, 41.883644, 55.877296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559866, 41.987022, 55.724827>,  <29.303467, 42.159317, 55.470711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559866, 41.987022, 55.724827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595563, 0.801236, -0.057667,
		-0.484175, 0.415317, 0.770121,
		0.640999, -0.430735, 0.635286,
		29.752165, 41.857803, 55.915413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623013, 42.793037, 55.897945>,  <29.303467, 42.159317, 55.470711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623013, 42.793037, 55.897945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860695, 42.473366, 55.934235>,  <30.003304, 42.281563, 55.956009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860695, 42.473366, 55.934235>,  <29.623013, 42.793037, 55.897945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860695, 42.473366, 55.934235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793107, 0.563425, -0.231372,
		0.133792, 0.209436, 0.968626,
		0.594206, -0.799180, 0.090723,
		30.038958, 42.233612, 55.961452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085575, 43.085243, 56.279285>,  <29.623013, 42.793037, 55.897945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085575, 43.085243, 56.279285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246914, 42.746124, 56.141560>,  <30.343718, 42.542652, 56.058926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246914, 42.746124, 56.141560>,  <30.085575, 43.085243, 56.279285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246914, 42.746124, 56.141560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909011, 0.414387, 0.044526,
		0.104930, -0.330944, 0.937799,
		0.403347, -0.847797, -0.344313,
		30.367918, 42.491787, 56.038265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798605, 43.052277, 56.598007>,  <30.085575, 43.085243, 56.279285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798605, 43.052277, 56.598007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825106, 42.800095, 56.288651>,  <30.841005, 42.648785, 56.103035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825106, 42.800095, 56.288651>,  <30.798605, 43.052277, 56.598007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825106, 42.800095, 56.288651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954650, 0.265531, -0.134677,
		0.290268, -0.729398, 0.619454,
		0.066251, -0.630454, -0.773395,
		30.844980, 42.610958, 56.056633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435373, 42.759483, 56.737698>,  <30.798605, 43.052277, 56.598007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435373, 42.759483, 56.737698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342472, 42.695305, 56.353966>,  <31.286732, 42.656799, 56.123726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342472, 42.695305, 56.353966>,  <31.435373, 42.759483, 56.737698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342472, 42.695305, 56.353966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959147, 0.126033, -0.253285,
		0.161545, -0.978966, 0.124618,
		-0.232251, -0.160444, -0.959332,
		31.272797, 42.647171, 56.066166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995647, 42.346355, 56.364197>,  <31.435373, 42.759483, 56.737698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995647, 42.346355, 56.364197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809423, 42.528809, 56.060829>,  <31.697689, 42.638283, 55.878811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809423, 42.528809, 56.060829>,  <31.995647, 42.346355, 56.364197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809423, 42.528809, 56.060829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884957, 0.229929, -0.404950,
		-0.010331, -0.859692, -0.510708,
		-0.465559, 0.456138, -0.758415,
		31.669756, 42.665649, 55.833305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424267, 42.140591, 55.683769>,  <31.995647, 42.346355, 56.364197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424267, 42.140591, 55.683769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230091, 42.479446, 55.597336>,  <32.113586, 42.682762, 55.545475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230091, 42.479446, 55.597336>,  <32.424267, 42.140591, 55.683769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230091, 42.479446, 55.597336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801578, 0.332601, -0.496839,
		-0.349023, -0.414397, -0.840511,
		-0.485443, 0.847143, -0.216086,
		32.084457, 42.733589, 55.532509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642242, 42.378624, 55.004086>,  <32.424267, 42.140591, 55.683769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642242, 42.378624, 55.004086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487595, 42.713814, 55.158134>,  <32.394806, 42.914928, 55.250565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487595, 42.713814, 55.158134>,  <32.642242, 42.378624, 55.004086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487595, 42.713814, 55.158134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729213, 0.533423, -0.428611,
		-0.564602, 0.115131, -0.817294,
		-0.386617, 0.837976, 0.385127,
		32.371609, 42.965206, 55.273674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502457, 42.905285, 54.405834>,  <32.642242, 42.378624, 55.004086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502457, 42.905285, 54.405834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545063, 43.127472, 54.735710>,  <32.570625, 43.260784, 54.933636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545063, 43.127472, 54.735710>,  <32.502457, 42.905285, 54.405834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545063, 43.127472, 54.735710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650868, 0.588068, -0.480153,
		-0.751682, 0.587907, -0.298898,
		0.106513, 0.555465, 0.824690,
		32.577019, 43.294113, 54.983116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517601, 43.546322, 54.198856>,  <32.502457, 42.905285, 54.405834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517601, 43.546322, 54.198856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684868, 43.628944, 54.552685>,  <32.785229, 43.678516, 54.764984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684868, 43.628944, 54.552685>,  <32.517601, 43.546322, 54.198856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684868, 43.628944, 54.552685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698693, 0.549162, -0.458530,
		-0.580485, 0.809788, 0.085325,
		0.418170, 0.206554, 0.884573,
		32.810318, 43.690910, 54.818058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681465, 44.215977, 54.136059>,  <32.517601, 43.546322, 54.198856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681465, 44.215977, 54.136059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917175, 44.076538, 54.427601>,  <33.058601, 43.992874, 54.602528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917175, 44.076538, 54.427601>,  <32.681465, 44.215977, 54.136059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917175, 44.076538, 54.427601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770388, 0.514252, -0.376891,
		-0.243432, 0.783596, 0.571593,
		0.589273, -0.348601, 0.728858,
		33.093956, 43.971958, 54.646259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098854, 44.713066, 54.299324>,  <32.681465, 44.215977, 54.136059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098854, 44.713066, 54.299324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289948, 44.396408, 54.451675>,  <33.404606, 44.206413, 54.543087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289948, 44.396408, 54.451675>,  <33.098854, 44.713066, 54.299324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289948, 44.396408, 54.451675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864457, 0.346401, -0.364309,
		0.156468, 0.503294, 0.849831,
		0.477737, -0.791645, 0.380876,
		33.433270, 44.158916, 54.565937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769764, 44.928047, 54.384274>,  <33.098854, 44.713066, 54.299324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769764, 44.928047, 54.384274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815781, 44.530731, 54.388973>,  <33.843391, 44.292343, 54.391792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815781, 44.530731, 54.388973>,  <33.769764, 44.928047, 54.384274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815781, 44.530731, 54.388973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840717, 0.091056, -0.533763,
		0.529113, 0.071283, 0.845552,
		0.115041, -0.993291, 0.011750,
		33.850292, 44.232742, 54.392498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467052, 44.972923, 54.402916>,  <33.769764, 44.928047, 54.384274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467052, 44.972923, 54.402916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345825, 44.612823, 54.277889>,  <34.273090, 44.396763, 54.202873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345825, 44.612823, 54.277889>,  <34.467052, 44.972923, 54.402916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345825, 44.612823, 54.277889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694707, 0.015809, -0.719119,
		0.652329, -0.435086, 0.620619,
		-0.303067, -0.900250, -0.312570,
		34.254906, 44.342747, 54.184116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023777, 44.456707, 54.450207>,  <34.467052, 44.972923, 54.402916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023777, 44.456707, 54.450207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767067, 44.382637, 54.152527>,  <34.613041, 44.338196, 53.973919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767067, 44.382637, 54.152527>,  <35.023777, 44.456707, 54.450207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767067, 44.382637, 54.152527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726523, 0.163902, -0.667309,
		0.245543, -0.968941, 0.029344,
		-0.641773, -0.185172, -0.744203,
		34.574535, 44.327087, 53.929264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503735, 44.341705, 53.988312>,  <35.023777, 44.456707, 54.450207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503735, 44.341705, 53.988312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165932, 44.323677, 53.774857>,  <34.963249, 44.312859, 53.646782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165932, 44.323677, 53.774857>,  <35.503735, 44.341705, 53.988312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165932, 44.323677, 53.774857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530757, 0.062436, -0.845221,
		0.071405, -0.997031, -0.028811,
		-0.844511, -0.045062, -0.533639,
		34.912579, 44.310158, 53.614765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644150, 43.828865, 53.408047>,  <35.503735, 44.341705, 53.988312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644150, 43.828865, 53.408047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345779, 44.070129, 53.295055>,  <35.166756, 44.214886, 53.227261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345779, 44.070129, 53.295055>,  <35.644150, 43.828865, 53.408047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345779, 44.070129, 53.295055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446404, 0.137999, -0.884127,
		-0.494286, -0.785593, -0.372189,
		-0.745926, 0.603158, -0.282481,
		35.122002, 44.251076, 53.210312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554272, 43.657906, 52.711021>,  <35.644150, 43.828865, 53.408047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554272, 43.657906, 52.711021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364342, 44.007996, 52.747955>,  <35.250381, 44.218048, 52.770115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364342, 44.007996, 52.747955>,  <35.554272, 43.657906, 52.711021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364342, 44.007996, 52.747955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272135, 0.245791, -0.930338,
		-0.836947, -0.416623, -0.354887,
		-0.474828, 0.875221, 0.092336,
		35.221893, 44.270561, 52.775658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118996, 43.701233, 52.159962>,  <35.554272, 43.657906, 52.711021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118996, 43.701233, 52.159962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184093, 44.079536, 52.272430>,  <35.223152, 44.306519, 52.339912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184093, 44.079536, 52.272430>,  <35.118996, 43.701233, 52.159962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184093, 44.079536, 52.272430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323221, 0.218140, -0.920838,
		-0.932224, 0.240745, -0.270187,
		0.162748, 0.945757, 0.281169,
		35.232918, 44.363262, 52.356781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800110, 44.118736, 51.655437>,  <35.118996, 43.701233, 52.159962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800110, 44.118736, 51.655437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058990, 44.381256, 51.810566>,  <35.214317, 44.538769, 51.903645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058990, 44.381256, 51.810566>,  <34.800110, 44.118736, 51.655437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058990, 44.381256, 51.810566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165011, 0.376071, -0.911779,
		-0.744246, 0.654100, 0.135098,
		0.647201, 0.656296, 0.387823,
		35.253151, 44.578144, 51.926914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838966, 44.637344, 51.257576>,  <34.800110, 44.118736, 51.655437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838966, 44.637344, 51.257576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184837, 44.685265, 51.452709>,  <35.392361, 44.714016, 51.569790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184837, 44.685265, 51.452709>,  <34.838966, 44.637344, 51.257576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184837, 44.685265, 51.452709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332869, 0.590657, -0.735066,
		-0.376201, 0.797980, 0.470851,
		0.864680, 0.119801, 0.487828,
		35.444241, 44.721207, 51.599056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062469, 45.385265, 51.160027>,  <34.838966, 44.637344, 51.257576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062469, 45.385265, 51.160027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403740, 45.196754, 51.249458>,  <35.608501, 45.083649, 51.303116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403740, 45.196754, 51.249458>,  <35.062469, 45.385265, 51.160027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403740, 45.196754, 51.249458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445211, 0.434576, -0.782899,
		0.271797, 0.767493, 0.580586,
		0.853179, -0.471273, 0.223580,
		35.659695, 45.055374, 51.316532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532433, 45.865055, 51.189163>,  <35.062469, 45.385265, 51.160027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532433, 45.865055, 51.189163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772392, 45.555267, 51.108852>,  <35.916367, 45.369392, 51.060665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772392, 45.555267, 51.108852>,  <35.532433, 45.865055, 51.189163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772392, 45.555267, 51.108852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445923, 0.532015, -0.719800,
		0.664284, 0.342274, 0.664511,
		0.599899, -0.774473, -0.200781,
		35.952362, 45.322926, 51.048618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173145, 46.133053, 51.026577>,  <35.532433, 45.865055, 51.189163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173145, 46.133053, 51.026577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233562, 45.758263, 50.900551>,  <36.269814, 45.533390, 50.824936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233562, 45.758263, 50.900551>,  <36.173145, 46.133053, 51.026577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233562, 45.758263, 50.900551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680501, 0.329736, -0.654365,
		0.717012, -0.115568, 0.687414,
		0.151042, -0.936973, -0.315068,
		36.278873, 45.477169, 50.806030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895432, 45.869099, 51.157112>,  <36.173145, 46.133053, 51.026577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895432, 45.869099, 51.157112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719917, 45.692719, 50.843929>,  <36.614609, 45.586891, 50.656017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719917, 45.692719, 50.843929>,  <36.895432, 45.869099, 51.157112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719917, 45.692719, 50.843929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686307, 0.397987, -0.608761,
		0.580041, -0.804469, 0.127994,
		-0.438789, -0.440949, -0.782961,
		36.588280, 45.560432, 50.609039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388222, 45.637272, 50.721611>,  <36.895432, 45.869099, 51.157112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388222, 45.637272, 50.721611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077461, 45.665337, 50.471333>,  <36.891003, 45.682175, 50.321163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077461, 45.665337, 50.471333>,  <37.388222, 45.637272, 50.721611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077461, 45.665337, 50.471333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570169, 0.499935, -0.651899,
		0.267071, -0.863217, -0.428404,
		-0.776904, 0.070159, -0.625698,
		36.844391, 45.686382, 50.283623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714912, 45.729111, 50.073536>,  <37.388222, 45.637272, 50.721611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714912, 45.729111, 50.073536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337212, 45.822456, 49.980640>,  <37.110592, 45.878464, 49.924904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337212, 45.822456, 49.980640>,  <37.714912, 45.729111, 50.073536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337212, 45.822456, 49.980640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328923, 0.638107, -0.696153,
		-0.014264, -0.733731, -0.679290,
		-0.944249, 0.233364, -0.232239,
		37.053936, 45.892464, 49.910969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651302, 45.717503, 49.305470>,  <37.714912, 45.729111, 50.073536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651302, 45.717503, 49.305470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338779, 45.931198, 49.434551>,  <37.151264, 46.059418, 49.512001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338779, 45.931198, 49.434551>,  <37.651302, 45.717503, 49.305470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338779, 45.931198, 49.434551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296501, 0.772676, -0.561301,
		-0.549217, -0.342868, -0.762104,
		-0.781312, 0.534241, 0.322706,
		37.104385, 46.091469, 49.531364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285480, 45.903389, 48.742451>,  <37.651302, 45.717503, 49.305470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285480, 45.903389, 48.742451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174538, 46.153969, 49.033829>,  <37.107971, 46.304317, 49.208656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174538, 46.153969, 49.033829>,  <37.285480, 45.903389, 48.742451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174538, 46.153969, 49.033829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125477, 0.775315, -0.618985,
		-0.952539, -0.080274, -0.293642,
		-0.277353, 0.626453, 0.728445,
		37.091331, 46.341904, 49.252361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805389, 46.341938, 48.489368>,  <37.285480, 45.903389, 48.742451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805389, 46.341938, 48.489368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924522, 46.550301, 48.809357>,  <36.996002, 46.675316, 49.001350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924522, 46.550301, 48.809357>,  <36.805389, 46.341938, 48.489368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924522, 46.550301, 48.809357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237166, 0.771353, -0.590565,
		-0.924689, 0.365614, 0.106191,
		0.297830, 0.520904, 0.799973,
		37.013870, 46.706573, 49.049347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634621, 46.981777, 48.307320>,  <36.805389, 46.341938, 48.489368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634621, 46.981777, 48.307320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861679, 47.049591, 48.629570>,  <36.997913, 47.090279, 48.822922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861679, 47.049591, 48.629570>,  <36.634621, 46.981777, 48.307320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861679, 47.049591, 48.629570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335017, 0.846314, -0.414145,
		-0.752026, 0.504986, 0.423611,
		0.567645, 0.169531, 0.805629,
		37.031971, 47.100449, 48.871258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427189, 47.687233, 48.574940>,  <36.634621, 46.981777, 48.307320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427189, 47.687233, 48.574940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797630, 47.611923, 48.705711>,  <37.019894, 47.566738, 48.784176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797630, 47.611923, 48.705711>,  <36.427189, 47.687233, 48.574940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797630, 47.611923, 48.705711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302217, 0.888940, -0.344165,
		-0.225821, 0.417536, 0.880152,
		0.926104, -0.188277, 0.326928,
		37.075462, 47.555439, 48.803791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661324, 48.229969, 49.125095>,  <36.427189, 47.687233, 48.574940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661324, 48.229969, 49.125095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983303, 48.049759, 48.970650>,  <37.176491, 47.941631, 48.877983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983303, 48.049759, 48.970650>,  <36.661324, 48.229969, 49.125095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983303, 48.049759, 48.970650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356760, 0.887468, -0.291757,
		0.474112, 0.097097, 0.875094,
		0.804947, -0.450524, -0.386119,
		37.224789, 47.914600, 48.854813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251583, 48.635311, 49.358295>,  <36.661324, 48.229969, 49.125095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251583, 48.635311, 49.358295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371304, 48.423103, 49.041065>,  <37.443134, 48.295780, 48.850727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371304, 48.423103, 49.041065>,  <37.251583, 48.635311, 49.358295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371304, 48.423103, 49.041065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425894, 0.818065, -0.386503,
		0.853835, -0.222086, 0.470791,
		0.299300, -0.530517, -0.793077,
		37.461094, 48.263947, 48.803143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982800, 48.942966, 49.151543>,  <37.251583, 48.635311, 49.358295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982800, 48.942966, 49.151543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865944, 48.734535, 48.830757>,  <37.795830, 48.609478, 48.638287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865944, 48.734535, 48.830757>,  <37.982800, 48.942966, 49.151543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865944, 48.734535, 48.830757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415195, 0.686297, -0.597169,
		0.861551, -0.507423, 0.015857,
		-0.292134, -0.521075, -0.801959,
		37.778305, 48.578213, 48.590168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577450, 48.945892, 48.802471>,  <37.982800, 48.942966, 49.151543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577450, 48.945892, 48.802471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275967, 48.863655, 48.552780>,  <38.095078, 48.814312, 48.402966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275967, 48.863655, 48.552780>,  <38.577450, 48.945892, 48.802471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275967, 48.863655, 48.552780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332211, 0.700352, -0.631778,
		0.567068, -0.683549, -0.459559,
		-0.753704, -0.205591, -0.624229,
		38.049854, 48.801979, 48.365513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.946461, 40.975250, 49.291180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.217552, 40.692513, 49.210136>,  <32.380207, 40.522869, 49.161510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.217552, 40.692513, 49.210136>,  <31.946461, 40.975250, 49.291180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217552, 40.692513, 49.210136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543820, 0.667288, -0.508908,
		0.494918, 0.234719, 0.836638,
		0.677728, -0.706848, -0.202608,
		32.420872, 40.480457, 49.149353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526512, 41.241196, 49.568764>,  <31.946461, 40.975250, 49.291180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526512, 41.241196, 49.568764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.640434, 40.958450, 49.309769>,  <32.708790, 40.788803, 49.154373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.640434, 40.958450, 49.309769>,  <32.526512, 41.241196, 49.568764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640434, 40.958450, 49.309769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606225, 0.656046, -0.449549,
		0.742546, -0.264486, 0.615363,
		0.284808, -0.706860, -0.647483,
		32.725876, 40.746391, 49.115524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360722, 41.231941, 49.485882>,  <32.526512, 41.241196, 49.568764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360722, 41.231941, 49.485882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.194321, 41.062386, 49.164070>,  <33.094482, 40.960651, 48.970985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.194321, 41.062386, 49.164070>,  <33.360722, 41.231941, 49.485882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194321, 41.062386, 49.164070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555684, 0.581825, -0.593882,
		0.719834, -0.694116, -0.006489,
		-0.415998, -0.423891, -0.804526,
		33.069523, 40.935219, 48.922710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927124, 41.065739, 49.068134>,  <33.360722, 41.231941, 49.485882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927124, 41.065739, 49.068134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.639679, 41.019966, 48.793762>,  <33.467213, 40.992500, 48.629139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.639679, 41.019966, 48.793762>,  <33.927124, 41.065739, 49.068134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639679, 41.019966, 48.793762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540586, 0.528554, -0.654521,
		0.437450, -0.841152, -0.317965,
		-0.718613, -0.114433, -0.685930,
		33.424095, 40.985638, 48.587982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234634, 40.970249, 48.383453>,  <33.927124, 41.065739, 49.068134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234634, 40.970249, 48.383453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.866249, 41.108116, 48.310753>,  <33.645218, 41.190838, 48.267132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.866249, 41.108116, 48.310753>,  <34.234634, 40.970249, 48.383453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866249, 41.108116, 48.310753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375120, 0.658078, -0.652854,
		-0.105414, -0.669431, -0.735357,
		-0.920963, 0.344667, -0.181747,
		33.589962, 41.211517, 48.256229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235439, 41.036972, 47.678127>,  <34.234634, 40.970249, 48.383453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235439, 41.036972, 47.678127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.940136, 41.278931, 47.797516>,  <33.762955, 41.424107, 47.869148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.940136, 41.278931, 47.797516>,  <34.235439, 41.036972, 47.678127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940136, 41.278931, 47.797516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302816, 0.692608, -0.654673,
		-0.602729, -0.392934, -0.694493,
		-0.738254, 0.604894, 0.298468,
		33.718658, 41.460400, 47.887058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958767, 41.231213, 47.054867>,  <34.235439, 41.036972, 47.678127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958767, 41.231213, 47.054867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.841503, 41.498795, 47.328087>,  <33.771145, 41.659344, 47.492020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.841503, 41.498795, 47.328087>,  <33.958767, 41.231213, 47.054867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841503, 41.498795, 47.328087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395200, 0.735338, -0.550540,
		-0.870560, 0.108548, -0.479940,
		-0.293158, 0.668950, 0.683055,
		33.753555, 41.699478, 47.533005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653908, 41.851185, 46.655746>,  <33.958767, 41.231213, 47.054867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653908, 41.851185, 46.655746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.765469, 41.976234, 47.018951>,  <33.832405, 42.051266, 47.236874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.765469, 41.976234, 47.018951>,  <33.653908, 41.851185, 46.655746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765469, 41.976234, 47.018951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416410, 0.812644, -0.407693,
		-0.865343, 0.491809, 0.096467,
		0.278901, 0.312625, 0.908009,
		33.849140, 42.070023, 47.291355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508644, 42.614651, 46.662140>,  <33.653908, 41.851185, 46.655746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508644, 42.614651, 46.662140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.764984, 42.556374, 46.963623>,  <33.918789, 42.521408, 47.144512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.764984, 42.556374, 46.963623>,  <33.508644, 42.614651, 46.662140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764984, 42.556374, 46.963623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533833, 0.790142, -0.301162,
		-0.551660, 0.595356, 0.584142,
		0.640854, -0.145695, 0.753710,
		33.957241, 42.512665, 47.189735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666607, 43.250443, 46.818428>,  <33.508644, 42.614651, 46.662140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666607, 43.250443, 46.818428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.968613, 43.041733, 46.977272>,  <34.149815, 42.916508, 47.072578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.968613, 43.041733, 46.977272>,  <33.666607, 43.250443, 46.818428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968613, 43.041733, 46.977272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655704, 0.602787, -0.454643,
		-0.002152, 0.603651, 0.797246,
		0.755015, -0.521779, 0.397114,
		34.195118, 42.885201, 47.096405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230000, 43.717072, 47.063721>,  <33.666607, 43.250443, 46.818428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230000, 43.717072, 47.063721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.446056, 43.384354, 47.012550>,  <34.575691, 43.184723, 46.981850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.446056, 43.384354, 47.012550>,  <34.230000, 43.717072, 47.063721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446056, 43.384354, 47.012550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745248, 0.543378, -0.386454,
		0.390959, 0.113408, 0.913395,
		0.540146, -0.831793, -0.127921,
		34.608101, 43.134815, 46.974174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903870, 43.942657, 46.988876>,  <34.230000, 43.717072, 47.063721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903870, 43.942657, 46.988876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.992043, 43.566719, 46.884487>,  <35.044945, 43.341156, 46.821854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.992043, 43.566719, 46.884487>,  <34.903870, 43.942657, 46.988876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992043, 43.566719, 46.884487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896463, 0.300645, -0.325527,
		0.384403, -0.162194, 0.908805,
		0.220430, -0.939843, -0.260970,
		35.058170, 43.284767, 46.806194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498844, 43.717255, 47.313705>,  <34.903870, 43.942657, 46.988876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498844, 43.717255, 47.313705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.473282, 43.493721, 46.982979>,  <35.457943, 43.359600, 46.784542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.473282, 43.493721, 46.982979>,  <35.498844, 43.717255, 47.313705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473282, 43.493721, 46.982979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846829, 0.407990, -0.341210,
		0.528011, -0.721977, 0.447161,
		-0.063909, -0.558832, -0.826815,
		35.454109, 43.326073, 46.734936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207802, 43.611382, 47.107052>,  <35.498844, 43.717255, 47.313705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207802, 43.611382, 47.107052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981335, 43.530724, 46.787354>,  <35.845455, 43.482330, 46.595535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981335, 43.530724, 46.787354>,  <36.207802, 43.611382, 47.107052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981335, 43.530724, 46.787354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710316, 0.372596, -0.597179,
		0.418213, -0.905821, -0.067722,
		-0.566170, -0.201644, -0.799244,
		35.811485, 43.470230, 46.547581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600243, 43.305103, 46.677860>,  <36.207802, 43.611382, 47.107052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600243, 43.305103, 46.677860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.307590, 43.441940, 46.441998>,  <36.132000, 43.524044, 46.300480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.307590, 43.441940, 46.441998>,  <36.600243, 43.305103, 46.677860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307590, 43.441940, 46.441998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681703, 0.364703, -0.634250,
		-0.001924, -0.866004, -0.500032,
		-0.731626, 0.342094, -0.589656,
		36.088104, 43.544567, 46.265102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810490, 43.260979, 45.934086>,  <36.600243, 43.305103, 46.677860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810490, 43.260979, 45.934086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.518692, 43.529083, 45.879547>,  <36.343613, 43.689945, 45.846825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.518692, 43.529083, 45.879547>,  <36.810490, 43.260979, 45.934086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518692, 43.529083, 45.879547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642017, 0.602237, -0.474472,
		-0.235907, -0.433661, -0.869647,
		-0.729494, 0.670260, -0.136346,
		36.299843, 43.730160, 45.838642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812088, 43.441372, 45.119152>,  <36.810490, 43.260979, 45.934086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812088, 43.441372, 45.119152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.642296, 43.731926, 45.335365>,  <36.540421, 43.906258, 45.465096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.642296, 43.731926, 45.335365>,  <36.812088, 43.441372, 45.119152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642296, 43.731926, 45.335365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700692, 0.641630, -0.311996,
		-0.573454, 0.246313, -0.781332,
		-0.424478, 0.726389, 0.540535,
		36.514954, 43.949844, 45.497524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651478, 43.930252, 44.637718>,  <36.812088, 43.441372, 45.119152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651478, 43.930252, 44.637718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.670403, 44.128036, 44.984882>,  <36.681755, 44.246708, 45.193180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.670403, 44.128036, 44.984882>,  <36.651478, 43.930252, 44.637718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670403, 44.128036, 44.984882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545248, 0.715237, -0.437196,
		-0.836939, 0.493912, -0.235764,
		0.047309, 0.494456, 0.867914,
		36.684597, 44.276375, 45.245258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395161, 44.627556, 44.531322>,  <36.651478, 43.930252, 44.637718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395161, 44.627556, 44.531322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.585556, 44.676895, 44.879623>,  <36.699795, 44.706497, 45.088604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.585556, 44.676895, 44.879623>,  <36.395161, 44.627556, 44.531322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585556, 44.676895, 44.879623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507093, 0.770455, -0.386337,
		-0.718532, 0.625448, 0.304183,
		0.475993, 0.123346, 0.870757,
		36.728355, 44.713898, 45.140850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386482, 45.431412, 44.754440>,  <36.395161, 44.627556, 44.531322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386482, 45.431412, 44.754440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.687103, 45.265121, 44.959312>,  <36.867477, 45.165348, 45.082237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.687103, 45.265121, 44.959312>,  <36.386482, 45.431412, 44.754440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687103, 45.265121, 44.959312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590192, 0.770590, -0.240550,
		-0.294679, 0.483074, 0.824502,
		0.751557, -0.415729, 0.512183,
		36.912571, 45.140404, 45.112968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611076, 45.962711, 45.170578>,  <36.386482, 45.431412, 44.754440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611076, 45.962711, 45.170578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927223, 45.720482, 45.207691>,  <37.116913, 45.575146, 45.229958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927223, 45.720482, 45.207691>,  <36.611076, 45.962711, 45.170578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927223, 45.720482, 45.207691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612183, 0.774855, -0.157580,
		0.023534, 0.181344, 0.983138,
		0.790366, -0.605569, 0.092780,
		37.164333, 45.538811, 45.235527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018696, 46.304737, 45.641827>,  <36.611076, 45.962711, 45.170578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018696, 46.304737, 45.641827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247200, 46.075340, 45.406960>,  <37.384304, 45.937702, 45.266041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247200, 46.075340, 45.406960>,  <37.018696, 46.304737, 45.641827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247200, 46.075340, 45.406960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586532, 0.785671, -0.196728,
		0.574143, -0.232009, 0.785196,
		0.571263, -0.573492, -0.587168,
		37.418579, 45.903294, 45.230808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976696, 46.622173, 46.376080>,  <37.018696, 46.304737, 45.641827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976696, 46.622173, 46.376080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744106, 46.942963, 46.430836>,  <36.604553, 47.135437, 46.463688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744106, 46.942963, 46.430836>,  <36.976696, 46.622173, 46.376080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744106, 46.942963, 46.430836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508810, -0.489761, 0.707987,
		0.634827, 0.342023, 0.692831,
		-0.581470, 0.801969, 0.136889,
		36.569664, 47.183552, 46.471901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857079, 46.603256, 47.012451>,  <36.976696, 46.622173, 46.376080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857079, 46.603256, 47.012451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554520, 46.823448, 46.871117>,  <36.372986, 46.955563, 46.786316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554520, 46.823448, 46.871117>,  <36.857079, 46.603256, 47.012451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554520, 46.823448, 46.871117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595310, -0.355478, 0.720584,
		0.271064, 0.755387, 0.596586,
		-0.756393, 0.550478, -0.353332,
		36.327602, 46.988590, 46.765118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545425, 47.012035, 47.574657>,  <36.857079, 46.603256, 47.012451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545425, 47.012035, 47.574657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.262966, 46.963242, 47.295666>,  <36.093491, 46.933964, 47.128273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.262966, 46.963242, 47.295666>,  <36.545425, 47.012035, 47.574657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262966, 46.963242, 47.295666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629998, -0.341386, 0.697538,
		-0.323200, 0.931974, 0.164216,
		-0.706148, -0.121988, -0.697477,
		36.051121, 46.926643, 47.086422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935860, 47.258747, 47.914158>,  <36.545425, 47.012035, 47.574657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935860, 47.258747, 47.914158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800819, 47.036148, 47.610489>,  <35.719795, 46.902588, 47.428288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800819, 47.036148, 47.610489>,  <35.935860, 47.258747, 47.914158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800819, 47.036148, 47.610489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728938, -0.355715, 0.584907,
		-0.595546, 0.750853, -0.285561,
		-0.337601, -0.556495, -0.759170,
		35.699539, 46.869198, 47.382736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226162, 47.340534, 47.866886>,  <35.935860, 47.258747, 47.914158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226162, 47.340534, 47.866886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.275486, 46.992378, 47.676216>,  <35.305080, 46.783485, 47.561813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.275486, 46.992378, 47.676216>,  <35.226162, 47.340534, 47.866886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275486, 46.992378, 47.676216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731752, -0.404207, 0.548776,
		-0.670323, 0.281136, -0.686753,
		0.123309, -0.870391, -0.476672,
		35.312477, 46.731262, 47.533215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570885, 47.079967, 47.636223>,  <35.226162, 47.340534, 47.866886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570885, 47.079967, 47.636223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.803844, 46.754936, 47.645462>,  <34.943619, 46.559917, 47.651005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.803844, 46.754936, 47.645462>,  <34.570885, 47.079967, 47.636223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803844, 46.754936, 47.645462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754936, -0.530109, 0.386078,
		-0.301473, -0.242288, -0.922177,
		0.582397, -0.812577, 0.023099,
		34.978561, 46.511162, 47.652390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133156, 46.636559, 47.438683>,  <34.570885, 47.079967, 47.636223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133156, 46.636559, 47.438683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.417747, 46.395889, 47.583893>,  <34.588501, 46.251488, 47.671021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.417747, 46.395889, 47.583893>,  <34.133156, 46.636559, 47.438683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417747, 46.395889, 47.583893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701458, -0.577306, 0.417941,
		-0.041886, -0.552004, -0.832789,
		0.711479, -0.601672, 0.363026,
		34.631191, 46.215389, 47.692802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953068, 45.997524, 47.306900>,  <34.133156, 46.636559, 47.438683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953068, 45.997524, 47.306900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.215801, 45.922531, 47.599041>,  <34.373444, 45.877537, 47.774326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.215801, 45.922531, 47.599041>,  <33.953068, 45.997524, 47.306900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215801, 45.922531, 47.599041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708450, -0.485106, 0.512612,
		0.258192, -0.854121, -0.451458,
		0.656837, -0.187484, 0.730352,
		34.412853, 45.866287, 47.818146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885345, 45.281597, 47.497154>,  <33.953068, 45.997524, 47.306900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885345, 45.281597, 47.497154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.065128, 45.445381, 47.814728>,  <34.172997, 45.543652, 48.005272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.065128, 45.445381, 47.814728>,  <33.885345, 45.281597, 47.497154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065128, 45.445381, 47.814728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778306, -0.256714, 0.573008,
		0.438439, -0.875465, 0.203305,
		0.449457, 0.409463, 0.793933,
		34.199966, 45.568218, 48.052906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854523, 44.776657, 48.048294>,  <33.885345, 45.281597, 47.497154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854523, 44.776657, 48.048294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.963123, 45.100945, 48.255764>,  <34.028286, 45.295517, 48.380245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.963123, 45.100945, 48.255764>,  <33.854523, 44.776657, 48.048294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963123, 45.100945, 48.255764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656291, -0.238231, 0.715911,
		0.703965, -0.534774, 0.467386,
		0.271505, 0.810717, 0.518673,
		34.044575, 45.344158, 48.411366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061863, 44.570034, 48.701923>,  <33.854523, 44.776657, 48.048294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061863, 44.570034, 48.701923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.955711, 44.954117, 48.736748>,  <33.892021, 45.184566, 48.757641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.955711, 44.954117, 48.736748>,  <34.061863, 44.570034, 48.701923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955711, 44.954117, 48.736748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614589, -0.238050, 0.752072,
		0.742868, 0.146081, 0.653305,
		-0.265382, 0.960204, 0.087060,
		33.876095, 45.242180, 48.762867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064236, 44.682751, 49.422489>,  <34.061863, 44.570034, 48.701923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064236, 44.682751, 49.422489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.825653, 44.954155, 49.250977>,  <33.682503, 45.116997, 49.148067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.825653, 44.954155, 49.250977>,  <34.064236, 44.682751, 49.422489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825653, 44.954155, 49.250977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756795, -0.297448, 0.582053,
		0.267388, 0.671674, 0.690910,
		-0.596460, 0.678512, -0.428785,
		33.646713, 45.157707, 49.122341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723885, 44.984432, 49.994991>,  <34.064236, 44.682751, 49.422489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723885, 44.984432, 49.994991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.501244, 45.045418, 49.668324>,  <33.367661, 45.082008, 49.472324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.501244, 45.045418, 49.668324>,  <33.723885, 44.984432, 49.994991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501244, 45.045418, 49.668324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809611, -0.320039, 0.492042,
		-0.186347, 0.935056, 0.301572,
		-0.556602, 0.152465, -0.816670,
		33.334263, 45.091156, 49.423321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147465, 45.233669, 50.234550>,  <33.723885, 44.984432, 49.994991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147465, 45.233669, 50.234550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.041199, 45.102409, 49.871952>,  <32.977440, 45.023655, 49.654392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.041199, 45.102409, 49.871952>,  <33.147465, 45.233669, 50.234550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041199, 45.102409, 49.871952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873379, -0.316219, 0.370426,
		-0.408208, 0.890125, -0.202593,
		-0.265661, -0.328151, -0.906499,
		32.961502, 45.003963, 49.600002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429123, 45.248638, 50.253147>,  <33.147465, 45.233669, 50.234550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429123, 45.248638, 50.253147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.470661, 45.015495, 49.930782>,  <32.495583, 44.875610, 49.737362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.470661, 45.015495, 49.930782>,  <32.429123, 45.248638, 50.253147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470661, 45.015495, 49.930782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799032, -0.531396, 0.281364,
		-0.592254, 0.614733, -0.520901,
		0.103841, -0.582856, -0.805913,
		32.501812, 44.840637, 49.689007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818777, 45.291599, 49.942703>,  <32.429123, 45.248638, 50.253147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818777, 45.291599, 49.942703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.992910, 44.953735, 49.818108>,  <32.097389, 44.751015, 49.743351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.992910, 44.953735, 49.818108>,  <31.818777, 45.291599, 49.942703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992910, 44.953735, 49.818108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811917, -0.517842, 0.269499,
		-0.388940, 0.135585, -0.911231,
		0.435334, -0.844664, -0.311493,
		32.123512, 44.700336, 49.724659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308363, 44.831955, 49.625626>,  <31.818777, 45.291599, 49.942703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308363, 44.831955, 49.625626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.606466, 44.586494, 49.729954>,  <31.785328, 44.439220, 49.792549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.606466, 44.586494, 49.729954>,  <31.308363, 44.831955, 49.625626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606466, 44.586494, 49.729954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665272, -0.710582, 0.229099,
		0.044747, -0.344253, -0.937810,
		0.745259, -0.613647, 0.260819,
		31.830044, 44.402401, 49.808201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161749, 44.227448, 49.200985>,  <31.308363, 44.831955, 49.625626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161749, 44.227448, 49.200985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.390614, 44.119148, 49.510651>,  <31.527933, 44.054169, 49.696449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.390614, 44.119148, 49.510651>,  <31.161749, 44.227448, 49.200985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390614, 44.119148, 49.510651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642964, -0.734077, 0.218468,
		0.509145, -0.622757, -0.594092,
		0.572162, -0.270747, 0.774162,
		31.562262, 44.037926, 49.742901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.141273, 43.476307, 49.119911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.298935, 43.530495, 49.483513>,  <31.393532, 43.563007, 49.701675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.298935, 43.530495, 49.483513>,  <31.141273, 43.476307, 49.119911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298935, 43.530495, 49.483513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475320, -0.816476, 0.327778,
		0.786584, -0.561263, -0.257427,
		0.394153, 0.135465, 0.909006,
		31.417181, 43.571133, 49.756214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555336, 42.854927, 49.356426>,  <31.141273, 43.476307, 49.119911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555336, 42.854927, 49.356426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452425, 43.044106, 49.693504>,  <31.390678, 43.157612, 49.895752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452425, 43.044106, 49.693504>,  <31.555336, 42.854927, 49.356426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452425, 43.044106, 49.693504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394209, -0.847555, 0.355316,
		0.882275, -0.240783, 0.404494,
		-0.257276, 0.472942, 0.842695,
		31.375242, 43.185989, 49.946312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005947, 42.591923, 49.823116>,  <31.555336, 42.854927, 49.356426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005947, 42.591923, 49.823116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.695086, 42.732254, 50.032097>,  <31.508570, 42.816452, 50.157486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.695086, 42.732254, 50.032097>,  <32.005947, 42.591923, 49.823116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695086, 42.732254, 50.032097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182166, -0.920057, 0.346858,
		0.602371, 0.174389, 0.778934,
		-0.777152, 0.350832, 0.522448,
		31.461941, 42.837505, 50.188831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994692, 42.258720, 50.483654>,  <32.005947, 42.591923, 49.823116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994692, 42.258720, 50.483654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.619364, 42.395813, 50.465382>,  <31.394167, 42.478069, 50.454418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.619364, 42.395813, 50.465382>,  <31.994692, 42.258720, 50.483654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619364, 42.395813, 50.465382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341194, -0.896410, 0.282906,
		0.056014, 0.281043, 0.958059,
		-0.938323, 0.342731, -0.045679,
		31.337868, 42.498631, 50.451679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720146, 42.047081, 51.130711>,  <31.994692, 42.258720, 50.483654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720146, 42.047081, 51.130711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.409790, 42.103424, 50.884735>,  <31.223576, 42.137230, 50.737148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.409790, 42.103424, 50.884735>,  <31.720146, 42.047081, 51.130711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409790, 42.103424, 50.884735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425812, -0.836153, 0.345734,
		-0.465487, 0.530101, 0.708741,
		-0.775890, 0.140856, -0.614942,
		31.177023, 42.145679, 50.700253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176104, 42.046810, 51.471592>,  <31.720146, 42.047081, 51.130711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176104, 42.046810, 51.471592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.982998, 41.977463, 51.128223>,  <30.867134, 41.935856, 50.922203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.982998, 41.977463, 51.128223>,  <31.176104, 42.046810, 51.471592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982998, 41.977463, 51.128223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528510, -0.723910, 0.443431,
		-0.698295, 0.667755, 0.257851,
		-0.482764, -0.173369, -0.858418,
		30.838169, 41.925453, 50.870697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430666, 41.951233, 51.591290>,  <31.176104, 42.046810, 51.471592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430666, 41.951233, 51.591290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.471136, 41.782036, 51.231102>,  <30.495419, 41.680519, 51.014992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.471136, 41.782036, 51.231102>,  <30.430666, 41.951233, 51.591290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471136, 41.782036, 51.231102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510963, -0.798707, 0.317780,
		-0.853628, 0.427953, -0.296943,
		0.101176, -0.422993, -0.900467,
		30.501490, 41.655136, 50.960960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726202, 41.783489, 51.322186>,  <30.430666, 41.951233, 51.591290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726202, 41.783489, 51.322186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.975239, 41.534607, 51.132347>,  <30.124660, 41.385277, 51.018444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.975239, 41.534607, 51.132347>,  <29.726202, 41.783489, 51.322186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975239, 41.534607, 51.132347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515889, -0.782366, 0.348943,
		-0.588421, 0.027590, -0.808083,
		0.622590, -0.622207, -0.474595,
		30.162016, 41.347946, 50.989967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347509, 41.270760, 50.852489>,  <29.726202, 41.783489, 51.322186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347509, 41.270760, 50.852489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.703953, 41.123703, 50.958900>,  <29.917818, 41.035469, 51.022747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.703953, 41.123703, 50.958900>,  <29.347509, 41.270760, 50.852489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703953, 41.123703, 50.958900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450123, -0.790490, 0.415348,
		0.057593, -0.489864, -0.869894,
		0.891108, -0.367638, 0.266025,
		29.971285, 41.013412, 51.038708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174429, 40.607773, 50.689312>,  <29.347509, 41.270760, 50.852489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174429, 40.607773, 50.689312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.499289, 40.624718, 50.922073>,  <29.694204, 40.634884, 51.061729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.499289, 40.624718, 50.922073>,  <29.174429, 40.607773, 50.689312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499289, 40.624718, 50.922073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415963, -0.657333, 0.628401,
		0.409128, -0.752409, -0.516232,
		0.812151, 0.042363, 0.581908,
		29.742933, 40.637428, 51.096645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184549, 39.934452, 50.938393>,  <29.174429, 40.607773, 50.689312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184549, 39.934452, 50.938393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.434893, 40.133492, 51.178623>,  <29.585098, 40.252914, 51.322762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.434893, 40.133492, 51.178623>,  <29.184549, 39.934452, 50.938393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434893, 40.133492, 51.178623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314140, -0.543982, 0.778074,
		0.713874, -0.675630, -0.184139,
		0.625859, 0.497602, 0.600577,
		29.622650, 40.282772, 51.358795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537195, 39.416618, 51.412048>,  <29.184549, 39.934452, 50.938393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537195, 39.416618, 51.412048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.531977, 39.773575, 51.592476>,  <29.528847, 39.987751, 51.700733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.531977, 39.773575, 51.592476>,  <29.537195, 39.416618, 51.412048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531977, 39.773575, 51.592476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404976, -0.417165, 0.813614,
		0.914234, -0.172057, 0.366840,
		-0.013045, 0.892395, 0.451066,
		29.528063, 40.041294, 51.727795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620583, 39.249542, 52.116249>,  <29.537195, 39.416618, 51.412048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620583, 39.249542, 52.116249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.483637, 39.625122, 52.129845>,  <29.401470, 39.850471, 52.138000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.483637, 39.625122, 52.129845>,  <29.620583, 39.249542, 52.116249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483637, 39.625122, 52.129845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545519, -0.228098, 0.806461,
		0.764981, 0.257564, 0.590309,
		-0.342363, 0.938953, 0.033984,
		29.380928, 39.906807, 52.140041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843805, 39.512306, 52.729721>,  <29.620583, 39.249542, 52.116249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843805, 39.512306, 52.729721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.516113, 39.707329, 52.608955>,  <29.319498, 39.824341, 52.536495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.516113, 39.707329, 52.608955>,  <29.843805, 39.512306, 52.729721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516113, 39.707329, 52.608955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467937, -0.263998, 0.843410,
		0.331502, 0.832224, 0.444420,
		-0.819232, 0.487552, -0.301913,
		29.270344, 39.853596, 52.518383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657442, 39.917416, 53.363064>,  <29.843805, 39.512306, 52.729721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657442, 39.917416, 53.363064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.334042, 39.923874, 53.127754>,  <29.140001, 39.927750, 52.986568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.334042, 39.923874, 53.127754>,  <29.657442, 39.917416, 53.363064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334042, 39.923874, 53.127754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564133, -0.305900, 0.766929,
		-0.167573, 0.951927, 0.256427,
		-0.808501, 0.016142, -0.588274,
		29.091492, 39.928715, 52.951271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293505, 40.343292, 53.748650>,  <29.657442, 39.917416, 53.363064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293505, 40.343292, 53.748650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.038267, 40.157272, 53.503189>,  <28.885124, 40.045662, 53.355911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.038267, 40.157272, 53.503189>,  <29.293505, 40.343292, 53.748650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038267, 40.157272, 53.503189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471725, -0.393778, 0.788933,
		-0.608534, 0.792887, 0.031892,
		-0.638092, -0.465048, -0.613652,
		28.846840, 40.017757, 53.319092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660521, 40.404675, 54.088291>,  <29.293505, 40.343292, 53.748650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660521, 40.404675, 54.088291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.584198, 40.122231, 53.815525>,  <28.538404, 39.952766, 53.651867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.584198, 40.122231, 53.815525>,  <28.660521, 40.404675, 54.088291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584198, 40.122231, 53.815525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702485, -0.386995, 0.597285,
		-0.685644, 0.592999, -0.422189,
		-0.190804, -0.706107, -0.681914,
		28.526957, 39.910397, 53.610950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881151, 40.454479, 53.962887>,  <28.660521, 40.404675, 54.088291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881151, 40.454479, 53.962887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.002365, 40.088966, 53.854691>,  <28.075092, 39.869659, 53.789772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.002365, 40.088966, 53.854691>,  <27.881151, 40.454479, 53.962887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002365, 40.088966, 53.854691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658941, -0.405968, 0.633234,
		-0.688452, -0.013652, -0.725153,
		0.303034, -0.913785, -0.270494,
		28.093275, 39.814831, 53.773540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330872, 40.025436, 53.871246>,  <27.881151, 40.454479, 53.962887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330872, 40.025436, 53.871246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.594086, 39.727623, 53.916256>,  <27.752014, 39.548935, 53.943260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.594086, 39.727623, 53.916256>,  <27.330872, 40.025436, 53.871246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594086, 39.727623, 53.916256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572413, -0.397528, 0.717158,
		-0.489215, -0.536327, -0.687767,
		0.658037, -0.744530, 0.112524,
		27.791496, 39.504265, 53.950012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957743, 39.352703, 53.821842>,  <27.330872, 40.025436, 53.871246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957743, 39.352703, 53.821842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.288759, 39.295609, 54.039024>,  <27.487370, 39.261353, 54.169334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.288759, 39.295609, 54.039024>,  <26.957743, 39.352703, 53.821842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288759, 39.295609, 54.039024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533877, -0.499225, 0.682458,
		0.173647, -0.854635, -0.489332,
		0.827539, -0.142736, 0.542959,
		27.537022, 39.252789, 54.201912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934341, 38.744560, 53.971256>,  <26.957743, 39.352703, 53.821842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934341, 38.744560, 53.971256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.208603, 38.864624, 54.236519>,  <27.373161, 38.936661, 54.395676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.208603, 38.864624, 54.236519>,  <26.934341, 38.744560, 53.971256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208603, 38.864624, 54.236519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398478, -0.607632, 0.687022,
		0.609172, -0.735315, -0.297019,
		0.685656, 0.300159, 0.663159,
		27.414299, 38.954670, 54.435467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191559, 38.072666, 54.288044>,  <26.934341, 38.744560, 53.971256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191559, 38.072666, 54.288044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.258554, 38.398659, 54.509949>,  <27.298752, 38.594254, 54.643089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.258554, 38.398659, 54.509949>,  <27.191559, 38.072666, 54.288044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258554, 38.398659, 54.509949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531390, -0.399344, 0.747093,
		0.830405, -0.419923, 0.366187,
		0.167487, 0.814978, 0.554760,
		27.308802, 38.643150, 54.676376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464022, 37.827717, 55.067104>,  <27.191559, 38.072666, 54.288044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464022, 37.827717, 55.067104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.262463, 38.172516, 55.045013>,  <27.141527, 38.379395, 55.031757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.262463, 38.172516, 55.045013>,  <27.464022, 37.827717, 55.067104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262463, 38.172516, 55.045013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553841, -0.273368, 0.786467,
		0.662832, 0.426889, 0.615158,
		-0.503899, 0.861995, -0.055231,
		27.111294, 38.431114, 55.028442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104370, 37.314133, 55.057400>,  <27.464022, 37.827717, 55.067104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104370, 37.314133, 55.057400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.446302, 37.291878, 55.263767>,  <28.651463, 37.278522, 55.387589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.446302, 37.291878, 55.263767>,  <28.104370, 37.314133, 55.057400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446302, 37.291878, 55.263767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518559, 0.128011, -0.845405,
		-0.019004, 0.990211, 0.138281,
		0.854830, -0.055641, 0.515916,
		28.702751, 37.275185, 55.418541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546579, 37.895813, 55.009613>,  <28.104370, 37.314133, 55.057400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546579, 37.895813, 55.009613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.749634, 37.556816, 55.071655>,  <28.871466, 37.353416, 55.108879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.749634, 37.556816, 55.071655>,  <28.546579, 37.895813, 55.009613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749634, 37.556816, 55.071655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527248, 0.163198, -0.833892,
		0.681407, 0.505092, 0.529685,
		0.507636, -0.847495, 0.155105,
		28.901924, 37.302567, 55.118187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247002, 38.084553, 54.948841>,  <28.546579, 37.895813, 55.009613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247002, 38.084553, 54.948841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.193882, 37.700607, 54.850021>,  <29.162010, 37.470242, 54.790730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.193882, 37.700607, 54.850021>,  <29.247002, 38.084553, 54.948841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193882, 37.700607, 54.850021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497488, 0.151033, -0.854222,
		0.857245, -0.236346, 0.457462,
		-0.132800, -0.959859, -0.247051,
		29.154041, 37.412651, 54.775906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907146, 37.862556, 54.886688>,  <29.247002, 38.084553, 54.948841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907146, 37.862556, 54.886688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.650915, 37.633286, 54.682289>,  <29.497177, 37.495724, 54.559647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.650915, 37.633286, 54.682289>,  <29.907146, 37.862556, 54.886688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650915, 37.633286, 54.682289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499573, 0.194307, -0.844199,
		0.583170, -0.796058, 0.161877,
		-0.640578, -0.573181, -0.511003,
		29.458742, 37.461330, 54.528988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309799, 37.510124, 54.444405>,  <29.907146, 37.862556, 54.886688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309799, 37.510124, 54.444405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.949533, 37.433846, 54.288231>,  <29.733374, 37.388081, 54.194527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.949533, 37.433846, 54.288231>,  <30.309799, 37.510124, 54.444405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949533, 37.433846, 54.288231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381846, 0.081460, -0.920629,
		0.207365, -0.978263, -0.000552,
		-0.900663, -0.190695, -0.390438,
		29.679335, 37.376637, 54.171101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438011, 36.952923, 54.013836>,  <30.309799, 37.510124, 54.444405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438011, 36.952923, 54.013836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.099678, 37.134735, 53.902138>,  <29.896679, 37.243820, 53.835121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.099678, 37.134735, 53.902138>,  <30.438011, 36.952923, 54.013836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099678, 37.134735, 53.902138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328435, 0.031226, -0.944010,
		-0.420359, -0.890185, -0.175695,
		-0.845830, 0.454527, -0.279242,
		29.845928, 37.271091, 53.818367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222998, 36.542965, 53.323059>,  <30.438011, 36.952923, 54.013836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222998, 36.542965, 53.323059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.034628, 36.895538, 53.337460>,  <29.921606, 37.107082, 53.346100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.034628, 36.895538, 53.337460>,  <30.222998, 36.542965, 53.323059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034628, 36.895538, 53.337460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294366, 0.195481, -0.935487,
		-0.831611, -0.429947, -0.351523,
		-0.470926, 0.881438, 0.036002,
		29.893351, 37.159969, 53.348259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740349, 36.584637, 52.712471>,  <30.222998, 36.542965, 53.323059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740349, 36.584637, 52.712471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.857761, 36.940666, 52.851959>,  <29.928209, 37.154285, 52.935650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.857761, 36.940666, 52.851959>,  <29.740349, 36.584637, 52.712471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857761, 36.940666, 52.851959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570938, 0.129349, -0.810739,
		-0.766725, 0.437076, -0.470210,
		0.293533, 0.890075, 0.348718,
		29.945822, 37.207687, 52.956573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768482, 36.908070, 52.044380>,  <29.740349, 36.584637, 52.712471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768482, 36.908070, 52.044380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.952457, 37.133858, 52.318558>,  <30.062843, 37.269333, 52.483063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.952457, 37.133858, 52.318558>,  <29.768482, 36.908070, 52.044380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952457, 37.133858, 52.318558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564570, 0.409911, -0.716403,
		-0.685359, 0.716480, -0.130151,
		0.459938, 0.564473, 0.685440,
		30.090439, 37.303200, 52.524189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646784, 37.637917, 51.883377>,  <29.768482, 36.908070, 52.044380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646784, 37.637917, 51.883377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.970608, 37.648750, 52.117943>,  <30.164902, 37.655251, 52.258682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.970608, 37.648750, 52.117943>,  <29.646784, 37.637917, 51.883377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970608, 37.648750, 52.117943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477597, 0.550451, -0.684766,
		-0.341338, 0.834428, 0.432688,
		0.809561, 0.027086, 0.586410,
		30.213476, 37.656876, 52.293865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794554, 38.344563, 51.905880>,  <29.646784, 37.637917, 51.883377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794554, 38.344563, 51.905880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.130533, 38.153038, 52.008041>,  <30.332121, 38.038124, 52.069340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.130533, 38.153038, 52.008041>,  <29.794554, 38.344563, 51.905880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130533, 38.153038, 52.008041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495111, 0.483479, -0.721882,
		0.222158, 0.732797, 0.643159,
		0.839947, -0.478807, 0.255407,
		30.382517, 38.009396, 52.084663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330757, 38.907425, 52.079731>,  <29.794554, 38.344563, 51.905880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330757, 38.907425, 52.079731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.491632, 38.563377, 51.954235>,  <30.588158, 38.356949, 51.878937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.491632, 38.563377, 51.954235>,  <30.330757, 38.907425, 52.079731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491632, 38.563377, 51.954235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552977, 0.501322, -0.665502,
		0.729698, 0.094167, 0.677254,
		0.402190, -0.860121, -0.313742,
		30.612289, 38.305340, 51.860111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957321, 39.114376, 52.012947>,  <30.330757, 38.907425, 52.079731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957321, 39.114376, 52.012947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.933962, 38.775536, 51.801666>,  <30.919947, 38.572231, 51.674896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.933962, 38.775536, 51.801666>,  <30.957321, 39.114376, 52.012947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933962, 38.775536, 51.801666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597407, 0.394256, -0.698331,
		0.799809, -0.356335, 0.483043,
		-0.058398, -0.847105, -0.528207,
		30.916443, 38.521404, 51.643204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581352, 38.906578, 51.853977>,  <30.957321, 39.114376, 52.012947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581352, 38.906578, 51.853977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.348333, 38.733444, 51.578793>,  <31.208523, 38.629562, 51.413681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.348333, 38.733444, 51.578793>,  <31.581352, 38.906578, 51.853977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348333, 38.733444, 51.578793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630668, 0.293230, -0.718522,
		0.512734, -0.852448, 0.102157,
		-0.582547, -0.432838, -0.687961,
		31.173569, 38.603592, 51.372406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110737, 38.621632, 51.478992>,  <31.581352, 38.906578, 51.853977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110737, 38.621632, 51.478992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.793268, 38.605003, 51.236221>,  <31.602787, 38.595024, 51.090557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.793268, 38.605003, 51.236221>,  <32.110737, 38.621632, 51.478992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793268, 38.605003, 51.236221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524474, 0.458752, -0.717268,
		0.308249, -0.887591, -0.342292,
		-0.793668, -0.041574, -0.606928,
		31.555168, 38.592529, 51.054142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371342, 38.375214, 50.794174>,  <32.110737, 38.621632, 51.478992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371342, 38.375214, 50.794174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.026360, 38.571594, 50.744961>,  <31.819370, 38.689423, 50.715431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.026360, 38.571594, 50.744961>,  <32.371342, 38.375214, 50.794174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026360, 38.571594, 50.744961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355410, 0.414380, -0.837838,
		-0.360354, -0.766326, -0.531873,
		-0.862455, 0.490951, -0.123037,
		31.767624, 38.718880, 50.708050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279877, 38.345207, 50.081375>,  <32.371342, 38.375214, 50.794174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279877, 38.345207, 50.081375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.027142, 38.638985, 50.180473>,  <31.875502, 38.815250, 50.239933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.027142, 38.638985, 50.180473>,  <32.279877, 38.345207, 50.081375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027142, 38.638985, 50.180473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336086, 0.547609, -0.766270,
		-0.698450, -0.400892, -0.592835,
		-0.631833, 0.734445, 0.247744,
		31.837591, 38.859318, 50.254795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897816, 38.466209, 49.453773>,  <32.279877, 38.345207, 50.081375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897816, 38.466209, 49.453773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.847614, 38.799675, 49.668900>,  <31.817493, 38.999756, 49.797977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.847614, 38.799675, 49.668900>,  <31.897816, 38.466209, 49.453773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847614, 38.799675, 49.668900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235346, 0.551647, -0.800186,
		-0.963774, 0.026147, -0.265434,
		-0.125503, 0.833668, 0.537817,
		31.809963, 39.049774, 49.830246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616953, 38.922565, 48.984417>,  <31.897816, 38.466209, 49.453773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616953, 38.922565, 48.984417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.757486, 39.174103, 49.261868>,  <31.841806, 39.325027, 49.428337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.757486, 39.174103, 49.261868>,  <31.616953, 38.922565, 48.984417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757486, 39.174103, 49.261868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265972, 0.643294, -0.717936,
		-0.897677, 0.436720, 0.058756,
		0.351334, 0.628847, 0.693625,
		31.862886, 39.362759, 49.469955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477383, 39.585762, 48.864811>,  <31.616953, 38.922565, 48.984417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477383, 39.585762, 48.864811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753735, 39.674530, 49.140038>,  <31.919546, 39.727791, 49.305172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753735, 39.674530, 49.140038>,  <31.477383, 39.585762, 48.864811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753735, 39.674530, 49.140038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450138, 0.612705, -0.649591,
		-0.565740, 0.758514, 0.323411,
		0.690879, 0.221920, 0.688068,
		31.960999, 39.741104, 49.346458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463177, 40.300037, 48.966141>,  <31.477383, 39.585762, 48.864811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463177, 40.300037, 48.966141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.828199, 40.174568, 49.071102>,  <32.047215, 40.099289, 49.134079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.828199, 40.174568, 49.071102>,  <31.463177, 40.300037, 48.966141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828199, 40.174568, 49.071102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404791, 0.784122, -0.470422,
		-0.058195, 0.535503, 0.842526,
		0.912555, -0.313671, 0.262399,
		32.101967, 40.080467, 49.149822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<32.926987, 46.081291, 48.601074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.153721, 45.803452, 48.778267>,  <33.289761, 45.636749, 48.884583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.153721, 45.803452, 48.778267>,  <32.926987, 46.081291, 48.601074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153721, 45.803452, 48.778267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823479, 0.461933, -0.329394,
		0.024169, 0.551498, 0.833826,
		0.566832, -0.694600, 0.442982,
		33.323769, 45.595070, 48.911163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451782, 46.481274, 48.932316>,  <32.926987, 46.081291, 48.601074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451782, 46.481274, 48.932316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.568977, 46.102936, 48.876411>,  <33.639294, 45.875935, 48.842869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.568977, 46.102936, 48.876411>,  <33.451782, 46.481274, 48.932316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568977, 46.102936, 48.876411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907976, 0.321048, -0.269275,
		0.299564, -0.048008, 0.952868,
		0.292988, -0.945846, -0.139765,
		33.656876, 45.819183, 48.834480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155533, 46.436905, 49.128990>,  <33.451782, 46.481274, 48.932316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155533, 46.436905, 49.128990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.131779, 46.104515, 48.907738>,  <34.117527, 45.905079, 48.774986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.131779, 46.104515, 48.907738>,  <34.155533, 46.436905, 49.128990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131779, 46.104515, 48.907738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929998, 0.155291, -0.333150,
		0.362736, -0.534191, 0.763585,
		-0.059388, -0.830978, -0.553126,
		34.113964, 45.855221, 48.741798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755531, 46.007355, 49.143597>,  <34.155533, 46.436905, 49.128990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755531, 46.007355, 49.143597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.595818, 45.876106, 48.801155>,  <34.499989, 45.797356, 48.595692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.595818, 45.876106, 48.801155>,  <34.755531, 46.007355, 49.143597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595818, 45.876106, 48.801155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820976, 0.287707, -0.493176,
		0.408127, -0.899757, 0.154502,
		-0.399287, -0.328121, -0.856100,
		34.476032, 45.777672, 48.544327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278786, 45.843712, 48.810806>,  <34.755531, 46.007355, 49.143597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278786, 45.843712, 48.810806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.010056, 45.849075, 48.514572>,  <34.848816, 45.852295, 48.336830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.010056, 45.849075, 48.514572>,  <35.278786, 45.843712, 48.810806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010056, 45.849075, 48.514572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706699, 0.311079, -0.635457,
		0.221857, -0.950289, -0.218471,
		-0.671830, 0.013412, -0.740584,
		34.808506, 45.853100, 48.292397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535221, 45.459541, 48.227036>,  <35.278786, 45.843712, 48.810806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535221, 45.459541, 48.227036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.262573, 45.703339, 48.065086>,  <35.098984, 45.849617, 47.967918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.262573, 45.703339, 48.065086>,  <35.535221, 45.459541, 48.227036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262573, 45.703339, 48.065086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687960, 0.345361, -0.638307,
		-0.249216, -0.713616, -0.654709,
		-0.681617, 0.609490, -0.404870,
		35.058086, 45.886185, 47.943626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509735, 45.311333, 47.526451>,  <35.535221, 45.459541, 48.227036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509735, 45.311333, 47.526451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.366222, 45.684105, 47.547562>,  <35.280117, 45.907768, 47.560226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.366222, 45.684105, 47.547562>,  <35.509735, 45.311333, 47.526451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366222, 45.684105, 47.547562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521171, 0.246909, -0.816955,
		-0.774376, -0.265601, -0.574281,
		-0.358779, 0.931929, 0.052777,
		35.258587, 45.963684, 47.563396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498940, 45.627987, 46.874161>,  <35.509735, 45.311333, 47.526451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498940, 45.627987, 46.874161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.443924, 45.969185, 47.075550>,  <35.410915, 46.173904, 47.196384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.443924, 45.969185, 47.075550>,  <35.498940, 45.627987, 46.874161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443924, 45.969185, 47.075550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405048, 0.512296, -0.757291,
		-0.903892, 0.099776, -0.415963,
		-0.137536, 0.852993, 0.503474,
		35.402664, 46.225082, 47.226593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326996, 46.132038, 46.398033>,  <35.498940, 45.627987, 46.874161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326996, 46.132038, 46.398033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.446907, 46.352409, 46.709576>,  <35.518852, 46.484631, 46.896500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.446907, 46.352409, 46.709576>,  <35.326996, 46.132038, 46.398033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446907, 46.352409, 46.709576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474425, 0.622202, -0.622724,
		-0.827681, 0.556185, -0.074854,
		0.299775, 0.550930, 0.778853,
		35.536839, 46.517689, 46.943230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171501, 46.830433, 46.176826>,  <35.326996, 46.132038, 46.398033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171501, 46.830433, 46.176826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.439575, 46.835556, 46.473660>,  <35.600422, 46.838631, 46.651760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.439575, 46.835556, 46.473660>,  <35.171501, 46.830433, 46.176826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439575, 46.835556, 46.473660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580326, 0.614254, -0.534709,
		-0.462676, 0.789005, 0.404231,
		0.670188, 0.012811, 0.742081,
		35.640633, 46.839401, 46.696285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351353, 47.576538, 46.198856>,  <35.171501, 46.830433, 46.176826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351353, 47.576538, 46.198856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.663605, 47.408989, 46.384403>,  <35.850956, 47.308460, 46.495731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.663605, 47.408989, 46.384403>,  <35.351353, 47.576538, 46.198856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663605, 47.408989, 46.384403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617398, 0.632199, -0.468129,
		-0.097169, 0.651823, 0.752121,
		0.780627, -0.418870, 0.463864,
		35.897793, 47.283329, 46.523563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694363, 48.116020, 46.488892>,  <35.351353, 47.576538, 46.198856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694363, 48.116020, 46.488892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.985886, 47.842133, 46.488274>,  <36.160801, 47.677799, 46.487904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.985886, 47.842133, 46.488274>,  <35.694363, 48.116020, 46.488892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985886, 47.842133, 46.488274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588187, 0.627215, -0.510526,
		0.350533, 0.371169, 0.859861,
		0.728809, -0.684716, -0.001543,
		36.204529, 47.636719, 46.487812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279716, 48.573029, 46.311398>,  <35.694363, 48.116020, 46.488892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279716, 48.573029, 46.311398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.438446, 48.206001, 46.301590>,  <36.533684, 47.985786, 46.295708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.438446, 48.206001, 46.301590>,  <36.279716, 48.573029, 46.311398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438446, 48.206001, 46.301590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843165, 0.374939, -0.385349,
		0.362777, 0.132243, 0.922445,
		0.396820, -0.917569, -0.024517,
		36.557491, 47.930729, 46.294235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887077, 48.478695, 46.668385>,  <36.279716, 48.573029, 46.311398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887077, 48.478695, 46.668385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.898964, 48.254997, 46.336998>,  <36.906097, 48.120777, 46.138165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.898964, 48.254997, 46.336998>,  <36.887077, 48.478695, 46.668385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898964, 48.254997, 46.336998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707337, 0.597390, -0.377888,
		0.706251, -0.574776, 0.413330,
		0.029719, -0.559248, -0.828468,
		36.907879, 48.087223, 46.088459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017956, 48.568111, 47.478428>,  <36.887077, 48.478695, 46.668385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017956, 48.568111, 47.478428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.342712, 48.624359, 47.705078>,  <37.537567, 48.658108, 47.841068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.342712, 48.624359, 47.705078>,  <37.017956, 48.568111, 47.478428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342712, 48.624359, 47.705078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245718, -0.798101, 0.550143,
		0.529585, -0.585885, -0.613416,
		0.811888, 0.140620, 0.566625,
		37.586277, 48.666546, 47.875065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312912, 47.925365, 47.601566>,  <37.017956, 48.568111, 47.478428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312912, 47.925365, 47.601566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.472107, 48.143166, 47.896896>,  <37.567623, 48.273846, 48.074093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.472107, 48.143166, 47.896896>,  <37.312912, 47.925365, 47.601566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472107, 48.143166, 47.896896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081266, -0.780721, 0.619573,
		0.913785, -0.306582, -0.266466,
		0.397986, 0.544502, 0.738326,
		37.591503, 48.306515, 48.118393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963760, 47.588436, 47.843437>,  <37.312912, 47.925365, 47.601566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963760, 47.588436, 47.843437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.786789, 47.799721, 48.133331>,  <37.680607, 47.926491, 48.307270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.786789, 47.799721, 48.133331>,  <37.963760, 47.588436, 47.843437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786789, 47.799721, 48.133331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014591, -0.812271, 0.583098,
		0.896683, 0.247407, 0.367082,
		-0.442432, 0.528210, 0.724739,
		37.654060, 47.958183, 48.350754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296677, 47.302040, 48.497746>,  <37.963760, 47.588436, 47.843437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296677, 47.302040, 48.497746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.946808, 47.477470, 48.580315>,  <37.736889, 47.582729, 48.629856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.946808, 47.477470, 48.580315>,  <38.296677, 47.302040, 48.497746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946808, 47.477470, 48.580315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224320, -0.743747, 0.629699,
		0.429695, 0.504473, 0.748912,
		-0.874667, 0.438574, 0.206421,
		37.684406, 47.609043, 48.642242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263161, 47.201973, 49.204445>,  <38.296677, 47.302040, 48.497746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263161, 47.201973, 49.204445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.895355, 47.302711, 49.083740>,  <37.674671, 47.363155, 49.011318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.895355, 47.302711, 49.083740>,  <38.263161, 47.201973, 49.204445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895355, 47.302711, 49.083740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382298, -0.751407, 0.537806,
		-0.091300, 0.609885, 0.787213,
		-0.919518, 0.251848, -0.301761,
		37.619499, 47.378265, 48.993214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928711, 47.342430, 49.775330>,  <38.263161, 47.201973, 49.204445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928711, 47.342430, 49.775330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.638218, 47.253517, 49.515121>,  <37.463924, 47.200169, 49.358997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.638218, 47.253517, 49.515121>,  <37.928711, 47.342430, 49.775330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638218, 47.253517, 49.515121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428494, -0.593605, 0.681195,
		-0.537574, 0.773449, 0.335845,
		-0.726228, -0.222285, -0.650524,
		37.420349, 47.186832, 49.319965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331112, 47.394062, 50.122677>,  <37.928711, 47.342430, 49.775330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331112, 47.394062, 50.122677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.225941, 47.170639, 49.807999>,  <37.162838, 47.036587, 49.619194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.225941, 47.170639, 49.807999>,  <37.331112, 47.394062, 50.122677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225941, 47.170639, 49.807999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398103, -0.679927, 0.615803,
		-0.878854, 0.475094, -0.043594,
		-0.262924, -0.558556, -0.786693,
		37.147064, 47.003071, 49.571991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652302, 47.103027, 50.268341>,  <37.331112, 47.394062, 50.122677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652302, 47.103027, 50.268341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.792694, 46.886627, 49.962627>,  <36.876930, 46.756786, 49.779202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.792694, 46.886627, 49.962627>,  <36.652302, 47.103027, 50.268341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792694, 46.886627, 49.962627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315354, -0.836820, 0.447531,
		-0.881682, 0.083944, -0.464316,
		0.350981, -0.541005, -0.764281,
		36.897987, 46.724327, 49.733345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069271, 46.847893, 49.906494>,  <36.652302, 47.103027, 50.268341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069271, 46.847893, 49.906494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.380478, 46.620308, 49.799931>,  <36.567204, 46.483757, 49.735992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.380478, 46.620308, 49.799931>,  <36.069271, 46.847893, 49.906494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380478, 46.620308, 49.799931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495666, -0.816464, 0.296147,
		-0.386010, -0.098357, -0.917236,
		0.778018, -0.568958, -0.266411,
		36.613884, 46.449619, 49.720009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830227, 46.243160, 49.677547>,  <36.069271, 46.847893, 49.906494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830227, 46.243160, 49.677547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.203716, 46.127258, 49.761642>,  <36.427811, 46.057716, 49.812099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.203716, 46.127258, 49.761642>,  <35.830227, 46.243160, 49.677547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203716, 46.127258, 49.761642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343166, -0.891720, 0.295081,
		0.101973, -0.347672, -0.932055,
		0.933723, -0.289759, 0.210241,
		36.483833, 46.040329, 49.824715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849915, 45.528206, 49.434307>,  <35.830227, 46.243160, 49.677547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849915, 45.528206, 49.434307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.158314, 45.584442, 49.682758>,  <36.343353, 45.618183, 49.831829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.158314, 45.584442, 49.682758>,  <35.849915, 45.528206, 49.434307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158314, 45.584442, 49.682758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240292, -0.839012, 0.488179,
		0.589767, -0.525636, -0.613091,
		0.770996, 0.140591, 0.621128,
		36.389614, 45.626621, 49.869095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992855, 44.804344, 49.716209>,  <35.849915, 45.528206, 49.434307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992855, 44.804344, 49.716209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.185913, 45.038506, 49.976780>,  <36.301746, 45.179001, 50.133121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.185913, 45.038506, 49.976780>,  <35.992855, 44.804344, 49.716209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185913, 45.038506, 49.976780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262541, -0.612884, 0.745282,
		0.835541, -0.530731, -0.142111,
		0.482642, 0.585403, 0.651429,
		36.330704, 45.214127, 50.172207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325089, 44.334534, 50.228539>,  <35.992855, 44.804344, 49.716209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325089, 44.334534, 50.228539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.325294, 44.684471, 50.422302>,  <36.325417, 44.894432, 50.538559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.325294, 44.684471, 50.422302>,  <36.325089, 44.334534, 50.228539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325294, 44.684471, 50.422302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153793, -0.478575, 0.864473,
		0.988103, -0.074942, 0.134299,
		0.000513, 0.874843, 0.484407,
		36.325447, 44.946922, 50.567623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691231, 44.291523, 50.859020>,  <36.325089, 44.334534, 50.228539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691231, 44.291523, 50.859020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.441612, 44.595512, 50.931694>,  <36.291840, 44.777905, 50.975296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.441612, 44.595512, 50.931694>,  <36.691231, 44.291523, 50.859020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441612, 44.595512, 50.931694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214550, -0.390229, 0.895371,
		0.751355, 0.519773, 0.406573,
		-0.624046, 0.759972, 0.181683,
		36.254398, 44.823505, 50.986198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347923, 44.312801, 51.306458>,  <36.691231, 44.291523, 50.859020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347923, 44.312801, 51.306458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.662739, 44.087326, 51.406715>,  <37.851627, 43.952042, 51.466869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.662739, 44.087326, 51.406715>,  <37.347923, 44.312801, 51.306458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662739, 44.087326, 51.406715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522272, 0.392604, -0.757030,
		0.328323, 0.726719, 0.603393,
		0.787043, -0.563685, 0.250644,
		37.898853, 43.918221, 51.481907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875839, 44.797729, 51.244076>,  <37.347923, 44.312801, 51.306458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875839, 44.797729, 51.244076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.040741, 44.433456, 51.254745>,  <38.139683, 44.214893, 51.261147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.040741, 44.433456, 51.254745>,  <37.875839, 44.797729, 51.244076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040741, 44.433456, 51.254745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549948, 0.225398, -0.804209,
		0.726365, 0.346206, 0.593747,
		0.412252, -0.910679, 0.026674,
		38.164417, 44.160252, 51.262749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686180, 44.844254, 51.386551>,  <37.875839, 44.797729, 51.244076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686180, 44.844254, 51.386551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.598701, 44.510094, 51.184845>,  <38.546215, 44.309597, 51.063820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.598701, 44.510094, 51.184845>,  <38.686180, 44.844254, 51.386551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598701, 44.510094, 51.184845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607443, 0.287878, -0.740364,
		0.763665, -0.468226, 0.444499,
		-0.218696, -0.835398, -0.504264,
		38.533092, 44.259476, 51.033566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322468, 44.541019, 51.163090>,  <38.686180, 44.844254, 51.386551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322468, 44.541019, 51.163090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.029442, 44.396736, 50.932182>,  <38.853626, 44.310165, 50.793636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.029442, 44.396736, 50.932182>,  <39.322468, 44.541019, 51.163090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029442, 44.396736, 50.932182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544491, 0.198430, -0.814957,
		0.408509, -0.911326, 0.051040,
		-0.732564, -0.360708, -0.577270,
		38.809673, 44.288525, 50.759003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693199, 44.297909, 50.639591>,  <39.322468, 44.541019, 51.163090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693199, 44.297909, 50.639591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.325691, 44.275986, 50.483200>,  <39.105186, 44.262833, 50.389366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.325691, 44.275986, 50.483200>,  <39.693199, 44.297909, 50.639591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325691, 44.275986, 50.483200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374624, 0.191486, -0.907188,
		0.124583, -0.979964, -0.155400,
		-0.918769, -0.054803, -0.390974,
		39.050060, 44.259544, 50.365910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693516, 43.791882, 50.069321>,  <39.693199, 44.297909, 50.639591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693516, 43.791882, 50.069321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.390965, 44.043777, 49.998524>,  <39.209435, 44.194916, 49.956047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.390965, 44.043777, 49.998524>,  <39.693516, 43.791882, 50.069321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390965, 44.043777, 49.998524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362943, 0.178917, -0.914473,
		-0.544212, -0.755923, -0.363887,
		-0.756377, 0.629738, -0.176988,
		39.164051, 44.232700, 49.945427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436768, 43.586437, 49.366962>,  <39.693516, 43.791882, 50.069321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436768, 43.586437, 49.366962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.294834, 43.954727, 49.431911>,  <39.209675, 44.175701, 49.470882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.294834, 43.954727, 49.431911>,  <39.436768, 43.586437, 49.366962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294834, 43.954727, 49.431911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152947, 0.228504, -0.961453,
		-0.922335, -0.316319, -0.221902,
		-0.354831, 0.920722, 0.162377,
		39.188385, 44.230942, 49.480625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006245, 43.715271, 48.814968>,  <39.436768, 43.586437, 49.366962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006245, 43.715271, 48.814968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.111214, 44.076981, 48.949684>,  <39.174194, 44.294006, 49.030514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.111214, 44.076981, 48.949684>,  <39.006245, 43.715271, 48.814968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111214, 44.076981, 48.949684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039296, 0.338722, -0.940066,
		-0.964152, 0.259930, 0.053355,
		0.262424, 0.904270, 0.336793,
		39.189941, 44.348263, 49.050724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606674, 44.216377, 48.367073>,  <39.006245, 43.715271, 48.814968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606674, 44.216377, 48.367073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.935928, 44.375145, 48.529507>,  <39.133480, 44.470406, 48.626968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.935928, 44.375145, 48.529507>,  <38.606674, 44.216377, 48.367073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935928, 44.375145, 48.529507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388801, 0.127262, -0.912490,
		-0.413861, 0.908990, -0.049567,
		0.823136, 0.396915, 0.406085,
		39.182869, 44.494221, 48.651333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874203, 44.390793, 47.804737>,  <38.606674, 44.216377, 48.367073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874203, 44.390793, 47.804737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.151337, 44.506645, 48.068886>,  <39.317619, 44.576157, 48.227375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.151337, 44.506645, 48.068886>,  <38.874203, 44.390793, 47.804737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151337, 44.506645, 48.068886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627634, 0.208686, -0.750018,
		-0.355038, 0.934111, -0.037197,
		0.692837, 0.289631, 0.660371,
		39.359188, 44.593536, 48.266998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040852, 45.167011, 47.720238>,  <38.874203, 44.390793, 47.804737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040852, 45.167011, 47.720238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.357300, 44.970184, 47.865562>,  <39.547169, 44.852089, 47.952759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.357300, 44.970184, 47.865562>,  <39.040852, 45.167011, 47.720238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357300, 44.970184, 47.865562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481999, 0.135835, -0.865578,
		0.376576, 0.859892, 0.344640,
		0.791118, -0.492072, 0.363315,
		39.594635, 44.822563, 47.974556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664833, 45.550545, 47.829678>,  <39.040852, 45.167011, 47.720238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664833, 45.550545, 47.829678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.734673, 45.171326, 47.723301>,  <39.776577, 44.943794, 47.659473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.734673, 45.171326, 47.723301>,  <39.664833, 45.550545, 47.829678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734673, 45.171326, 47.723301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397060, 0.314948, -0.862062,
		0.901032, 0.044922, 0.431421,
		0.174600, -0.948045, -0.265941,
		39.787052, 44.886913, 47.643520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.946011, 43.313442, 54.457489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072327, 42.934601, 54.434616>,  <36.148117, 42.707294, 54.420891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072327, 42.934601, 54.434616>,  <35.946011, 43.313442, 54.457489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072327, 42.934601, 54.434616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873178, 0.313668, -0.373059,
		0.371262, 0.067880, 0.926044,
		0.315794, -0.947103, -0.057182,
		36.167065, 42.650471, 54.417461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665649, 43.374573, 54.616917>,  <35.946011, 43.313442, 54.457489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665649, 43.374573, 54.616917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601143, 43.040871, 54.406013>,  <36.562439, 42.840649, 54.279472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601143, 43.040871, 54.406013>,  <36.665649, 43.374573, 54.616917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601143, 43.040871, 54.406013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845927, 0.158330, -0.509254,
		0.508331, -0.528152, 0.680188,
		-0.161270, -0.834258, -0.527262,
		36.552761, 42.790592, 54.247833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317585, 43.107845, 54.631927>,  <36.665649, 43.374573, 54.616917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317585, 43.107845, 54.631927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108318, 42.950928, 54.329300>,  <36.982758, 42.856777, 54.147724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108318, 42.950928, 54.329300>,  <37.317585, 43.107845, 54.631927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108318, 42.950928, 54.329300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711517, 0.287574, -0.641128,
		0.469081, -0.873731, 0.128675,
		-0.523170, -0.392295, -0.756570,
		36.951366, 42.833241, 54.102329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776653, 42.902729, 54.229904>,  <37.317585, 43.107845, 54.631927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776653, 42.902729, 54.229904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488075, 42.898682, 53.952942>,  <37.314930, 42.896255, 53.786766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488075, 42.898682, 53.952942>,  <37.776653, 42.902729, 54.229904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488075, 42.898682, 53.952942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639908, 0.372404, -0.672185,
		0.264651, -0.928016, -0.262197,
		-0.721442, -0.010113, -0.692402,
		37.271645, 42.895649, 53.745220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014668, 42.518925, 53.555935>,  <37.776653, 42.902729, 54.229904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014668, 42.518925, 53.555935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710197, 42.750069, 53.438168>,  <37.527515, 42.888756, 53.367508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710197, 42.750069, 53.438168>,  <38.014668, 42.518925, 53.555935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710197, 42.750069, 53.438168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496456, 0.227078, -0.837835,
		-0.417298, -0.783907, -0.459731,
		-0.761179, 0.577863, -0.294416,
		37.481842, 42.923428, 53.349842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976437, 42.414227, 52.775349>,  <38.014668, 42.518925, 53.555935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976437, 42.414227, 52.775349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751598, 42.742393, 52.817226>,  <37.616695, 42.939293, 52.842354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751598, 42.742393, 52.817226>,  <37.976437, 42.414227, 52.775349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751598, 42.742393, 52.817226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191370, 0.252162, -0.948573,
		-0.804629, -0.513152, -0.298743,
		-0.562094, 0.820420, 0.104695,
		37.582970, 42.988518, 52.848637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486546, 42.451530, 52.116444>,  <37.976437, 42.414227, 52.775349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486546, 42.451530, 52.116444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516731, 42.814064, 52.282757>,  <37.534843, 43.031582, 52.382545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516731, 42.814064, 52.282757>,  <37.486546, 42.451530, 52.116444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516731, 42.814064, 52.282757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162340, 0.400239, -0.901917,
		-0.983845, 0.135559, -0.116931,
		0.075463, 0.906329, 0.415780,
		37.539371, 43.085964, 52.407490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103741, 42.918674, 51.719574>,  <37.486546, 42.451530, 52.116444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103741, 42.918674, 51.719574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356129, 43.149170, 51.927349>,  <37.507561, 43.287468, 52.052013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356129, 43.149170, 51.927349>,  <37.103741, 42.918674, 51.719574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356129, 43.149170, 51.927349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205353, 0.521618, -0.828097,
		-0.748132, 0.629177, 0.210795,
		0.630974, 0.576238, 0.519443,
		37.545422, 43.322041, 52.083183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949833, 43.626701, 51.502525>,  <37.103741, 42.918674, 51.719574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949833, 43.626701, 51.502525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322578, 43.600258, 51.645222>,  <37.546227, 43.584393, 51.730839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322578, 43.600258, 51.645222>,  <36.949833, 43.626701, 51.502525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322578, 43.600258, 51.645222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355659, 0.360744, -0.862189,
		-0.071692, 0.930319, 0.359676,
		0.931862, -0.066110, 0.356739,
		37.602139, 43.580425, 51.752243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688343, 44.383461, 51.671299>,  <36.949833, 43.626701, 51.502525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688343, 44.383461, 51.671299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381035, 44.617111, 51.566566>,  <36.196648, 44.757301, 51.503727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381035, 44.617111, 51.566566>,  <36.688343, 44.383461, 51.671299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381035, 44.617111, 51.566566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543750, -0.379687, 0.748448,
		0.337775, 0.717381, 0.609321,
		-0.768273, 0.584125, -0.261827,
		36.150555, 44.792351, 51.488018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568005, 44.884048, 52.186756>,  <36.688343, 44.383461, 51.671299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568005, 44.884048, 52.186756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211399, 44.832581, 52.013023>,  <35.997437, 44.801701, 51.908783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211399, 44.832581, 52.013023>,  <36.568005, 44.884048, 52.186756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211399, 44.832581, 52.013023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415949, -0.147212, 0.897394,
		-0.179409, 0.980700, 0.077720,
		-0.891515, -0.128673, -0.434332,
		35.943943, 44.793980, 51.882725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125027, 45.254654, 52.614311>,  <36.568005, 44.884048, 52.186756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125027, 45.254654, 52.614311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866474, 45.055519, 52.383018>,  <35.711342, 44.936039, 52.244244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866474, 45.055519, 52.383018>,  <36.125027, 45.254654, 52.614311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866474, 45.055519, 52.383018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546086, -0.227435, 0.806265,
		-0.532901, 0.836916, -0.124854,
		-0.646380, -0.497840, -0.578228,
		35.672562, 44.906166, 52.209549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433109, 45.594421, 52.642475>,  <36.125027, 45.254654, 52.614311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433109, 45.594421, 52.642475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416073, 45.201553, 52.569225>,  <35.405853, 44.965832, 52.525276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416073, 45.201553, 52.569225>,  <35.433109, 45.594421, 52.642475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416073, 45.201553, 52.569225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647706, -0.112414, 0.753551,
		-0.760699, 0.150702, -0.631368,
		-0.042587, -0.982167, -0.183124,
		35.403297, 44.906902, 52.514290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739456, 45.454998, 52.831673>,  <35.433109, 45.594421, 52.642475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739456, 45.454998, 52.831673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902164, 45.089851, 52.817772>,  <34.999790, 44.870762, 52.809433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902164, 45.089851, 52.817772>,  <34.739456, 45.454998, 52.831673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902164, 45.089851, 52.817772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646851, -0.314681, 0.694666,
		-0.645073, -0.260093, -0.718493,
		0.406774, -0.912868, -0.034751,
		35.024197, 44.815990, 52.807346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237835, 44.999279, 52.651978>,  <34.739456, 45.454998, 52.831673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237835, 44.999279, 52.651978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514748, 44.787735, 52.848366>,  <34.680897, 44.660809, 52.966198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514748, 44.787735, 52.848366>,  <34.237835, 44.999279, 52.651978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514748, 44.787735, 52.848366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707278, -0.362257, 0.607065,
		-0.143194, -0.767513, -0.624835,
		0.692282, -0.528860, 0.490972,
		34.722431, 44.629078, 52.995659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805721, 44.464138, 52.904648>,  <34.237835, 44.999279, 52.651978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805721, 44.464138, 52.904648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139496, 44.374619, 53.106094>,  <34.339760, 44.320908, 53.226963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139496, 44.374619, 53.106094>,  <33.805721, 44.464138, 52.904648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139496, 44.374619, 53.106094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547963, -0.434324, 0.714912,
		0.058738, -0.872513, -0.485048,
		0.834438, -0.223796, 0.503616,
		34.389828, 44.307480, 53.257179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785545, 43.780556, 53.098820>,  <33.805721, 44.464138, 52.904648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785545, 43.780556, 53.098820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038376, 43.935913, 53.367039>,  <34.190075, 44.029125, 53.527969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038376, 43.935913, 53.367039>,  <33.785545, 43.780556, 53.098820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038376, 43.935913, 53.367039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513979, -0.437457, 0.737873,
		0.579917, -0.811040, -0.076883,
		0.632077, 0.388389, 0.670546,
		34.228001, 44.052429, 53.568203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095192, 43.162010, 53.583649>,  <33.785545, 43.780556, 53.098820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095192, 43.162010, 53.583649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077328, 43.526131, 53.748260>,  <34.066608, 43.744602, 53.847027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077328, 43.526131, 53.748260>,  <34.095192, 43.162010, 53.583649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077328, 43.526131, 53.748260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641419, -0.341944, 0.686772,
		0.765890, -0.233292, 0.599156,
		-0.044659, 0.910302, 0.411529,
		34.063931, 43.799221, 53.871719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147099, 42.995609, 54.317898>,  <34.095192, 43.162010, 53.583649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147099, 42.995609, 54.317898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036949, 43.379723, 54.335896>,  <33.970860, 43.610191, 54.346695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036949, 43.379723, 54.335896>,  <34.147099, 42.995609, 54.317898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036949, 43.379723, 54.335896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649368, -0.220316, 0.727861,
		0.708866, 0.171218, 0.684247,
		-0.275374, 0.960284, 0.044991,
		33.954338, 43.667809, 54.349392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172264, 43.151081, 55.004181>,  <34.147099, 42.995609, 54.317898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172264, 43.151081, 55.004181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918709, 43.425186, 54.860741>,  <33.766575, 43.589649, 54.774677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918709, 43.425186, 54.860741>,  <34.172264, 43.151081, 55.004181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918709, 43.425186, 54.860741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665004, -0.246171, 0.705103,
		0.394906, 0.685428, 0.611750,
		-0.633892, 0.685265, -0.358598,
		33.728542, 43.630764, 54.753162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842407, 43.421459, 55.549480>,  <34.172264, 43.151081, 55.004181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842407, 43.421459, 55.549480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613510, 43.595604, 55.271488>,  <33.476173, 43.700089, 55.104691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613510, 43.595604, 55.271488>,  <33.842407, 43.421459, 55.549480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613510, 43.595604, 55.271488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814302, -0.201191, 0.544458,
		0.097209, 0.877488, 0.469643,
		-0.572243, 0.435357, -0.694983,
		33.441837, 43.726212, 55.062992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388161, 43.816322, 55.922512>,  <33.842407, 43.421459, 55.549480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388161, 43.816322, 55.922512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201927, 43.766006, 55.572102>,  <33.090187, 43.735817, 55.361855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201927, 43.766006, 55.572102>,  <33.388161, 43.816322, 55.922512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201927, 43.766006, 55.572102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864447, -0.147482, 0.480604,
		-0.189651, 0.981033, -0.040072,
		-0.465579, -0.125787, -0.876021,
		33.062252, 43.728271, 55.309296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639511, 44.028278, 56.039059>,  <33.388161, 43.816322, 55.922512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639511, 44.028278, 56.039059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630051, 43.792183, 55.716305>,  <32.624374, 43.650524, 55.522652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630051, 43.792183, 55.716305>,  <32.639511, 44.028278, 56.039059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630051, 43.792183, 55.716305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897046, -0.343749, 0.277747,
		-0.441302, 0.730381, -0.521341,
		-0.023651, -0.590237, -0.806883,
		32.622955, 43.615112, 55.474239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.781925, 37.209579, 50.460506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.871399, 37.475418, 50.745678>,  <33.925083, 37.634922, 50.916782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.871399, 37.475418, 50.745678>,  <33.781925, 37.209579, 50.460506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871399, 37.475418, 50.745678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298929, 0.649435, -0.699196,
		-0.927688, 0.369518, -0.053397,
		0.223688, 0.664598, 0.712933,
		33.938507, 37.674797, 50.959557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474495, 37.854507, 50.316330>,  <33.781925, 37.209579, 50.460506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474495, 37.854507, 50.316330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.779285, 37.947342, 50.558167>,  <33.962158, 38.003044, 50.703270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.779285, 37.947342, 50.558167>,  <33.474495, 37.854507, 50.316330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779285, 37.947342, 50.558167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293659, 0.708253, -0.641983,
		-0.577201, 0.666718, 0.471515,
		0.761973, 0.232089, 0.604592,
		34.007877, 38.016968, 50.739544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594463, 38.492199, 50.263573>,  <33.474495, 37.854507, 50.316330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594463, 38.492199, 50.263573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.943153, 38.393021, 50.432629>,  <34.152367, 38.333515, 50.534061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.943153, 38.393021, 50.432629>,  <33.594463, 38.492199, 50.263573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943153, 38.393021, 50.432629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472862, 0.651797, -0.592927,
		-0.128460, 0.716717, 0.685431,
		0.871722, -0.247946, 0.422638,
		34.204670, 38.318638, 50.559422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911839, 39.085091, 50.486526>,  <33.594463, 38.492199, 50.263573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911839, 39.085091, 50.486526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.227013, 38.839508, 50.467705>,  <34.416115, 38.692158, 50.456413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.227013, 38.839508, 50.467705>,  <33.911839, 39.085091, 50.486526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227013, 38.839508, 50.467705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544093, 0.729967, -0.413654,
		0.288312, 0.300333, 0.909217,
		0.787933, -0.613961, -0.047050,
		34.463394, 38.655319, 50.453590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479992, 39.541504, 50.711304>,  <33.911839, 39.085091, 50.486526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479992, 39.541504, 50.711304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.608528, 39.241516, 50.480034>,  <34.685650, 39.061523, 50.341270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.608528, 39.241516, 50.480034>,  <34.479992, 39.541504, 50.711304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608528, 39.241516, 50.480034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490765, 0.654055, -0.575640,
		0.809871, -0.098774, 0.578232,
		0.321337, -0.749971, -0.578175,
		34.704929, 39.016525, 50.306580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156197, 39.736717, 50.591022>,  <34.479992, 39.541504, 50.711304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156197, 39.736717, 50.591022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.061588, 39.453415, 50.324963>,  <35.004826, 39.283432, 50.165325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.061588, 39.453415, 50.324963>,  <35.156197, 39.736717, 50.591022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061588, 39.453415, 50.324963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606632, 0.427113, -0.670502,
		0.758984, -0.562089, 0.328632,
		-0.236519, -0.708259, -0.665152,
		34.990631, 39.240936, 50.125416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698662, 39.630997, 50.189022>,  <35.156197, 39.736717, 50.591022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698662, 39.630997, 50.189022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.425514, 39.502022, 49.926807>,  <35.261627, 39.424637, 49.769478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.425514, 39.502022, 49.926807>,  <35.698662, 39.630997, 50.189022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425514, 39.502022, 49.926807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574968, 0.316345, -0.754545,
		0.450670, -0.892165, -0.030629,
		-0.682868, -0.322440, -0.655533,
		35.220654, 39.405289, 49.730148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080296, 39.541157, 49.621574>,  <35.698662, 39.630997, 50.189022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080296, 39.541157, 49.621574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.721416, 39.535446, 49.445015>,  <35.506088, 39.532021, 49.339077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.721416, 39.535446, 49.445015>,  <36.080296, 39.541157, 49.621574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721416, 39.535446, 49.445015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413754, 0.322318, -0.851421,
		0.154424, -0.946524, -0.283277,
		-0.897196, -0.014273, -0.441402,
		35.452259, 39.531166, 49.312595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243481, 39.401146, 48.914764>,  <36.080296, 39.541157, 49.621574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243481, 39.401146, 48.914764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.881355, 39.571037, 48.916641>,  <35.664082, 39.672970, 48.917767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.881355, 39.571037, 48.916641>,  <36.243481, 39.401146, 48.914764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881355, 39.571037, 48.916641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259752, 0.562336, -0.785053,
		-0.336067, -0.709499, -0.619412,
		-0.905311, 0.424724, 0.004689,
		35.609760, 39.698456, 48.918049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012432, 39.439842, 48.186264>,  <36.243481, 39.401146, 48.914764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012432, 39.439842, 48.186264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.768723, 39.709671, 48.352993>,  <35.622498, 39.871567, 48.453030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.768723, 39.709671, 48.352993>,  <36.012432, 39.439842, 48.186264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768723, 39.709671, 48.352993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133838, 0.605596, -0.784437,
		-0.781584, -0.422150, -0.459256,
		-0.609274, 0.674569, 0.416824,
		35.585941, 39.912041, 48.478039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739517, 39.664143, 47.576977>,  <36.012432, 39.439842, 48.186264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739517, 39.664143, 47.576977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.638138, 39.922371, 47.865143>,  <35.577309, 40.077309, 48.038040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.638138, 39.922371, 47.865143>,  <35.739517, 39.664143, 47.576977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638138, 39.922371, 47.865143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123609, 0.760239, -0.637776,
		-0.959418, -0.072596, -0.272483,
		-0.253452, 0.645575, 0.720413,
		35.562103, 40.116043, 48.081268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208595, 40.148407, 47.351391>,  <35.739517, 39.664143, 47.576977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208595, 40.148407, 47.351391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.416092, 40.337532, 47.636307>,  <35.540588, 40.451008, 47.807255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.416092, 40.337532, 47.636307>,  <35.208595, 40.148407, 47.351391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416092, 40.337532, 47.636307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217345, 0.732847, -0.644745,
		-0.826842, 0.489270, 0.277396,
		0.518743, 0.472811, 0.712289,
		35.571716, 40.479374, 47.849995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278717, 40.844555, 47.147968>,  <35.208595, 40.148407, 47.351391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278717, 40.844555, 47.147968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.557777, 40.836540, 47.434429>,  <35.725216, 40.831730, 47.606308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.557777, 40.836540, 47.434429>,  <35.278717, 40.844555, 47.147968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557777, 40.836540, 47.434429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489879, 0.742752, -0.456441,
		-0.522778, 0.669266, 0.528001,
		0.697655, -0.020039, 0.716154,
		35.767075, 40.830528, 47.649277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399731, 41.537479, 47.327656>,  <35.278717, 40.844555, 47.147968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399731, 41.537479, 47.327656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719635, 41.321091, 47.431763>,  <35.911575, 41.191257, 47.494225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719635, 41.321091, 47.431763>,  <35.399731, 41.537479, 47.327656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719635, 41.321091, 47.431763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556075, 0.504213, -0.660720,
		0.226200, 0.673144, 0.704068,
		0.799759, -0.540969, 0.260266,
		35.959564, 41.158798, 47.509842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209671, 42.170254, 47.590866>,  <35.399731, 41.537479, 47.327656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209671, 42.170254, 47.590866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.898521, 42.374001, 47.443649>,  <34.711830, 42.496250, 47.355320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.898521, 42.374001, 47.443649>,  <35.209671, 42.170254, 47.590866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898521, 42.374001, 47.443649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623843, -0.555366, 0.549899,
		0.075700, 0.657355, 0.749769,
		-0.777875, 0.509366, -0.368045,
		34.665157, 42.526810, 47.333237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824181, 42.337883, 48.165283>,  <35.209671, 42.170254, 47.590866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824181, 42.337883, 48.165283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.576981, 42.375038, 47.853016>,  <34.428661, 42.397331, 47.665653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.576981, 42.375038, 47.853016>,  <34.824181, 42.337883, 48.165283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576981, 42.375038, 47.853016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678168, -0.565304, 0.469595,
		-0.397698, 0.819637, 0.412350,
		-0.618000, 0.092885, -0.780672,
		34.391582, 42.402905, 47.618813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204136, 42.514034, 48.441364>,  <34.824181, 42.337883, 48.165283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204136, 42.514034, 48.441364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.109924, 42.361259, 48.083897>,  <34.053398, 42.269596, 47.869415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.109924, 42.361259, 48.083897>,  <34.204136, 42.514034, 48.441364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109924, 42.361259, 48.083897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783743, -0.469109, 0.407042,
		-0.574694, 0.796281, -0.188849,
		-0.235530, -0.381933, -0.893674,
		34.039265, 42.246681, 47.815796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492168, 42.628670, 48.432060>,  <34.204136, 42.514034, 48.441364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492168, 42.628670, 48.432060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.589302, 42.334991, 48.178452>,  <33.647583, 42.158783, 48.026287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.589302, 42.334991, 48.178452>,  <33.492168, 42.628670, 48.432060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589302, 42.334991, 48.178452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607085, -0.624796, 0.490997,
		-0.756624, 0.265675, -0.597442,
		0.242834, -0.734198, -0.634023,
		33.662151, 42.114731, 47.988243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843323, 42.238930, 48.431816>,  <33.492168, 42.628670, 48.432060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843323, 42.238930, 48.431816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.109673, 41.996719, 48.257484>,  <33.269482, 41.851391, 48.152885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.109673, 41.996719, 48.257484>,  <32.843323, 42.238930, 48.431816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109673, 41.996719, 48.257484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518252, -0.795640, 0.313641,
		-0.536683, 0.017025, -0.843612,
		0.665872, -0.605530, -0.435830,
		33.309433, 41.815060, 48.126736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513741, 41.758148, 47.913788>,  <32.843323, 42.238930, 48.431816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513741, 41.758148, 47.913788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.848236, 41.581772, 48.044193>,  <33.048931, 41.475945, 48.122437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.848236, 41.581772, 48.044193>,  <32.513741, 41.758148, 47.913788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848236, 41.581772, 48.044193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542998, -0.748849, 0.379972,
		0.076588, -0.494769, -0.865643,
		0.836234, -0.440941, 0.326012,
		33.099106, 41.449490, 48.141998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476063, 41.023579, 47.698193>,  <32.513741, 41.758148, 47.913788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476063, 41.023579, 47.698193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.752350, 41.013168, 47.987255>,  <32.918121, 41.006924, 48.160694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.752350, 41.013168, 47.987255>,  <32.476063, 41.023579, 47.698193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752350, 41.013168, 47.987255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494751, -0.745844, 0.446025,
		0.527383, -0.665612, -0.528041,
		0.690716, -0.026022, 0.722658,
		32.959564, 41.005363, 48.204052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473953, 40.444305, 47.922852>,  <32.476063, 41.023579, 47.698193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473953, 40.444305, 47.922852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.693947, 40.591042, 48.222969>,  <32.825943, 40.679081, 48.403042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.693947, 40.591042, 48.222969>,  <32.473953, 40.444305, 47.922852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693947, 40.591042, 48.222969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310916, -0.743866, 0.591604,
		0.775142, -0.558653, -0.295061,
		0.549987, 0.366838, 0.750296,
		32.858944, 40.701092, 48.448059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011715, 39.860931, 48.130245>,  <32.473953, 40.444305, 47.922852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011715, 39.860931, 48.130245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.902462, 40.115860, 48.418472>,  <32.836910, 40.268818, 48.591408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.902462, 40.115860, 48.418472>,  <33.011715, 39.860931, 48.130245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902462, 40.115860, 48.418472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201041, -0.770326, 0.605128,
		0.940735, 0.020414, 0.338527,
		-0.273129, 0.637323, 0.720569,
		32.820522, 40.307056, 48.634644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253910, 39.549587, 48.790314>,  <33.011715, 39.860931, 48.130245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253910, 39.549587, 48.790314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.003548, 39.833298, 48.920033>,  <32.853329, 40.003525, 48.997864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.003548, 39.833298, 48.920033>,  <33.253910, 39.549587, 48.790314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003548, 39.833298, 48.920033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236298, -0.568747, 0.787839,
		0.743238, 0.416483, 0.523583,
		-0.625908, 0.709273, 0.324300,
		32.815777, 40.046082, 49.017323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220577, 39.642223, 49.517403>,  <33.253910, 39.549587, 48.790314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220577, 39.642223, 49.517403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.865414, 39.802864, 49.427658>,  <32.652317, 39.899246, 49.373814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.865414, 39.802864, 49.427658>,  <33.220577, 39.642223, 49.517403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865414, 39.802864, 49.427658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398402, -0.427490, 0.811497,
		0.229985, 0.809920, 0.539570,
		-0.887909, 0.401598, -0.224357,
		32.599041, 39.923344, 49.360352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967983, 39.906548, 50.163837>,  <33.220577, 39.642223, 49.517403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967983, 39.906548, 50.163837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.652199, 39.872482, 49.920692>,  <32.462730, 39.852043, 49.774803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.652199, 39.872482, 49.920692>,  <32.967983, 39.906548, 50.163837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652199, 39.872482, 49.920692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530938, -0.402174, 0.745896,
		-0.307991, 0.911594, 0.272283,
		-0.789459, -0.085164, -0.607866,
		32.415359, 39.846931, 49.738331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276402, 40.160835, 50.423912>,  <32.967983, 39.906548, 50.163837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276402, 40.160835, 50.423912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.164711, 39.909081, 50.133835>,  <32.097694, 39.758026, 49.959789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.164711, 39.909081, 50.133835>,  <32.276402, 40.160835, 50.423912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164711, 39.909081, 50.133835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678011, -0.405556, 0.613046,
		-0.679949, 0.662868, -0.313490,
		-0.279231, -0.629389, -0.725189,
		32.080940, 39.720264, 49.916279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571819, 40.250160, 50.400028>,  <32.276402, 40.160835, 50.423912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571819, 40.250160, 50.400028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.609348, 39.889908, 50.230293>,  <31.631865, 39.673756, 50.128452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.609348, 39.889908, 50.230293>,  <31.571819, 40.250160, 50.400028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609348, 39.889908, 50.230293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471764, -0.415547, 0.777663,
		-0.876719, 0.127228, -0.463871,
		0.093820, -0.900630, -0.424339,
		31.637495, 39.619720, 50.102993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012970, 40.592110, 50.352272>,  <31.571819, 40.250160, 50.400028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012970, 40.592110, 50.352272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.752769, 40.839020, 50.529274>,  <30.596649, 40.987167, 50.635475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.752769, 40.839020, 50.529274>,  <31.012970, 40.592110, 50.352272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752769, 40.839020, 50.529274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226000, 0.713554, -0.663147,
		-0.725099, -0.331373, -0.603675,
		-0.650504, 0.617278, 0.442507,
		30.557619, 41.024204, 50.662025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753767, 41.043076, 49.822586>,  <31.012970, 40.592110, 50.352272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753767, 41.043076, 49.822586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.655937, 41.243454, 50.154667>,  <30.597240, 41.363682, 50.353916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.655937, 41.243454, 50.154667>,  <30.753767, 41.043076, 49.822586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655937, 41.243454, 50.154667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067164, 0.862898, -0.500894,
		-0.967302, -0.066746, -0.244687,
		-0.244572, 0.500950, 0.830201,
		30.582565, 41.393738, 50.403728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417583, 41.627037, 49.694305>,  <30.753767, 41.043076, 49.822586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417583, 41.627037, 49.694305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.562355, 41.711052, 50.057598>,  <30.649218, 41.761459, 50.275574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.562355, 41.711052, 50.057598>,  <30.417583, 41.627037, 49.694305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562355, 41.711052, 50.057598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311007, 0.891259, -0.330048,
		-0.878795, 0.401922, 0.257251,
		0.361931, 0.210038, 0.908235,
		30.670935, 41.774063, 50.330067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074308, 42.307583, 49.962654>,  <30.417583, 41.627037, 49.694305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074308, 42.307583, 49.962654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.419573, 42.254532, 50.157532>,  <30.626732, 42.222702, 50.274460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.419573, 42.254532, 50.157532>,  <30.074308, 42.307583, 49.962654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419573, 42.254532, 50.157532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297778, 0.912944, -0.279038,
		-0.407776, 0.385932, 0.827512,
		0.863161, -0.132629, 0.487198,
		30.678522, 42.214745, 50.303692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130482, 42.968040, 50.293846>,  <30.074308, 42.307583, 49.962654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130482, 42.968040, 50.293846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.499533, 42.816826, 50.324421>,  <30.720964, 42.726097, 50.342766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.499533, 42.816826, 50.324421>,  <30.130482, 42.968040, 50.293846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499533, 42.816826, 50.324421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383238, 0.920886, -0.071401,
		-0.043399, 0.095171, 0.994514,
		0.922629, -0.378037, 0.076439,
		30.776321, 42.703415, 50.347351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454891, 43.339111, 50.806652>,  <30.130482, 42.968040, 50.293846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454891, 43.339111, 50.806652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.752420, 43.173958, 50.596413>,  <30.930939, 43.074863, 50.470268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.752420, 43.173958, 50.596413>,  <30.454891, 43.339111, 50.806652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752420, 43.173958, 50.596413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443061, 0.893368, -0.074770,
		0.500422, -0.177255, 0.847442,
		0.743824, -0.412886, -0.525596,
		30.975567, 43.050091, 50.438732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079399, 43.678463, 51.071209>,  <30.454891, 43.339111, 50.806652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079399, 43.678463, 51.071209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.151709, 43.522171, 50.710175>,  <31.195095, 43.428398, 50.493553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.151709, 43.522171, 50.710175>,  <31.079399, 43.678463, 51.071209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151709, 43.522171, 50.710175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658232, 0.729944, -0.184155,
		0.730788, -0.560816, 0.389145,
		0.180776, -0.390726, -0.902581,
		31.205942, 43.404953, 50.439400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785852, 43.878391, 50.987431>,  <31.079399, 43.678463, 51.071209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785852, 43.878391, 50.987431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.680843, 43.750404, 50.623299>,  <31.617838, 43.673611, 50.404819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.680843, 43.750404, 50.623299>,  <31.785852, 43.878391, 50.987431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680843, 43.750404, 50.623299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714321, 0.569810, -0.406279,
		0.648713, -0.756924, 0.078975,
		-0.262522, -0.319972, -0.910330,
		31.602087, 43.654411, 50.350201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323906, 43.527569, 50.637310>,  <31.785852, 43.878391, 50.987431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323906, 43.527569, 50.637310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.093246, 43.690674, 50.354126>,  <31.954851, 43.788536, 50.184216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.093246, 43.690674, 50.354126>,  <32.323906, 43.527569, 50.637310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093246, 43.690674, 50.354126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769950, 0.561033, -0.304007,
		0.273228, -0.720400, -0.637472,
		-0.576649, 0.407758, -0.707961,
		31.920252, 43.813000, 50.141739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813160, 43.639389, 50.186176>,  <32.323906, 43.527569, 50.637310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813160, 43.639389, 50.186176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.502296, 43.853455, 50.053741>,  <32.315777, 43.981895, 49.974281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.502296, 43.853455, 50.053741>,  <32.813160, 43.639389, 50.186176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502296, 43.853455, 50.053741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628394, 0.688222, -0.362589,
		0.033819, -0.489845, -0.871153,
		-0.777159, 0.535165, -0.331091,
		32.269150, 44.014004, 49.954414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869022, 43.702400, 49.441547>,  <32.813160, 43.639389, 50.186176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869022, 43.702400, 49.441547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.615589, 44.003151, 49.514496>,  <32.463531, 44.183601, 49.558266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.615589, 44.003151, 49.514496>,  <32.869022, 43.702400, 49.441547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615589, 44.003151, 49.514496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622209, 0.635278, -0.457470,
		-0.459818, -0.176369, -0.870323,
		-0.633580, 0.751875, 0.182374,
		32.425514, 44.228714, 49.569206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749191, 44.022751, 48.691753>,  <32.869022, 43.702400, 49.441547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749191, 44.022751, 48.691753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.679115, 44.271263, 48.997253>,  <32.637070, 44.420372, 49.180553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.679115, 44.271263, 48.997253>,  <32.749191, 44.022751, 48.691753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679115, 44.271263, 48.997253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484890, 0.729587, -0.482271,
		-0.856850, 0.285847, -0.429068,
		-0.175187, 0.621284, 0.763751,
		32.626560, 44.457649, 49.226379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638538, 44.752388, 48.409878>,  <32.749191, 44.022751, 48.691753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638538, 44.752388, 48.409878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.732716, 44.839516, 48.788746>,  <32.789223, 44.891792, 49.016068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.732716, 44.839516, 48.788746>,  <32.638538, 44.752388, 48.409878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732716, 44.839516, 48.788746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639250, 0.699379, -0.319733,
		-0.732071, 0.680754, 0.025424,
		0.235441, 0.217815, 0.947166,
		32.803349, 44.904861, 49.072895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638504, 45.436245, 48.323563>,  <32.638538, 44.752388, 48.409878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638504, 45.436245, 48.323563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.834793, 45.371094, 48.665947>,  <32.952564, 45.332005, 48.871376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.834793, 45.371094, 48.665947>,  <32.638504, 45.436245, 48.323563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834793, 45.371094, 48.665947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728377, 0.615816, -0.300396,
		-0.478186, 0.770871, 0.420828,
		0.490719, -0.162876, 0.855959,
		32.982010, 45.322231, 48.922733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.919554, 44.002213, 55.819679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.051361, 43.681595, 55.620102>,  <32.130447, 43.489223, 55.500355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.051361, 43.681595, 55.620102>,  <31.919554, 44.002213, 55.819679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051361, 43.681595, 55.620102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885622, -0.445574, 0.130910,
		-0.327247, 0.398738, -0.856690,
		0.329520, -0.801543, -0.498944,
		32.150219, 43.441132, 55.470417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456287, 43.870487, 55.335278>,  <31.919554, 44.002213, 55.819679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456287, 43.870487, 55.335278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.638704, 43.518700, 55.389767>,  <31.748154, 43.307625, 55.422459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.638704, 43.518700, 55.389767>,  <31.456287, 43.870487, 55.335278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638704, 43.518700, 55.389767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888839, -0.442420, 0.119291,
		-0.044646, -0.175479, -0.983470,
		0.456040, -0.879472, 0.136220,
		31.775517, 43.254856, 55.430634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134428, 43.382824, 54.896717>,  <31.456287, 43.870487, 55.335278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134428, 43.382824, 54.896717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.297716, 43.160385, 55.186302>,  <31.395689, 43.026924, 55.360054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.297716, 43.160385, 55.186302>,  <31.134428, 43.382824, 54.896717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297716, 43.160385, 55.186302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828882, -0.558083, 0.038702,
		0.382507, -0.615876, -0.688756,
		0.408219, -0.556094, 0.723959,
		31.420181, 42.993557, 55.403488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895565, 42.620655, 54.762199>,  <31.134428, 43.382824, 54.896717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895565, 42.620655, 54.762199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.997881, 42.653015, 55.147537>,  <31.059271, 42.672432, 55.378738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.997881, 42.653015, 55.147537>,  <30.895565, 42.620655, 54.762199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997881, 42.653015, 55.147537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628620, -0.743134, 0.229322,
		0.734444, -0.664234, -0.139228,
		0.255789, 0.080902, 0.963341,
		31.074617, 42.677284, 55.436539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864914, 41.957680, 54.943676>,  <30.895565, 42.620655, 54.762199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864914, 41.957680, 54.943676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.856228, 42.164627, 55.285870>,  <30.851015, 42.288795, 55.491184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.856228, 42.164627, 55.285870>,  <30.864914, 41.957680, 54.943676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856228, 42.164627, 55.285870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550481, -0.720482, 0.421753,
		0.834565, -0.461770, 0.300450,
		-0.021716, 0.517372, 0.855485,
		30.849712, 42.319839, 55.542515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043230, 41.530712, 55.528175>,  <30.864914, 41.957680, 54.943676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043230, 41.530712, 55.528175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.816393, 41.824799, 55.676693>,  <30.680290, 42.001251, 55.765804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.816393, 41.824799, 55.676693>,  <31.043230, 41.530712, 55.528175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816393, 41.824799, 55.676693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670089, -0.673954, 0.311074,
		0.478943, -0.072392, 0.874856,
		-0.567093, 0.735218, 0.371294,
		30.646265, 42.045364, 55.788082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935783, 41.260941, 56.184708>,  <31.043230, 41.530712, 55.528175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935783, 41.260941, 56.184708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.655987, 41.543358, 56.140507>,  <30.488108, 41.712807, 56.113987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.655987, 41.543358, 56.140507>,  <30.935783, 41.260941, 56.184708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655987, 41.543358, 56.140507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696035, -0.638038, 0.329307,
		0.162001, 0.307261, 0.937735,
		-0.699494, 0.706044, -0.110501,
		30.446138, 41.755173, 56.107357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493778, 41.281536, 56.823509>,  <30.935783, 41.260941, 56.184708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493778, 41.281536, 56.823509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.257505, 41.461975, 56.555897>,  <30.115742, 41.570236, 56.395329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.257505, 41.461975, 56.555897>,  <30.493778, 41.281536, 56.823509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257505, 41.461975, 56.555897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779608, -0.532879, 0.329016,
		-0.208096, 0.715928, 0.666441,
		-0.590684, 0.451096, -0.669033,
		30.080299, 41.597305, 56.355186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941172, 41.595211, 57.216301>,  <30.493778, 41.281536, 56.823509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941172, 41.595211, 57.216301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.806431, 41.550430, 56.842350>,  <29.725586, 41.523560, 56.617981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.806431, 41.550430, 56.842350>,  <29.941172, 41.595211, 57.216301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806431, 41.550430, 56.842350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686312, -0.650557, 0.325196,
		-0.644599, 0.751160, 0.142305,
		-0.336852, -0.111956, -0.934878,
		29.705376, 41.516842, 56.561886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171095, 41.702873, 57.248283>,  <29.941172, 41.595211, 57.216301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171095, 41.702873, 57.248283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.235474, 41.489555, 56.916092>,  <29.274101, 41.361565, 56.716778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.235474, 41.489555, 56.916092>,  <29.171095, 41.702873, 57.248283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235474, 41.489555, 56.916092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769151, -0.595055, 0.233059,
		-0.618468, 0.601251, -0.505959,
		0.160947, -0.533298, -0.830475,
		29.283758, 41.329567, 56.666950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497656, 41.521992, 57.094826>,  <29.171095, 41.702873, 57.248283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497656, 41.521992, 57.094826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.739670, 41.284805, 56.882286>,  <28.884878, 41.142494, 56.754765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.739670, 41.284805, 56.882286>,  <28.497656, 41.521992, 57.094826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739670, 41.284805, 56.882286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599662, -0.778379, 0.185825,
		-0.523775, 0.206197, -0.826524,
		0.605033, -0.592965, -0.531344,
		28.921179, 41.106915, 56.722881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025377, 41.244617, 56.540779>,  <28.497656, 41.521992, 57.094826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025377, 41.244617, 56.540779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.322998, 40.985153, 56.604805>,  <28.501572, 40.829475, 56.643223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.322998, 40.985153, 56.604805>,  <28.025377, 41.244617, 56.540779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322998, 40.985153, 56.604805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656498, -0.754310, -0.005142,
		0.124077, -0.101259, -0.987093,
		0.744053, -0.648662, 0.160069,
		28.546213, 40.790554, 56.652824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061857, 40.629654, 55.988853>,  <28.025377, 41.244617, 56.540779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061857, 40.629654, 55.988853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.168087, 40.564964, 56.369026>,  <28.231825, 40.526150, 56.597130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.168087, 40.564964, 56.369026>,  <28.061857, 40.629654, 55.988853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168087, 40.564964, 56.369026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688863, -0.721532, 0.069713,
		0.674492, -0.673230, -0.303022,
		0.265573, -0.161720, 0.950430,
		28.247759, 40.516449, 56.654156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191643, 39.895962, 55.996796>,  <28.061857, 40.629654, 55.988853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191643, 39.895962, 55.996796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.081379, 40.068832, 56.340248>,  <28.015221, 40.172554, 56.546318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.081379, 40.068832, 56.340248>,  <28.191643, 39.895962, 55.996796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081379, 40.068832, 56.340248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646676, -0.744260, 0.166995,
		0.711212, -0.509220, 0.484637,
		-0.275659, 0.432172, 0.858626,
		27.998682, 40.198483, 56.597836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702211, 39.501926, 55.547897>,  <28.191643, 39.895962, 55.996796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702211, 39.501926, 55.547897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.652401, 39.191872, 55.300137>,  <27.622515, 39.005840, 55.151482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.652401, 39.191872, 55.300137>,  <27.702211, 39.501926, 55.547897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652401, 39.191872, 55.300137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580606, 0.449297, -0.678991,
		0.804605, -0.444178, 0.394102,
		-0.124524, -0.775138, -0.619399,
		27.615044, 38.959332, 55.114315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344416, 39.300091, 55.289196>,  <27.702211, 39.501926, 55.547897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344416, 39.300091, 55.289196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.058426, 39.196518, 55.029419>,  <27.886833, 39.134377, 54.873554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.058426, 39.196518, 55.029419>,  <28.344416, 39.300091, 55.289196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058426, 39.196518, 55.029419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501388, 0.457489, -0.734380,
		0.487264, -0.850682, -0.197266,
		-0.714971, -0.258930, -0.649440,
		27.843935, 39.118839, 54.834587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699703, 38.905502, 54.743912>,  <28.344416, 39.300091, 55.289196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699703, 38.905502, 54.743912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.350021, 39.043068, 54.606804>,  <28.140213, 39.125607, 54.524540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.350021, 39.043068, 54.606804>,  <28.699703, 38.905502, 54.743912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350021, 39.043068, 54.606804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451878, 0.317916, -0.833508,
		-0.177685, -0.883545, -0.433332,
		-0.874205, 0.343915, -0.342766,
		28.087759, 39.146244, 54.503975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739487, 38.654194, 54.088322>,  <28.699703, 38.905502, 54.743912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739487, 38.654194, 54.088322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.444969, 38.922318, 54.051323>,  <28.268259, 39.083191, 54.029125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.444969, 38.922318, 54.051323>,  <28.739487, 38.654194, 54.088322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444969, 38.922318, 54.051323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422780, 0.348992, -0.836338,
		-0.528325, -0.654897, -0.540355,
		-0.736295, 0.670310, -0.092496,
		28.224081, 39.123409, 54.023575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543741, 38.595745, 53.450462>,  <28.739487, 38.654194, 54.088322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543741, 38.595745, 53.450462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.424009, 38.964111, 53.550320>,  <28.352171, 39.185131, 53.610233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.424009, 38.964111, 53.550320>,  <28.543741, 38.595745, 53.450462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424009, 38.964111, 53.550320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452272, 0.367318, -0.812729,
		-0.840151, -0.130366, -0.526452,
		-0.299328, 0.920914, 0.249641,
		28.334211, 39.240387, 53.625214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191954, 38.901119, 52.864105>,  <28.543741, 38.595745, 53.450462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191954, 38.901119, 52.864105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.302355, 39.216217, 53.084389>,  <28.368595, 39.405277, 53.216560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.302355, 39.216217, 53.084389>,  <28.191954, 38.901119, 52.864105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302355, 39.216217, 53.084389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371508, 0.441000, -0.817007,
		-0.886456, 0.430088, -0.170937,
		0.276002, 0.787746, 0.550708,
		28.385155, 39.452541, 53.249599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891741, 39.480156, 52.527679>,  <28.191954, 38.901119, 52.864105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891741, 39.480156, 52.527679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.188236, 39.620636, 52.756493>,  <28.366135, 39.704922, 52.893780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.188236, 39.620636, 52.756493>,  <27.891741, 39.480156, 52.527679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188236, 39.620636, 52.756493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325659, 0.557034, -0.763976,
		-0.586949, 0.752578, 0.298526,
		0.741240, 0.351197, 0.572035,
		28.410608, 39.725994, 52.928104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015459, 40.114300, 52.255875>,  <27.891741, 39.480156, 52.527679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015459, 40.114300, 52.255875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.344650, 40.049629, 52.473709>,  <28.542166, 40.010826, 52.604408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.344650, 40.049629, 52.473709>,  <28.015459, 40.114300, 52.255875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344650, 40.049629, 52.473709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539221, 0.523959, -0.659324,
		-0.178743, 0.836258, 0.518385,
		0.822978, -0.161674, 0.544582,
		28.591543, 40.001125, 52.637085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286957, 40.695782, 52.309647>,  <28.015459, 40.114300, 52.255875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286957, 40.695782, 52.309647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.594749, 40.444099, 52.353462>,  <28.779427, 40.293091, 52.379753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.594749, 40.444099, 52.353462>,  <28.286957, 40.695782, 52.309647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594749, 40.444099, 52.353462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527549, 0.529518, -0.664306,
		0.359981, 0.568959, 0.739391,
		0.769484, -0.629202, 0.109538,
		28.825594, 40.255337, 52.386322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835060, 41.104935, 52.282001>,  <28.286957, 40.695782, 52.309647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835060, 41.104935, 52.282001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.004181, 40.745880, 52.232224>,  <29.105654, 40.530449, 52.202358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.004181, 40.745880, 52.232224>,  <28.835060, 41.104935, 52.282001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004181, 40.745880, 52.232224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568798, 0.369765, -0.734671,
		0.705483, 0.239837, 0.666912,
		0.422802, -0.897637, -0.124444,
		29.131021, 40.476589, 52.194889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585245, 41.181664, 52.296124>,  <28.835060, 41.104935, 52.282001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585245, 41.181664, 52.296124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.536779, 40.831039, 52.109806>,  <29.507700, 40.620667, 51.998016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.536779, 40.831039, 52.109806>,  <29.585245, 41.181664, 52.296124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536779, 40.831039, 52.109806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468707, 0.363120, -0.805269,
		0.875005, -0.315888, 0.366853,
		-0.121163, -0.876561, -0.465790,
		29.500431, 40.568069, 51.970070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346985, 41.082279, 52.136120>,  <29.585245, 41.181664, 52.296124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346985, 41.082279, 52.136120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.153795, 40.819244, 51.904842>,  <30.037882, 40.661423, 51.766075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.153795, 40.819244, 51.904842>,  <30.346985, 41.082279, 52.136120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153795, 40.819244, 51.904842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552068, 0.283865, -0.783991,
		0.679675, -0.697850, 0.225936,
		-0.482973, -0.657591, -0.578197,
		30.008904, 40.621967, 51.731384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892771, 40.689552, 51.667797>,  <30.346985, 41.082279, 52.136120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892771, 40.689552, 51.667797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.532497, 40.681664, 51.494186>,  <30.316334, 40.676929, 51.390018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.532497, 40.681664, 51.494186>,  <30.892771, 40.689552, 51.667797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532497, 40.681664, 51.494186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410595, 0.288018, -0.865134,
		0.142068, -0.957422, -0.251317,
		-0.900682, -0.019719, -0.434031,
		30.262293, 40.675747, 51.363976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018059, 40.340660, 51.013432>,  <30.892771, 40.689552, 51.667797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018059, 40.340660, 51.013432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.694937, 40.576370, 51.019188>,  <30.501064, 40.717796, 51.022640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.694937, 40.576370, 51.019188>,  <31.018059, 40.340660, 51.013432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694937, 40.576370, 51.019188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344908, 0.492326, -0.799158,
		-0.478009, -0.640599, -0.600949,
		-0.807803, 0.589277, 0.014388,
		30.452597, 40.753155, 51.023506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973251, 39.814659, 50.476234>,  <31.018059, 40.340660, 51.013432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973251, 39.814659, 50.476234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.238619, 39.519165, 50.428654>,  <31.397839, 39.341869, 50.400105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.238619, 39.519165, 50.428654>,  <30.973251, 39.814659, 50.476234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238619, 39.519165, 50.428654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576757, -0.606142, 0.547670,
		-0.476685, -0.294728, -0.828195,
		0.663418, -0.738734, -0.118952,
		31.437645, 39.297546, 50.392967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657438, 39.243454, 50.417625>,  <30.973251, 39.814659, 50.476234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657438, 39.243454, 50.417625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.014683, 39.096634, 50.521645>,  <31.229029, 39.008541, 50.584057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.014683, 39.096634, 50.521645>,  <30.657438, 39.243454, 50.417625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014683, 39.096634, 50.521645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438327, -0.580177, 0.686487,
		-0.101100, -0.727096, -0.679051,
		0.893112, -0.367050, 0.260050,
		31.282616, 38.986519, 50.599659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559956, 38.518547, 50.247459>,  <30.657438, 39.243454, 50.417625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559956, 38.518547, 50.247459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.868067, 38.552902, 50.500217>,  <31.052933, 38.573517, 50.651875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.868067, 38.552902, 50.500217>,  <30.559956, 38.518547, 50.247459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868067, 38.552902, 50.500217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357731, -0.762104, 0.539654,
		0.527922, -0.641733, -0.556306,
		0.770278, 0.085888, 0.631899,
		31.099150, 38.578667, 50.689789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663010, 37.861588, 50.469669>,  <30.559956, 38.518547, 50.247459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663010, 37.861588, 50.469669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.817041, 38.106071, 50.746262>,  <30.909460, 38.252762, 50.912216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.817041, 38.106071, 50.746262>,  <30.663010, 37.861588, 50.469669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817041, 38.106071, 50.746262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445036, -0.533404, 0.719321,
		0.808490, -0.584728, 0.066606,
		0.385080, 0.611206, 0.691477,
		30.932566, 38.289433, 50.953705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024012, 37.394341, 50.994930>,  <30.663010, 37.861588, 50.469669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024012, 37.394341, 50.994930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.978422, 37.733269, 51.202415>,  <30.951069, 37.936626, 51.326908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.978422, 37.733269, 51.202415>,  <31.024012, 37.394341, 50.994930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978422, 37.733269, 51.202415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351045, -0.522784, 0.776829,
		0.929396, -0.093554, 0.357030,
		-0.113975, 0.847316, 0.518715,
		30.944229, 37.987465, 51.358028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237715, 37.200413, 51.657764>,  <31.024012, 37.394341, 50.994930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237715, 37.200413, 51.657764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.055296, 37.553078, 51.706245>,  <30.945845, 37.764679, 51.735332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.055296, 37.553078, 51.706245>,  <31.237715, 37.200413, 51.657764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055296, 37.553078, 51.706245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370228, -0.311793, 0.875052,
		0.809291, 0.354193, 0.468609,
		-0.456046, 0.881665, 0.121199,
		30.918482, 37.817577, 51.742603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549147, 37.446136, 52.268383>,  <31.237715, 37.200413, 51.657764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549147, 37.446136, 52.268383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.182604, 37.596466, 52.213184>,  <30.962679, 37.686665, 52.180065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.182604, 37.596466, 52.213184>,  <31.549147, 37.446136, 52.268383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182604, 37.596466, 52.213184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309509, -0.446373, 0.839617,
		0.253956, 0.812099, 0.525359,
		-0.916357, 0.375829, -0.137993,
		30.907696, 37.709213, 52.171787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004494, 37.440529, 53.024887>,  <31.549147, 37.446136, 52.268383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004494, 37.440529, 53.024887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.200676, 37.098473, 53.092056>,  <32.318386, 36.893238, 53.132359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.200676, 37.098473, 53.092056>,  <32.004494, 37.440529, 53.024887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200676, 37.098473, 53.092056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813530, 0.380180, -0.440035,
		0.312449, 0.352427, 0.882140,
		0.490453, -0.855136, 0.167923,
		32.347813, 36.841930, 53.142433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682251, 37.650143, 53.208069>,  <32.004494, 37.440529, 53.024887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682251, 37.650143, 53.208069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.714043, 37.265457, 53.103157>,  <32.733120, 37.034645, 53.040211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.714043, 37.265457, 53.103157>,  <32.682251, 37.650143, 53.208069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714043, 37.265457, 53.103157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738898, 0.233450, -0.632084,
		0.669113, -0.143560, 0.729163,
		0.079481, -0.961713, -0.262281,
		32.737888, 36.976944, 53.024471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372391, 37.569256, 53.200745>,  <32.682251, 37.650143, 53.208069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372391, 37.569256, 53.200745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.204147, 37.281616, 52.979481>,  <33.103203, 37.109032, 52.846722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.204147, 37.281616, 52.979481>,  <33.372391, 37.569256, 53.200745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204147, 37.281616, 52.979481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601946, 0.234984, -0.763180,
		0.678785, -0.653972, 0.334022,
		-0.420609, -0.719098, -0.553160,
		33.077965, 37.065887, 52.813534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836052, 37.232857, 52.939953>,  <33.372391, 37.569256, 53.200745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836052, 37.232857, 52.939953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.539169, 37.155243, 52.683365>,  <33.361042, 37.108673, 52.529411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.539169, 37.155243, 52.683365>,  <33.836052, 37.232857, 52.939953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539169, 37.155243, 52.683365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577444, 0.300639, -0.759062,
		0.340133, -0.933792, -0.111093,
		-0.742205, -0.194033, -0.641470,
		33.316509, 37.097034, 52.490925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143814, 36.705452, 52.518967>,  <33.836052, 37.232857, 52.939953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143814, 36.705452, 52.518967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.840576, 36.889191, 52.333801>,  <33.658634, 36.999432, 52.222702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.840576, 36.889191, 52.333801>,  <34.143814, 36.705452, 52.518967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840576, 36.889191, 52.333801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631016, 0.337471, -0.698522,
		-0.164640, -0.821655, -0.545689,
		-0.758098, 0.459343, -0.462916,
		33.613148, 37.026993, 52.194927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221333, 36.619816, 51.712067>,  <34.143814, 36.705452, 52.518967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221333, 36.619816, 51.712067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.945282, 36.909279, 51.714867>,  <33.779652, 37.082954, 51.716549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.945282, 36.909279, 51.714867>,  <34.221333, 36.619816, 51.712067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945282, 36.909279, 51.714867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537550, 0.519078, -0.664529,
		-0.484525, -0.454844, -0.747230,
		-0.690128, 0.723654, 0.007005,
		33.738243, 37.126373, 51.716969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043747, 36.763569, 51.005386>,  <34.221333, 36.619816, 51.712067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043747, 36.763569, 51.005386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.935062, 37.099480, 51.193405>,  <33.869850, 37.301025, 51.306217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.935062, 37.099480, 51.193405>,  <34.043747, 36.763569, 51.005386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935062, 37.099480, 51.193405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403699, 0.542830, -0.736452,
		-0.873613, -0.010344, -0.486511,
		-0.271710, 0.839779, 0.470048,
		33.853550, 37.351414, 51.334419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.652596, 38.451130, 57.238476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.351822, 38.633888, 57.048386>,  <31.171358, 38.743542, 56.934330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.351822, 38.633888, 57.048386>,  <31.652596, 38.451130, 57.238476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351822, 38.633888, 57.048386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639628, 0.680148, -0.358154,
		0.159588, -0.573279, -0.803668,
		-0.751935, 0.456892, -0.475229,
		31.126242, 38.770954, 56.905815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875494, 38.420265, 56.576595>,  <31.652596, 38.451130, 57.238476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875494, 38.420265, 56.576595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.638714, 38.741753, 56.600670>,  <31.496645, 38.934647, 56.615116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.638714, 38.741753, 56.600670>,  <31.875494, 38.420265, 56.576595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638714, 38.741753, 56.600670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677688, 0.536764, -0.502617,
		-0.436272, -0.256736, -0.862411,
		-0.591951, 0.803723, 0.060188,
		31.461128, 38.982868, 56.618725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798092, 38.614429, 55.851158>,  <31.875494, 38.420265, 56.576595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798092, 38.614429, 55.851158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.729631, 38.905426, 56.116928>,  <31.688555, 39.080025, 56.276390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.729631, 38.905426, 56.116928>,  <31.798092, 38.614429, 55.851158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729631, 38.905426, 56.116928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632361, 0.598255, -0.492149,
		-0.755531, 0.335927, -0.562429,
		-0.171150, 0.727492, 0.664427,
		31.678286, 39.123672, 56.316257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609844, 39.188026, 55.455513>,  <31.798092, 38.614429, 55.851158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609844, 39.188026, 55.455513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.737123, 39.326286, 55.808620>,  <31.813490, 39.409245, 56.020485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.737123, 39.326286, 55.808620>,  <31.609844, 39.188026, 55.455513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737123, 39.326286, 55.808620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441460, 0.770020, -0.460632,
		-0.838966, 0.536278, 0.092427,
		0.318197, 0.345651, 0.882766,
		31.832582, 39.429981, 56.073452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556417, 39.860744, 55.409992>,  <31.609844, 39.188026, 55.455513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556417, 39.860744, 55.409992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.817371, 39.797363, 55.706448>,  <31.973944, 39.759335, 55.884323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.817371, 39.797363, 55.706448>,  <31.556417, 39.860744, 55.409992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817371, 39.797363, 55.706448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533494, 0.790593, -0.300578,
		-0.538313, 0.591486, 0.600303,
		0.652383, -0.158453, 0.741141,
		32.013084, 39.749828, 55.928791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749016, 40.579197, 55.562801>,  <31.556417, 39.860744, 55.409992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749016, 40.579197, 55.562801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.037849, 40.349792, 55.717556>,  <32.211151, 40.212151, 55.810410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.037849, 40.349792, 55.717556>,  <31.749016, 40.579197, 55.562801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037849, 40.349792, 55.717556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675325, 0.705694, -0.214320,
		-0.150106, 0.416029, 0.896877,
		0.722084, -0.573512, 0.386884,
		32.254475, 40.177738, 55.833622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110302, 41.081207, 55.868729>,  <31.749016, 40.579197, 55.562801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110302, 41.081207, 55.868729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.369923, 40.777351, 55.852386>,  <32.525696, 40.595036, 55.842579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.369923, 40.777351, 55.852386>,  <32.110302, 41.081207, 55.868729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369923, 40.777351, 55.852386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736854, 0.641120, -0.214503,
		0.189141, 0.109117, 0.975868,
		0.649054, -0.759644, -0.040858,
		32.564640, 40.549458, 55.840130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675140, 41.379768, 56.141846>,  <32.110302, 41.081207, 55.868729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675140, 41.379768, 56.141846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.825943, 41.058640, 55.957092>,  <32.916424, 40.865963, 55.846241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.825943, 41.058640, 55.957092>,  <32.675140, 41.379768, 56.141846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825943, 41.058640, 55.957092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889369, 0.453035, -0.061501,
		0.258624, -0.387599, 0.884806,
		0.377010, -0.802824, -0.461884,
		32.939045, 40.817791, 55.818527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237648, 41.203411, 56.522900>,  <32.675140, 41.379768, 56.141846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237648, 41.203411, 56.522900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.284691, 41.039917, 56.160881>,  <33.312916, 40.941822, 55.943672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.284691, 41.039917, 56.160881>,  <33.237648, 41.203411, 56.522900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284691, 41.039917, 56.160881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910360, 0.408489, -0.066187,
		0.396754, -0.816132, 0.420137,
		0.117604, -0.408736, -0.905044,
		33.319973, 40.917297, 55.889366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886787, 40.986668, 56.615639>,  <33.237648, 41.203411, 56.522900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886787, 40.986668, 56.615639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.818398, 40.967979, 56.221973>,  <33.777363, 40.956768, 55.985775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.818398, 40.967979, 56.221973>,  <33.886787, 40.986668, 56.615639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818398, 40.967979, 56.221973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967179, 0.182604, -0.176693,
		0.187968, -0.982076, 0.013965,
		-0.170975, -0.046719, -0.984167,
		33.767105, 40.953964, 55.926723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463402, 40.658211, 56.202480>,  <33.886787, 40.986668, 56.615639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463402, 40.658211, 56.202480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.293446, 40.869194, 55.908199>,  <34.191471, 40.995785, 55.731632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.293446, 40.869194, 55.908199>,  <34.463402, 40.658211, 56.202480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293446, 40.869194, 55.908199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905225, 0.241984, -0.349301,
		-0.006215, -0.814388, -0.580287,
		-0.424887, 0.527461, -0.735701,
		34.165981, 41.027431, 55.687489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867168, 40.499432, 55.598804>,  <34.463402, 40.658211, 56.202480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867168, 40.499432, 55.598804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.701645, 40.854439, 55.517735>,  <34.602329, 41.067444, 55.469093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.701645, 40.854439, 55.517735>,  <34.867168, 40.499432, 55.598804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701645, 40.854439, 55.517735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814663, 0.261651, -0.517554,
		-0.406308, -0.379280, -0.831300,
		-0.413809, 0.887516, -0.202675,
		34.577503, 41.120693, 55.456932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023487, 39.952724, 55.232559>,  <34.867168, 40.499432, 55.598804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023487, 39.952724, 55.232559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.074585, 39.647568, 54.979050>,  <35.105244, 39.464474, 54.826942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.074585, 39.647568, 54.979050>,  <35.023487, 39.952724, 55.232559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074585, 39.647568, 54.979050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415671, -0.621364, 0.664172,
		-0.900500, 0.178598, -0.396489,
		0.127744, -0.762896, -0.633776,
		35.112907, 39.418697, 54.788918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482697, 39.543839, 55.442188>,  <35.023487, 39.952724, 55.232559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482697, 39.543839, 55.442188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.718323, 39.314728, 55.214180>,  <34.859699, 39.177261, 55.077374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.718323, 39.314728, 55.214180>,  <34.482697, 39.543839, 55.442188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718323, 39.314728, 55.214180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329169, -0.814304, 0.478077,
		-0.738005, -0.093984, -0.668218,
		0.589064, -0.572780, -0.570023,
		34.895042, 39.142895, 55.043175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017590, 39.001575, 55.077164>,  <34.482697, 39.543839, 55.442188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017590, 39.001575, 55.077164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.391697, 38.865295, 55.115532>,  <34.616161, 38.783527, 55.138554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.391697, 38.865295, 55.115532>,  <34.017590, 39.001575, 55.077164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391697, 38.865295, 55.115532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350428, -0.853185, 0.386362,
		-0.049794, -0.394965, -0.917346,
		0.935266, -0.340702, 0.095923,
		34.672276, 38.763084, 55.144310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959846, 38.359989, 54.781338>,  <34.017590, 39.001575, 55.077164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959846, 38.359989, 54.781338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.278568, 38.368233, 55.022896>,  <34.469799, 38.373180, 55.167831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.278568, 38.368233, 55.022896>,  <33.959846, 38.359989, 54.781338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278568, 38.368233, 55.022896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317719, -0.835814, 0.447738,
		0.513969, -0.548626, -0.659428,
		0.796800, 0.020611, 0.603891,
		34.517609, 38.374416, 55.204063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142784, 37.729073, 54.853134>,  <33.959846, 38.359989, 54.781338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142784, 37.729073, 54.853134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.328362, 37.879128, 55.174141>,  <34.439709, 37.969162, 55.366745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.328362, 37.879128, 55.174141>,  <34.142784, 37.729073, 54.853134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328362, 37.879128, 55.174141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222974, -0.827295, 0.515621,
		0.857346, -0.418158, -0.300170,
		0.463940, 0.375136, 0.802516,
		34.467545, 37.991669, 55.414894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710358, 37.288670, 54.865112>,  <34.142784, 37.729073, 54.853134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710358, 37.288670, 54.865112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.640793, 37.467613, 55.216026>,  <34.599052, 37.574978, 55.426575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.640793, 37.467613, 55.216026>,  <34.710358, 37.288670, 54.865112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640793, 37.467613, 55.216026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050369, -0.893734, 0.445761,
		0.983472, 0.033338, 0.177968,
		-0.173916, 0.447357, 0.877283,
		34.588619, 37.601822, 55.479210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131493, 36.963688, 55.382107>,  <34.710358, 37.288670, 54.865112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131493, 36.963688, 55.382107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.840546, 37.143829, 55.589226>,  <34.665977, 37.251915, 55.713497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.840546, 37.143829, 55.589226>,  <35.131493, 36.963688, 55.382107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840546, 37.143829, 55.589226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222314, -0.868485, 0.443070,
		0.649236, 0.207163, 0.731831,
		-0.727372, 0.450353, 0.517796,
		34.622334, 37.278934, 55.744564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213989, 36.677284, 56.026299>,  <35.131493, 36.963688, 55.382107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213989, 36.677284, 56.026299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.844589, 36.830536, 56.033836>,  <34.622948, 36.922485, 56.038357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.844589, 36.830536, 56.033836>,  <35.213989, 36.677284, 56.026299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844589, 36.830536, 56.033836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353416, -0.868932, 0.346489,
		0.149121, 0.313325, 0.937865,
		-0.923505, 0.383125, 0.018842,
		34.567539, 36.945473, 56.039490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935291, 36.638550, 56.644470>,  <35.213989, 36.677284, 56.026299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935291, 36.638550, 56.644470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.605194, 36.650970, 56.418903>,  <34.407135, 36.658421, 56.283562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.605194, 36.650970, 56.418903>,  <34.935291, 36.638550, 56.644470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605194, 36.650970, 56.418903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344409, -0.819011, 0.458916,
		-0.447607, 0.572937, 0.686579,
		-0.825246, 0.031050, -0.563919,
		34.357620, 36.660286, 56.249729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397743, 36.479649, 57.080845>,  <34.935291, 36.638550, 56.644470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397743, 36.479649, 57.080845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.240089, 36.416885, 56.718620>,  <34.145496, 36.379227, 56.501286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.240089, 36.416885, 56.718620>,  <34.397743, 36.479649, 57.080845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240089, 36.416885, 56.718620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533669, -0.763113, 0.364495,
		-0.748236, 0.626929, 0.217031,
		-0.394132, -0.156906, -0.905561,
		34.121849, 36.369812, 56.446953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584244, 36.570641, 57.113411>,  <34.397743, 36.479649, 57.080845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584244, 36.570641, 57.113411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.696350, 36.343933, 56.803516>,  <33.763615, 36.207909, 56.617580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.696350, 36.343933, 56.803516>,  <33.584244, 36.570641, 57.113411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696350, 36.343933, 56.803516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654733, -0.703082, 0.277490,
		-0.701964, 0.429448, -0.568173,
		0.280305, -0.566790, -0.774712,
		33.780430, 36.173901, 56.571095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932281, 36.290905, 56.883026>,  <33.584244, 36.570641, 57.113411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932281, 36.290905, 56.883026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.185799, 36.062889, 56.673889>,  <33.337910, 35.926079, 56.548409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.185799, 36.062889, 56.673889>,  <32.932281, 36.290905, 56.883026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185799, 36.062889, 56.673889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522430, -0.813938, 0.254110,
		-0.570410, 0.112093, -0.813675,
		0.633798, -0.570035, -0.522839,
		33.375938, 35.891880, 56.517036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550655, 35.969978, 56.409649>,  <32.932281, 36.290905, 56.883026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550655, 35.969978, 56.409649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.860405, 35.726006, 56.476974>,  <33.046253, 35.579624, 56.517368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.860405, 35.726006, 56.476974>,  <32.550655, 35.969978, 56.409649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860405, 35.726006, 56.476974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631281, -0.762741, 0.140395,
		0.042750, -0.214972, -0.975684,
		0.774376, -0.609929, 0.168315,
		33.092716, 35.543026, 56.527470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308399, 35.372398, 56.236694>,  <32.550655, 35.969978, 56.409649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308399, 35.372398, 56.236694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.622963, 35.261009, 56.457241>,  <32.811703, 35.194176, 56.589569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.622963, 35.261009, 56.457241>,  <32.308399, 35.372398, 56.236694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622963, 35.261009, 56.457241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463498, -0.856071, 0.228718,
		0.408317, -0.435425, -0.802298,
		0.786414, -0.278474, 0.551367,
		32.858887, 35.177467, 56.622650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695383, 35.646454, 55.789078>,  <32.308399, 35.372398, 56.236694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695383, 35.646454, 55.789078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.401367, 35.586380, 55.524605>,  <31.224958, 35.550335, 55.365921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.401367, 35.586380, 55.524605>,  <31.695383, 35.646454, 55.789078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401367, 35.586380, 55.524605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660736, 0.060146, -0.748205,
		0.152137, -0.986827, 0.055023,
		-0.735039, -0.150186, -0.661182,
		31.180855, 35.541325, 55.326252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080112, 35.391304, 55.215786>,  <31.695383, 35.646454, 55.789078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080112, 35.391304, 55.215786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.723099, 35.507195, 55.077538>,  <31.508892, 35.576729, 54.994591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.723099, 35.507195, 55.077538>,  <32.080112, 35.391304, 55.215786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723099, 35.507195, 55.077538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414469, 0.224850, -0.881849,
		-0.177779, -0.930324, -0.320766,
		-0.892530, 0.289722, -0.345617,
		31.455339, 35.594112, 54.973854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936661, 35.034859, 54.608829>,  <32.080112, 35.391304, 55.215786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936661, 35.034859, 54.608829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.706701, 35.360809, 54.579231>,  <31.568726, 35.556377, 54.561470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.706701, 35.360809, 54.579231>,  <31.936661, 35.034859, 54.608829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706701, 35.360809, 54.579231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391557, 0.194577, -0.899346,
		-0.718455, -0.546005, -0.430931,
		-0.574897, 0.814873, -0.073997,
		31.534233, 35.605270, 54.557034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715416, 35.115955, 53.941708>,  <31.936661, 35.034859, 54.608829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715416, 35.115955, 53.941708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.657177, 35.488365, 54.075573>,  <31.622234, 35.711811, 54.155891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.657177, 35.488365, 54.075573>,  <31.715416, 35.115955, 53.941708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657177, 35.488365, 54.075573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456848, 0.363308, -0.811971,
		-0.877549, 0.034668, -0.478233,
		-0.145597, 0.931024, 0.334659,
		31.613499, 35.767673, 54.175972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470264, 35.491360, 53.365376>,  <31.715416, 35.115955, 53.941708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470264, 35.491360, 53.365376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.597542, 35.766953, 53.625854>,  <31.673908, 35.932308, 53.782143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.597542, 35.766953, 53.625854>,  <31.470264, 35.491360, 53.365376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597542, 35.766953, 53.625854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462979, 0.486482, -0.740936,
		-0.827287, 0.537251, -0.164189,
		0.318194, 0.688982, 0.651196,
		31.693001, 35.973648, 53.821213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504885, 36.052998, 52.971230>,  <31.470264, 35.491360, 53.365376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504885, 36.052998, 52.971230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.720806, 36.178932, 53.283508>,  <31.850359, 36.254494, 53.470875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.720806, 36.178932, 53.283508>,  <31.504885, 36.052998, 52.971230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720806, 36.178932, 53.283508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443081, 0.682295, -0.581509,
		-0.715747, 0.659813, 0.228807,
		0.539801, 0.314833, 0.780701,
		31.882746, 36.273384, 53.517719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507425, 36.788197, 52.851418>,  <31.504885, 36.052998, 52.971230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507425, 36.788197, 52.851418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.802414, 36.670799, 53.094727>,  <31.979406, 36.600361, 53.240711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.802414, 36.670799, 53.094727>,  <31.507425, 36.788197, 52.851418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802414, 36.670799, 53.094727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657593, 0.517378, -0.547624,
		-0.153982, 0.803853, 0.574552,
		0.737470, -0.293497, 0.608275,
		32.023655, 36.582748, 53.277210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297035, 37.519142, 53.007133>,  <31.507425, 36.788197, 52.851418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297035, 37.519142, 53.007133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.974337, 37.541710, 52.771854>,  <30.780718, 37.555252, 52.630688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.974337, 37.541710, 52.771854>,  <31.297035, 37.519142, 53.007133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974337, 37.541710, 52.771854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557893, -0.400749, 0.726743,
		-0.194718, 0.914449, 0.354778,
		-0.806747, 0.056418, -0.588197,
		30.732313, 37.558636, 52.595394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861563, 38.046902, 53.245663>,  <31.297035, 37.519142, 53.007133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861563, 38.046902, 53.245663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.600252, 37.836342, 53.027992>,  <30.443466, 37.710007, 52.897388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.600252, 37.836342, 53.027992>,  <30.861563, 38.046902, 53.245663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600252, 37.836342, 53.027992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635952, -0.008503, 0.771682,
		-0.410844, 0.850192, -0.329213,
		-0.653278, -0.526404, -0.544175,
		30.404268, 37.678421, 52.864738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224060, 38.349346, 53.389088>,  <30.861563, 38.046902, 53.245663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224060, 38.349346, 53.389088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115448, 37.998512, 53.230598>,  <30.050282, 37.788010, 53.135506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115448, 37.998512, 53.230598>,  <30.224060, 38.349346, 53.389088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115448, 37.998512, 53.230598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642405, -0.141383, 0.753211,
		-0.716650, 0.459053, -0.525055,
		-0.271530, -0.877087, -0.396220,
		30.033989, 37.735386, 53.111732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498293, 38.416332, 53.294292>,  <30.224060, 38.349346, 53.389088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498293, 38.416332, 53.294292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.605957, 38.032036, 53.321190>,  <29.670555, 37.801456, 53.337330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.605957, 38.032036, 53.321190>,  <29.498293, 38.416332, 53.294292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605957, 38.032036, 53.321190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569896, -0.102596, 0.815287,
		-0.776384, -0.257767, -0.575139,
		0.269161, -0.960745, 0.067246,
		29.686705, 37.743813, 53.341362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825363, 37.932312, 53.401897>,  <29.498293, 38.416332, 53.294292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825363, 37.932312, 53.401897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139662, 37.724045, 53.535465>,  <29.328241, 37.599083, 53.615604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139662, 37.724045, 53.535465>,  <28.825363, 37.932312, 53.401897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139662, 37.724045, 53.535465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509604, -0.238949, 0.826563,
		-0.350578, -0.819637, -0.453090,
		0.785747, -0.520672, 0.333920,
		29.375385, 37.567844, 53.635643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494175, 37.338856, 53.727707>,  <28.825363, 37.932312, 53.401897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494175, 37.338856, 53.727707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.874214, 37.357635, 53.851067>,  <29.102238, 37.368904, 53.925083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.874214, 37.357635, 53.851067>,  <28.494175, 37.338856, 53.727707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874214, 37.357635, 53.851067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285136, -0.270310, 0.919581,
		0.126540, -0.961628, -0.243433,
		0.950097, 0.046952, 0.308400,
		29.159243, 37.371719, 53.943588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665680, 36.639362, 53.923397>,  <28.494175, 37.338856, 53.727707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665680, 36.639362, 53.923397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.892117, 36.910812, 54.110592>,  <29.027979, 37.073681, 54.222908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.892117, 36.910812, 54.110592>,  <28.665680, 36.639362, 53.923397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892117, 36.910812, 54.110592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082352, -0.518317, 0.851214,
		0.820220, -0.520404, -0.237528,
		0.566090, 0.678621, 0.467990,
		29.061943, 37.114399, 54.250988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101093, 36.224152, 54.364868>,  <28.665680, 36.639362, 53.923397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101093, 36.224152, 54.364868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.115128, 36.591164, 54.523315>,  <29.123549, 36.811371, 54.618385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.115128, 36.591164, 54.523315>,  <29.101093, 36.224152, 54.364868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115128, 36.591164, 54.523315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223844, -0.379080, 0.897882,
		0.973993, -0.120173, 0.192082,
		0.035087, 0.917527, 0.396122,
		29.125654, 36.866421, 54.642151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457045, 36.182926, 54.957157>,  <29.101093, 36.224152, 54.364868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457045, 36.182926, 54.957157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.242626, 36.513359, 55.026714>,  <29.113976, 36.711620, 55.068447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.242626, 36.513359, 55.026714>,  <29.457045, 36.182926, 54.957157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242626, 36.513359, 55.026714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294307, -0.375936, 0.878667,
		0.791226, 0.419828, 0.444641,
		-0.536045, 0.826085, 0.173892,
		29.081812, 36.761185, 55.078880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.223442, 45.141674, 44.522594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.966209, 45.385056, 44.708599>,  <37.811871, 45.531082, 44.820202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.966209, 45.385056, 44.708599>,  <38.223442, 45.141674, 44.522594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966209, 45.385056, 44.708599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365958, -0.777573, 0.511327,
		0.672699, 0.158648, 0.722708,
		-0.643080, 0.608449, 0.465014,
		37.773285, 45.567589, 44.848103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107613, 44.714207, 45.115215>,  <38.223442, 45.141674, 44.522594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107613, 44.714207, 45.115215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814697, 44.986107, 45.131634>,  <37.638947, 45.149246, 45.141483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814697, 44.986107, 45.131634>,  <38.107613, 44.714207, 45.115215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814697, 44.986107, 45.131634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577803, -0.652100, 0.490825,
		0.360406, 0.335710, 0.870291,
		-0.732291, 0.679753, 0.041046,
		37.595009, 45.190033, 45.143948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901031, 44.660191, 45.811905>,  <38.107613, 44.714207, 45.115215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901031, 44.660191, 45.811905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.598373, 44.811157, 45.598347>,  <37.416779, 44.901737, 45.470211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.598373, 44.811157, 45.598347>,  <37.901031, 44.660191, 45.811905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598373, 44.811157, 45.598347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644549, -0.567648, 0.512183,
		-0.109761, 0.731664, 0.672771,
		-0.756643, 0.377417, -0.533899,
		37.371380, 44.924381, 45.438175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358078, 44.766960, 46.311295>,  <37.901031, 44.660191, 45.811905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358078, 44.766960, 46.311295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.180904, 44.744965, 45.953350>,  <37.074600, 44.731770, 45.738583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.180904, 44.744965, 45.953350>,  <37.358078, 44.766960, 46.311295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180904, 44.744965, 45.953350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746628, -0.529944, 0.402127,
		-0.496339, 0.846248, 0.193678,
		-0.442938, -0.054986, -0.894865,
		37.048023, 44.728470, 45.684891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614292, 44.934368, 46.375431>,  <37.358078, 44.766960, 46.311295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614292, 44.934368, 46.375431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.622726, 44.735374, 46.028545>,  <36.627789, 44.615978, 45.820415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.622726, 44.735374, 46.028545>,  <36.614292, 44.934368, 46.375431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622726, 44.735374, 46.028545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766715, -0.564735, 0.305322,
		-0.641641, 0.658468, -0.393341,
		0.021089, -0.497488, -0.867214,
		36.629055, 44.586128, 45.768379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907627, 44.875111, 46.177631>,  <36.614292, 44.934368, 46.375431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907627, 44.875111, 46.177631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.108189, 44.583504, 45.991241>,  <36.228527, 44.408539, 45.879410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.108189, 44.583504, 45.991241>,  <35.907627, 44.875111, 46.177631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108189, 44.583504, 45.991241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705185, -0.656379, 0.268105,
		-0.501307, 0.194167, -0.843203,
		0.501403, -0.729017, -0.465971,
		36.258610, 44.364799, 45.851452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335564, 44.589962, 45.818047>,  <35.907627, 44.875111, 46.177631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335564, 44.589962, 45.818047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638329, 44.329407, 45.839142>,  <35.819988, 44.173073, 45.851799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638329, 44.329407, 45.839142>,  <35.335564, 44.589962, 45.818047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638329, 44.329407, 45.839142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643704, -0.729181, 0.232252,
		-0.112826, -0.209745, -0.971225,
		0.756912, -0.651385, 0.052743,
		35.865402, 44.133991, 45.854965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107353, 43.959145, 45.540695>,  <35.335564, 44.589962, 45.818047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107353, 43.959145, 45.540695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428116, 43.856781, 45.756641>,  <35.620575, 43.795364, 45.886208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428116, 43.856781, 45.756641>,  <35.107353, 43.959145, 45.540695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428116, 43.856781, 45.756641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530086, -0.721584, 0.445337,
		0.275591, -0.643293, -0.714299,
		0.801909, -0.255909, 0.539863,
		35.668690, 43.780006, 45.918602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226418, 43.255646, 45.428066>,  <35.107353, 43.959145, 45.540695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226418, 43.255646, 45.428066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395710, 43.340912, 45.780300>,  <35.497288, 43.392071, 45.991642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395710, 43.340912, 45.780300>,  <35.226418, 43.255646, 45.428066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395710, 43.340912, 45.780300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539062, -0.721936, 0.433844,
		0.728207, -0.658309, -0.190641,
		0.423234, 0.213161, 0.880588,
		35.522682, 43.404861, 46.044476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284191, 42.660133, 45.617943>,  <35.226418, 43.255646, 45.428066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284191, 42.660133, 45.617943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.330246, 42.861687, 45.960369>,  <35.357880, 42.982620, 46.165825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.330246, 42.861687, 45.960369>,  <35.284191, 42.660133, 45.617943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330246, 42.861687, 45.960369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644043, -0.618248, 0.450531,
		0.756274, -0.603215, 0.253338,
		0.115142, 0.503886, 0.856062,
		35.364788, 43.012852, 46.217186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255611, 42.203644, 46.224716>,  <35.284191, 42.660133, 45.617943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255611, 42.203644, 46.224716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.183899, 42.546852, 46.417240>,  <35.140873, 42.752777, 46.532753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.183899, 42.546852, 46.417240>,  <35.255611, 42.203644, 46.224716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183899, 42.546852, 46.417240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586479, -0.486010, 0.647948,
		0.789874, -0.166114, 0.590343,
		-0.179279, 0.858021, 0.481310,
		35.130116, 42.804260, 46.561634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401283, 42.121365, 46.894402>,  <35.255611, 42.203644, 46.224716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401283, 42.121365, 46.894402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132462, 42.417313, 46.906639>,  <34.971169, 42.594883, 46.913982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132462, 42.417313, 46.906639>,  <35.401283, 42.121365, 46.894402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132462, 42.417313, 46.906639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567744, -0.541347, 0.620169,
		0.475405, 0.399420, 0.783871,
		-0.672055, 0.739870, 0.030591,
		34.930843, 42.639275, 46.915817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942970, 42.028271, 47.277916>,  <35.401283, 42.121365, 46.894402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942970, 42.028271, 47.277916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.126244, 41.673950, 47.307396>,  <36.236206, 41.461357, 47.325085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.126244, 41.673950, 47.307396>,  <35.942970, 42.028271, 47.277916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126244, 41.673950, 47.307396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609769, 0.252907, -0.751146,
		0.646722, 0.389104, 0.656009,
		0.458183, -0.885797, 0.073704,
		36.263699, 41.408211, 47.329506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596607, 42.180122, 47.172726>,  <35.942970, 42.028271, 47.277916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596607, 42.180122, 47.172726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.602089, 41.787628, 47.095787>,  <36.605377, 41.552132, 47.049625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.602089, 41.787628, 47.095787>,  <36.596607, 42.180122, 47.172726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602089, 41.787628, 47.095787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637117, 0.156825, -0.754644,
		0.770645, -0.112206, 0.627309,
		0.013702, -0.981232, -0.192345,
		36.606201, 41.493259, 47.038082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276798, 42.101067, 47.169453>,  <36.596607, 42.180122, 47.172726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276798, 42.101067, 47.169453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125355, 41.777924, 46.988777>,  <37.034489, 41.584038, 46.880371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125355, 41.777924, 46.988777>,  <37.276798, 42.101067, 47.169453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125355, 41.777924, 46.988777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800978, -0.041448, -0.597258,
		0.463776, -0.587922, 0.662766,
		-0.378612, -0.807855, -0.451690,
		37.011772, 41.535568, 46.853271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842796, 41.634338, 47.140976>,  <37.276798, 42.101067, 47.169453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842796, 41.634338, 47.140976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.584030, 41.526291, 46.855728>,  <37.428772, 41.461460, 46.684578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.584030, 41.526291, 46.855728>,  <37.842796, 41.634338, 47.140976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584030, 41.526291, 46.855728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731639, 0.043762, -0.680287,
		0.214968, -0.961831, 0.169322,
		-0.646911, -0.270123, -0.713120,
		37.389957, 41.445255, 46.641792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193245, 41.086937, 46.754498>,  <37.842796, 41.634338, 47.140976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193245, 41.086937, 46.754498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.888634, 41.231209, 46.539097>,  <37.705868, 41.317772, 46.409855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.888634, 41.231209, 46.539097>,  <38.193245, 41.086937, 46.754498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888634, 41.231209, 46.539097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573375, -0.012471, -0.819198,
		-0.302185, -0.932606, -0.197309,
		-0.761528, 0.360682, -0.538502,
		37.660175, 41.339413, 46.377544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317776, 40.818047, 46.038616>,  <38.193245, 41.086937, 46.754498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317776, 40.818047, 46.038616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.060177, 41.116783, 45.972286>,  <37.905617, 41.296024, 45.932487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.060177, 41.116783, 45.972286>,  <38.317776, 40.818047, 46.038616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060177, 41.116783, 45.972286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494799, 0.241298, -0.834835,
		-0.583471, -0.619686, -0.524930,
		-0.643999, 0.746837, -0.165829,
		37.866978, 41.340836, 45.922539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085854, 40.643555, 45.424187>,  <38.317776, 40.818047, 46.038616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085854, 40.643555, 45.424187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.049480, 41.036804, 45.487690>,  <38.027657, 41.272755, 45.525791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.049480, 41.036804, 45.487690>,  <38.085854, 40.643555, 45.424187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049480, 41.036804, 45.487690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437050, 0.182639, -0.880699,
		-0.894829, -0.010701, -0.446281,
		-0.090932, 0.983122, 0.158754,
		38.022202, 41.331741, 45.535316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819088, 40.959255, 44.804890>,  <38.085854, 40.643555, 45.424187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819088, 40.959255, 44.804890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.001152, 41.252258, 45.007378>,  <38.110390, 41.428059, 45.128872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.001152, 41.252258, 45.007378>,  <37.819088, 40.959255, 44.804890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001152, 41.252258, 45.007378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533197, 0.231095, -0.813815,
		-0.713110, 0.640336, -0.285384,
		0.455164, 0.732506, 0.506222,
		38.137703, 41.472012, 45.159245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881008, 41.471478, 44.335167>,  <37.819088, 40.959255, 44.804890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881008, 41.471478, 44.335167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.118874, 41.585968, 44.635685>,  <38.261593, 41.654663, 44.815998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.118874, 41.585968, 44.635685>,  <37.881008, 41.471478, 44.335167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118874, 41.585968, 44.635685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636890, 0.402592, -0.657488,
		-0.490655, 0.869480, 0.057115,
		0.594667, 0.286224, 0.751297,
		38.297272, 41.671837, 44.861073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200390, 42.090630, 44.088772>,  <37.881008, 41.471478, 44.335167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200390, 42.090630, 44.088772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.456047, 42.009277, 44.385456>,  <38.609440, 41.960468, 44.563469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.456047, 42.009277, 44.385456>,  <38.200390, 42.090630, 44.088772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456047, 42.009277, 44.385456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765911, 0.255923, -0.589817,
		-0.069865, 0.945061, 0.319340,
		0.639140, -0.203379, 0.741712,
		38.647789, 41.948265, 44.607971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540543, 42.763348, 44.271091>,  <38.200390, 42.090630, 44.088772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540543, 42.763348, 44.271091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.782879, 42.462578, 44.375061>,  <38.928280, 42.282116, 44.437443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.782879, 42.462578, 44.375061>,  <38.540543, 42.763348, 44.271091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782879, 42.462578, 44.375061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714190, 0.370055, -0.594131,
		0.350558, 0.545585, 0.761214,
		0.605840, -0.751928, 0.259926,
		38.964630, 42.237000, 44.453037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273399, 43.077530, 44.387440>,  <38.540543, 42.763348, 44.271091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273399, 43.077530, 44.387440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.380806, 42.693451, 44.356674>,  <39.445248, 42.463001, 44.338215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.380806, 42.693451, 44.356674>,  <39.273399, 43.077530, 44.387440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380806, 42.693451, 44.356674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576437, 0.224143, -0.785799,
		0.771765, 0.166660, 0.613681,
		0.268513, -0.960200, -0.076917,
		39.461361, 42.405392, 44.333599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007885, 43.104530, 44.334911>,  <39.273399, 43.077530, 44.387440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007885, 43.104530, 44.334911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.895462, 42.740967, 44.211693>,  <39.828011, 42.522827, 44.137764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.895462, 42.740967, 44.211693>,  <40.007885, 43.104530, 44.334911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895462, 42.740967, 44.211693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696034, 0.027932, -0.717465,
		0.660716, -0.416056, 0.624782,
		-0.281054, -0.908910, -0.308044,
		39.811146, 42.468292, 44.119278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544785, 42.636036, 44.496151>,  <40.007885, 43.104530, 44.334911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544785, 42.636036, 44.496151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.333084, 42.534103, 44.172432>,  <40.206062, 42.472946, 43.978203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.333084, 42.534103, 44.172432>,  <40.544785, 42.636036, 44.496151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333084, 42.534103, 44.172432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791083, 0.196610, -0.579251,
		0.306726, -0.946787, 0.097535,
		-0.529251, -0.254830, -0.809293,
		40.174309, 42.457653, 43.929646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687077, 42.185467, 45.200684>,  <40.544785, 42.636036, 44.496151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687077, 42.185467, 45.200684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.668743, 41.791588, 45.133438>,  <40.657742, 41.555260, 45.093090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.668743, 41.791588, 45.133438>,  <40.687077, 42.185467, 45.200684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668743, 41.791588, 45.133438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870250, 0.121989, -0.477266,
		0.490473, 0.124424, -0.862528,
		-0.045836, -0.984702, -0.168112,
		40.654991, 41.496178, 45.083004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063786, 42.460899, 45.601315>,  <40.687077, 42.185467, 45.200684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063786, 42.460899, 45.601315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.318249, 42.623978, 45.863331>,  <40.470928, 42.721825, 46.020542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.318249, 42.623978, 45.863331>,  <40.063786, 42.460899, 45.601315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318249, 42.623978, 45.863331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370191, -0.583599, 0.722753,
		0.676947, -0.702278, -0.220336,
		0.636161, 0.407699, 0.655043,
		40.509098, 42.746288, 46.059845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372742, 41.856323, 46.034500>,  <40.063786, 42.460899, 45.601315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372742, 41.856323, 46.034500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.413498, 42.193092, 46.246456>,  <40.437950, 42.395153, 46.373631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.413498, 42.193092, 46.246456>,  <40.372742, 41.856323, 46.034500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413498, 42.193092, 46.246456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236513, -0.496890, 0.834962,
		0.966272, -0.210399, 0.148498,
		0.101888, 0.841922, 0.529893,
		40.444065, 42.445667, 46.405422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784740, 41.696903, 46.588062>,  <40.372742, 41.856323, 46.034500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784740, 41.696903, 46.588062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.582245, 42.027351, 46.687057>,  <40.460747, 42.225620, 46.746456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.582245, 42.027351, 46.687057>,  <40.784740, 41.696903, 46.588062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582245, 42.027351, 46.687057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280126, -0.428939, 0.858802,
		0.815628, 0.365434, 0.448563,
		-0.506242, 0.826117, 0.247487,
		40.430374, 42.275185, 46.761303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880959, 41.648849, 47.311390>,  <40.784740, 41.696903, 46.588062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880959, 41.648849, 47.311390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.570114, 41.893463, 47.251896>,  <40.383606, 42.040230, 47.216198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.570114, 41.893463, 47.251896>,  <40.880959, 41.648849, 47.311390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570114, 41.893463, 47.251896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377015, -0.263102, 0.888052,
		0.503941, 0.746193, 0.435017,
		-0.777112, 0.611534, -0.148738,
		40.336979, 42.076923, 47.207275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749783, 42.172314, 48.036327>,  <40.880959, 41.648849, 47.311390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749783, 42.172314, 48.036327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.427925, 42.158745, 47.799213>,  <40.234810, 42.150604, 47.656944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.427925, 42.158745, 47.799213>,  <40.749783, 42.172314, 48.036327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427925, 42.158745, 47.799213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588497, -0.087006, 0.803804,
		-0.078842, 0.995630, 0.050046,
		-0.804646, -0.033921, -0.592785,
		40.186531, 42.148567, 47.621380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313210, 42.610012, 48.432999>,  <40.749783, 42.172314, 48.036327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313210, 42.610012, 48.432999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.066994, 42.415794, 48.184689>,  <39.919266, 42.299263, 48.035702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.066994, 42.415794, 48.184689>,  <40.313210, 42.610012, 48.432999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066994, 42.415794, 48.184689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714434, 0.011238, 0.699613,
		-0.332716, 0.874140, -0.353807,
		-0.615536, -0.485544, -0.620776,
		39.882332, 42.270130, 47.998455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695206, 42.948620, 48.561024>,  <40.313210, 42.610012, 48.432999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695206, 42.948620, 48.561024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.621243, 42.604973, 48.370144>,  <39.576862, 42.398785, 48.255615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.621243, 42.604973, 48.370144>,  <39.695206, 42.948620, 48.561024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621243, 42.604973, 48.370144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804754, -0.146332, 0.575289,
		-0.564073, 0.490404, -0.664324,
		-0.184913, -0.859122, -0.477197,
		39.565769, 42.347237, 48.226986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929623, 42.869869, 48.487137>,  <39.695206, 42.948620, 48.561024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929623, 42.869869, 48.487137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.038731, 42.489937, 48.425934>,  <39.104195, 42.261978, 48.389214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.038731, 42.489937, 48.425934>,  <38.929623, 42.869869, 48.487137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038731, 42.489937, 48.425934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693108, -0.304305, 0.653452,
		-0.667232, -0.072192, -0.741343,
		0.272768, -0.949835, -0.153006,
		39.120560, 42.204987, 48.380032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273968, 42.464745, 48.405823>,  <38.929623, 42.869869, 48.487137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273968, 42.464745, 48.405823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.568104, 42.214226, 48.509377>,  <38.744587, 42.063915, 48.571510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.568104, 42.214226, 48.509377>,  <38.273968, 42.464745, 48.405823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568104, 42.214226, 48.509377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640339, -0.517027, 0.568022,
		-0.221897, -0.583467, -0.781234,
		0.735341, -0.626297, 0.258890,
		38.788708, 42.026337, 48.587044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892803, 41.837521, 48.410732>,  <38.273968, 42.464745, 48.405823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892803, 41.837521, 48.410732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.237556, 41.792564, 48.608532>,  <38.444408, 41.765591, 48.727211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.237556, 41.792564, 48.608532>,  <37.892803, 41.837521, 48.410732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237556, 41.792564, 48.608532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446667, -0.629953, 0.635333,
		0.240108, -0.768458, -0.593145,
		0.861880, -0.112390, 0.494501,
		38.496120, 41.758846, 48.756882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989876, 41.041962, 48.570148>,  <37.892803, 41.837521, 48.410732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989876, 41.041962, 48.570148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.193810, 41.272804, 48.825340>,  <38.316170, 41.411308, 48.978455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.193810, 41.272804, 48.825340>,  <37.989876, 41.041962, 48.570148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193810, 41.272804, 48.825340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378676, -0.515339, 0.768785,
		0.772443, -0.633543, -0.044204,
		0.509839, 0.577104, 0.637978,
		38.346760, 41.445934, 49.016735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124317, 40.556511, 49.066742>,  <37.989876, 41.041962, 48.570148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124317, 40.556511, 49.066742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.195580, 40.908798, 49.242283>,  <38.238338, 41.120171, 49.347607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.195580, 40.908798, 49.242283>,  <38.124317, 40.556511, 49.066742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195580, 40.908798, 49.242283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513039, -0.297431, 0.805187,
		0.839673, -0.368600, 0.398853,
		0.178161, 0.880721, 0.438851,
		38.249027, 41.173016, 49.373940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388874, 40.411907, 49.725811>,  <38.124317, 40.556511, 49.066742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388874, 40.411907, 49.725811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.262005, 40.789452, 49.762749>,  <38.185883, 41.015980, 49.784912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.262005, 40.789452, 49.762749>,  <38.388874, 40.411907, 49.725811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262005, 40.789452, 49.762749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514425, -0.253025, 0.819356,
		0.796723, 0.212376, 0.565799,
		-0.317173, 0.943862, 0.092340,
		38.166855, 41.072609, 49.790451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643940, 40.614986, 50.403744>,  <38.388874, 40.411907, 49.725811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643940, 40.614986, 50.403744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.336246, 40.847252, 50.297077>,  <38.151630, 40.986610, 50.233078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.336246, 40.847252, 50.297077>,  <38.643940, 40.614986, 50.403744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336246, 40.847252, 50.297077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489434, -0.267165, 0.830107,
		0.410767, 0.769062, 0.489708,
		-0.769236, 0.580660, -0.266663,
		38.105476, 41.021450, 50.217079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411919, 40.929653, 50.966068>,  <38.643940, 40.614986, 50.403744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411919, 40.929653, 50.966068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.085545, 41.010841, 50.749531>,  <37.889721, 41.059555, 50.619606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.085545, 41.010841, 50.749531>,  <38.411919, 40.929653, 50.966068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085545, 41.010841, 50.749531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575969, -0.204181, 0.791561,
		0.050129, 0.957661, 0.283501,
		-0.815933, 0.202968, -0.541348,
		37.840763, 41.071732, 50.587128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907635, 41.145462, 51.485180>,  <38.411919, 40.929653, 50.966068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907635, 41.145462, 51.485180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.684532, 41.046677, 51.168213>,  <37.550671, 40.987404, 50.978035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.684532, 41.046677, 51.168213>,  <37.907635, 41.145462, 51.485180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684532, 41.046677, 51.168213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712188, -0.347906, 0.609713,
		-0.426262, 0.904418, 0.018161,
		-0.557753, -0.246963, -0.792414,
		37.517204, 40.972588, 50.930489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273674, 41.367748, 51.617245>,  <37.907635, 41.145462, 51.485180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273674, 41.367748, 51.617245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.217392, 41.089630, 51.335320>,  <37.183620, 40.922760, 51.166164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.217392, 41.089630, 51.335320>,  <37.273674, 41.367748, 51.617245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217392, 41.089630, 51.335320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746036, -0.393549, 0.537168,
		-0.650871, 0.601402, -0.463340,
		-0.140707, -0.695295, -0.704817,
		37.175179, 40.881042, 51.123875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617905, 41.412949, 51.461685>,  <37.273674, 41.367748, 51.617245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617905, 41.412949, 51.461685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.750862, 41.046158, 51.373436>,  <36.830639, 40.826084, 51.320488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.750862, 41.046158, 51.373436>,  <36.617905, 41.412949, 51.461685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750862, 41.046158, 51.373436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740318, -0.398605, 0.541335,
		-0.584331, -0.016606, -0.811346,
		0.332396, -0.916972, -0.220623,
		36.850582, 40.771065, 51.307251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922543, 41.074482, 51.420673>,  <36.617905, 41.412949, 51.461685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922543, 41.074482, 51.420673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177986, 40.766754, 51.413422>,  <36.331253, 40.582115, 51.409069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177986, 40.766754, 51.413422>,  <35.922543, 41.074482, 51.420673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177986, 40.766754, 51.413422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561389, -0.481858, 0.672797,
		-0.526334, -0.419472, -0.739605,
		0.638603, -0.769322, -0.018131,
		36.369568, 40.535957, 51.407982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582340, 40.388149, 51.222900>,  <35.922543, 41.074482, 51.420673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582340, 40.388149, 51.222900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.903145, 40.286415, 51.439079>,  <36.095627, 40.225372, 51.568787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.903145, 40.286415, 51.439079>,  <35.582340, 40.388149, 51.222900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903145, 40.286415, 51.439079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582550, -0.532947, 0.613680,
		0.131948, -0.807018, -0.575596,
		0.802013, -0.254340, 0.540450,
		36.143749, 40.210114, 51.601215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477112, 39.665623, 51.460274>,  <35.582340, 40.388149, 51.222900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477112, 39.665623, 51.460274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759438, 39.779762, 51.719627>,  <35.928833, 39.848248, 51.875240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759438, 39.779762, 51.719627>,  <35.477112, 39.665623, 51.460274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759438, 39.779762, 51.719627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463313, -0.506435, 0.727231,
		0.535880, -0.813694, -0.225242,
		0.705814, 0.285351, 0.648383,
		35.971180, 39.865368, 51.914143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661381, 39.066463, 51.814110>,  <35.477112, 39.665623, 51.460274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661381, 39.066463, 51.814110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750496, 39.396851, 52.021240>,  <35.803967, 39.595081, 52.145519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750496, 39.396851, 52.021240>,  <35.661381, 39.066463, 51.814110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750496, 39.396851, 52.021240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524596, -0.346136, 0.777810,
		0.821684, -0.444937, 0.356184,
		0.222788, 0.825966, 0.517827,
		35.817333, 39.644642, 52.176590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762791, 38.770454, 52.508057>,  <35.661381, 39.066463, 51.814110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762791, 38.770454, 52.508057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.734642, 39.162155, 52.584076>,  <35.717751, 39.397175, 52.629688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.734642, 39.162155, 52.584076>,  <35.762791, 38.770454, 52.508057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734642, 39.162155, 52.584076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493902, -0.199732, 0.846267,
		0.866665, -0.034308, 0.497709,
		-0.070375, 0.979250, 0.190045,
		35.713531, 39.455929, 52.641090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019241, 38.804001, 53.173424>,  <35.762791, 38.770454, 52.508057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019241, 38.804001, 53.173424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844971, 39.162704, 53.142410>,  <35.740410, 39.377926, 53.123802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844971, 39.162704, 53.142410>,  <36.019241, 38.804001, 53.173424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844971, 39.162704, 53.142410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255177, -0.040446, 0.966048,
		0.863176, 0.440667, 0.246454,
		-0.435673, 0.896759, -0.077536,
		35.714268, 39.431732, 53.119148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352802, 39.242615, 53.593086>,  <36.019241, 38.804001, 53.173424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352802, 39.242615, 53.593086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.977776, 39.374535, 53.548897>,  <35.752762, 39.453686, 53.522381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.977776, 39.374535, 53.548897>,  <36.352802, 39.242615, 53.593086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977776, 39.374535, 53.548897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169205, -0.154980, 0.973320,
		0.303881, 0.931242, 0.201107,
		-0.937564, 0.329802, -0.110476,
		35.696507, 39.473476, 53.515755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157887, 39.777870, 54.177631>,  <36.352802, 39.242615, 53.593086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157887, 39.777870, 54.177631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.811089, 39.628983, 54.045105>,  <35.603008, 39.539650, 53.965591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.811089, 39.628983, 54.045105>,  <36.157887, 39.777870, 54.177631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811089, 39.628983, 54.045105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289473, -0.164980, 0.942861,
		-0.405612, 0.913364, 0.035290,
		-0.866997, -0.372220, -0.331312,
		35.550991, 39.517315, 53.945713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599678, 40.050621, 54.678062>,  <36.157887, 39.777870, 54.177631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599678, 40.050621, 54.678062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.435307, 39.752945, 54.467422>,  <35.336681, 39.574337, 54.341038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.435307, 39.752945, 54.467422>,  <35.599678, 40.050621, 54.678062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435307, 39.752945, 54.467422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501433, -0.297907, 0.812291,
		-0.761381, 0.597851, -0.250745,
		-0.410931, -0.744194, -0.526603,
		35.312027, 39.529686, 54.309441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184677, 40.662693, 54.939121>,  <35.599678, 40.050621, 54.678062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184677, 40.662693, 54.939121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027573, 41.012558, 55.052750>,  <34.933308, 41.222477, 55.120926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.027573, 41.012558, 55.052750>,  <35.184677, 40.662693, 54.939121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027573, 41.012558, 55.052750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698842, 0.484661, -0.526045,
		-0.597793, -0.008087, -0.801610,
		-0.392763, 0.874665, 0.284075,
		34.909744, 41.274956, 55.137974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212662, 41.143997, 54.305573>,  <35.184677, 40.662693, 54.939121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212662, 41.143997, 54.305573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.149559, 41.390068, 54.614548>,  <35.111698, 41.537712, 54.799934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.149559, 41.390068, 54.614548>,  <35.212662, 41.143997, 54.305573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149559, 41.390068, 54.614548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573404, 0.693914, -0.435536,
		-0.803941, 0.374213, -0.462216,
		-0.157754, 0.615182, 0.772441,
		35.102234, 41.574623, 54.846279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978512, 41.854538, 54.056824>,  <35.212662, 41.143997, 54.305573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978512, 41.854538, 54.056824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.147919, 41.903252, 54.415890>,  <35.249561, 41.932480, 54.631329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.147919, 41.903252, 54.415890>,  <34.978512, 41.854538, 54.056824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147919, 41.903252, 54.415890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415976, 0.854128, -0.312136,
		-0.804736, 0.505601, 0.311073,
		0.423513, 0.121788, 0.897666,
		35.274971, 41.939789, 54.685188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874393, 42.497280, 54.181149>,  <34.978512, 41.854538, 54.056824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874393, 42.497280, 54.181149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.176888, 42.383133, 54.416664>,  <35.358383, 42.314644, 54.557972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.176888, 42.383133, 54.416664>,  <34.874393, 42.497280, 54.181149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176888, 42.383133, 54.416664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577318, 0.714508, -0.395200,
		-0.307915, 0.638782, 0.705086,
		0.756236, -0.285371, 0.588788,
		35.403759, 42.297523, 54.593300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331226, 42.979820, 54.186405>,  <34.874393, 42.497280, 54.181149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331226, 42.979820, 54.186405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.567429, 42.692909, 54.334358>,  <35.709148, 42.520763, 54.423130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.567429, 42.692909, 54.334358>,  <35.331226, 42.979820, 54.186405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567429, 42.692909, 54.334358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782717, 0.397358, -0.479021,
		0.196614, 0.572381, 0.796067,
		0.590506, -0.717277, 0.369886,
		35.744579, 42.477726, 54.445324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
