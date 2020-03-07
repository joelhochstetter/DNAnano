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
	<1.815985, 1.679868, 5.343068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.620691, 2.027563, 5.374193>,  <1.503515, 2.236180, 5.392869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.620691, 2.027563, 5.374193>,  <1.815985, 1.679868, 5.343068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.620691, 2.027563, 5.374193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276508, -0.069504, -0.958495,
		-0.827751, -0.489485, 0.274285,
		-0.488233, 0.869237, 0.077814,
		1.474221, 2.288334, 5.397537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.988242, 1.721277, 5.264032>,  <1.815985, 1.679868, 5.343068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.988242, 1.721277, 5.264032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.209473, 2.022623, 5.121738>,  <1.342211, 2.203431, 5.036362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.209473, 2.022623, 5.121738>,  <0.988242, 1.721277, 5.264032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.209473, 2.022623, 5.121738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351589, -0.176044, -0.919453,
		-0.755309, 0.633600, 0.167509,
		0.553076, 0.753366, -0.355734,
		1.375395, 2.248633, 5.015018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.570932, 2.170176, 4.905769>,  <0.988242, 1.721277, 5.264032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.570932, 2.170176, 4.905769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.941713, 2.154184, 4.756554>,  <1.164182, 2.144590, 4.667025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.941713, 2.154184, 4.756554>,  <0.570932, 2.170176, 4.905769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.941713, 2.154184, 4.756554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366996, -0.303091, -0.879460,
		-0.077905, 0.952123, -0.295623,
		0.926954, -0.039978, -0.373038,
		1.219800, 2.142191, 4.644642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.491645, 2.495071, 4.235795>,  <0.570932, 2.170176, 4.905769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.491645, 2.495071, 4.235795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.806437, 2.249926, 4.264257>,  <0.995311, 2.102839, 4.281335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.806437, 2.249926, 4.264257>,  <0.491645, 2.495071, 4.235795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.806437, 2.249926, 4.264257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166060, -0.321475, -0.932244,
		0.594212, 0.721840, -0.354766,
		0.786979, -0.612863, 0.071155,
		1.042530, 2.066067, 4.285604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.032058, 2.632747, 3.678686>,  <0.491645, 2.495071, 4.235795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.032058, 2.632747, 3.678686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.077787, 2.254259, 3.799747>,  <1.105225, 2.027166, 3.872385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.077787, 2.254259, 3.799747>,  <1.032058, 2.632747, 3.678686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.077787, 2.254259, 3.799747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272834, -0.322842, -0.906275,
		0.955244, 0.021033, -0.295069,
		0.114323, -0.946219, 0.302654,
		1.112084, 1.970393, 3.890544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.072828, 2.322906, 3.027596>,  <1.032058, 2.632747, 3.678686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.072828, 2.322906, 3.027596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.046675, 2.011061, 3.276731>,  <1.030983, 1.823954, 3.426213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.046675, 2.011061, 3.276731>,  <1.072828, 2.322906, 3.027596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.046675, 2.011061, 3.276731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312787, -0.576706, -0.754701,
		0.947570, -0.244161, -0.206146,
		-0.065382, -0.779612, 0.622840,
		1.027060, 1.777177, 3.463583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.418582, 1.787759, 2.716254>,  <1.072828, 2.322906, 3.027596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.418582, 1.787759, 2.716254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.137344, 1.635132, 2.956276>,  <0.968602, 1.543555, 3.100289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.137344, 1.635132, 2.956276>,  <1.418582, 1.787759, 2.716254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.137344, 1.635132, 2.956276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417325, -0.461828, -0.782659,
		0.575759, -0.800700, 0.165471,
		-0.703094, -0.381568, 0.600054,
		0.926416, 1.520661, 3.136292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.409079, 0.999018, 2.687804>,  <1.418582, 1.787759, 2.716254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.409079, 0.999018, 2.687804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.059191, 1.190620, 2.717237>,  <0.849258, 1.305582, 2.734898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.059191, 1.190620, 2.717237>,  <1.409079, 0.999018, 2.687804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.059191, 1.190620, 2.717237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343832, -0.506397, -0.790785,
		-0.341527, -0.717018, 0.607655,
		-0.874722, 0.479006, 0.073586,
		0.796774, 1.334322, 2.739313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.075811, 1.289955, 1.637472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.102737, 1.032248, 1.885882>,  <-0.209867, 0.877625, 2.034929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.102737, 1.032248, 1.885882>,  <0.075811, 1.289955, 1.637472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.102737, 1.032248, 1.885882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564520, 0.335736, 0.754055,
		-0.694312, 0.687171, 0.213838,
		-0.446371, -0.644266, 0.621027,
		-0.236649, 0.838969, 2.072191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.178249, 1.666608, 2.230072>,  <0.075811, 1.289955, 1.637472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.178249, 1.666608, 2.230072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.153866, 1.292731, 2.370150>,  <-0.139236, 1.068405, 2.454196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.153866, 1.292731, 2.370150>,  <-0.178249, 1.666608, 2.230072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.153866, 1.292731, 2.370150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441802, 0.339874, 0.830239,
		-0.895039, 0.104107, 0.433666,
		0.060958, -0.934691, 0.350195,
		-0.135578, 1.012324, 2.475208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.413055, 1.538872, 2.910454>,  <-0.178249, 1.666608, 2.230072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.413055, 1.538872, 2.910454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.130829, 1.257854, 2.873335>,  <0.038507, 1.089244, 2.851064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.130829, 1.257854, 2.873335>,  <-0.413055, 1.538872, 2.910454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.130829, 1.257854, 2.873335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408115, 0.295788, 0.863685,
		-0.579328, -0.647257, 0.495416,
		0.705564, -0.702544, -0.092797,
		0.080840, 1.047091, 2.845496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.252166, 1.427494, 3.533597>,  <-0.413055, 1.538872, 2.910454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.252166, 1.427494, 3.533597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.068260, 1.260109, 3.362398>,  <0.260516, 1.159678, 3.259679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.068260, 1.260109, 3.362398>,  <-0.252166, 1.427494, 3.533597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.068260, 1.260109, 3.362398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531597, 0.168697, 0.830028,
		-0.275134, -0.892429, 0.357591,
		0.801066, -0.418464, -0.427998,
		0.308580, 1.134570, 3.233999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.064780, 1.024526, 3.995894>,  <-0.252166, 1.427494, 3.533597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.064780, 1.024526, 3.995894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.340984, 1.154280, 3.737291>,  <0.506707, 1.232132, 3.582130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.340984, 1.154280, 3.737291>,  <0.064780, 1.024526, 3.995894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.340984, 1.154280, 3.737291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576119, 0.293791, 0.762741,
		0.437359, -0.899145, 0.015981,
		0.690510, 0.324384, -0.646507,
		0.548137, 1.251595, 3.543339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.690020, 0.757007, 4.169179>,  <0.064780, 1.024526, 3.995894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.690020, 0.757007, 4.169179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.821514, 1.069558, 3.956997>,  <0.900411, 1.257089, 3.829688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.821514, 1.069558, 3.956997>,  <0.690020, 0.757007, 4.169179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.821514, 1.069558, 3.956997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547990, 0.299637, 0.780976,
		0.769181, -0.547419, -0.329686,
		0.328736, 0.781377, -0.530456,
		0.920135, 1.303971, 3.797860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.413685, 0.802490, 4.240596>,  <0.690020, 0.757007, 4.169179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.413685, 0.802490, 4.240596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.303619, 1.169472, 4.125660>,  <1.237580, 1.389660, 4.056698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.303619, 1.169472, 4.125660>,  <1.413685, 0.802490, 4.240596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.303619, 1.169472, 4.125660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382798, 0.378718, 0.842638,
		0.881901, 0.121871, -0.455409,
		-0.275165, 0.917453, -0.287340,
		1.221070, 1.444708, 4.039458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.990124, 1.165978, 4.369203>,  <1.413685, 0.802490, 4.240596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.990124, 1.165978, 4.369203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.676922, 1.414783, 4.368931>,  <1.489000, 1.564067, 4.368768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.676922, 1.414783, 4.368931>,  <1.990124, 1.165978, 4.369203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.676922, 1.414783, 4.368931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250362, 0.316162, 0.915074,
		0.569404, 0.716338, -0.403285,
		-0.783006, 0.622014, -0.000679,
		1.442020, 1.601388, 4.368727>
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
