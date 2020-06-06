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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.199661, 15.035150, 14.938173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.937611, 15.337331, 14.934120>,  <3.780381, 15.518640, 14.931688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.937611, 15.337331, 14.934120>,  <4.199661, 15.035150, 14.938173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.937611, 15.337331, 14.934120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688163, 0.591128, -0.420713,
		-0.311840, -0.282591, -0.907138,
		-0.655124, 0.755453, -0.010132,
		3.741074, 15.563967, 14.931081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.247826, 15.466901, 14.248173>,  <4.199661, 15.035150, 14.938173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.247826, 15.466901, 14.248173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.102547, 15.683784, 14.551250>,  <4.015379, 15.813915, 14.733095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.102547, 15.683784, 14.551250>,  <4.247826, 15.466901, 14.248173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.102547, 15.683784, 14.551250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537975, 0.786005, -0.304595,
		-0.760704, 0.296991, -0.577170,
		-0.363197, 0.542210, 0.757692,
		3.993588, 15.846448, 14.778557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.829113, 16.033287, 14.049162>,  <4.247826, 15.466901, 14.248173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.829113, 16.033287, 14.049162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.040058, 16.112368, 14.379689>,  <4.166625, 16.159817, 14.578006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.040058, 16.112368, 14.379689>,  <3.829113, 16.033287, 14.049162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.040058, 16.112368, 14.379689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344766, 0.839090, -0.420789,
		-0.776548, 0.506795, 0.374343,
		0.527361, 0.197702, 0.826319,
		4.198266, 16.171679, 14.627585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.737984, 16.736017, 14.063530>,  <3.829113, 16.033287, 14.049162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.737984, 16.736017, 14.063530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.068936, 16.637575, 14.265471>,  <4.267508, 16.578510, 14.386635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.068936, 16.637575, 14.265471>,  <3.737984, 16.736017, 14.063530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.068936, 16.637575, 14.265471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413993, 0.874677, -0.252091,
		-0.379542, 0.417580, 0.825576,
		0.827380, -0.246104, 0.504852,
		4.317151, 16.563744, 14.416926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.012391, 17.257961, 14.507285>,  <3.737984, 16.736017, 14.063530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.012391, 17.257961, 14.507285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.332690, 17.025826, 14.447943>,  <4.524869, 16.886543, 14.412337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.332690, 17.025826, 14.447943>,  <4.012391, 17.257961, 14.507285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.332690, 17.025826, 14.447943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531561, 0.802623, -0.270627,
		0.276130, 0.137843, 0.951184,
		0.800747, -0.580341, -0.148356,
		4.572914, 16.851723, 14.403436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.560824, 17.711382, 14.613510>,  <4.012391, 17.257961, 14.507285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.560824, 17.711382, 14.613510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.730386, 17.422560, 14.394808>,  <4.832123, 17.249266, 14.263587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.730386, 17.422560, 14.394808>,  <4.560824, 17.711382, 14.613510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.730386, 17.422560, 14.394808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497162, 0.690106, -0.525913,
		0.757057, -0.048888, 0.651518,
		0.423905, -0.722055, -0.546755,
		4.857558, 17.205944, 14.230782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.346012, 17.865961, 14.440252>,  <4.560824, 17.711382, 14.613510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.346012, 17.865961, 14.440252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.273243, 17.592283, 14.157755>,  <5.229582, 17.428076, 13.988256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.273243, 17.592283, 14.157755>,  <5.346012, 17.865961, 14.440252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.273243, 17.592283, 14.157755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500659, 0.553711, -0.665391,
		0.846313, -0.474636, 0.241817,
		-0.181922, -0.684197, -0.706243,
		5.218667, 17.387024, 13.945882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.917034, 17.831289, 14.109509>,  <5.346012, 17.865961, 14.440252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.917034, 17.831289, 14.109509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.649570, 17.678713, 13.854198>,  <5.489092, 17.587168, 13.701011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.649570, 17.678713, 13.854198>,  <5.917034, 17.831289, 14.109509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.649570, 17.678713, 13.854198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469783, 0.448659, -0.760269,
		0.576368, -0.808212, -0.120804,
		-0.668658, -0.381443, -0.638277,
		5.448972, 17.564280, 13.662714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.210064, 17.360842, 13.521459>,  <5.917034, 17.831289, 14.109509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.210064, 17.360842, 13.521459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.861942, 17.524687, 13.412070>,  <5.653069, 17.622993, 13.346437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.861942, 17.524687, 13.412070>,  <6.210064, 17.360842, 13.521459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.861942, 17.524687, 13.412070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467257, 0.511176, -0.721367,
		-0.155689, -0.755590, -0.636274,
		-0.870306, 0.409612, -0.273470,
		5.600851, 17.647570, 13.330029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.387079, 17.648098, 12.878413>,  <6.210064, 17.360842, 13.521459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.387079, 17.648098, 12.878413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.019967, 17.800976, 12.921510>,  <5.799700, 17.892702, 12.947368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.019967, 17.800976, 12.921510>,  <6.387079, 17.648098, 12.878413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.019967, 17.800976, 12.921510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216159, 0.708467, -0.671826,
		-0.333098, -0.593299, -0.732831,
		-0.917780, 0.382192, 0.107742,
		5.744633, 17.915634, 12.953833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.102598, 17.686655, 12.206894>,  <6.387079, 17.648098, 12.878413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.102598, 17.686655, 12.206894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.937542, 17.958633, 12.449348>,  <5.838509, 18.121820, 12.594821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.937542, 17.958633, 12.449348>,  <6.102598, 17.686655, 12.206894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.937542, 17.958633, 12.449348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295437, 0.729360, -0.617051,
		-0.861653, -0.075544, -0.501843,
		-0.412639, 0.679947, 0.606137,
		5.813750, 18.162617, 12.631189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.812613, 18.144783, 11.735231>,  <6.102598, 17.686655, 12.206894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.812613, 18.144783, 11.735231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.781678, 18.366978, 12.066400>,  <5.763117, 18.500296, 12.265100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.781678, 18.366978, 12.066400>,  <5.812613, 18.144783, 11.735231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.781678, 18.366978, 12.066400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140954, 0.828158, -0.542482,
		-0.986991, 0.074744, -0.142346,
		-0.077338, 0.555489, 0.827920,
		5.758476, 18.533625, 12.314775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.606156, 18.734083, 11.381758>,  <5.812613, 18.144783, 11.735231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.606156, 18.734083, 11.381758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.688799, 18.830786, 11.760992>,  <5.738385, 18.888807, 11.988533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.688799, 18.830786, 11.760992>,  <5.606156, 18.734083, 11.381758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.688799, 18.830786, 11.760992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060624, 0.963969, -0.259016,
		-0.976544, 0.110992, 0.184506,
		0.206607, 0.241754, 0.948087,
		5.750781, 18.903313, 12.045418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.050307, 19.233917, 11.562803>,  <5.606156, 18.734083, 11.381758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.050307, 19.233917, 11.562803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.389802, 19.276041, 11.770092>,  <5.593500, 19.301315, 11.894465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.389802, 19.276041, 11.770092>,  <5.050307, 19.233917, 11.562803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.389802, 19.276041, 11.770092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126498, 0.911088, -0.392323,
		-0.513460, 0.398534, 0.759953,
		0.848738, 0.105310, 0.518221,
		5.644424, 19.307634, 11.925558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.103000, 19.877619, 11.726997>,  <5.050307, 19.233917, 11.562803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.103000, 19.877619, 11.726997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.486632, 19.774786, 11.774453>,  <5.716812, 19.713087, 11.802927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.486632, 19.774786, 11.774453>,  <5.103000, 19.877619, 11.726997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.486632, 19.774786, 11.774453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281102, 0.914686, -0.290397,
		-0.033863, 0.311864, 0.949523,
		0.959080, -0.257080, 0.118639,
		5.774356, 19.697662, 11.810045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.286062, 20.409828, 12.012205>,  <5.103000, 19.877619, 11.726997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.286062, 20.409828, 12.012205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.624453, 20.233633, 11.892010>,  <5.827487, 20.127916, 11.819893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.624453, 20.233633, 11.892010>,  <5.286062, 20.409828, 12.012205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.624453, 20.233633, 11.892010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322877, 0.871650, -0.368751,
		0.424351, 0.214934, 0.879619,
		0.845977, -0.440489, -0.300488,
		5.878246, 20.101486, 11.801864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.782434, 20.867458, 12.216795>,  <5.286062, 20.409828, 12.012205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.782434, 20.867458, 12.216795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.944574, 20.655870, 11.918565>,  <6.041858, 20.528917, 11.739626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.944574, 20.655870, 11.918565>,  <5.782434, 20.867458, 12.216795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.944574, 20.655870, 11.918565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313259, 0.846579, -0.430316,
		0.858813, -0.059130, 0.508865,
		0.405350, -0.528968, -0.745577,
		6.066179, 20.497181, 11.694892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.467153, 21.111877, 12.116854>,  <5.782434, 20.867458, 12.216795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.467153, 21.111877, 12.116854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.347355, 20.931652, 11.780450>,  <6.275477, 20.823517, 11.578608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.347355, 20.931652, 11.780450>,  <6.467153, 21.111877, 12.116854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.347355, 20.931652, 11.780450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090982, 0.863966, -0.495263,
		0.949751, -0.224844, -0.217758,
		-0.299493, -0.450565, -0.841009,
		6.257507, 20.796482, 11.528148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.921047, 21.372248, 11.640310>,  <6.467153, 21.111877, 12.116854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.921047, 21.372248, 11.640310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.622955, 21.254669, 11.400901>,  <6.444100, 21.184122, 11.257256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.622955, 21.254669, 11.400901>,  <6.921047, 21.372248, 11.640310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.622955, 21.254669, 11.400901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111385, 0.939857, -0.322896,
		0.657440, -0.173965, -0.733150,
		-0.745229, -0.293947, -0.598523,
		6.399387, 21.166485, 11.221344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.999520, 21.797615, 11.093362>,  <6.921047, 21.372248, 11.640310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.999520, 21.797615, 11.093362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.627166, 21.662615, 11.037439>,  <6.403754, 21.581615, 11.003886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.627166, 21.662615, 11.037439>,  <6.999520, 21.797615, 11.093362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.627166, 21.662615, 11.037439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256469, 0.876312, -0.407800,
		0.260146, -0.343759, -0.902305,
		-0.930885, -0.337501, -0.139805,
		6.347900, 21.561365, 10.995498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.756339, 21.865313, 10.359965>,  <6.999520, 21.797615, 11.093362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.756339, 21.865313, 10.359965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.414123, 21.867138, 10.567052>,  <6.208793, 21.868233, 10.691303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.414123, 21.867138, 10.567052>,  <6.756339, 21.865313, 10.359965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.414123, 21.867138, 10.567052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308979, 0.797866, -0.517632,
		-0.415430, -0.602818, -0.681196,
		-0.855540, 0.004565, 0.517716,
		6.157461, 21.868507, 10.722366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.278239, 22.121990, 9.813332>,  <6.756339, 21.865313, 10.359965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.278239, 22.121990, 9.813332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.124135, 22.139450, 10.182041>,  <6.031672, 22.149925, 10.403267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.124135, 22.139450, 10.182041>,  <6.278239, 22.121990, 9.813332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.124135, 22.139450, 10.182041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256118, 0.954580, -0.152249,
		-0.886553, -0.294739, -0.356584,
		-0.385262, 0.043649, 0.921775,
		6.008556, 22.152544, 10.458573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.712135, 22.588888, 9.828313>,  <6.278239, 22.121990, 9.813332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.712135, 22.588888, 9.828313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.743657, 22.558952, 10.225944>,  <5.762570, 22.540991, 10.464522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.743657, 22.558952, 10.225944>,  <5.712135, 22.588888, 9.828313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.743657, 22.558952, 10.225944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399644, 0.911169, 0.100278,
		-0.913277, -0.405179, 0.041896,
		0.078805, -0.074839, 0.994077,
		5.767298, 22.536501, 10.524167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.082729, 22.811209, 10.163022>,  <5.712135, 22.588888, 9.828313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.082729, 22.811209, 10.163022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.403323, 22.873888, 10.393870>,  <5.595679, 22.911495, 10.532379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.403323, 22.873888, 10.393870>,  <5.082729, 22.811209, 10.163022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.403323, 22.873888, 10.393870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268168, 0.956764, 0.112647,
		-0.534517, -0.245050, 0.808853,
		0.801485, 0.156697, 0.577121,
		5.643768, 22.920897, 10.567006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.776553, 23.215853, 10.726518>,  <5.082729, 22.811209, 10.163022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.776553, 23.215853, 10.726518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.174948, 23.248116, 10.742031>,  <5.413985, 23.267473, 10.751339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.174948, 23.248116, 10.742031>,  <4.776553, 23.215853, 10.726518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.174948, 23.248116, 10.742031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083365, 0.993751, 0.074221,
		-0.032555, -0.077157, 0.996487,
		0.995987, 0.080656, 0.038783,
		5.473744, 23.272312, 10.753666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.949280, 23.748003, 11.139425>,  <4.776553, 23.215853, 10.726518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.949280, 23.748003, 11.139425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.259526, 23.700516, 10.891448>,  <5.445673, 23.672024, 10.742661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.259526, 23.700516, 10.891448>,  <4.949280, 23.748003, 11.139425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.259526, 23.700516, 10.891448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035054, 0.988739, -0.145487,
		0.630233, 0.091110, 0.771041,
		0.775614, -0.118719, -0.619942,
		5.492210, 23.664900, 10.705465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.455703, 24.187473, 11.362867>,  <4.949280, 23.748003, 11.139425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.455703, 24.187473, 11.362867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.518828, 24.138474, 10.970931>,  <5.556704, 24.109074, 10.735769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.518828, 24.138474, 10.970931>,  <5.455703, 24.187473, 11.362867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.518828, 24.138474, 10.970931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045104, 0.992134, -0.116771,
		0.986438, -0.025767, 0.162098,
		0.157814, -0.122498, -0.979841,
		5.566173, 24.101725, 10.676979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.904350, 24.640068, 11.163834>,  <5.455703, 24.187473, 11.362867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.904350, 24.640068, 11.163834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.697669, 24.566914, 10.829272>,  <5.573659, 24.523020, 10.628535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.697669, 24.566914, 10.829272>,  <5.904350, 24.640068, 11.163834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.697669, 24.566914, 10.829272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035316, 0.980640, -0.192610,
		0.855436, -0.069984, -0.513159,
		-0.516704, -0.182888, -0.836403,
		5.542657, 24.512047, 10.578352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.007273, 24.997063, 11.801479>,  <5.904350, 24.640068, 11.163834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.007273, 24.997063, 11.801479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.405323, 25.033081, 11.817574>,  <6.644153, 25.054691, 11.827230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.405323, 25.033081, 11.817574>,  <6.007273, 24.997063, 11.801479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.405323, 25.033081, 11.817574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068759, 0.340935, 0.937569,
		0.070705, -0.935765, 0.345464,
		0.995124, 0.090045, 0.040236,
		6.703860, 25.060095, 11.829644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.294658, 24.783562, 12.484203>,  <6.007273, 24.997063, 11.801479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.294658, 24.783562, 12.484203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.557330, 25.045324, 12.334258>,  <6.714933, 25.202383, 12.244291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.557330, 25.045324, 12.334258>,  <6.294658, 24.783562, 12.484203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.557330, 25.045324, 12.334258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054227, 0.454796, 0.888943,
		0.752218, -0.604078, 0.263168,
		0.656679, 0.654408, -0.374863,
		6.754333, 25.241646, 12.221799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.687501, 24.935900, 13.036016>,  <6.294658, 24.783562, 12.484203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.687501, 24.935900, 13.036016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.759111, 25.232286, 12.777120>,  <6.802077, 25.410118, 12.621782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.759111, 25.232286, 12.777120>,  <6.687501, 24.935900, 13.036016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.759111, 25.232286, 12.777120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069398, 0.646719, 0.759564,
		0.981394, -0.180897, 0.064357,
		0.179024, 0.740966, -0.647241,
		6.812819, 25.454576, 12.582948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.627828, 24.394918, 13.496688>,  <6.687501, 24.935900, 13.036016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.627828, 24.394918, 13.496688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.473321, 24.133934, 13.235891>,  <6.380617, 23.977343, 13.079413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.473321, 24.133934, 13.235891>,  <6.627828, 24.394918, 13.496688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.473321, 24.133934, 13.235891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437974, 0.492349, -0.752177,
		0.811774, -0.576097, 0.095583,
		-0.386267, -0.652461, -0.651991,
		6.357441, 23.938196, 13.040294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.059681, 23.952454, 13.646134>,  <6.627828, 24.394918, 13.496688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.059681, 23.952454, 13.646134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.076431, 24.161608, 13.986684>,  <6.086481, 24.287100, 14.191013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.076431, 24.161608, 13.986684>,  <6.059681, 23.952454, 13.646134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.076431, 24.161608, 13.986684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188565, -0.840943, 0.507206,
		0.981168, 0.139300, -0.133812,
		0.041874, 0.522886, 0.851373,
		6.088993, 24.318474, 14.242096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.598824, 23.917814, 14.050074>,  <6.059681, 23.952454, 13.646134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.598824, 23.917814, 14.050074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.359248, 24.038149, 14.346930>,  <6.215503, 24.110350, 14.525043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.359248, 24.038149, 14.346930>,  <6.598824, 23.917814, 14.050074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.359248, 24.038149, 14.346930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215082, -0.832268, 0.510949,
		0.771371, 0.465648, 0.433773,
		-0.598938, 0.300835, 0.742140,
		6.179567, 24.128399, 14.569571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.039629, 23.865150, 14.651816>,  <6.598824, 23.917814, 14.050074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.039629, 23.865150, 14.651816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.652092, 23.802448, 14.728519>,  <6.419570, 23.764828, 14.774541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.652092, 23.802448, 14.728519>,  <7.039629, 23.865150, 14.651816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.652092, 23.802448, 14.728519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226225, -0.875256, 0.427493,
		0.100825, 0.457554, 0.883447,
		-0.968843, -0.156756, 0.191758,
		6.361440, 23.755421, 14.786047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.197974, 23.431519, 15.211327>,  <7.039629, 23.865150, 14.651816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.197974, 23.431519, 15.211327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.806786, 23.424858, 15.128098>,  <6.572072, 23.420862, 15.078161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.806786, 23.424858, 15.128098>,  <7.197974, 23.431519, 15.211327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.806786, 23.424858, 15.128098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074220, -0.903933, 0.421185,
		-0.195094, 0.427351, 0.882785,
		-0.977972, -0.016650, -0.208070,
		6.513394, 23.419863, 15.065678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.052362, 23.082590, 15.731669>,  <7.197974, 23.431519, 15.211327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.052362, 23.082590, 15.731669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.739454, 23.025475, 15.489128>,  <6.551709, 22.991205, 15.343603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.739454, 23.025475, 15.489128>,  <7.052362, 23.082590, 15.731669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.739454, 23.025475, 15.489128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093435, -0.935468, 0.340837,
		-0.615892, 0.323281, 0.718448,
		-0.782271, -0.142791, -0.606353,
		6.504773, 22.982637, 15.307222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.651690, 22.693678, 16.124800>,  <7.052362, 23.082590, 15.731669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.651690, 22.693678, 16.124800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.477667, 22.636280, 15.769241>,  <6.373253, 22.601841, 15.555906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.477667, 22.636280, 15.769241>,  <6.651690, 22.693678, 16.124800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.477667, 22.636280, 15.769241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041543, -0.982969, 0.179014,
		-0.899443, 0.114810, 0.421689,
		-0.435059, -0.143495, -0.888894,
		6.347149, 22.593231, 15.502573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.998802, 22.302036, 16.180511>,  <6.651690, 22.693678, 16.124800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.998802, 22.302036, 16.180511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.137821, 22.245117, 15.809791>,  <6.221232, 22.210966, 15.587358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.137821, 22.245117, 15.809791>,  <5.998802, 22.302036, 16.180511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.137821, 22.245117, 15.809791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055045, -0.983617, 0.171664,
		-0.936046, -0.110677, -0.334019,
		0.347546, -0.142299, -0.926802,
		6.242085, 22.202427, 15.531750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.593209, 21.775215, 15.922515>,  <5.998802, 22.302036, 16.180511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.593209, 21.775215, 15.922515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.935004, 21.804081, 15.716742>,  <6.140081, 21.821402, 15.593277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.935004, 21.804081, 15.716742>,  <5.593209, 21.775215, 15.922515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.935004, 21.804081, 15.716742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092900, -0.995568, 0.014649,
		-0.511097, -0.060309, -0.857405,
		0.854488, 0.072166, -0.514434,
		6.191350, 21.825731, 15.562411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.621122, 21.117802, 15.580564>,  <5.593209, 21.775215, 15.922515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.621122, 21.117802, 15.580564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.993914, 21.257372, 15.541237>,  <6.217588, 21.341114, 15.517641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.993914, 21.257372, 15.541237>,  <5.621122, 21.117802, 15.580564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.993914, 21.257372, 15.541237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355091, -0.933283, 0.053795,
		-0.072987, -0.085047, -0.993700,
		0.931978, 0.348927, -0.098317,
		6.273507, 21.362051, 15.511742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.937218, 20.708857, 15.120290>,  <5.621122, 21.117802, 15.580564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.937218, 20.708857, 15.120290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.246730, 20.881693, 15.305574>,  <6.432437, 20.985394, 15.416745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.246730, 20.881693, 15.305574>,  <5.937218, 20.708857, 15.120290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.246730, 20.881693, 15.305574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459354, -0.886266, 0.059385,
		0.436188, 0.166826, -0.884256,
		0.773779, 0.432090, 0.463211,
		6.478864, 21.011320, 15.444538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.590153, 20.423519, 14.740833>,  <5.937218, 20.708857, 15.120290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.590153, 20.423519, 14.740833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.690874, 20.563574, 15.101722>,  <6.751306, 20.647606, 15.318254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.690874, 20.563574, 15.101722>,  <6.590153, 20.423519, 14.740833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.690874, 20.563574, 15.101722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544637, -0.821886, 0.166955,
		0.799979, 0.449343, -0.397649,
		0.251802, 0.350135, 0.902220,
		6.766414, 20.668615, 15.372388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.336916, 20.425169, 14.707683>,  <6.590153, 20.423519, 14.740833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.336916, 20.425169, 14.707683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.166272, 20.412207, 15.069224>,  <7.063886, 20.404428, 15.286150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.166272, 20.412207, 15.069224>,  <7.336916, 20.425169, 14.707683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.166272, 20.412207, 15.069224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438021, -0.881741, 0.175128,
		0.791291, 0.470619, 0.390355,
		-0.426610, -0.032406, 0.903855,
		7.038289, 20.402485, 15.340381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.852729, 20.180145, 15.090164>,  <7.336916, 20.425169, 14.707683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.852729, 20.180145, 15.090164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.533103, 20.116405, 15.322062>,  <7.341328, 20.078161, 15.461202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.533103, 20.116405, 15.322062>,  <7.852729, 20.180145, 15.090164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.533103, 20.116405, 15.322062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303454, -0.939303, 0.160077,
		0.519050, 0.303838, 0.798918,
		-0.799063, -0.159347, 0.579746,
		7.293385, 20.068602, 15.495986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.057858, 19.714458, 15.657684>,  <7.852729, 20.180145, 15.090164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.057858, 19.714458, 15.657684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.660310, 19.691130, 15.620123>,  <7.421781, 19.677132, 15.597587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.660310, 19.691130, 15.620123>,  <8.057858, 19.714458, 15.657684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.660310, 19.691130, 15.620123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071818, -0.986459, -0.147449,
		-0.084031, -0.153289, 0.984602,
		-0.993872, -0.058322, -0.093902,
		7.362148, 19.673634, 15.591952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.890504, 19.170233, 16.098537>,  <8.057858, 19.714458, 15.657684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.890504, 19.170233, 16.098537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.590782, 19.223064, 15.838970>,  <7.410948, 19.254765, 15.683229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.590782, 19.223064, 15.838970>,  <7.890504, 19.170233, 16.098537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.590782, 19.223064, 15.838970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015049, -0.976259, -0.216084,
		-0.662053, -0.171679, 0.729529,
		-0.749306, 0.132080, -0.648918,
		7.365990, 19.262688, 15.644295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.509626, 18.633558, 16.289558>,  <7.890504, 19.170233, 16.098537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.509626, 18.633558, 16.289558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.360585, 18.747957, 15.936430>,  <7.271161, 18.816597, 15.724553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.360585, 18.747957, 15.936430>,  <7.509626, 18.633558, 16.289558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.360585, 18.747957, 15.936430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206791, -0.952994, -0.221451,
		-0.904657, 0.100046, 0.414229,
		-0.372603, 0.285996, -0.882822,
		7.248805, 18.833755, 15.671583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.011781, 18.214092, 16.231220>,  <7.509626, 18.633558, 16.289558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.011781, 18.214092, 16.231220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.065981, 18.344229, 15.856886>,  <7.098501, 18.422312, 15.632285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.065981, 18.344229, 15.856886>,  <7.011781, 18.214092, 16.231220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.065981, 18.344229, 15.856886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202407, -0.915538, -0.347593,
		-0.969882, 0.236519, -0.058204,
		0.135500, 0.325343, -0.935837,
		7.106631, 18.441832, 15.576135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.419036, 17.995686, 15.924246>,  <7.011781, 18.214092, 16.231220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.419036, 17.995686, 15.924246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.684699, 18.054857, 15.631122>,  <6.844096, 18.090361, 15.455247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.684699, 18.054857, 15.631122>,  <6.419036, 17.995686, 15.924246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.684699, 18.054857, 15.631122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089116, -0.957573, -0.274067,
		-0.742262, 0.247328, -0.622796,
		0.664157, 0.147928, -0.732811,
		6.883946, 18.099236, 15.411278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.081884, 17.677349, 15.340968>,  <6.419036, 17.995686, 15.924246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.081884, 17.677349, 15.340968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.470515, 17.692345, 15.247474>,  <6.703693, 17.701342, 15.191377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.470515, 17.692345, 15.247474>,  <6.081884, 17.677349, 15.340968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.470515, 17.692345, 15.247474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018287, -0.996315, -0.083794,
		-0.236017, 0.077138, -0.968682,
		0.971577, 0.037491, -0.233736,
		6.761988, 17.703592, 15.177353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.122388, 17.343916, 14.678934>,  <6.081884, 17.677349, 15.340968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.122388, 17.343916, 14.678934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.483217, 17.321848, 14.850153>,  <6.699714, 17.308607, 14.952884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.483217, 17.321848, 14.850153>,  <6.122388, 17.343916, 14.678934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.483217, 17.321848, 14.850153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010206, -0.988791, -0.148954,
		0.431467, 0.138735, -0.891397,
		0.902071, -0.055171, 0.428047,
		6.753838, 17.305296, 14.978567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.558109, 17.110376, 14.118224>,  <6.122388, 17.343916, 14.678934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.558109, 17.110376, 14.118224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.762920, 17.015234, 14.448377>,  <6.885807, 16.958149, 14.646468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.762920, 17.015234, 14.448377>,  <6.558109, 17.110376, 14.118224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.762920, 17.015234, 14.448377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140406, -0.924797, -0.353605,
		0.847416, 0.296944, -0.440125,
		0.512027, -0.237855, 0.825381,
		6.916528, 16.943878, 14.695991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.219048, 16.652149, 13.829193>,  <6.558109, 17.110376, 14.118224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.219048, 16.652149, 13.829193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.161917, 16.590902, 14.220325>,  <7.127638, 16.554153, 14.455005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.161917, 16.590902, 14.220325>,  <7.219048, 16.652149, 13.829193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.161917, 16.590902, 14.220325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202493, -0.971584, -0.122564,
		0.968812, 0.180499, 0.169774,
		-0.142827, -0.153119, 0.977832,
		7.119069, 16.544966, 14.513675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.739885, 16.166697, 13.925320>,  <7.219048, 16.652149, 13.829193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.739885, 16.166697, 13.925320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.455850, 16.123629, 14.203652>,  <7.285429, 16.097788, 14.370652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.455850, 16.123629, 14.203652>,  <7.739885, 16.166697, 13.925320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.455850, 16.123629, 14.203652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040668, -0.992861, -0.112132,
		0.702937, -0.051325, 0.709398,
		-0.710089, -0.107672, 0.695831,
		7.242823, 16.091328, 14.412401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.028740, 15.685123, 14.382182>,  <7.739885, 16.166697, 13.925320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.028740, 15.685123, 14.382182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.634126, 15.655014, 14.440267>,  <7.397358, 15.636949, 14.475117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.634126, 15.655014, 14.440267>,  <8.028740, 15.685123, 14.382182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.634126, 15.655014, 14.440267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093914, -0.987562, 0.126102,
		0.133912, 0.138041, 0.981332,
		-0.986533, -0.075274, 0.145210,
		7.338166, 15.632432, 14.483829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.940126, 15.154296, 14.863222>,  <8.028740, 15.685123, 14.382182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.940126, 15.154296, 14.863222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.597166, 15.155500, 14.657367>,  <7.391389, 15.156223, 14.533854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.597166, 15.155500, 14.657367>,  <7.940126, 15.154296, 14.863222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.597166, 15.155500, 14.657367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062580, -0.993173, 0.098448,
		-0.510829, 0.116615, 0.851736,
		-0.857402, 0.003011, -0.514639,
		7.339945, 15.156404, 14.502975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.804050, 14.484113, 14.938182>,  <7.940126, 15.154296, 14.863222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.804050, 14.484113, 14.938182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.488383, 14.600273, 14.721707>,  <7.298983, 14.669970, 14.591823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.488383, 14.600273, 14.721707>,  <7.804050, 14.484113, 14.938182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.488383, 14.600273, 14.721707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239800, -0.956905, -0.163796,
		-0.565429, 0.000514, 0.824796,
		-0.789168, 0.290401, -0.541185,
		7.251633, 14.687393, 14.559352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.452629, 14.345530, 14.849942>,  <7.804050, 14.484113, 14.938182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.452629, 14.345530, 14.849942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.628525, 14.588718, 15.114366>,  <8.734062, 14.734632, 15.273020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.628525, 14.588718, 15.114366>,  <8.452629, 14.345530, 14.849942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.628525, 14.588718, 15.114366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838602, -0.014450, -0.544554,
		-0.321522, 0.793827, -0.516201,
		0.439740, 0.607973, 0.661058,
		8.760447, 14.771111, 15.312683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.840424, 14.032178, 15.445286>,  <8.452629, 14.345530, 14.849942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.840424, 14.032178, 15.445286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.894800, 13.648041, 15.347912>,  <8.927426, 13.417559, 15.289488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.894800, 13.648041, 15.347912>,  <8.840424, 14.032178, 15.445286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.894800, 13.648041, 15.347912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972166, 0.081979, 0.219485,
		-0.190824, -0.266496, 0.944757,
		0.135942, -0.960343, -0.243435,
		8.935583, 13.359938, 15.274881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.043368, 13.601757, 16.065147>,  <8.840424, 14.032178, 15.445286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.043368, 13.601757, 16.065147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.212898, 13.449524, 15.736384>,  <9.314616, 13.358184, 15.539127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.212898, 13.449524, 15.736384>,  <9.043368, 13.601757, 16.065147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.212898, 13.449524, 15.736384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898659, 0.063411, 0.434040,
		-0.113071, -0.922569, 0.368891,
		0.423824, -0.380584, -0.821905,
		9.340046, 13.335349, 15.489813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.509569, 13.164458, 16.299994>,  <9.043368, 13.601757, 16.065147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.509569, 13.164458, 16.299994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.604407, 13.338744, 15.952675>,  <9.661310, 13.443316, 15.744284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.604407, 13.338744, 15.952675>,  <9.509569, 13.164458, 16.299994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.604407, 13.338744, 15.952675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738057, 0.500395, 0.452632,
		0.631710, -0.748169, -0.202941,
		0.237094, 0.435714, -0.868297,
		9.675535, 13.469459, 15.692185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.267114, 13.054917, 16.146494>,  <9.509569, 13.164458, 16.299994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.267114, 13.054917, 16.146494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.104430, 13.385980, 15.991794>,  <10.006821, 13.584617, 15.898973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.104430, 13.385980, 15.991794>,  <10.267114, 13.054917, 16.146494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.104430, 13.385980, 15.991794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656962, 0.559147, 0.505723,
		0.634815, -0.048399, -0.771147,
		-0.406708, 0.827655, -0.386751,
		9.982418, 13.634276, 15.875769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.808270, 12.741049, 16.655054>,  <10.267114, 13.054917, 16.146494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.808270, 12.741049, 16.655054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.735998, 13.081692, 16.458233>,  <10.692635, 13.286077, 16.340139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.735998, 13.081692, 16.458233>,  <10.808270, 12.741049, 16.655054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.735998, 13.081692, 16.458233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111815, 0.514831, 0.849968,
		0.977165, 0.098554, -0.188243,
		-0.180681, 0.851608, -0.492055,
		10.681794, 13.337174, 16.310616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.241287, 12.274879, 16.750004>,  <10.808270, 12.741049, 16.655054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.241287, 12.274879, 16.750004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.524427, 11.998252, 16.692484>,  <11.694312, 11.832275, 16.657972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.524427, 11.998252, 16.692484>,  <11.241287, 12.274879, 16.750004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.524427, 11.998252, 16.692484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441457, 0.274201, 0.854359,
		-0.551419, -0.668240, 0.499392,
		0.707851, -0.691570, -0.143799,
		11.736783, 11.790781, 16.649343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.192456, 11.872791, 17.347342>,  <11.241287, 12.274879, 16.750004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.192456, 11.872791, 17.347342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.549755, 11.809554, 17.179001>,  <11.764134, 11.771611, 17.077995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.549755, 11.809554, 17.179001>,  <11.192456, 11.872791, 17.347342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.549755, 11.809554, 17.179001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449162, 0.353551, 0.820521,
		0.019073, -0.921959, 0.386818,
		0.893246, -0.158094, -0.420852,
		11.817729, 11.762126, 17.052746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.575251, 11.478765, 17.900806>,  <11.192456, 11.872791, 17.347342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.575251, 11.478765, 17.900806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.865278, 11.632579, 17.672277>,  <12.039295, 11.724867, 17.535160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.865278, 11.632579, 17.672277>,  <11.575251, 11.478765, 17.900806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.865278, 11.632579, 17.672277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500080, 0.276397, 0.820685,
		0.473492, -0.880761, 0.008110,
		0.725069, 0.384533, -0.571323,
		12.082799, 11.747938, 17.500881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.150393, 11.370338, 18.352489>,  <11.575251, 11.478765, 17.900806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.150393, 11.370338, 18.352489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.278831, 11.624361, 18.071463>,  <12.355893, 11.776774, 17.902845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.278831, 11.624361, 18.071463>,  <12.150393, 11.370338, 18.352489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.278831, 11.624361, 18.071463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379649, 0.593319, 0.709816,
		0.867620, -0.494648, -0.050586,
		0.321096, 0.635056, -0.702568,
		12.375159, 11.814878, 17.860693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.910358, 11.581726, 18.583944>,  <12.150393, 11.370338, 18.352489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.910358, 11.581726, 18.583944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.737343, 11.849049, 18.341862>,  <12.633533, 12.009442, 18.196611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.737343, 11.849049, 18.341862>,  <12.910358, 11.581726, 18.583944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.737343, 11.849049, 18.341862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343028, 0.742749, 0.575026,
		0.833812, 0.041117, -0.550516,
		-0.432539, 0.668306, -0.605209,
		12.607581, 12.049541, 18.160299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.377198, 12.001670, 18.686638>,  <12.910358, 11.581726, 18.583944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.377198, 12.001670, 18.686638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.086094, 12.221914, 18.523083>,  <12.911431, 12.354061, 18.424950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.086094, 12.221914, 18.523083>,  <13.377198, 12.001670, 18.686638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.086094, 12.221914, 18.523083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156700, 0.713921, 0.682467,
		0.667689, 0.432601, -0.605845,
		-0.727762, 0.550611, -0.408889,
		12.867765, 12.387097, 18.400415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.614119, 12.626100, 18.497988>,  <13.377198, 12.001670, 18.686638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.614119, 12.626100, 18.497988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.221072, 12.694739, 18.526329>,  <12.985245, 12.735923, 18.543335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.221072, 12.694739, 18.526329>,  <13.614119, 12.626100, 18.497988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.221072, 12.694739, 18.526329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179638, 0.782463, 0.596223,
		0.046870, 0.598586, -0.799686,
		-0.982616, 0.171599, 0.070855,
		12.926288, 12.746219, 18.547586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.667337, 13.344296, 18.752140>,  <13.614119, 12.626100, 18.497988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.667337, 13.344296, 18.752140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.287895, 13.235257, 18.816435>,  <13.060229, 13.169833, 18.855011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.287895, 13.235257, 18.816435>,  <13.667337, 13.344296, 18.752140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.287895, 13.235257, 18.816435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084559, 0.707793, 0.701341,
		-0.304953, 0.651704, -0.694468,
		-0.948606, -0.272599, 0.160736,
		13.003313, 13.153478, 18.864656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.205784, 13.884209, 18.607229>,  <13.667337, 13.344296, 18.752140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.205784, 13.884209, 18.607229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.964057, 13.671041, 18.844143>,  <12.819021, 13.543141, 18.986290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.964057, 13.671041, 18.844143>,  <13.205784, 13.884209, 18.607229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.964057, 13.671041, 18.844143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171946, 0.813094, 0.556158,
		-0.777968, 0.234255, -0.583001,
		-0.604317, -0.532918, 0.592283,
		12.782762, 13.511166, 19.021828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.666308, 14.403719, 18.775833>,  <13.205784, 13.884209, 18.607229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.666308, 14.403719, 18.775833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.674388, 14.105510, 19.042303>,  <12.679235, 13.926584, 19.202185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.674388, 14.105510, 19.042303>,  <12.666308, 14.403719, 18.775833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.674388, 14.105510, 19.042303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170167, 0.654025, 0.737085,
		-0.985208, -0.128250, -0.113652,
		0.020200, -0.745522, 0.666175,
		12.680448, 13.881853, 19.242155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.236207, 14.641354, 19.289057>,  <12.666308, 14.403719, 18.775833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.236207, 14.641354, 19.289057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.430341, 14.350579, 19.483381>,  <12.546821, 14.176114, 19.599976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.430341, 14.350579, 19.483381>,  <12.236207, 14.641354, 19.289057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.430341, 14.350579, 19.483381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371575, 0.331478, 0.867211,
		-0.791444, -0.601403, -0.109234,
		0.485334, -0.726937, 0.485812,
		12.575941, 14.132499, 19.629126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.788367, 14.275328, 19.667751>,  <12.236207, 14.641354, 19.289057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.788367, 14.275328, 19.667751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.136372, 14.192509, 19.846731>,  <12.345174, 14.142817, 19.954119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.136372, 14.192509, 19.846731>,  <11.788367, 14.275328, 19.667751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.136372, 14.192509, 19.846731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430715, 0.122468, 0.894140,
		-0.239929, -0.970635, 0.017369,
		0.870011, -0.207049, 0.447451,
		12.397375, 14.130394, 19.980967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.698876, 13.761624, 20.204762>,  <11.788367, 14.275328, 19.667751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.698876, 13.761624, 20.204762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.033256, 13.950345, 20.316900>,  <12.233883, 14.063578, 20.384184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.033256, 13.950345, 20.316900>,  <11.698876, 13.761624, 20.204762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.033256, 13.950345, 20.316900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338203, 0.040561, 0.940199,
		0.432216, -0.880772, 0.193471,
		0.835948, 0.471801, 0.280348,
		12.284039, 14.091886, 20.401005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.886782, 13.434068, 20.819950>,  <11.698876, 13.761624, 20.204762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.886782, 13.434068, 20.819950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.096752, 13.774367, 20.830378>,  <12.222734, 13.978547, 20.836634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.096752, 13.774367, 20.830378>,  <11.886782, 13.434068, 20.819950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.096752, 13.774367, 20.830378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400945, 0.220138, 0.889260,
		0.750797, -0.477248, 0.456659,
		0.524926, 0.850748, 0.026071,
		12.254230, 14.029592, 20.838200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.323945, 13.411591, 21.452759>,  <11.886782, 13.434068, 20.819950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.323945, 13.411591, 21.452759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.323240, 13.802483, 21.367887>,  <12.322817, 14.037018, 21.316965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.323240, 13.802483, 21.367887>,  <12.323945, 13.411591, 21.452759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.323240, 13.802483, 21.367887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321348, 0.200370, 0.925520,
		0.946959, 0.069814, 0.313678,
		-0.001763, 0.977230, -0.212177,
		12.322711, 14.095652, 21.304234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.775146, 13.685245, 21.914623>,  <12.323945, 13.411591, 21.452759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.775146, 13.685245, 21.914623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.572005, 14.008037, 21.794044>,  <12.450121, 14.201712, 21.721697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.572005, 14.008037, 21.794044>,  <12.775146, 13.685245, 21.914623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.572005, 14.008037, 21.794044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237764, 0.205029, 0.949438,
		0.827983, 0.553846, 0.087747,
		-0.507852, 0.806981, -0.301445,
		12.419650, 14.250131, 21.703611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.037104, 14.115963, 22.243206>,  <12.775146, 13.685245, 21.914623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.037104, 14.115963, 22.243206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.665878, 14.233396, 22.151546>,  <12.443143, 14.303855, 22.096550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.665878, 14.233396, 22.151546>,  <13.037104, 14.115963, 22.243206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.665878, 14.233396, 22.151546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217435, 0.072409, 0.973385,
		0.302361, 0.953187, -0.003365,
		-0.928062, 0.293582, -0.229150,
		12.387460, 14.321470, 22.082802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.974922, 14.717413, 22.714743>,  <13.037104, 14.115963, 22.243206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.974922, 14.717413, 22.714743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.618585, 14.607121, 22.570314>,  <12.404782, 14.540945, 22.483658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.618585, 14.607121, 22.570314>,  <12.974922, 14.717413, 22.714743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.618585, 14.607121, 22.570314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413836, 0.164578, 0.895351,
		-0.187452, 0.947041, -0.260721,
		-0.890843, -0.275731, -0.361069,
		12.351332, 14.524402, 22.461994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.554978, 15.209078, 22.842005>,  <12.974922, 14.717413, 22.714743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.554978, 15.209078, 22.842005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301919, 14.901302, 22.806866>,  <12.150084, 14.716637, 22.785782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301919, 14.901302, 22.806866>,  <12.554978, 15.209078, 22.842005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.301919, 14.901302, 22.806866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487118, 0.307179, 0.817531,
		-0.602055, 0.560003, -0.569145,
		-0.632649, -0.769440, -0.087849,
		12.112124, 14.670470, 22.780512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.877612, 15.448883, 22.973701>,  <12.554978, 15.209078, 22.842005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.877612, 15.448883, 22.973701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.842484, 15.058429, 23.053146>,  <11.821408, 14.824156, 23.100813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.842484, 15.058429, 23.053146>,  <11.877612, 15.448883, 22.973701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.842484, 15.058429, 23.053146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453812, 0.216696, 0.864348,
		-0.886760, -0.014228, -0.462012,
		-0.087818, -0.976135, 0.198614,
		11.816139, 14.765588, 23.112730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.304747, 15.443300, 23.281647>,  <11.877612, 15.448883, 22.973701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.304747, 15.443300, 23.281647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.441933, 15.084915, 23.394518>,  <11.524244, 14.869884, 23.462240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.441933, 15.084915, 23.394518>,  <11.304747, 15.443300, 23.281647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.441933, 15.084915, 23.394518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357762, 0.153169, 0.921165,
		-0.868551, -0.416881, -0.268010,
		0.342965, -0.895963, 0.282180,
		11.544822, 14.816126, 23.479172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.730665, 15.053406, 23.718729>,  <11.304747, 15.443300, 23.281647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.730665, 15.053406, 23.718729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.062935, 14.853948, 23.817793>,  <11.262297, 14.734273, 23.877232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.062935, 14.853948, 23.817793>,  <10.730665, 15.053406, 23.718729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.062935, 14.853948, 23.817793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366294, -0.154459, 0.917590,
		-0.419298, -0.852933, -0.310956,
		0.830673, -0.498645, 0.247660,
		11.312137, 14.704354, 23.892092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.517595, 14.493327, 24.147394>,  <10.730665, 15.053406, 23.718729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.517595, 14.493327, 24.147394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.909245, 14.528829, 24.220537>,  <11.144236, 14.550130, 24.264423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.909245, 14.528829, 24.220537>,  <10.517595, 14.493327, 24.147394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.909245, 14.528829, 24.220537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185214, 0.019018, 0.982514,
		0.083730, -0.995872, 0.035060,
		0.979125, 0.088759, 0.182857,
		11.202983, 14.555455, 24.275394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.707129, 13.985970, 24.714567>,  <10.517595, 14.493327, 24.147394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.707129, 13.985970, 24.714567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.993915, 14.264760, 24.720139>,  <11.165985, 14.432034, 24.723480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.993915, 14.264760, 24.720139>,  <10.707129, 13.985970, 24.714567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.993915, 14.264760, 24.720139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034781, 0.015812, 0.999270,
		0.696244, -0.716923, 0.035578,
		0.716962, 0.696973, 0.013926,
		11.209003, 14.473852, 24.724316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.119653, 13.813938, 25.290581>,  <10.707129, 13.985970, 24.714567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.119653, 13.813938, 25.290581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.214830, 14.193630, 25.208271>,  <11.271937, 14.421446, 25.158886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.214830, 14.193630, 25.208271>,  <11.119653, 13.813938, 25.290581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.214830, 14.193630, 25.208271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081346, 0.230590, 0.969645,
		0.967866, -0.213982, 0.132084,
		0.237944, 0.949231, -0.205774,
		11.286214, 14.478399, 25.146540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.722496, 13.917806, 25.724119>,  <11.119653, 13.813938, 25.290581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.722496, 13.917806, 25.724119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.559655, 14.275343, 25.648952>,  <11.461951, 14.489865, 25.603853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.559655, 14.275343, 25.648952>,  <11.722496, 13.917806, 25.724119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.559655, 14.275343, 25.648952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065675, 0.233849, 0.970052,
		0.911019, 0.382568, -0.153904,
		-0.407102, 0.893843, -0.187916,
		11.437525, 14.543496, 25.592577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.200020, 14.379278, 25.993979>,  <11.722496, 13.917806, 25.724119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.200020, 14.379278, 25.993979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.863414, 14.594368, 25.973175>,  <11.661450, 14.723422, 25.960693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.863414, 14.594368, 25.973175>,  <12.200020, 14.379278, 25.993979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.863414, 14.594368, 25.973175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244931, 0.465565, 0.850446,
		0.481518, 0.702925, -0.523485,
		-0.841516, 0.537723, -0.052010,
		11.610959, 14.755685, 25.957573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.291099, 15.079865, 26.325617>,  <12.200020, 14.379278, 25.993979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.291099, 15.079865, 26.325617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.897471, 15.011586, 26.345503>,  <11.661295, 14.970619, 26.357433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.897471, 15.011586, 26.345503>,  <12.291099, 15.079865, 26.325617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.897471, 15.011586, 26.345503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031096, 0.440561, 0.897184,
		-0.175049, 0.881344, -0.438851,
		-0.984069, -0.170697, 0.049713,
		11.602251, 14.960377, 26.360416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.929586, 15.669375, 26.666796>,  <12.291099, 15.079865, 26.325617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.929586, 15.669375, 26.666796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.657266, 15.378831, 26.704548>,  <11.493874, 15.204504, 26.727200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.657266, 15.378831, 26.704548>,  <11.929586, 15.669375, 26.666796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.657266, 15.378831, 26.704548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230287, 0.334580, 0.913796,
		-0.695325, 0.600380, -0.395054,
		-0.680802, -0.726361, 0.094382,
		11.453025, 15.160923, 26.732862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.303539, 15.935736, 26.959442>,  <11.929586, 15.669375, 26.666796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.303539, 15.935736, 26.959442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.291547, 15.542748, 27.033041>,  <11.284351, 15.306956, 27.077200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.291547, 15.542748, 27.033041>,  <11.303539, 15.935736, 26.959442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.291547, 15.542748, 27.033041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393095, 0.180838, 0.901540,
		-0.919009, -0.045299, -0.391626,
		-0.029982, -0.982469, 0.183998,
		11.282553, 15.248008, 27.088240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.595282, 15.766541, 26.938141>,  <11.303539, 15.935736, 26.959442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.595282, 15.766541, 26.938141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.819592, 15.512222, 27.150288>,  <10.954179, 15.359632, 27.277576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.819592, 15.512222, 27.150288>,  <10.595282, 15.766541, 26.938141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.819592, 15.512222, 27.150288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505583, 0.244323, 0.827461,
		-0.655678, -0.732167, -0.184437,
		0.560778, -0.635796, 0.530369,
		10.987826, 15.321484, 27.309399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.178286, 15.347354, 27.304041>,  <10.595282, 15.766541, 26.938141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.178286, 15.347354, 27.304041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.520241, 15.341034, 27.511471>,  <10.725413, 15.337242, 27.635929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.520241, 15.341034, 27.511471>,  <10.178286, 15.347354, 27.304041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.520241, 15.341034, 27.511471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512223, 0.133117, 0.848473,
		-0.082436, -0.990974, 0.105707,
		0.854887, -0.015799, 0.518574,
		10.776707, 15.336294, 27.667044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.036761, 14.924092, 27.857239>,  <10.178286, 15.347354, 27.304041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.036761, 14.924092, 27.857239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.374317, 15.109742, 27.964897>,  <10.576851, 15.221132, 28.029493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.374317, 15.109742, 27.964897>,  <10.036761, 14.924092, 27.857239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.374317, 15.109742, 27.964897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322459, 0.037820, 0.945827,
		0.428804, -0.884961, 0.181578,
		0.843888, 0.464126, 0.269147,
		10.627483, 15.248980, 28.045641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.434439, 14.535883, 28.448437>,  <10.036761, 14.924092, 27.857239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.434439, 14.535883, 28.448437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.523565, 14.924911, 28.475142>,  <10.577041, 15.158329, 28.491165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.523565, 14.924911, 28.475142>,  <10.434439, 14.535883, 28.448437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.523565, 14.924911, 28.475142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303557, 0.004139, 0.952804,
		0.926394, -0.232566, 0.296153,
		0.222816, 0.972572, 0.066763,
		10.590410, 15.216683, 28.495171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.635053, 14.540147, 29.165209>,  <10.434439, 14.535883, 28.448437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.635053, 14.540147, 29.165209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.590322, 14.914387, 29.031254>,  <10.563484, 15.138930, 28.950880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.590322, 14.914387, 29.031254>,  <10.635053, 14.540147, 29.165209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.590322, 14.914387, 29.031254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227589, 0.303931, 0.925110,
		0.967315, 0.179668, 0.178944,
		-0.111826, 0.935599, -0.334888,
		10.556774, 15.195066, 28.930788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.959869, 14.894217, 29.643957>,  <10.635053, 14.540147, 29.165209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.959869, 14.894217, 29.643957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.735158, 15.181944, 29.480499>,  <10.600331, 15.354580, 29.382425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.735158, 15.181944, 29.480499>,  <10.959869, 14.894217, 29.643957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.735158, 15.181944, 29.480499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293496, 0.288535, 0.911377,
		0.773477, 0.631926, 0.049024,
		-0.561777, 0.719317, -0.408643,
		10.566625, 15.397739, 29.357906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.135229, 15.506778, 29.909683>,  <10.959869, 14.894217, 29.643957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.135229, 15.506778, 29.909683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.755516, 15.547260, 29.790606>,  <10.527688, 15.571550, 29.719160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.755516, 15.547260, 29.790606>,  <11.135229, 15.506778, 29.909683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.755516, 15.547260, 29.790606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276490, 0.182147, 0.943597,
		0.149723, 0.978049, -0.144926,
		-0.949282, 0.101207, -0.297692,
		10.470732, 15.577622, 29.701298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.962258, 16.191259, 30.115467>,  <11.135229, 15.506778, 29.909683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.962258, 16.191259, 30.115467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.616785, 15.994359, 30.072128>,  <10.409501, 15.876219, 30.046125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.616785, 15.994359, 30.072128>,  <10.962258, 16.191259, 30.115467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.616785, 15.994359, 30.072128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295773, 0.320912, 0.899741,
		-0.408128, 0.809138, -0.422761,
		-0.863684, -0.492251, -0.108348,
		10.357680, 15.846684, 30.039623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.489611, 16.594952, 30.479244>,  <10.962258, 16.191259, 30.115467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.489611, 16.594952, 30.479244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.273347, 16.261265, 30.435854>,  <10.143588, 16.061052, 30.409821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.273347, 16.261265, 30.435854>,  <10.489611, 16.594952, 30.479244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.273347, 16.261265, 30.435854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454777, 0.181361, 0.871944,
		-0.707718, 0.520758, -0.477438,
		-0.540660, -0.834218, -0.108476,
		10.111149, 16.011000, 30.403311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.850885, 16.755482, 30.671606>,  <10.489611, 16.594952, 30.479244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.850885, 16.755482, 30.671606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.858786, 16.357355, 30.709457>,  <9.863525, 16.118479, 30.732168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.858786, 16.357355, 30.709457>,  <9.850885, 16.755482, 30.671606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.858786, 16.357355, 30.709457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347372, 0.081919, 0.934142,
		-0.937519, -0.051320, -0.344127,
		0.019750, -0.995317, 0.094628,
		9.864711, 16.058760, 30.737846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.232662, 16.492098, 30.732260>,  <9.850885, 16.755482, 30.671606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.232662, 16.492098, 30.732260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.493287, 16.245747, 30.909420>,  <9.649662, 16.097937, 31.015717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.493287, 16.245747, 30.909420>,  <9.232662, 16.492098, 30.732260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.493287, 16.245747, 30.909420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456461, 0.148019, 0.877345,
		-0.605896, -0.773811, -0.184681,
		0.651563, -0.615879, 0.442898,
		9.688756, 16.060984, 31.042290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.756233, 16.026300, 31.066065>,  <9.232662, 16.492098, 30.732260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.756233, 16.026300, 31.066065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.118084, 16.049826, 31.234917>,  <9.335195, 16.063940, 31.336227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.118084, 16.049826, 31.234917>,  <8.756233, 16.026300, 31.066065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.118084, 16.049826, 31.234917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423034, 0.244512, 0.872500,
		-0.051902, -0.967861, 0.246071,
		0.904626, 0.058811, 0.422128,
		9.389472, 16.067469, 31.361555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.849232, 15.533766, 31.569185>,  <8.756233, 16.026300, 31.066065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.849232, 15.533766, 31.569185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.046056, 15.877250, 31.626448>,  <9.164150, 16.083340, 31.660805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.046056, 15.877250, 31.626448>,  <8.849232, 15.533766, 31.569185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.046056, 15.877250, 31.626448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580104, 0.200812, 0.789401,
		0.649120, -0.471478, 0.596953,
		0.492061, 0.858710, 0.143155,
		9.193674, 16.134863, 31.669394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.065623, 15.534368, 32.190361>,  <8.849232, 15.533766, 31.569185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.065623, 15.534368, 32.190361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.054819, 15.926362, 32.111473>,  <9.048337, 16.161558, 32.064140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.054819, 15.926362, 32.111473>,  <9.065623, 15.534368, 32.190361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.054819, 15.926362, 32.111473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540753, 0.151613, 0.827406,
		0.840748, 0.128997, 0.525836,
		-0.027010, 0.979986, -0.197224,
		9.046717, 16.220358, 32.052307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.433737, 15.942917, 32.818668>,  <9.065623, 15.534368, 32.190361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.433737, 15.942917, 32.818668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.129409, 16.046171, 32.580502>,  <8.946813, 16.108124, 32.437603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.129409, 16.046171, 32.580502>,  <9.433737, 15.942917, 32.818668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.129409, 16.046171, 32.580502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624120, -0.039608, 0.780324,
		0.177846, 0.965297, 0.191242,
		-0.760819, 0.258135, -0.595417,
		8.901163, 16.123611, 32.401878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.393246, 16.186237, 33.563709>,  <9.433737, 15.942917, 32.818668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.393246, 16.186237, 33.563709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.714693, 16.065763, 33.769032>,  <9.907561, 15.993479, 33.892223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.714693, 16.065763, 33.769032>,  <9.393246, 16.186237, 33.563709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.714693, 16.065763, 33.769032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408611, -0.347860, -0.843819,
		0.432705, 0.887852, -0.156480,
		0.803619, -0.301185, 0.513307,
		9.955779, 15.975408, 33.923023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.161337, 16.380829, 33.198738>,  <9.393246, 16.186237, 33.563709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.161337, 16.380829, 33.198738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.152564, 16.060596, 33.438267>,  <10.147300, 15.868457, 33.581985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.152564, 16.060596, 33.438267>,  <10.161337, 16.380829, 33.198738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.152564, 16.060596, 33.438267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561210, -0.505554, -0.655331,
		0.827383, 0.321692, 0.460382,
		-0.021933, -0.800581, 0.598823,
		10.145984, 15.820422, 33.617912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.825414, 16.130671, 33.247971>,  <10.161337, 16.380829, 33.198738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.825414, 16.130671, 33.247971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.565331, 15.832469, 33.306557>,  <10.409281, 15.653548, 33.341709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.565331, 15.832469, 33.306557>,  <10.825414, 16.130671, 33.247971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.565331, 15.832469, 33.306557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488004, -0.557561, -0.671549,
		0.582306, -0.365171, 0.726340,
		-0.650209, -0.745504, 0.146466,
		10.370268, 15.608818, 33.350498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.250448, 15.569485, 33.436325>,  <10.825414, 16.130671, 33.247971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.250448, 15.569485, 33.436325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.907497, 15.439227, 33.276897>,  <10.701727, 15.361073, 33.181240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.907497, 15.439227, 33.276897>,  <11.250448, 15.569485, 33.436325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.907497, 15.439227, 33.276897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512266, -0.464858, -0.722143,
		0.049882, -0.823325, 0.565374,
		-0.857377, -0.325644, -0.398574,
		10.650284, 15.341534, 33.157326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.467710, 14.917158, 33.093361>,  <11.250448, 15.569485, 33.436325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.467710, 14.917158, 33.093361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.092433, 14.968702, 32.964870>,  <10.867267, 14.999629, 32.887775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.092433, 14.968702, 32.964870>,  <11.467710, 14.917158, 33.093361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.092433, 14.968702, 32.964870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199057, -0.558364, -0.805361,
		-0.283140, -0.819527, 0.498203,
		-0.938194, 0.128860, -0.321228,
		10.810975, 15.007360, 32.868504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.224426, 14.293467, 32.961193>,  <11.467710, 14.917158, 33.093361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.224426, 14.293467, 32.961193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.990019, 14.545520, 32.757423>,  <10.849375, 14.696752, 32.635162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.990019, 14.545520, 32.757423>,  <11.224426, 14.293467, 32.961193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.990019, 14.545520, 32.757423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160975, -0.525626, -0.835347,
		-0.794147, -0.571534, 0.206592,
		-0.586019, 0.630132, -0.509427,
		10.814214, 14.734559, 32.604595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.641471, 13.933184, 32.642818>,  <11.224426, 14.293467, 32.961193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.641471, 13.933184, 32.642818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.712575, 14.265866, 32.432423>,  <10.755238, 14.465476, 32.306187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.712575, 14.265866, 32.432423>,  <10.641471, 13.933184, 32.642818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.712575, 14.265866, 32.432423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004884, -0.535240, -0.844686,
		-0.984062, 0.147583, -0.099206,
		0.177761, 0.831707, -0.525988,
		10.765903, 14.515379, 32.274628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.348624, 13.833766, 32.012329>,  <10.641471, 13.933184, 32.642818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.348624, 13.833766, 32.012329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.601697, 14.140481, 31.968967>,  <10.753540, 14.324510, 31.942949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.601697, 14.140481, 31.968967>,  <10.348624, 13.833766, 32.012329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.601697, 14.140481, 31.968967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329973, -0.393570, -0.858033,
		-0.700594, 0.507090, -0.502023,
		0.632681, 0.766787, -0.108407,
		10.791501, 14.370517, 31.936445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.358353, 13.803167, 31.313925>,  <10.348624, 13.833766, 32.012329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.358353, 13.803167, 31.313925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.672936, 14.033966, 31.402065>,  <10.861687, 14.172445, 31.454950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.672936, 14.033966, 31.402065>,  <10.358353, 13.803167, 31.313925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.672936, 14.033966, 31.402065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452662, -0.295734, -0.841213,
		-0.420212, 0.761325, -0.493767,
		0.786460, 0.576998, 0.220352,
		10.908875, 14.207066, 31.468170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.574314, 14.176536, 30.656860>,  <10.358353, 13.803167, 31.313925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.574314, 14.176536, 30.656860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.886927, 14.160322, 30.905880>,  <11.074494, 14.150594, 31.055292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.886927, 14.160322, 30.905880>,  <10.574314, 14.176536, 30.656860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.886927, 14.160322, 30.905880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609486, -0.163417, -0.775771,
		0.133180, 0.985724, -0.103011,
		0.781530, -0.040533, 0.622549,
		11.121386, 14.148162, 31.092644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.029657, 14.503369, 30.279787>,  <10.574314, 14.176536, 30.656860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.029657, 14.503369, 30.279787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.256920, 14.298871, 30.537725>,  <11.393277, 14.176172, 30.692488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.256920, 14.298871, 30.537725>,  <11.029657, 14.503369, 30.279787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.256920, 14.298871, 30.537725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472068, -0.439370, -0.764268,
		0.674055, 0.738635, -0.008289,
		0.568157, -0.511245, 0.644846,
		11.427367, 14.145497, 30.731178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.685134, 14.566381, 30.028383>,  <11.029657, 14.503369, 30.279787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.685134, 14.566381, 30.028383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.745122, 14.258148, 30.276161>,  <11.781115, 14.073209, 30.424828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.745122, 14.258148, 30.276161>,  <11.685134, 14.566381, 30.028383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.745122, 14.258148, 30.276161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498537, -0.482110, -0.720438,
		0.853797, 0.416860, 0.311862,
		0.149970, -0.770582, 0.619445,
		11.790112, 14.026974, 30.461994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.344547, 14.401328, 30.088404>,  <11.685134, 14.566381, 30.028383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.344547, 14.401328, 30.088404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.149718, 14.060417, 30.164701>,  <12.032821, 13.855870, 30.210480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.149718, 14.060417, 30.164701>,  <12.344547, 14.401328, 30.088404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.149718, 14.060417, 30.164701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453717, -0.433547, -0.778575,
		0.746259, -0.292677, 0.597861,
		-0.487072, -0.852278, 0.190746,
		12.003597, 13.804734, 30.221926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.926234, 13.881069, 30.077684>,  <12.344547, 14.401328, 30.088404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.926234, 13.881069, 30.077684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.593873, 13.661392, 30.041935>,  <12.394456, 13.529586, 30.020485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.593873, 13.661392, 30.041935>,  <12.926234, 13.881069, 30.077684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.593873, 13.661392, 30.041935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414001, -0.502891, -0.758752,
		0.371757, -0.667449, 0.645220,
		-0.830903, -0.549193, -0.089371,
		12.344602, 13.496634, 30.015123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.167886, 13.154566, 29.969036>,  <12.926234, 13.881069, 30.077684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.167886, 13.154566, 29.969036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.795610, 13.153812, 29.822714>,  <12.572246, 13.153360, 29.734921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.795610, 13.153812, 29.822714>,  <13.167886, 13.154566, 29.969036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.795610, 13.153812, 29.822714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329040, -0.441272, -0.834872,
		-0.159848, -0.897372, 0.411307,
		-0.930689, -0.001884, -0.365807,
		12.516404, 13.153248, 29.712971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.122429, 12.500269, 29.763935>,  <13.167886, 13.154566, 29.969036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.122429, 12.500269, 29.763935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.845965, 12.713975, 29.569262>,  <12.680087, 12.842198, 29.452457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.845965, 12.713975, 29.569262>,  <13.122429, 12.500269, 29.763935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.845965, 12.713975, 29.569262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316098, -0.382112, -0.868373,
		-0.649909, -0.754023, 0.095220,
		-0.691158, 0.534265, -0.486684,
		12.638618, 12.874254, 29.423256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.020710, 12.021976, 29.204882>,  <13.122429, 12.500269, 29.763935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.020710, 12.021976, 29.204882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.856038, 12.374531, 29.112206>,  <12.757236, 12.586063, 29.056601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.856038, 12.374531, 29.112206>,  <13.020710, 12.021976, 29.204882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.856038, 12.374531, 29.112206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324263, -0.095928, -0.941090,
		-0.851689, -0.462556, -0.246309,
		-0.411679, 0.881385, -0.231691,
		12.732534, 12.638947, 29.042698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.547016, 11.922894, 28.626247>,  <13.020710, 12.021976, 29.204882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.547016, 11.922894, 28.626247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.669045, 12.303470, 28.609774>,  <12.742263, 12.531815, 28.599890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.669045, 12.303470, 28.609774>,  <12.547016, 11.922894, 28.626247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.669045, 12.303470, 28.609774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229700, -0.115482, -0.966386,
		-0.924212, 0.285359, -0.253776,
		0.305073, 0.951438, -0.041183,
		12.760568, 12.588902, 28.597418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.267963, 12.202021, 27.975206>,  <12.547016, 11.922894, 28.626247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.267963, 12.202021, 27.975206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.567556, 12.451282, 28.065281>,  <12.747312, 12.600838, 28.119326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.567556, 12.451282, 28.065281>,  <12.267963, 12.202021, 27.975206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.567556, 12.451282, 28.065281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289381, -0.001910, -0.957212,
		-0.596058, 0.782099, -0.181759,
		0.748982, 0.623151, 0.225186,
		12.792251, 12.638227, 28.132837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.212036, 12.810315, 27.492256>,  <12.267963, 12.202021, 27.975206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.212036, 12.810315, 27.492256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588532, 12.845877, 27.622587>,  <12.814430, 12.867213, 27.700787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588532, 12.845877, 27.622587>,  <12.212036, 12.810315, 27.492256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.588532, 12.845877, 27.622587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318283, 0.089216, -0.943788,
		-0.112975, 0.992037, 0.055677,
		0.941240, 0.088904, 0.325828,
		12.870904, 12.872548, 27.720335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.476039, 13.377976, 27.072540>,  <12.212036, 12.810315, 27.492256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.476039, 13.377976, 27.072540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.778754, 13.153558, 27.206703>,  <12.960383, 13.018907, 27.287201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.778754, 13.153558, 27.206703>,  <12.476039, 13.377976, 27.072540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.778754, 13.153558, 27.206703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450664, 0.076165, -0.889438,
		0.473471, 0.824272, 0.310485,
		0.756787, -0.561047, 0.335408,
		13.005791, 12.985244, 27.307325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.955511, 13.823285, 26.929193>,  <12.476039, 13.377976, 27.072540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.955511, 13.823285, 26.929193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.086867, 13.446383, 26.955462>,  <13.165681, 13.220241, 26.971222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.086867, 13.446383, 26.955462>,  <12.955511, 13.823285, 26.929193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.086867, 13.446383, 26.955462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473438, 0.104043, -0.874661,
		0.817322, 0.318320, 0.480267,
		0.328390, -0.942257, 0.065668,
		13.185385, 13.163706, 26.975163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.623284, 13.812419, 26.580122>,  <12.955511, 13.823285, 26.929193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.623284, 13.812419, 26.580122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.534933, 13.424624, 26.622656>,  <13.481922, 13.191948, 26.648176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.534933, 13.424624, 26.622656>,  <13.623284, 13.812419, 26.580122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.534933, 13.424624, 26.622656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470088, -0.201356, -0.859344,
		0.854535, -0.139823, 0.500220,
		-0.220879, -0.969487, 0.106337,
		13.468669, 13.133779, 26.654556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.202514, 13.464983, 26.302263>,  <13.623284, 13.812419, 26.580122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.202514, 13.464983, 26.302263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.931821, 13.171937, 26.273119>,  <13.769405, 12.996109, 26.255632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.931821, 13.171937, 26.273119>,  <14.202514, 13.464983, 26.302263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.931821, 13.171937, 26.273119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373959, -0.256805, -0.891182,
		0.634182, -0.630339, 0.447757,
		-0.676733, -0.732615, -0.072860,
		13.728801, 12.952152, 26.251261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.520484, 12.927308, 25.997911>,  <14.202514, 13.464983, 26.302263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.520484, 12.927308, 25.997911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.127731, 12.879374, 25.939194>,  <13.892080, 12.850613, 25.903963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.127731, 12.879374, 25.939194>,  <14.520484, 12.927308, 25.997911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.127731, 12.879374, 25.939194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156373, -0.074831, -0.984859,
		0.107038, -0.989969, 0.092214,
		-0.981881, -0.119837, -0.146795,
		13.833167, 12.843423, 25.895155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.471119, 12.318739, 25.565466>,  <14.520484, 12.927308, 25.997911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.471119, 12.318739, 25.565466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.122276, 12.507719, 25.514519>,  <13.912971, 12.621107, 25.483952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.122276, 12.507719, 25.514519>,  <14.471119, 12.318739, 25.565466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.122276, 12.507719, 25.514519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102772, -0.077633, -0.991671,
		-0.478403, -0.877931, 0.019150,
		-0.872106, 0.472450, -0.127367,
		13.860644, 12.649454, 25.476309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.103410, 11.934545, 25.043718>,  <14.471119, 12.318739, 25.565466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.103410, 11.934545, 25.043718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.932707, 12.296123, 25.054764>,  <13.830285, 12.513069, 25.061390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.932707, 12.296123, 25.054764>,  <14.103410, 11.934545, 25.043718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.932707, 12.296123, 25.054764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048124, 0.053187, -0.997424,
		-0.903085, -0.424328, -0.066199,
		-0.426756, 0.903945, 0.027612,
		13.804680, 12.567307, 25.063047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.656075, 11.934533, 24.504145>,  <14.103410, 11.934545, 25.043718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.656075, 11.934533, 24.504145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.737134, 12.319358, 24.577217>,  <13.785769, 12.550253, 24.621061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.737134, 12.319358, 24.577217>,  <13.656075, 11.934533, 24.504145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.737134, 12.319358, 24.577217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244036, 0.131053, -0.960870,
		-0.948357, 0.239298, -0.208220,
		0.202647, 0.962061, 0.182682,
		13.797928, 12.607976, 24.632021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.150696, 12.372845, 24.070616>,  <13.656075, 11.934533, 24.504145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.150696, 12.372845, 24.070616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.458684, 12.610240, 24.164352>,  <13.643477, 12.752677, 24.220594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.458684, 12.610240, 24.164352>,  <13.150696, 12.372845, 24.070616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.458684, 12.610240, 24.164352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136380, 0.205701, -0.969065,
		-0.623333, 0.778112, 0.077444,
		0.769972, 0.593489, 0.234340,
		13.689675, 12.788286, 24.234653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.170416, 13.027102, 23.635736>,  <13.150696, 12.372845, 24.070616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.170416, 13.027102, 23.635736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.544889, 12.994282, 23.772457>,  <13.769573, 12.974589, 23.854490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.544889, 12.994282, 23.772457>,  <13.170416, 13.027102, 23.635736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.544889, 12.994282, 23.772457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351499, 0.209695, -0.912402,
		0.003190, 0.974318, 0.225154,
		0.936183, -0.082052, 0.341803,
		13.825745, 12.969666, 23.874998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.462414, 13.702944, 23.361412>,  <13.170416, 13.027102, 23.635736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.462414, 13.702944, 23.361412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.739320, 13.431010, 23.458237>,  <13.905463, 13.267850, 23.516333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.739320, 13.431010, 23.458237>,  <13.462414, 13.702944, 23.361412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.739320, 13.431010, 23.458237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422667, 0.110093, -0.899573,
		0.584911, 0.725055, 0.363557,
		0.692266, -0.679834, 0.242063,
		13.947000, 13.227060, 23.530855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.020596, 13.924470, 22.954664>,  <13.462414, 13.702944, 23.361412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.020596, 13.924470, 22.954664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.128313, 13.554770, 23.062920>,  <14.192944, 13.332951, 23.127872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.128313, 13.554770, 23.062920>,  <14.020596, 13.924470, 22.954664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.128313, 13.554770, 23.062920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248483, -0.204825, -0.946733,
		0.930450, 0.322200, 0.174501,
		0.269295, -0.924248, 0.270640,
		14.209102, 13.277496, 23.144112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.685122, 13.761351, 22.568737>,  <14.020596, 13.924470, 22.954664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.685122, 13.761351, 22.568737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.573303, 13.394897, 22.683662>,  <14.506212, 13.175024, 22.752617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.573303, 13.394897, 22.683662>,  <14.685122, 13.761351, 22.568737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.573303, 13.394897, 22.683662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348521, -0.375655, -0.858730,
		0.894644, -0.139919, 0.424305,
		-0.279545, -0.916137, 0.287313,
		14.489440, 13.120055, 22.769855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.207229, 13.274811, 22.520489>,  <14.685122, 13.761351, 22.568737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.207229, 13.274811, 22.520489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.869471, 13.061249, 22.502867>,  <14.666816, 12.933111, 22.492292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.869471, 13.061249, 22.502867>,  <15.207229, 13.274811, 22.520489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.869471, 13.061249, 22.502867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311173, -0.421864, -0.851588,
		0.436082, -0.732786, 0.522357,
		-0.844395, -0.533906, -0.044056,
		14.616152, 12.901077, 22.489651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.409321, 12.515688, 22.324297>,  <15.207229, 13.274811, 22.520489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.409321, 12.515688, 22.324297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.020471, 12.541706, 22.234196>,  <14.787160, 12.557317, 22.180134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.020471, 12.541706, 22.234196>,  <15.409321, 12.515688, 22.324297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.020471, 12.541706, 22.234196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159186, -0.522249, -0.837804,
		-0.172133, -0.850309, 0.497338,
		-0.972127, 0.065044, -0.225254,
		14.728832, 12.561219, 22.166620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.243407, 11.862260, 22.112446>,  <15.409321, 12.515688, 22.324297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.243407, 11.862260, 22.112446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.962100, 12.105080, 21.964443>,  <14.793316, 12.250772, 21.875643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.962100, 12.105080, 21.964443>,  <15.243407, 11.862260, 22.112446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.962100, 12.105080, 21.964443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132314, -0.399597, -0.907092,
		-0.698504, -0.686885, 0.200702,
		-0.703268, 0.607051, -0.370005,
		14.751120, 12.287195, 21.853441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.668833, 11.446760, 21.773876>,  <15.243407, 11.862260, 22.112446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.668833, 11.446760, 21.773876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.656985, 11.810128, 21.607073>,  <14.649877, 12.028149, 21.506990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.656985, 11.810128, 21.607073>,  <14.668833, 11.446760, 21.773876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.656985, 11.810128, 21.607073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115088, -0.411318, -0.904197,
		-0.992914, -0.074773, -0.092365,
		-0.029618, 0.908420, -0.417009,
		14.648100, 12.082654, 21.481970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.169947, 11.336665, 21.243259>,  <14.668833, 11.446760, 21.773876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.169947, 11.336665, 21.243259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.349948, 11.680315, 21.145771>,  <14.457949, 11.886505, 21.087278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.349948, 11.680315, 21.145771>,  <14.169947, 11.336665, 21.243259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.349948, 11.680315, 21.145771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167605, -0.349317, -0.921893,
		-0.877157, 0.374007, -0.301188,
		0.450004, 0.859125, -0.243721,
		14.484949, 11.938053, 21.072655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.779284, 11.597157, 20.615284>,  <14.169947, 11.336665, 21.243259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.779284, 11.597157, 20.615284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.147164, 11.753687, 20.602571>,  <14.367893, 11.847605, 20.594944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.147164, 11.753687, 20.602571>,  <13.779284, 11.597157, 20.615284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.147164, 11.753687, 20.602571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087693, -0.283654, -0.954909,
		-0.382696, 0.875445, -0.295194,
		0.919703, 0.391326, -0.031783,
		14.423076, 11.871085, 20.593037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.833170, 12.060554, 19.985981>,  <13.779284, 11.597157, 20.615284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.833170, 12.060554, 19.985981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.214190, 11.975039, 20.072647>,  <14.442801, 11.923731, 20.124647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.214190, 11.975039, 20.072647>,  <13.833170, 12.060554, 19.985981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.214190, 11.975039, 20.072647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170833, -0.213647, -0.961858,
		0.251922, 0.953232, -0.166988,
		0.952550, -0.213786, 0.216666,
		14.499954, 11.910904, 20.137648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.077019, 12.149274, 19.403650>,  <13.833170, 12.060554, 19.985981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.077019, 12.149274, 19.403650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.377972, 11.951675, 19.577953>,  <14.558543, 11.833117, 19.682535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.377972, 11.951675, 19.577953>,  <14.077019, 12.149274, 19.403650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.377972, 11.951675, 19.577953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320346, -0.303633, -0.897321,
		0.575585, 0.814723, -0.070198,
		0.752383, -0.493997, 0.435760,
		14.603686, 11.803476, 19.708681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.767317, 12.360483, 19.099686>,  <14.077019, 12.149274, 19.403650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.767317, 12.360483, 19.099686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.809521, 11.993549, 19.253239>,  <14.834844, 11.773389, 19.345369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.809521, 11.993549, 19.253239>,  <14.767317, 12.360483, 19.099686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.809521, 11.993549, 19.253239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420960, -0.308538, -0.852993,
		0.900922, 0.251599, 0.353607,
		0.105511, -0.917334, 0.383882,
		14.841174, 11.718349, 19.368402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.200916, 12.133540, 18.592224>,  <14.767317, 12.360483, 19.099686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.200916, 12.133540, 18.592224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.121828, 11.813148, 18.818264>,  <15.074375, 11.620914, 18.953888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.121828, 11.813148, 18.818264>,  <15.200916, 12.133540, 18.592224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.121828, 11.813148, 18.818264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148085, -0.594272, -0.790513,
		0.969009, -0.072617, 0.236113,
		-0.197720, -0.800979, 0.565101,
		15.062512, 11.572855, 18.987795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.725137, 11.640873, 18.555017>,  <15.200916, 12.133540, 18.592224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.725137, 11.640873, 18.555017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.439728, 11.390196, 18.680326>,  <15.268482, 11.239789, 18.755512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.439728, 11.390196, 18.680326>,  <15.725137, 11.640873, 18.555017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.439728, 11.390196, 18.680326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265640, -0.655725, -0.706725,
		0.648322, -0.421046, 0.634350,
		-0.713523, -0.626694, 0.313274,
		15.225671, 11.202188, 18.774309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.000263, 11.012586, 18.539957>,  <15.725137, 11.640873, 18.555017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.000263, 11.012586, 18.539957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.603465, 10.962278, 18.535427>,  <15.365386, 10.932094, 18.532709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.603465, 10.962278, 18.535427>,  <16.000263, 11.012586, 18.539957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.603465, 10.962278, 18.535427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089286, -0.635158, -0.767204,
		0.089298, -0.762074, 0.641303,
		-0.991995, -0.125769, -0.011324,
		15.305866, 10.924548, 18.532030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.818957, 10.314733, 18.585709>,  <16.000263, 11.012586, 18.539957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.818957, 10.314733, 18.585709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.534720, 10.535571, 18.411240>,  <15.364179, 10.668075, 18.306559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.534720, 10.535571, 18.411240>,  <15.818957, 10.314733, 18.585709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.534720, 10.535571, 18.411240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092873, -0.540893, -0.835948,
		-0.697449, -0.634526, 0.333079,
		-0.710591, 0.552097, -0.436175,
		15.321543, 10.701200, 18.280388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.167933, 10.569298, 19.283388>,  <15.818957, 10.314733, 18.585709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.167933, 10.569298, 19.283388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.559420, 10.617501, 19.216944>,  <16.794312, 10.646423, 19.177076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.559420, 10.617501, 19.216944>,  <16.167933, 10.569298, 19.283388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.559420, 10.617501, 19.216944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091178, 0.469810, 0.878046,
		0.183852, -0.874503, 0.448823,
		0.978716, 0.120508, -0.166111,
		16.853035, 10.653654, 19.167110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.565449, 10.321298, 19.925426>,  <16.167933, 10.569298, 19.283388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.565449, 10.321298, 19.925426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.867010, 10.540013, 19.779743>,  <17.047947, 10.671243, 19.692333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.867010, 10.540013, 19.779743>,  <16.565449, 10.321298, 19.925426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.867010, 10.540013, 19.779743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213645, 0.320195, 0.922947,
		0.621276, -0.773625, 0.124577,
		0.753904, 0.546790, -0.364210,
		17.093182, 10.704050, 19.670481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160025, 10.264462, 20.402279>,  <16.565449, 10.321298, 19.925426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.160025, 10.264462, 20.402279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.240454, 10.596939, 20.194939>,  <17.288712, 10.796425, 20.070534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.240454, 10.596939, 20.194939>,  <17.160025, 10.264462, 20.402279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.240454, 10.596939, 20.194939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245499, 0.469513, 0.848108,
		0.948314, -0.297788, -0.109650,
		0.201074, 0.831192, -0.518352,
		17.300776, 10.846296, 20.039433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.931942, 10.488066, 20.612169>,  <17.160025, 10.264462, 20.402279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.931942, 10.488066, 20.612169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.685011, 10.777787, 20.489340>,  <17.536852, 10.951620, 20.415642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.685011, 10.777787, 20.489340>,  <17.931942, 10.488066, 20.612169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.685011, 10.777787, 20.489340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007711, 0.384739, 0.922993,
		0.786670, 0.572155, -0.231925,
		-0.617325, 0.724303, -0.307074,
		17.499813, 10.995078, 20.397217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.280416, 11.007759, 20.969353>,  <17.931942, 10.488066, 20.612169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.280416, 11.007759, 20.969353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.924637, 11.145115, 20.848713>,  <17.711168, 11.227529, 20.776329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.924637, 11.145115, 20.848713>,  <18.280416, 11.007759, 20.969353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.924637, 11.145115, 20.848713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022726, 0.692323, 0.721230,
		0.456468, 0.634643, -0.623590,
		-0.889450, 0.343390, -0.301600,
		17.657803, 11.248132, 20.758232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.381006, 11.714973, 21.080873>,  <18.280416, 11.007759, 20.969353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.381006, 11.714973, 21.080873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.988611, 11.668790, 21.018478>,  <17.753174, 11.641080, 20.981041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.988611, 11.668790, 21.018478>,  <18.381006, 11.714973, 21.080873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.988611, 11.668790, 21.018478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188973, 0.751296, 0.632332,
		0.044183, 0.649787, -0.758831,
		-0.980988, -0.115460, -0.155987,
		17.694315, 11.634151, 20.971682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.071911, 12.361889, 21.043022>,  <18.381006, 11.714973, 21.080873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.071911, 12.361889, 21.043022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.722393, 12.187043, 21.128265>,  <17.512682, 12.082136, 21.179411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.722393, 12.187043, 21.128265>,  <18.071911, 12.361889, 21.043022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.722393, 12.187043, 21.128265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144264, 0.651505, 0.744801,
		-0.464405, 0.620058, -0.632341,
		-0.873794, -0.437114, 0.213110,
		17.460255, 12.055909, 21.192198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.567034, 12.898540, 21.103573>,  <18.071911, 12.361889, 21.043022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.567034, 12.898540, 21.103573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.426857, 12.578316, 21.298014>,  <17.342751, 12.386182, 21.414679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.426857, 12.578316, 21.298014>,  <17.567034, 12.898540, 21.103573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.426857, 12.578316, 21.298014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209773, 0.572922, 0.792310,
		-0.912790, 0.175687, -0.368711,
		-0.350441, -0.800559, 0.486103,
		17.321724, 12.338148, 21.443844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.013092, 13.045317, 21.425003>,  <17.567034, 12.898540, 21.103573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.013092, 13.045317, 21.425003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.109791, 12.739893, 21.664515>,  <17.167810, 12.556639, 21.808222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.109791, 12.739893, 21.664515>,  <17.013092, 13.045317, 21.425003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.109791, 12.739893, 21.664515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206002, 0.562628, 0.800633,
		-0.948221, -0.316898, -0.021282,
		0.241745, -0.763560, 0.598777,
		17.182314, 12.510825, 21.844149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.427156, 13.045780, 21.968122>,  <17.013092, 13.045317, 21.425003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.427156, 13.045780, 21.968122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.733622, 12.838283, 22.119858>,  <16.917501, 12.713784, 22.210899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.733622, 12.838283, 22.119858>,  <16.427156, 13.045780, 21.968122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.733622, 12.838283, 22.119858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096613, 0.490595, 0.866015,
		-0.635342, -0.700158, 0.325759,
		0.766163, -0.518743, 0.379341,
		16.963470, 12.682659, 22.233660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.237003, 12.760817, 22.716825>,  <16.427156, 13.045780, 21.968122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.237003, 12.760817, 22.716825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.635912, 12.759374, 22.687332>,  <16.875257, 12.758508, 22.669636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.635912, 12.759374, 22.687332>,  <16.237003, 12.760817, 22.716825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.635912, 12.759374, 22.687332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071033, 0.318833, 0.945145,
		0.020099, -0.947804, 0.318219,
		0.997271, -0.003608, -0.073734,
		16.935093, 12.758291, 22.665213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.463968, 12.404047, 23.315294>,  <16.237003, 12.760817, 22.716825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.463968, 12.404047, 23.315294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.790749, 12.594742, 23.185484>,  <16.986816, 12.709159, 23.107597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.790749, 12.594742, 23.185484>,  <16.463968, 12.404047, 23.315294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.790749, 12.594742, 23.185484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061577, 0.487392, 0.871009,
		0.573415, -0.731552, 0.368818,
		0.816948, 0.476739, -0.324525,
		17.035833, 12.737763, 23.088127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.061110, 12.178626, 23.712276>,  <16.463968, 12.404047, 23.315294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.061110, 12.178626, 23.712276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.138697, 12.540681, 23.560959>,  <17.185249, 12.757914, 23.470169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.138697, 12.540681, 23.560959>,  <17.061110, 12.178626, 23.712276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.138697, 12.540681, 23.560959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164143, 0.350234, 0.922168,
		0.967178, -0.240966, -0.080637,
		0.193969, 0.905136, -0.378292,
		17.196888, 12.812222, 23.447472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.485193, 12.480198, 24.138025>,  <17.061110, 12.178626, 23.712276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.485193, 12.480198, 24.138025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.314377, 12.780805, 23.936884>,  <17.211887, 12.961168, 23.816200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.314377, 12.780805, 23.936884>,  <17.485193, 12.480198, 24.138025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.314377, 12.780805, 23.936884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007224, 0.553255, 0.832980,
		0.904204, 0.359348, -0.230833,
		-0.427039, 0.751517, -0.502852,
		17.186266, 13.006260, 23.786028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.811150, 13.077446, 24.319592>,  <17.485193, 12.480198, 24.138025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.811150, 13.077446, 24.319592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.461634, 13.203110, 24.171106>,  <17.251925, 13.278508, 24.082016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.461634, 13.203110, 24.171106>,  <17.811150, 13.077446, 24.319592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.461634, 13.203110, 24.171106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127742, 0.588248, 0.798528,
		0.469230, 0.745163, -0.473872,
		-0.873788, 0.314160, -0.371212,
		17.199497, 13.297358, 24.059742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.815859, 13.742448, 24.577850>,  <17.811150, 13.077446, 24.319592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.815859, 13.742448, 24.577850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.436958, 13.661530, 24.478418>,  <17.209618, 13.612979, 24.418758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.436958, 13.661530, 24.478418>,  <17.815859, 13.742448, 24.577850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.436958, 13.661530, 24.478418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317637, 0.489272, 0.812231,
		-0.042687, 0.848345, -0.527719,
		-0.947251, -0.202295, -0.248581,
		17.152782, 13.600841, 24.403845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.465103, 14.328004, 24.743959>,  <17.815859, 13.742448, 24.577850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.465103, 14.328004, 24.743959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.178354, 14.052313, 24.701893>,  <17.006306, 13.886898, 24.676653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.178354, 14.052313, 24.701893>,  <17.465103, 14.328004, 24.743959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.178354, 14.052313, 24.701893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435363, 0.324703, 0.839659,
		-0.544568, 0.647714, -0.532835,
		-0.716871, -0.689228, -0.105168,
		16.963293, 13.845545, 24.670341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.838882, 14.645019, 24.817253>,  <17.465103, 14.328004, 24.743959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.838882, 14.645019, 24.817253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.741446, 14.265348, 24.896982>,  <16.682983, 14.037546, 24.944818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.741446, 14.265348, 24.896982>,  <16.838882, 14.645019, 24.817253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.741446, 14.265348, 24.896982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563681, 0.305791, 0.767304,
		-0.789256, 0.074556, -0.609521,
		-0.243594, -0.949175, 0.199322,
		16.668367, 13.980596, 24.956779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.199142, 14.685178, 25.152723>,  <16.838882, 14.645019, 24.817253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.199142, 14.685178, 25.152723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.319981, 14.315546, 25.246376>,  <16.392483, 14.093767, 25.302567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.319981, 14.315546, 25.246376>,  <16.199142, 14.685178, 25.152723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.319981, 14.315546, 25.246376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494476, 0.058080, 0.867249,
		-0.815004, -0.377763, -0.439389,
		0.302095, -0.924079, 0.234130,
		16.410608, 14.038322, 25.316614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.584501, 14.423984, 25.319727>,  <16.199142, 14.685178, 25.152723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.584501, 14.423984, 25.319727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.852145, 14.184813, 25.496262>,  <16.012732, 14.041311, 25.602182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.852145, 14.184813, 25.496262>,  <15.584501, 14.423984, 25.319727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.852145, 14.184813, 25.496262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542023, 0.013650, 0.840253,
		-0.508433, -0.801435, -0.314956,
		0.669109, -0.597926, 0.441336,
		16.052877, 14.005436, 25.628662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.184992, 13.853387, 25.671082>,  <15.584501, 14.423984, 25.319727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.184992, 13.853387, 25.671082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.541278, 13.867578, 25.852352>,  <15.755050, 13.876092, 25.961115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.541278, 13.867578, 25.852352>,  <15.184992, 13.853387, 25.671082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.541278, 13.867578, 25.852352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453037, -0.012338, 0.891406,
		0.037219, -0.999294, 0.005085,
		0.890715, 0.035481, 0.453177,
		15.808493, 13.878221, 25.988306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.210732, 13.352933, 26.282616>,  <15.184992, 13.853387, 25.671082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.210732, 13.352933, 26.282616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.503949, 13.614422, 26.357765>,  <15.679879, 13.771315, 26.402855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.503949, 13.614422, 26.357765>,  <15.210732, 13.352933, 26.282616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.503949, 13.614422, 26.357765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261562, 0.015953, 0.965055,
		0.627880, -0.756567, 0.182683,
		0.733042, 0.653722, 0.187873,
		15.723862, 13.810538, 26.414127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.508070, 13.155869, 26.910837>,  <15.210732, 13.352933, 26.282616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.508070, 13.155869, 26.910837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.640008, 13.532864, 26.889225>,  <15.719171, 13.759061, 26.876259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.640008, 13.532864, 26.889225>,  <15.508070, 13.155869, 26.910837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.640008, 13.532864, 26.889225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241180, 0.139463, 0.960407,
		0.912708, -0.303754, 0.273310,
		0.329844, 0.942488, -0.054030,
		15.738961, 13.815610, 26.873016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.063320, 13.234265, 27.483343>,  <15.508070, 13.155869, 26.910837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.063320, 13.234265, 27.483343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.930251, 13.591622, 27.362560>,  <15.850410, 13.806037, 27.290091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.930251, 13.591622, 27.362560>,  <16.063320, 13.234265, 27.483343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.930251, 13.591622, 27.362560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300352, 0.203145, 0.931945,
		0.893934, 0.400725, 0.200752,
		-0.332672, 0.893393, -0.301956,
		15.830450, 13.859640, 27.271973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.453384, 13.694849, 27.882113>,  <16.063320, 13.234265, 27.483343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.453384, 13.694849, 27.882113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.103750, 13.851412, 27.767027>,  <15.893970, 13.945350, 27.697975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.103750, 13.851412, 27.767027>,  <16.453384, 13.694849, 27.882113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.103750, 13.851412, 27.767027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266325, 0.109208, 0.957677,
		0.406262, 0.913714, 0.008785,
		-0.874084, 0.391407, -0.287712,
		15.841525, 13.968834, 27.680714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.344000, 14.336816, 28.298445>,  <16.453384, 13.694849, 27.882113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.344000, 14.336816, 28.298445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.986240, 14.248900, 28.142628>,  <15.771585, 14.196151, 28.049137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.986240, 14.248900, 28.142628>,  <16.344000, 14.336816, 28.298445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.986240, 14.248900, 28.142628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436830, 0.242191, 0.866327,
		-0.096066, 0.945006, -0.312626,
		-0.894400, -0.219789, -0.389541,
		15.717920, 14.182963, 28.025764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.975460, 14.893047, 28.384922>,  <16.344000, 14.336816, 28.298445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.975460, 14.893047, 28.384922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.719921, 14.586529, 28.357603>,  <15.566598, 14.402617, 28.341211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.719921, 14.586529, 28.357603>,  <15.975460, 14.893047, 28.384922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.719921, 14.586529, 28.357603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548769, 0.391674, 0.738542,
		-0.539190, 0.509297, -0.670739,
		-0.638848, -0.766295, -0.068299,
		15.528267, 14.356640, 28.337112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.309833, 15.205028, 28.530479>,  <15.975460, 14.893047, 28.384922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.309833, 15.205028, 28.530479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.203078, 14.819966, 28.548677>,  <15.139026, 14.588929, 28.559595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.203078, 14.819966, 28.548677>,  <15.309833, 15.205028, 28.530479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.203078, 14.819966, 28.548677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691776, 0.224225, 0.686418,
		-0.670983, 0.151723, -0.725783,
		-0.266885, -0.962654, 0.045493,
		15.123013, 14.531170, 28.562325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.553759, 15.118044, 28.317743>,  <15.309833, 15.205028, 28.530479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.553759, 15.118044, 28.317743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.687428, 14.832077, 28.563416>,  <14.767630, 14.660497, 28.710819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.687428, 14.832077, 28.563416>,  <14.553759, 15.118044, 28.317743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.687428, 14.832077, 28.563416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636871, 0.309087, 0.706300,
		-0.694783, -0.627182, -0.352022,
		0.334173, -0.714918, 0.614182,
		14.787681, 14.617601, 28.747671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.969067, 14.979256, 28.731974>,  <14.553759, 15.118044, 28.317743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.969067, 14.979256, 28.731974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.257200, 14.796721, 28.940926>,  <14.430080, 14.687201, 29.066296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.257200, 14.796721, 28.940926>,  <13.969067, 14.979256, 28.731974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.257200, 14.796721, 28.940926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433923, 0.291077, 0.852634,
		-0.541139, -0.840852, 0.011659,
		0.720333, -0.456334, 0.522378,
		14.473300, 14.659822, 29.097639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.605003, 14.552752, 29.180445>,  <13.969067, 14.979256, 28.731974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.605003, 14.552752, 29.180445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.962056, 14.633300, 29.341770>,  <14.176288, 14.681628, 29.438564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.962056, 14.633300, 29.341770>,  <13.605003, 14.552752, 29.180445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.962056, 14.633300, 29.341770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444271, 0.241404, 0.862756,
		0.076370, -0.949302, 0.304947,
		0.892631, 0.201368, 0.403311,
		14.229846, 14.693710, 29.462763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.467829, 14.456424, 29.846189>,  <13.605003, 14.552752, 29.180445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.467829, 14.456424, 29.846189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.816906, 14.647960, 29.884392>,  <14.026352, 14.762881, 29.907312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.816906, 14.647960, 29.884392>,  <13.467829, 14.456424, 29.846189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.816906, 14.647960, 29.884392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260673, 0.291516, 0.920363,
		0.412868, -0.828088, 0.379224,
		0.872692, 0.478842, 0.095502,
		14.078713, 14.791612, 29.913042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718529, 14.334479, 30.571573>,  <13.467829, 14.456424, 29.846189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.718529, 14.334479, 30.571573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.911387, 14.663983, 30.452274>,  <14.027103, 14.861686, 30.380695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.911387, 14.663983, 30.452274>,  <13.718529, 14.334479, 30.571573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.911387, 14.663983, 30.452274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213639, 0.440706, 0.871858,
		0.849642, -0.356647, 0.388473,
		0.482148, 0.823761, -0.298249,
		14.056032, 14.911112, 30.362801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.303660, 14.527218, 31.054436>,  <13.718529, 14.334479, 30.571573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.303660, 14.527218, 31.054436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.180045, 14.856778, 30.864412>,  <14.105876, 15.054515, 30.750399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.180045, 14.856778, 30.864412>,  <14.303660, 14.527218, 31.054436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.180045, 14.856778, 30.864412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096477, 0.469776, 0.877498,
		0.946143, 0.317013, -0.065692,
		-0.309039, 0.823901, -0.475059,
		14.087334, 15.103949, 30.721895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.316023, 14.985512, 31.530613>,  <14.303660, 14.527218, 31.054436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.316023, 14.985512, 31.530613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.146340, 15.232046, 31.265228>,  <14.044531, 15.379967, 31.105997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.146340, 15.232046, 31.265228>,  <14.316023, 14.985512, 31.530613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.146340, 15.232046, 31.265228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191488, 0.655030, 0.730937,
		0.885089, 0.437112, -0.159846,
		-0.424205, 0.616335, -0.663461,
		14.019079, 15.416946, 31.066191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.647748, 15.619361, 31.643124>,  <14.316023, 14.985512, 31.530613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.647748, 15.619361, 31.643124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.301543, 15.705660, 31.462307>,  <14.093821, 15.757439, 31.353817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.301543, 15.705660, 31.462307>,  <14.647748, 15.619361, 31.643124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.301543, 15.705660, 31.462307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219034, 0.648598, 0.728934,
		0.450459, 0.729914, -0.514113,
		-0.865512, 0.215746, -0.452043,
		14.041889, 15.770384, 31.326694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.447170, 16.374083, 31.667150>,  <14.647748, 15.619361, 31.643124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.447170, 16.374083, 31.667150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.093458, 16.191927, 31.625828>,  <13.881231, 16.082634, 31.601034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.093458, 16.191927, 31.625828>,  <14.447170, 16.374083, 31.667150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.093458, 16.191927, 31.625828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375288, 0.561429, 0.737534,
		-0.277865, 0.690955, -0.667362,
		-0.884279, -0.455388, -0.103306,
		13.828175, 16.055311, 31.594835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.575623, 17.080458, 31.564392>,  <14.447170, 16.374083, 31.667150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.575623, 17.080458, 31.564392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.366752, 17.282400, 31.289452>,  <14.241429, 17.403566, 31.124487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.366752, 17.282400, 31.289452>,  <14.575623, 17.080458, 31.564392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.366752, 17.282400, 31.289452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786540, -0.026468, -0.616972,
		-0.329675, -0.862798, -0.383268,
		-0.522178, 0.504856, -0.687351,
		14.210098, 17.433857, 31.083246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.512935, 16.711500, 30.849297>,  <14.575623, 17.080458, 31.564392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.512935, 16.711500, 30.849297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.455531, 17.100021, 30.773422>,  <14.421089, 17.333134, 30.727898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.455531, 17.100021, 30.773422>,  <14.512935, 16.711500, 30.849297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.455531, 17.100021, 30.773422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643642, -0.053991, -0.763420,
		-0.751751, -0.231646, -0.617422,
		-0.143509, 0.971301, -0.189685,
		14.412478, 17.391411, 30.716516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.478442, 16.811197, 30.059103>,  <14.512935, 16.711500, 30.849297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.478442, 16.811197, 30.059103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.544589, 17.181599, 30.194851>,  <14.584277, 17.403839, 30.276300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.544589, 17.181599, 30.194851>,  <14.478442, 16.811197, 30.059103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.544589, 17.181599, 30.194851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556137, 0.196624, -0.807497,
		-0.814473, 0.322269, -0.482470,
		0.165366, 0.926003, 0.339370,
		14.594199, 17.459400, 30.296661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.258018, 17.244019, 29.506977>,  <14.478442, 16.811197, 30.059103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.258018, 17.244019, 29.506977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.526079, 17.428314, 29.739740>,  <14.686915, 17.538893, 29.879398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.526079, 17.428314, 29.739740>,  <14.258018, 17.244019, 29.506977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.526079, 17.428314, 29.739740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481581, 0.326657, -0.813250,
		-0.564781, 0.825235, -0.002974,
		0.670151, 0.460741, 0.581907,
		14.727124, 17.566536, 29.914312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.270357, 18.033321, 29.370579>,  <14.258018, 17.244019, 29.506977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.270357, 18.033321, 29.370579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.620848, 17.933455, 29.535452>,  <14.831141, 17.873535, 29.634377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.620848, 17.933455, 29.535452>,  <14.270357, 18.033321, 29.370579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.620848, 17.933455, 29.535452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464165, 0.207344, -0.861138,
		0.129534, 0.945873, 0.297567,
		0.876226, -0.249667, 0.412183,
		14.883716, 17.858555, 29.659107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.592344, 18.551340, 29.112114>,  <14.270357, 18.033321, 29.370579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.592344, 18.551340, 29.112114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.862358, 18.277437, 29.221975>,  <15.024366, 18.113096, 29.287891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.862358, 18.277437, 29.221975>,  <14.592344, 18.551340, 29.112114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.862358, 18.277437, 29.221975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565071, 0.240496, -0.789213,
		0.474366, 0.687945, 0.549280,
		0.675035, -0.684758, 0.274654,
		15.064869, 18.072010, 29.304371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.245326, 18.891312, 28.906630>,  <14.592344, 18.551340, 29.112114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.245326, 18.891312, 28.906630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.362427, 18.523340, 29.010962>,  <15.432687, 18.302557, 29.073561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.362427, 18.523340, 29.010962>,  <15.245326, 18.891312, 28.906630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.362427, 18.523340, 29.010962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773149, 0.067232, -0.630651,
		0.562616, 0.386284, 0.730923,
		0.292752, -0.919926, 0.260829,
		15.450253, 18.247362, 29.089211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.972949, 18.976877, 28.860388>,  <15.245326, 18.891312, 28.906630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.972949, 18.976877, 28.860388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.913184, 18.583237, 28.821976>,  <15.877325, 18.347052, 28.798929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.913184, 18.583237, 28.821976>,  <15.972949, 18.976877, 28.860388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.913184, 18.583237, 28.821976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737965, -0.046348, -0.673246,
		0.658091, -0.171457, 0.733156,
		-0.149413, -0.984101, -0.096028,
		15.868361, 18.288006, 28.793167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.623280, 18.615120, 28.809620>,  <15.972949, 18.976877, 28.860388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.623280, 18.615120, 28.809620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.355663, 18.357874, 28.660601>,  <16.195093, 18.203527, 28.571190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.355663, 18.357874, 28.660601>,  <16.623280, 18.615120, 28.809620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.355663, 18.357874, 28.660601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584281, -0.145315, -0.798435,
		0.459347, -0.751857, 0.472980,
		-0.669040, -0.643113, -0.372547,
		16.154951, 18.164940, 28.548836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.946583, 18.022171, 28.616043>,  <16.623280, 18.615120, 28.809620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.946583, 18.022171, 28.616043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.611263, 17.976973, 28.402693>,  <16.410072, 17.949854, 28.274683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.611263, 17.976973, 28.402693>,  <16.946583, 18.022171, 28.616043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.611263, 17.976973, 28.402693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534642, -0.362069, -0.763586,
		-0.106835, -0.925277, 0.363934,
		-0.838298, -0.112997, -0.533374,
		16.359774, 17.943073, 28.242680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.879631, 17.386242, 28.259611>,  <16.946583, 18.022171, 28.616043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.879631, 17.386242, 28.259611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.634827, 17.621141, 28.047731>,  <16.487944, 17.762081, 27.920603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.634827, 17.621141, 28.047731>,  <16.879631, 17.386242, 28.259611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.634827, 17.621141, 28.047731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410219, -0.336909, -0.847474,
		-0.676139, -0.735956, -0.034710,
		-0.612009, 0.587249, -0.529700,
		16.451223, 17.797316, 27.888821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.812304, 17.018723, 27.697834>,  <16.879631, 17.386242, 28.259611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.812304, 17.018723, 27.697834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.669144, 17.369108, 27.568472>,  <16.583248, 17.579340, 27.490854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.669144, 17.369108, 27.568472>,  <16.812304, 17.018723, 27.697834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.669144, 17.369108, 27.568472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516331, -0.102922, -0.850182,
		-0.778016, -0.471264, -0.415452,
		-0.357901, 0.875966, -0.323403,
		16.561773, 17.631899, 27.471451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.542784, 16.979290, 27.014837>,  <16.812304, 17.018723, 27.697834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.542784, 16.979290, 27.014837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.628605, 17.369925, 27.021177>,  <16.680098, 17.604305, 27.024981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.628605, 17.369925, 27.021177>,  <16.542784, 16.979290, 27.014837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.628605, 17.369925, 27.021177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255365, -0.040425, -0.965999,
		-0.942739, 0.211304, -0.258059,
		0.214551, 0.976584, 0.015849,
		16.692970, 17.662899, 27.025932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.109161, 17.370140, 26.559210>,  <16.542784, 16.979290, 27.014837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.109161, 17.370140, 26.559210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463646, 17.553104, 26.588608>,  <16.676336, 17.662884, 26.606247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463646, 17.553104, 26.588608>,  <16.109161, 17.370140, 26.559210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.463646, 17.553104, 26.588608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200438, -0.235537, -0.950972,
		-0.417675, 0.857494, -0.300418,
		0.886212, 0.457413, 0.073497,
		16.729509, 17.690329, 26.610657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.243132, 17.800743, 25.986483>,  <16.109161, 17.370140, 26.559210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.243132, 17.800743, 25.986483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.605711, 17.709198, 26.128452>,  <16.823259, 17.654270, 26.213634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.605711, 17.709198, 26.128452>,  <16.243132, 17.800743, 25.986483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.605711, 17.709198, 26.128452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291104, -0.270250, -0.917727,
		0.305953, 0.935193, -0.178345,
		0.906450, -0.228864, 0.354922,
		16.877645, 17.640539, 26.234928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.751646, 18.107389, 25.525139>,  <16.243132, 17.800743, 25.986483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.751646, 18.107389, 25.525139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.945171, 17.802011, 25.696291>,  <17.061287, 17.618786, 25.798983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.945171, 17.802011, 25.696291>,  <16.751646, 18.107389, 25.525139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.945171, 17.802011, 25.696291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354726, -0.275883, -0.893341,
		0.800059, 0.583990, 0.137338,
		0.483813, -0.763443, 0.427879,
		17.090315, 17.572979, 25.824656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.385921, 18.116749, 25.205399>,  <16.751646, 18.107389, 25.525139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.385921, 18.116749, 25.205399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.333797, 17.754969, 25.367872>,  <17.302523, 17.537901, 25.465357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.333797, 17.754969, 25.367872>,  <17.385921, 18.116749, 25.205399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.333797, 17.754969, 25.367872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431020, -0.420619, -0.798312,
		0.892884, 0.071046, 0.444648,
		-0.130311, -0.904451, 0.406186,
		17.294704, 17.483633, 25.489729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.111513, 17.673407, 25.145933>,  <17.385921, 18.116749, 25.205399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.111513, 17.673407, 25.145933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.797791, 17.439363, 25.228407>,  <17.609556, 17.298937, 25.277891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.797791, 17.439363, 25.228407>,  <18.111513, 17.673407, 25.145933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.797791, 17.439363, 25.228407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269671, -0.620861, -0.736077,
		0.558695, -0.521709, 0.644732,
		-0.784307, -0.585108, 0.206182,
		17.562498, 17.263830, 25.290262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.415508, 16.915970, 25.156645>,  <18.111513, 17.673407, 25.145933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.415508, 16.915970, 25.156645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.026003, 16.861217, 25.083925>,  <17.792299, 16.828365, 25.040293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.026003, 16.861217, 25.083925>,  <18.415508, 16.915970, 25.156645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.026003, 16.861217, 25.083925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226809, -0.649011, -0.726183,
		-0.018588, -0.748363, 0.663028,
		-0.973762, -0.136882, -0.181799,
		17.733875, 16.820152, 25.029385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.377533, 16.290226, 24.942915>,  <18.415508, 16.915970, 25.156645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.377533, 16.290226, 24.942915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.015238, 16.414579, 24.827682>,  <17.797861, 16.489191, 24.758543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.015238, 16.414579, 24.827682>,  <18.377533, 16.290226, 24.942915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.015238, 16.414579, 24.827682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060043, -0.578723, -0.813311,
		-0.419563, -0.753944, 0.505505,
		-0.905738, 0.310883, -0.288080,
		17.743517, 16.507845, 24.741259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.008190, 15.652658, 24.712118>,  <18.377533, 16.290226, 24.942915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.008190, 15.652658, 24.712118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.812853, 15.960917, 24.548349>,  <17.695650, 16.145872, 24.450089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.812853, 15.960917, 24.548349>,  <18.008190, 15.652658, 24.712118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.812853, 15.960917, 24.548349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083181, -0.508143, -0.857247,
		-0.868679, -0.384573, 0.312250,
		-0.488341, 0.770646, -0.409424,
		17.666351, 16.192110, 24.425522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.468601, 15.346761, 24.467531>,  <18.008190, 15.652658, 24.712118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.468601, 15.346761, 24.467531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.509855, 15.696129, 24.277163>,  <17.534609, 15.905749, 24.162941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.509855, 15.696129, 24.277163>,  <17.468601, 15.346761, 24.467531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.509855, 15.696129, 24.277163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012265, -0.479554, -0.877427,
		-0.994592, 0.084658, -0.060172,
		0.103137, 0.873419, -0.475922,
		17.540796, 15.958155, 24.134386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.013405, 15.336383, 23.824953>,  <17.468601, 15.346761, 24.467531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.013405, 15.336383, 23.824953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.263628, 15.632498, 23.726442>,  <17.413761, 15.810166, 23.667336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.263628, 15.632498, 23.726442>,  <17.013405, 15.336383, 23.824953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.263628, 15.632498, 23.726442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011925, -0.324706, -0.945740,
		-0.780087, 0.588677, -0.211950,
		0.625557, 0.740287, -0.246279,
		17.451296, 15.854584, 23.652559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.832613, 15.533604, 23.180052>,  <17.013405, 15.336383, 23.824953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.832613, 15.533604, 23.180052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.212748, 15.647663, 23.229939>,  <17.440828, 15.716099, 23.259871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.212748, 15.647663, 23.229939>,  <16.832613, 15.533604, 23.180052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.212748, 15.647663, 23.229939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213596, -0.306107, -0.927726,
		-0.226363, 0.908289, -0.351810,
		0.950335, 0.285148, 0.124715,
		17.497849, 15.733208, 23.267353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.039976, 15.849123, 22.557520>,  <16.832613, 15.533604, 23.180052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.039976, 15.849123, 22.557520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.396484, 15.774817, 22.722990>,  <17.610390, 15.730233, 22.822273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.396484, 15.774817, 22.722990>,  <17.039976, 15.849123, 22.557520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.396484, 15.774817, 22.722990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317713, -0.395107, -0.861945,
		0.323566, 0.899656, -0.293127,
		0.891271, -0.185765, 0.413676,
		17.663866, 15.719087, 22.847094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.619856, 16.192406, 22.158541>,  <17.039976, 15.849123, 22.557520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.619856, 16.192406, 22.158541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.809927, 15.901512, 22.356667>,  <17.923969, 15.726976, 22.475542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.809927, 15.901512, 22.356667>,  <17.619856, 16.192406, 22.158541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.809927, 15.901512, 22.356667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585976, -0.158382, -0.794699,
		0.656381, 0.667867, 0.350882,
		0.475180, -0.727234, 0.495313,
		17.952480, 15.683342, 22.505260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.275011, 16.183290, 21.916586>,  <17.619856, 16.192406, 22.158541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.275011, 16.183290, 21.916586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.258568, 15.817690, 22.078035>,  <18.248703, 15.598330, 22.174906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.258568, 15.817690, 22.078035>,  <18.275011, 16.183290, 21.916586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.258568, 15.817690, 22.078035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378222, -0.388138, -0.840415,
		0.924802, 0.118113, 0.361650,
		-0.041106, -0.914001, 0.403623,
		18.246237, 15.543489, 22.199121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.907745, 15.977744, 21.827190>,  <18.275011, 16.183290, 21.916586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.907745, 15.977744, 21.827190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.695505, 15.641743, 21.872547>,  <18.568161, 15.440142, 21.899761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.695505, 15.641743, 21.872547>,  <18.907745, 15.977744, 21.827190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.695505, 15.641743, 21.872547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342087, -0.334612, -0.878072,
		0.775526, -0.427115, 0.464900,
		-0.530599, -0.840004, 0.113390,
		18.536325, 15.389742, 21.906565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.348833, 15.419873, 21.772615>,  <18.907745, 15.977744, 21.827190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.348833, 15.419873, 21.772615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.989710, 15.264112, 21.690344>,  <18.774235, 15.170656, 21.640982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.989710, 15.264112, 21.690344>,  <19.348833, 15.419873, 21.772615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.989710, 15.264112, 21.690344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325587, -0.272450, -0.905408,
		0.296531, -0.879850, 0.371393,
		-0.897810, -0.389402, -0.205677,
		18.720367, 15.147292, 21.628641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.522398, 14.772174, 21.523203>,  <19.348833, 15.419873, 21.772615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.522398, 14.772174, 21.523203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.144266, 14.826511, 21.404610>,  <18.917387, 14.859114, 21.333454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.144266, 14.826511, 21.404610>,  <19.522398, 14.772174, 21.523203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.144266, 14.826511, 21.404610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223741, -0.391269, -0.892664,
		-0.237267, -0.910195, 0.339484,
		-0.945328, 0.135843, -0.296483,
		18.860668, 14.867265, 21.315664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.462641, 14.230491, 21.030193>,  <19.522398, 14.772174, 21.523203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.462641, 14.230491, 21.030193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.158360, 14.483940, 20.973833>,  <18.975792, 14.636010, 20.940016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.158360, 14.483940, 20.973833>,  <19.462641, 14.230491, 21.030193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.158360, 14.483940, 20.973833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151723, -0.037491, -0.987712,
		-0.631121, -0.772732, -0.067616,
		-0.760701, 0.633624, -0.140902,
		18.930149, 14.674027, 20.931562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.105206, 13.925928, 20.565208>,  <19.462641, 14.230491, 21.030193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.105206, 13.925928, 20.565208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.017324, 14.311485, 20.505018>,  <18.964596, 14.542819, 20.468904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.017324, 14.311485, 20.505018>,  <19.105206, 13.925928, 20.565208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.017324, 14.311485, 20.505018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218663, -0.101667, -0.970490,
		-0.950746, -0.246122, -0.188431,
		-0.219702, 0.963892, -0.150477,
		18.951414, 14.600653, 20.459875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.815540, 13.943896, 19.963936>,  <19.105206, 13.925928, 20.565208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.815540, 13.943896, 19.963936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.958107, 14.314232, 20.014198>,  <19.043648, 14.536433, 20.044355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.958107, 14.314232, 20.014198>,  <18.815540, 13.943896, 19.963936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.958107, 14.314232, 20.014198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155015, 0.074029, -0.985134,
		-0.921377, 0.370600, -0.117133,
		0.356419, 0.925838, 0.125657,
		19.065033, 14.591983, 20.051895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.475269, 14.374686, 19.500563>,  <18.815540, 13.943896, 19.963936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.475269, 14.374686, 19.500563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.831882, 14.538608, 19.577742>,  <19.045851, 14.636961, 19.624050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.831882, 14.538608, 19.577742>,  <18.475269, 14.374686, 19.500563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.831882, 14.538608, 19.577742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173344, 0.084870, -0.981198,
		-0.418474, 0.908217, 0.004628,
		0.891533, 0.409804, 0.192950,
		19.099342, 14.661549, 19.635626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535120, 14.926609, 19.028622>,  <18.475269, 14.374686, 19.500563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.535120, 14.926609, 19.028622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.913038, 14.899784, 19.156910>,  <19.139790, 14.883689, 19.233883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.913038, 14.899784, 19.156910>,  <18.535120, 14.926609, 19.028622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.913038, 14.899784, 19.156910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327616, 0.178106, -0.927872,
		0.005102, 0.981723, 0.190245,
		0.944797, -0.067061, 0.320719,
		19.196478, 14.879665, 19.253126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926094, 15.454430, 18.693489>,  <18.535120, 14.926609, 19.028622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.926094, 15.454430, 18.693489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.222719, 15.212882, 18.810400>,  <19.400694, 15.067954, 18.880547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.222719, 15.212882, 18.810400>,  <18.926094, 15.454430, 18.693489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.222719, 15.212882, 18.810400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447242, 0.120251, -0.886293,
		0.500057, 0.787961, 0.359249,
		0.741564, -0.603868, 0.292277,
		19.445189, 15.031722, 18.898083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.468634, 15.830518, 18.529804>,  <18.926094, 15.454430, 18.693489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.468634, 15.830518, 18.529804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.632483, 15.471609, 18.595671>,  <19.730791, 15.256264, 18.635191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.632483, 15.471609, 18.595671>,  <19.468634, 15.830518, 18.529804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.632483, 15.471609, 18.595671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509593, 0.075343, -0.857111,
		0.756654, 0.435004, 0.488105,
		0.409622, -0.897271, 0.164667,
		19.755369, 15.202428, 18.645071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.170851, 15.885785, 18.427345>,  <19.468634, 15.830518, 18.529804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.170851, 15.885785, 18.427345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.113068, 15.493408, 18.375372>,  <20.078398, 15.257982, 18.344187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.113068, 15.493408, 18.375372>,  <20.170851, 15.885785, 18.427345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.113068, 15.493408, 18.375372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434744, 0.055042, -0.898870,
		0.888893, -0.186336, 0.418508,
		-0.144456, -0.980943, -0.129935,
		20.069731, 15.199125, 18.336391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.835403, 15.582368, 18.355827>,  <20.170851, 15.885785, 18.427345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.835403, 15.582368, 18.355827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.557575, 15.360570, 18.172478>,  <20.390879, 15.227491, 18.062468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.557575, 15.360570, 18.172478>,  <20.835403, 15.582368, 18.355827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.557575, 15.360570, 18.172478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474841, 0.125303, -0.871106,
		0.540459, -0.822700, 0.176264,
		-0.694572, -0.554494, -0.458373,
		20.349203, 15.194221, 18.034966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.185549, 15.314229, 17.860857>,  <20.835403, 15.582368, 18.355827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.185549, 15.314229, 17.860857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.818495, 15.221231, 17.731928>,  <20.598263, 15.165433, 17.654570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.818495, 15.221231, 17.731928>,  <21.185549, 15.314229, 17.860857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.818495, 15.221231, 17.731928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284577, 0.181747, -0.941267,
		0.277421, -0.955465, -0.100614,
		-0.917635, -0.232494, -0.322324,
		20.543203, 15.151484, 17.635231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.235298, 14.798428, 17.331808>,  <21.185549, 15.314229, 17.860857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.235298, 14.798428, 17.331808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.879593, 14.966972, 17.260626>,  <20.666170, 15.068099, 17.217916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.879593, 14.966972, 17.260626>,  <21.235298, 14.798428, 17.331808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.879593, 14.966972, 17.260626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226410, 0.067448, -0.971694,
		-0.397432, -0.904381, -0.155380,
		-0.889262, 0.421362, -0.177955,
		20.612814, 15.093381, 17.207239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.980640, 14.380846, 16.714018>,  <21.235298, 14.798428, 17.331808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.980640, 14.380846, 16.714018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.820801, 14.746584, 16.740231>,  <20.724897, 14.966026, 16.755959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.820801, 14.746584, 16.740231>,  <20.980640, 14.380846, 16.714018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.820801, 14.746584, 16.740231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278051, 0.189017, -0.941786,
		-0.873503, -0.358116, -0.329765,
		-0.399600, 0.914344, 0.065532,
		20.700920, 15.020887, 16.759890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.615259, 14.382492, 16.168711>,  <20.980640, 14.380846, 16.714018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.615259, 14.382492, 16.168711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.716412, 14.750245, 16.289234>,  <20.777103, 14.970897, 16.361549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.716412, 14.750245, 16.289234>,  <20.615259, 14.382492, 16.168711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.716412, 14.750245, 16.289234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365118, 0.197717, -0.909724,
		-0.895957, 0.340066, -0.285684,
		0.252882, 0.919382, 0.301310,
		20.792276, 15.026060, 16.379627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.335983, 14.444040, 15.726821>,  <20.615259, 14.382492, 16.168711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.335983, 14.444040, 15.726821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.358728, 14.841314, 15.686124>,  <21.372375, 15.079679, 15.661706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.358728, 14.841314, 15.686124>,  <21.335983, 14.444040, 15.726821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.358728, 14.841314, 15.686124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713809, -0.111693, -0.691377,
		-0.698028, -0.033310, -0.715295,
		0.056863, 0.993184, -0.101742,
		21.375788, 15.139270, 15.655602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.126637, 14.730511, 15.052958>,  <21.335983, 14.444040, 15.726821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.126637, 14.730511, 15.052958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.417055, 14.941503, 15.229423>,  <21.591307, 15.068097, 15.335301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.417055, 14.941503, 15.229423>,  <21.126637, 14.730511, 15.052958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.417055, 14.941503, 15.229423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615379, -0.212105, -0.759158,
		-0.306867, 0.822665, -0.478597,
		0.726045, 0.527479, 0.441162,
		21.634869, 15.099747, 15.361772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.029472, 15.168472, 14.389922>,  <21.126637, 14.730511, 15.052958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.029472, 15.168472, 14.389922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.265348, 15.193769, 14.711983>,  <21.406874, 15.208946, 14.905219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.265348, 15.193769, 14.711983>,  <21.029472, 15.168472, 14.389922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.265348, 15.193769, 14.711983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555114, 0.755846, 0.347196,
		-0.586614, -0.651688, 0.480819,
		0.589688, 0.063240, 0.805151,
		21.442255, 15.212740, 14.953528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.606434, 15.507252, 14.945042>,  <21.029472, 15.168472, 14.389922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.606434, 15.507252, 14.945042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.993773, 15.548322, 15.036052>,  <21.226175, 15.572964, 15.090657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.993773, 15.548322, 15.036052>,  <20.606434, 15.507252, 14.945042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.993773, 15.548322, 15.036052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193247, 0.885307, 0.422950,
		-0.158003, -0.453530, 0.877124,
		0.968344, 0.102674, 0.227525,
		21.284275, 15.579124, 15.104309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.792465, 15.474382, 15.734817>,  <20.606434, 15.507252, 14.945042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.792465, 15.474382, 15.734817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.010618, 15.694560, 15.481971>,  <21.141510, 15.826667, 15.330263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.010618, 15.694560, 15.481971>,  <20.792465, 15.474382, 15.734817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.010618, 15.694560, 15.481971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300809, 0.832442, 0.465353,
		0.782349, -0.063650, 0.619580,
		0.545384, 0.550444, -0.632114,
		21.174232, 15.859694, 15.292336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.996586, 16.137568, 16.099775>,  <20.792465, 15.474382, 15.734817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.996586, 16.137568, 16.099775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.060865, 16.198051, 15.709634>,  <21.099434, 16.234343, 15.475550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.060865, 16.198051, 15.709634>,  <20.996586, 16.137568, 16.099775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.060865, 16.198051, 15.709634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315740, 0.944143, 0.094352,
		0.935138, 0.292795, 0.199467,
		0.160700, 0.151212, -0.975352,
		21.109076, 16.243416, 15.417028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.180540, 16.782600, 16.040037>,  <20.996586, 16.137568, 16.099775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.180540, 16.782600, 16.040037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.059528, 16.728481, 15.662642>,  <20.986921, 16.696011, 15.436205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.059528, 16.728481, 15.662642>,  <21.180540, 16.782600, 16.040037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.059528, 16.728481, 15.662642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305610, 0.951381, -0.038436,
		0.902817, 0.276712, -0.329168,
		-0.302528, -0.135298, -0.943489,
		20.968769, 16.687893, 15.379596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.351685, 17.337767, 15.753008>,  <21.180540, 16.782600, 16.040037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.351685, 17.337767, 15.753008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.081316, 17.191690, 15.496956>,  <20.919094, 17.104044, 15.343325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.081316, 17.191690, 15.496956>,  <21.351685, 17.337767, 15.753008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.081316, 17.191690, 15.496956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308528, 0.929032, -0.204230,
		0.669283, 0.059454, -0.740625,
		-0.675922, -0.365191, -0.640129,
		20.878540, 17.082132, 15.304917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.376236, 17.622250, 15.101638>,  <21.351685, 17.337767, 15.753008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.376236, 17.622250, 15.101638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.995960, 17.498537, 15.110878>,  <20.767796, 17.424309, 15.116423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.995960, 17.498537, 15.110878>,  <21.376236, 17.622250, 15.101638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.995960, 17.498537, 15.110878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310128, 0.948756, -0.060676,
		-0.003151, -0.064849, -0.997890,
		-0.950689, -0.309283, 0.023101,
		20.710752, 17.405752, 15.117808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.056158, 17.830807, 14.405096>,  <21.376236, 17.622250, 15.101638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.056158, 17.830807, 14.405096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.721155, 17.755672, 14.610347>,  <20.520153, 17.710592, 14.733498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.721155, 17.755672, 14.610347>,  <21.056158, 17.830807, 14.405096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.721155, 17.755672, 14.610347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399186, 0.851576, -0.339808,
		-0.373139, -0.489425, -0.788182,
		-0.837507, -0.187835, 0.513128,
		20.469904, 17.699322, 14.764285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.474108, 18.061230, 13.960415>,  <21.056158, 17.830807, 14.405096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.474108, 18.061230, 13.960415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.333078, 18.078098, 14.334348>,  <20.248461, 18.088219, 14.558707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.333078, 18.078098, 14.334348>,  <20.474108, 18.061230, 13.960415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.333078, 18.078098, 14.334348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559915, 0.790923, -0.246853,
		-0.749790, -0.610461, -0.255247,
		-0.352575, 0.042171, 0.934833,
		20.227306, 18.090750, 14.614798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.744934, 18.115614, 13.771783>,  <20.474108, 18.061230, 13.960415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.744934, 18.115614, 13.771783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.772387, 18.228916, 14.154417>,  <19.788858, 18.296898, 14.383998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.772387, 18.228916, 14.154417>,  <19.744934, 18.115614, 13.771783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.772387, 18.228916, 14.154417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472648, 0.853641, -0.218864,
		-0.878575, -0.437107, 0.192466,
		0.068629, 0.283257, 0.956585,
		19.792974, 18.313892, 14.441393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.142864, 18.461319, 13.961975>,  <19.744934, 18.115614, 13.771783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.142864, 18.461319, 13.961975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.379927, 18.586708, 14.258757>,  <19.522163, 18.661942, 14.436826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.379927, 18.586708, 14.258757>,  <19.142864, 18.461319, 13.961975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.379927, 18.586708, 14.258757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472364, 0.881390, 0.004932,
		-0.652404, -0.353395, 0.670433,
		0.592656, 0.313470, 0.741953,
		19.557724, 18.680750, 14.481342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.749331, 18.989937, 14.292994>,  <19.142864, 18.461319, 13.961975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.749331, 18.989937, 14.292994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.117163, 19.042467, 14.441116>,  <19.337862, 19.073984, 14.529989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.117163, 19.042467, 14.441116>,  <18.749331, 18.989937, 14.292994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.117163, 19.042467, 14.441116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192778, 0.972049, 0.134003,
		-0.342357, -0.194613, 0.919194,
		0.919580, 0.131323, 0.370305,
		19.393038, 19.081863, 14.552208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.681114, 19.434193, 14.862307>,  <18.749331, 18.989937, 14.292994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.681114, 19.434193, 14.862307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.062593, 19.494312, 14.758097>,  <19.291481, 19.530384, 14.695571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.062593, 19.494312, 14.758097>,  <18.681114, 19.434193, 14.862307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.062593, 19.494312, 14.758097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163216, 0.986177, -0.028554,
		0.252631, 0.069753, 0.965045,
		0.953697, 0.150298, -0.260524,
		19.348703, 19.539402, 14.679939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.999939, 19.835299, 15.336987>,  <18.681114, 19.434193, 14.862307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.999939, 19.835299, 15.336987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.223072, 19.889997, 15.009543>,  <19.356951, 19.922817, 14.813077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.223072, 19.889997, 15.009543>,  <18.999939, 19.835299, 15.336987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.223072, 19.889997, 15.009543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257335, 0.966222, -0.013950,
		0.789052, 0.218439, 0.574179,
		0.557831, 0.136749, -0.818611,
		19.390421, 19.931023, 14.763960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.281799, 20.379917, 15.493492>,  <18.999939, 19.835299, 15.336987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.281799, 20.379917, 15.493492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.311012, 20.364998, 15.094839>,  <19.328541, 20.356047, 14.855647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.311012, 20.364998, 15.094839>,  <19.281799, 20.379917, 15.493492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.311012, 20.364998, 15.094839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179169, 0.982552, -0.049901,
		0.981104, 0.182210, 0.065077,
		0.073034, -0.037298, -0.996632,
		19.332922, 20.353807, 14.795850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.800049, 20.908453, 15.242188>,  <19.281799, 20.379917, 15.493492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.800049, 20.908453, 15.242188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.574179, 20.818747, 14.924485>,  <19.438656, 20.764923, 14.733863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.574179, 20.818747, 14.924485>,  <19.800049, 20.908453, 15.242188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.574179, 20.818747, 14.924485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162514, 0.973745, -0.159405,
		0.809154, 0.039066, -0.586297,
		-0.564676, -0.224265, -0.794258,
		19.404776, 20.751467, 14.686208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.163847, 21.073048, 14.618775>,  <19.800049, 20.908453, 15.242188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.163847, 21.073048, 14.618775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.776642, 21.076082, 14.518462>,  <19.544319, 21.077904, 14.458275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.776642, 21.076082, 14.518462>,  <20.163847, 21.073048, 14.618775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.776642, 21.076082, 14.518462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061126, 0.976556, -0.206401,
		0.243337, -0.215128, -0.945784,
		-0.968014, 0.007587, -0.250782,
		19.486238, 21.078358, 14.443228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.177402, 21.654015, 14.282964>,  <20.163847, 21.073048, 14.618775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.177402, 21.654015, 14.282964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.786304, 21.583857, 14.329010>,  <19.551645, 21.541761, 14.356638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.786304, 21.583857, 14.329010>,  <20.177402, 21.654015, 14.282964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.786304, 21.583857, 14.329010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191912, 0.969420, -0.152951,
		-0.084768, -0.171639, -0.981506,
		-0.977745, -0.175397, 0.115115,
		19.492981, 21.531237, 14.363544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.844490, 21.887268, 13.671301>,  <20.177402, 21.654015, 14.282964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.844490, 21.887268, 13.671301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.558092, 21.903488, 13.950070>,  <19.386253, 21.913219, 14.117332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.558092, 21.903488, 13.950070>,  <19.844490, 21.887268, 13.671301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.558092, 21.903488, 13.950070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267437, 0.906218, -0.327484,
		-0.644846, -0.420861, -0.638005,
		-0.715997, 0.040551, 0.696925,
		19.343292, 21.915653, 14.159148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.283604, 22.365818, 13.369396>,  <19.844490, 21.887268, 13.671301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.283604, 22.365818, 13.369396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.219536, 22.356533, 13.764123>,  <19.181095, 22.350962, 14.000959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.219536, 22.356533, 13.764123>,  <19.283604, 22.365818, 13.369396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.219536, 22.356533, 13.764123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318293, 0.947537, -0.029374,
		-0.934364, -0.318801, -0.159154,
		-0.160169, -0.023212, 0.986817,
		19.171486, 22.349569, 14.060168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.586363, 22.430790, 13.504207>,  <19.283604, 22.365818, 13.369396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.586363, 22.430790, 13.504207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.752874, 22.552849, 13.846807>,  <18.852781, 22.626083, 14.052368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.752874, 22.552849, 13.846807>,  <18.586363, 22.430790, 13.504207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.752874, 22.552849, 13.846807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293347, 0.936702, -0.191146,
		-0.860615, -0.171683, 0.479444,
		0.416280, 0.305146, 0.856502,
		18.877758, 22.644392, 14.103758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.098711, 22.842064, 13.703279>,  <18.586363, 22.430790, 13.504207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.098711, 22.842064, 13.703279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.417770, 22.965210, 13.910729>,  <18.609207, 23.039097, 14.035200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.417770, 22.965210, 13.910729>,  <18.098711, 22.842064, 13.703279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.417770, 22.965210, 13.910729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314604, 0.946036, -0.077718,
		-0.514567, -0.101171, 0.851460,
		0.797650, 0.307864, 0.518628,
		18.657064, 23.057570, 14.066318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.796558, 23.283730, 14.310657>,  <18.098711, 22.842064, 13.703279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.796558, 23.283730, 14.310657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.179726, 23.384447, 14.255528>,  <18.409626, 23.444878, 14.222451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.179726, 23.384447, 14.255528>,  <17.796558, 23.283730, 14.310657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.179726, 23.384447, 14.255528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262941, 0.962308, -0.069462,
		0.115136, 0.102777, 0.988019,
		0.957918, 0.251793, -0.137820,
		18.467100, 23.459986, 14.214182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.966129, 23.924896, 14.717245>,  <17.796558, 23.283730, 14.310657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.966129, 23.924896, 14.717245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.236689, 23.922169, 14.422643>,  <18.399023, 23.920532, 14.245881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.236689, 23.922169, 14.422643>,  <17.966129, 23.924896, 14.717245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.236689, 23.922169, 14.422643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070077, 0.994825, -0.073567,
		0.733195, 0.101372, 0.672419,
		0.676398, -0.006818, -0.736505,
		18.439608, 23.920124, 14.201691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.404121, 24.486355, 14.939502>,  <17.966129, 23.924896, 14.717245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.404121, 24.486355, 14.939502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.460571, 24.416672, 14.549685>,  <18.494440, 24.374861, 14.315794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.460571, 24.416672, 14.549685>,  <18.404121, 24.486355, 14.939502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.460571, 24.416672, 14.549685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022727, 0.983566, -0.179113,
		0.989731, 0.047425, 0.134844,
		0.141123, -0.174209, -0.974544,
		18.502909, 24.364408, 14.257321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.108431, 24.729128, 14.639353>,  <18.404121, 24.486355, 14.939502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.108431, 24.729128, 14.639353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.775686, 24.744625, 14.417901>,  <18.576040, 24.753923, 14.285030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.775686, 24.744625, 14.417901>,  <19.108431, 24.729128, 14.639353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.775686, 24.744625, 14.417901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007357, 0.998242, 0.058807,
		0.554934, 0.044846, -0.830685,
		-0.831862, 0.038745, -0.553629,
		18.526127, 24.756248, 14.251812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.786200, 24.962069, 14.287809>,  <19.108431, 24.729128, 14.639353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.786200, 24.962069, 14.287809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.086170, 24.738625, 14.429547>,  <20.266153, 24.604557, 14.514590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.086170, 24.738625, 14.429547>,  <19.786200, 24.962069, 14.287809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.086170, 24.738625, 14.429547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465329, 0.826183, 0.317634,
		-0.470188, -0.073316, 0.879516,
		0.749929, -0.558612, 0.354345,
		20.311150, 24.571041, 14.535851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.789015, 24.497540, 14.854224>,  <19.786200, 24.962069, 14.287809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.789015, 24.497540, 14.854224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.453247, 24.295788, 14.935191>,  <19.251785, 24.174736, 14.983771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.453247, 24.295788, 14.935191>,  <19.789015, 24.497540, 14.854224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.453247, 24.295788, 14.935191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530354, -0.678846, 0.507831,
		-0.118730, 0.533638, 0.837338,
		-0.839421, -0.504380, 0.202418,
		19.201420, 24.144474, 14.995916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.608946, 24.414108, 15.587869>,  <19.789015, 24.497540, 14.854224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.608946, 24.414108, 15.587869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.489279, 24.096893, 15.375609>,  <19.417479, 23.906565, 15.248254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.489279, 24.096893, 15.375609>,  <19.608946, 24.414108, 15.587869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.489279, 24.096893, 15.375609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592830, -0.590241, 0.547876,
		-0.747698, -0.150678, 0.646718,
		-0.299167, -0.793039, -0.530649,
		19.399529, 23.858982, 15.216414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.457361, 23.833479, 16.073940>,  <19.608946, 24.414108, 15.587869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.457361, 23.833479, 16.073940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.582998, 23.751003, 15.703248>,  <19.658381, 23.701517, 15.480832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.582998, 23.751003, 15.703248>,  <19.457361, 23.833479, 16.073940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.582998, 23.751003, 15.703248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758886, -0.532012, 0.375573,
		-0.570473, -0.821248, -0.010624,
		0.314091, -0.206192, -0.926732,
		19.677225, 23.689146, 15.425228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.544987, 23.060516, 16.125311>,  <19.457361, 23.833479, 16.073940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.544987, 23.060516, 16.125311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.832302, 23.274956, 15.947924>,  <20.004690, 23.403620, 15.841492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.832302, 23.274956, 15.947924>,  <19.544987, 23.060516, 16.125311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.832302, 23.274956, 15.947924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695451, -0.534633, 0.480121,
		0.020300, -0.653274, -0.756850,
		0.718287, 0.536098, -0.443466,
		20.047789, 23.435785, 15.814883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.011246, 22.477402, 15.853437>,  <19.544987, 23.060516, 16.125311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.011246, 22.477402, 15.853437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.188028, 22.829165, 15.924225>,  <20.294098, 23.040222, 15.966698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.188028, 22.829165, 15.924225>,  <20.011246, 22.477402, 15.853437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.188028, 22.829165, 15.924225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773628, -0.473526, 0.421038,
		0.454062, -0.049174, -0.889612,
		0.441958, 0.879406, 0.176968,
		20.320616, 23.092987, 15.977315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.815834, 22.743704, 15.604941>,  <20.011246, 22.477402, 15.853437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.815834, 22.743704, 15.604941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.664658, 22.858009, 15.957191>,  <20.573952, 22.926592, 16.168541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.664658, 22.858009, 15.957191>,  <20.815834, 22.743704, 15.604941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.664658, 22.858009, 15.957191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731522, -0.490847, 0.473229,
		0.567484, 0.823048, -0.023532,
		-0.377940, 0.285764, 0.880625,
		20.551275, 22.943739, 16.221378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.417551, 23.081465, 16.019243>,  <20.815834, 22.743704, 15.604941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.417551, 23.081465, 16.019243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.129913, 22.923670, 16.248079>,  <20.957331, 22.828993, 16.385380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.129913, 22.923670, 16.248079>,  <21.417551, 23.081465, 16.019243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.129913, 22.923670, 16.248079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691707, -0.327343, 0.643729,
		-0.066672, 0.858620, 0.508259,
		-0.719094, -0.394485, 0.572089,
		20.914185, 22.805325, 16.419706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.917461, 23.448694, 15.562618>,  <21.417551, 23.081465, 16.019243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.917461, 23.448694, 15.562618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.156124, 23.469790, 15.242314>,  <22.299322, 23.482447, 15.050132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.156124, 23.469790, 15.242314>,  <21.917461, 23.448694, 15.562618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.156124, 23.469790, 15.242314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357003, -0.911104, 0.206005,
		-0.718713, -0.408789, -0.562445,
		0.596658, 0.052736, -0.800761,
		22.335121, 23.485611, 15.002086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.875303, 22.800238, 15.298053>,  <21.917461, 23.448694, 15.562618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.875303, 22.800238, 15.298053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.211756, 22.931332, 15.125968>,  <22.413628, 23.009989, 15.022717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.211756, 22.931332, 15.125968>,  <21.875303, 22.800238, 15.298053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.211756, 22.931332, 15.125968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436996, -0.880523, 0.183611,
		-0.318636, -0.342442, -0.883858,
		0.841133, 0.327737, -0.430212,
		22.464096, 23.029654, 14.996904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.039389, 22.375626, 14.736861>,  <21.875303, 22.800238, 15.298053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.039389, 22.375626, 14.736861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.394751, 22.547319, 14.801973>,  <22.607967, 22.650335, 14.841041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.394751, 22.547319, 14.801973>,  <22.039389, 22.375626, 14.736861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.394751, 22.547319, 14.801973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423154, -0.903181, 0.072147,
		0.177988, 0.004785, -0.984021,
		0.888404, 0.429233, 0.162780,
		22.661272, 22.676090, 14.850807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.518427, 22.005777, 14.225075>,  <22.039389, 22.375626, 14.736861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.518427, 22.005777, 14.225075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.761263, 22.181536, 14.489914>,  <22.906963, 22.286991, 14.648818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.761263, 22.181536, 14.489914>,  <22.518427, 22.005777, 14.225075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.761263, 22.181536, 14.489914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669042, -0.732201, -0.127536,
		0.428751, 0.520397, -0.738485,
		0.607088, 0.439396, 0.662099,
		22.943390, 22.313354, 14.688543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.214472, 21.935909, 13.979974>,  <22.518427, 22.005777, 14.225075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.214472, 21.935909, 13.979974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.264717, 22.001690, 14.371315>,  <23.294865, 22.041159, 14.606120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.264717, 22.001690, 14.371315>,  <23.214472, 21.935909, 13.979974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.264717, 22.001690, 14.371315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588708, -0.806122, 0.059915,
		0.798526, 0.568439, -0.198074,
		0.125614, 0.164451, 0.978354,
		23.302401, 22.051025, 14.664822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.852993, 21.787928, 14.122625>,  <23.214472, 21.935909, 13.979974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.852993, 21.787928, 14.122625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.698473, 21.742476, 14.488764>,  <23.605761, 21.715204, 14.708447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.698473, 21.742476, 14.488764>,  <23.852993, 21.787928, 14.122625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.698473, 21.742476, 14.488764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613429, -0.772756, 0.162954,
		0.688823, 0.624449, 0.368221,
		-0.386301, -0.113630, 0.915347,
		23.582582, 21.708385, 14.763368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.418562, 21.519611, 14.488590>,  <23.852993, 21.787928, 14.122625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.418562, 21.519611, 14.488590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.110209, 21.446157, 14.732562>,  <23.925196, 21.402084, 14.878945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.110209, 21.446157, 14.732562>,  <24.418562, 21.519611, 14.488590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.110209, 21.446157, 14.732562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391219, -0.892154, 0.225851,
		0.502676, 0.412721, 0.759590,
		-0.770885, -0.183636, 0.609929,
		23.878942, 21.391068, 14.915541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.711065, 21.246401, 15.061483>,  <24.418562, 21.519611, 14.488590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.711065, 21.246401, 15.061483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326727, 21.140131, 15.092970>,  <24.096125, 21.076370, 15.111861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326727, 21.140131, 15.092970>,  <24.711065, 21.246401, 15.061483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.326727, 21.140131, 15.092970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276735, -0.905727, 0.321053,
		-0.014000, 0.330266, 0.943784,
		-0.960844, -0.265673, 0.078716,
		24.038473, 21.060429, 15.116585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.685856, 20.870695, 15.682578>,  <24.711065, 21.246401, 15.061483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.685856, 20.870695, 15.682578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.352503, 20.776854, 15.482404>,  <24.152491, 20.720549, 15.362299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.352503, 20.776854, 15.482404>,  <24.685856, 20.870695, 15.682578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.352503, 20.776854, 15.482404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140163, -0.965552, 0.219235,
		-0.534631, 0.112564, 0.837555,
		-0.833381, -0.234604, -0.500437,
		24.102488, 20.706472, 15.332273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.352854, 20.343472, 16.080498>,  <24.685856, 20.870695, 15.682578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.352854, 20.343472, 16.080498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.170008, 20.288740, 15.728971>,  <24.060301, 20.255901, 15.518054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.170008, 20.288740, 15.728971>,  <24.352854, 20.343472, 16.080498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.170008, 20.288740, 15.728971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018379, -0.989338, 0.144474,
		-0.889217, 0.049889, 0.454757,
		-0.457116, -0.136827, -0.878819,
		24.032873, 20.247692, 15.465324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.034769, 19.776207, 16.204754>,  <24.352854, 20.343472, 16.080498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.034769, 19.776207, 16.204754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.033691, 19.789038, 15.804960>,  <24.033045, 19.796736, 15.565084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.033691, 19.789038, 15.804960>,  <24.034769, 19.776207, 16.204754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.033691, 19.789038, 15.804960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161057, -0.986451, -0.031224,
		-0.986941, 0.160890, 0.007826,
		-0.002696, 0.032076, -0.999482,
		24.032883, 19.798660, 15.505116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.525105, 19.334927, 16.025558>,  <24.034769, 19.776207, 16.204754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.525105, 19.334927, 16.025558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.786036, 19.350845, 15.722801>,  <23.942595, 19.360397, 15.541147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.786036, 19.350845, 15.722801>,  <23.525105, 19.334927, 16.025558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.786036, 19.350845, 15.722801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077350, -0.996902, 0.014245,
		-0.753981, -0.067838, -0.653384,
		0.652326, 0.039798, -0.756893,
		23.981733, 19.362785, 15.495733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.287836, 18.865005, 15.576264>,  <23.525105, 19.334927, 16.025558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.287836, 18.865005, 15.576264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.667542, 18.921173, 15.463706>,  <23.895365, 18.954874, 15.396171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.667542, 18.921173, 15.463706>,  <23.287836, 18.865005, 15.576264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.667542, 18.921173, 15.463706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091628, -0.979454, -0.179653,
		-0.300841, 0.144754, -0.942624,
		0.949262, 0.140418, -0.281397,
		23.952320, 18.963299, 15.379287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.320644, 18.661783, 14.884151>,  <23.287836, 18.865005, 15.576264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.320644, 18.661783, 14.884151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.705154, 18.645006, 14.993106>,  <23.935860, 18.634941, 15.058478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.705154, 18.645006, 14.993106>,  <23.320644, 18.661783, 14.884151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.705154, 18.645006, 14.993106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073379, -0.913723, -0.399657,
		0.265647, 0.404167, -0.875260,
		0.961274, -0.041942, 0.272385,
		23.993536, 18.632423, 15.074821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.725281, 18.335951, 14.366966>,  <23.320644, 18.661783, 14.884151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.725281, 18.335951, 14.366966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.962048, 18.290375, 14.686128>,  <24.104109, 18.263029, 14.877625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.962048, 18.290375, 14.686128>,  <23.725281, 18.335951, 14.366966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.962048, 18.290375, 14.686128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120455, -0.966335, -0.227350,
		0.796946, 0.230684, -0.558267,
		0.591919, -0.113939, 0.797903,
		24.139624, 18.256193, 14.925499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.404209, 18.106493, 14.191717>,  <23.725281, 18.335951, 14.366966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.404209, 18.106493, 14.191717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.369638, 18.021185, 14.580982>,  <24.348896, 17.969999, 14.814541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.369638, 18.021185, 14.580982>,  <24.404209, 18.106493, 14.191717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.369638, 18.021185, 14.580982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314542, -0.932697, -0.176467,
		0.945301, 0.290849, 0.147693,
		-0.086428, -0.213270, 0.973163,
		24.343710, 17.957205, 14.872931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.041189, 17.839802, 14.274038>,  <24.404209, 18.106493, 14.191717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.041189, 17.839802, 14.274038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.805685, 17.709814, 14.570081>,  <24.664383, 17.631823, 14.747706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.805685, 17.709814, 14.570081>,  <25.041189, 17.839802, 14.274038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.805685, 17.709814, 14.570081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301901, -0.937770, -0.171593,
		0.749812, 0.122412, 0.650229,
		-0.588760, -0.324967, 0.740107,
		24.629057, 17.612324, 14.792113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.505491, 17.384228, 14.783517>,  <25.041189, 17.839802, 14.274038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.505491, 17.384228, 14.783517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.116613, 17.291901, 14.799297>,  <24.883286, 17.236504, 14.808765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.116613, 17.291901, 14.799297>,  <25.505491, 17.384228, 14.783517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.116613, 17.291901, 14.799297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215973, -0.948958, -0.229859,
		0.090494, -0.214948, 0.972424,
		-0.972197, -0.230819, 0.039452,
		24.824955, 17.222654, 14.811132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420343, 16.768425, 15.249304>,  <25.505491, 17.384228, 14.783517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420343, 16.768425, 15.249304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.131334, 16.777405, 14.972911>,  <24.957928, 16.782793, 14.807076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.131334, 16.777405, 14.972911>,  <25.420343, 16.768425, 15.249304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.131334, 16.777405, 14.972911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343194, -0.855981, -0.386672,
		-0.600148, -0.516520, 0.610761,
		-0.722524, 0.022451, -0.690981,
		24.914577, 16.784140, 14.765616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.971397, 16.192547, 15.529138>,  <25.420343, 16.768425, 15.249304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.971397, 16.192547, 15.529138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047764, 16.298367, 15.151024>,  <25.093584, 16.361858, 14.924155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047764, 16.298367, 15.151024>,  <24.971397, 16.192547, 15.529138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.047764, 16.298367, 15.151024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532311, -0.837008, -0.126741,
		-0.824740, -0.478989, -0.300620,
		0.190914, 0.264552, -0.945285,
		25.105038, 16.377731, 14.867438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.901365, 15.725046, 15.058367>,  <24.971397, 16.192547, 15.529138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.901365, 15.725046, 15.058367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166853, 15.978186, 14.898878>,  <25.326145, 16.130070, 14.803185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166853, 15.978186, 14.898878>,  <24.901365, 15.725046, 15.058367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166853, 15.978186, 14.898878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635521, -0.758236, -0.145571,
		-0.394449, -0.156777, -0.905445,
		0.663719, 0.632850, -0.398721,
		25.365969, 16.168041, 14.779262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072807, 15.446468, 14.415106>,  <24.901365, 15.725046, 15.058367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.072807, 15.446468, 14.415106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346743, 15.674351, 14.596847>,  <25.511103, 15.811080, 14.705891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346743, 15.674351, 14.596847>,  <25.072807, 15.446468, 14.415106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.346743, 15.674351, 14.596847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660885, -0.748249, -0.057920,
		0.306970, 0.339939, -0.888938,
		0.684836, 0.569706, 0.454351,
		25.552193, 15.845263, 14.733151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767704, 15.551569, 14.065076>,  <25.072807, 15.446468, 14.415106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767704, 15.551569, 14.065076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800587, 15.557958, 14.463671>,  <25.820316, 15.561791, 14.702827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800587, 15.557958, 14.463671>,  <25.767704, 15.551569, 14.065076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.800587, 15.557958, 14.463671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530584, -0.847094, -0.030192,
		0.843637, 0.531203, -0.078110,
		0.082205, 0.015973, 0.996487,
		25.825249, 15.562750, 14.762617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536406, 15.556637, 14.269036>,  <25.767704, 15.551569, 14.065076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536406, 15.556637, 14.269036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282885, 15.383318, 14.525331>,  <26.130772, 15.279326, 14.679109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282885, 15.383318, 14.525331>,  <26.536406, 15.556637, 14.269036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282885, 15.383318, 14.525331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482156, -0.869056, -0.110761,
		0.604830, 0.238735, 0.759728,
		-0.633804, -0.433298, 0.640738,
		26.092743, 15.253328, 14.717553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851788, 15.277725, 14.844794>,  <26.536406, 15.556637, 14.269036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851788, 15.277725, 14.844794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.525309, 15.052034, 14.795041>,  <26.329422, 14.916620, 14.765189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.525309, 15.052034, 14.795041>,  <26.851788, 15.277725, 14.844794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.525309, 15.052034, 14.795041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560992, -0.825417, 0.063050,
		-0.138242, -0.018317, 0.990229,
		-0.816197, -0.564227, -0.124383,
		26.280449, 14.882767, 14.757727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.447028, 18.048971, 23.734386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.223384, 17.717920, 23.714659>,  <12.089197, 17.519291, 23.702822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.223384, 17.717920, 23.714659>,  <12.447028, 18.048971, 23.734386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.223384, 17.717920, 23.714659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495711, -0.286014, -0.820041,
		0.664580, -0.482942, 0.570176,
		-0.559110, -0.827625, -0.049321,
		12.055651, 17.469633, 23.699863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.895833, 17.561195, 23.538010>,  <12.447028, 18.048971, 23.734386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.895833, 17.561195, 23.538010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.559473, 17.350798, 23.487064>,  <12.357657, 17.224560, 23.456497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.559473, 17.350798, 23.487064>,  <12.895833, 17.561195, 23.538010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.559473, 17.350798, 23.487064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420830, -0.487544, -0.764985,
		0.340281, -0.696874, 0.631329,
		-0.840899, -0.525992, -0.127363,
		12.307203, 17.193001, 23.448854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.097384, 16.946228, 23.335028>,  <12.895833, 17.561195, 23.538010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.097384, 16.946228, 23.335028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.723389, 16.976408, 23.196404>,  <12.498991, 16.994516, 23.113230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.723389, 16.976408, 23.196404>,  <13.097384, 16.946228, 23.335028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.723389, 16.976408, 23.196404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301729, -0.344388, -0.889020,
		-0.186426, -0.935790, 0.299234,
		-0.934989, 0.075449, -0.346558,
		12.442892, 16.999043, 23.092436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.954700, 16.307257, 23.098288>,  <13.097384, 16.946228, 23.335028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.954700, 16.307257, 23.098288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.713965, 16.569822, 22.916336>,  <12.569525, 16.727362, 22.807165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.713965, 16.569822, 22.916336>,  <12.954700, 16.307257, 23.098288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.713965, 16.569822, 22.916336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340761, -0.304057, -0.889624,
		-0.722271, -0.690412, -0.040688,
		-0.601836, 0.656414, -0.454877,
		12.533415, 16.766747, 22.779873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.578834, 16.007950, 22.552368>,  <12.954700, 16.307257, 23.098288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.578834, 16.007950, 22.552368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.544658, 16.386599, 22.428043>,  <12.524152, 16.613789, 22.353449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.544658, 16.386599, 22.428043>,  <12.578834, 16.007950, 22.552368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.544658, 16.386599, 22.428043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383205, -0.256736, -0.887266,
		-0.919703, -0.194914, -0.340815,
		-0.085441, 0.946623, -0.310813,
		12.519026, 16.670586, 22.334799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.005466, 16.009901, 22.087404>,  <12.578834, 16.007950, 22.552368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.005466, 16.009901, 22.087404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.213586, 16.345413, 22.023243>,  <12.338458, 16.546721, 21.984745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.213586, 16.345413, 22.023243>,  <12.005466, 16.009901, 22.087404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.213586, 16.345413, 22.023243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241682, -0.324781, -0.914389,
		-0.819070, 0.436991, -0.371703,
		0.520302, 0.838782, -0.160405,
		12.369677, 16.597048, 21.975121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.896708, 16.234386, 21.368572>,  <12.005466, 16.009901, 22.087404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.896708, 16.234386, 21.368572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.248062, 16.387058, 21.483643>,  <12.458875, 16.478662, 21.552685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.248062, 16.387058, 21.483643>,  <11.896708, 16.234386, 21.368572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.248062, 16.387058, 21.483643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373246, -0.171825, -0.911682,
		-0.298542, 0.908182, -0.293390,
		0.878385, 0.381682, 0.287678,
		12.511578, 16.501562, 21.569946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.212738, 16.350264, 20.677691>,  <11.896708, 16.234386, 21.368572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.212738, 16.350264, 20.677691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.533269, 16.423847, 20.905386>,  <12.725588, 16.467997, 21.042004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.533269, 16.423847, 20.905386>,  <12.212738, 16.350264, 20.677691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.533269, 16.423847, 20.905386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580323, -0.007991, -0.814347,
		-0.145257, 0.982902, -0.113159,
		0.801328, 0.183958, 0.569240,
		12.773667, 16.479034, 21.076159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.637892, 16.884403, 20.332531>,  <12.212738, 16.350264, 20.677691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.637892, 16.884403, 20.332531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.867508, 16.703770, 20.605749>,  <13.005278, 16.595390, 20.769680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.867508, 16.703770, 20.605749>,  <12.637892, 16.884403, 20.332531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.867508, 16.703770, 20.605749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709201, -0.142758, -0.690401,
		0.409283, 0.880735, 0.238313,
		0.574039, -0.451582, 0.683047,
		13.039720, 16.568295, 20.810663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.505568, 17.122055, 20.271444>,  <12.637892, 16.884403, 20.332531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.505568, 17.122055, 20.271444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.511447, 16.753519, 20.426836>,  <13.514975, 16.532398, 20.520071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.511447, 16.753519, 20.426836>,  <13.505568, 17.122055, 20.271444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.511447, 16.753519, 20.426836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794307, -0.225231, -0.564223,
		0.607339, 0.316867, 0.728516,
		0.014700, -0.921339, 0.388481,
		13.515857, 16.477118, 20.543381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.207579, 16.992226, 20.459084>,  <13.505568, 17.122055, 20.271444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.207579, 16.992226, 20.459084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.974192, 16.679922, 20.369658>,  <13.834159, 16.492540, 20.316002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.974192, 16.679922, 20.369658>,  <14.207579, 16.992226, 20.459084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.974192, 16.679922, 20.369658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682445, -0.322120, -0.656131,
		0.440266, -0.535401, 0.720771,
		-0.583468, -0.780759, -0.223564,
		13.799151, 16.445694, 20.302588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527492, 16.421822, 20.650980>,  <14.207579, 16.992226, 20.459084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.527492, 16.421822, 20.650980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.284707, 16.249254, 20.384003>,  <14.139036, 16.145714, 20.223816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.284707, 16.249254, 20.384003>,  <14.527492, 16.421822, 20.650980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.284707, 16.249254, 20.384003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753978, -0.047104, -0.655208,
		0.251229, -0.900922, 0.353870,
		-0.606960, -0.431418, -0.667442,
		14.102619, 16.119829, 20.183771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.960755, 15.947564, 20.309423>,  <14.527492, 16.421822, 20.650980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.960755, 15.947564, 20.309423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.637917, 15.945657, 20.073263>,  <14.444213, 15.944512, 19.931568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.637917, 15.945657, 20.073263>,  <14.960755, 15.947564, 20.309423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.637917, 15.945657, 20.073263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588731, -0.082065, -0.804153,
		-0.044612, -0.996615, 0.069045,
		-0.807097, -0.004774, -0.590399,
		14.395787, 15.944226, 19.896143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.019046, 15.371089, 19.775248>,  <14.960755, 15.947564, 20.309423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.019046, 15.371089, 19.775248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.745442, 15.612330, 19.611103>,  <14.581280, 15.757075, 19.512615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.745442, 15.612330, 19.611103>,  <15.019046, 15.371089, 19.775248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.745442, 15.612330, 19.611103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478405, -0.053798, -0.876490,
		-0.550690, -0.795847, -0.251729,
		-0.684009, 0.603103, -0.410363,
		14.540239, 15.793262, 19.487993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.690345, 14.982418, 19.151121>,  <15.019046, 15.371089, 19.775248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.690345, 14.982418, 19.151121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.643197, 15.376160, 19.098728>,  <14.614908, 15.612405, 19.067293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.643197, 15.376160, 19.098728>,  <14.690345, 14.982418, 19.151121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.643197, 15.376160, 19.098728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399663, -0.073722, -0.913693,
		-0.909053, -0.160044, -0.384720,
		-0.117869, 0.984353, -0.130981,
		14.607837, 15.671466, 19.059433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.393167, 15.108682, 18.456209>,  <14.690345, 14.982418, 19.151121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.393167, 15.108682, 18.456209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.598238, 15.431546, 18.573277>,  <14.721280, 15.625265, 18.643517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.598238, 15.431546, 18.573277>,  <14.393167, 15.108682, 18.456209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.598238, 15.431546, 18.573277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355624, 0.110623, -0.928059,
		-0.781469, 0.579874, -0.230332,
		0.512677, 0.807161, 0.292666,
		14.752041, 15.673695, 18.661076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.073552, 15.574965, 17.909582>,  <14.393167, 15.108682, 18.456209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.073552, 15.574965, 17.909582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.412940, 15.724959, 18.058973>,  <14.616572, 15.814957, 18.148607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.412940, 15.724959, 18.058973>,  <14.073552, 15.574965, 17.909582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.412940, 15.724959, 18.058973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359992, 0.108371, -0.926640,
		-0.387952, 0.920674, -0.043042,
		0.848469, 0.374987, 0.373478,
		14.667480, 15.837456, 18.171017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.198338, 16.206785, 17.551605>,  <14.073552, 15.574965, 17.909582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.198338, 16.206785, 17.551605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.564528, 16.134203, 17.695261>,  <14.784242, 16.090654, 17.781454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.564528, 16.134203, 17.695261>,  <14.198338, 16.206785, 17.551605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.564528, 16.134203, 17.695261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365936, 0.004290, -0.930630,
		0.167326, 0.983390, 0.070328,
		0.915474, -0.181455, 0.359140,
		14.839170, 16.079767, 17.803003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.576818, 16.504299, 17.092876>,  <14.198338, 16.206785, 17.551605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.576818, 16.504299, 17.092876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.837568, 16.260288, 17.273066>,  <14.994019, 16.113882, 17.381178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.837568, 16.260288, 17.273066>,  <14.576818, 16.504299, 17.092876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.837568, 16.260288, 17.273066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479169, -0.129063, -0.868182,
		0.587752, 0.781800, 0.208172,
		0.651878, -0.610026, 0.450471,
		15.033132, 16.077280, 17.408207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.219699, 16.757975, 16.811222>,  <14.576818, 16.504299, 17.092876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.219699, 16.757975, 16.811222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.299006, 16.390633, 16.948227>,  <15.346591, 16.170227, 17.030430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.299006, 16.390633, 16.948227>,  <15.219699, 16.757975, 16.811222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.299006, 16.390633, 16.948227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580409, -0.171585, -0.796043,
		0.789819, 0.356628, 0.499001,
		0.198270, -0.918354, 0.342512,
		15.358487, 16.115126, 17.050980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.007208, 16.666775, 17.009584>,  <15.219699, 16.757975, 16.811222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.007208, 16.666775, 17.009584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.872756, 16.295265, 16.947105>,  <15.792085, 16.072359, 16.909618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.872756, 16.295265, 16.947105>,  <16.007208, 16.666775, 17.009584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.872756, 16.295265, 16.947105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626005, -0.096416, -0.773836,
		0.703658, -0.357890, 0.613824,
		-0.336131, -0.928773, -0.156197,
		15.771916, 16.016634, 16.900246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.582306, 16.179216, 16.943853>,  <16.007208, 16.666775, 17.009584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.582306, 16.179216, 16.943853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.264311, 16.046175, 16.740927>,  <16.073513, 15.966350, 16.619171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.264311, 16.046175, 16.740927>,  <16.582306, 16.179216, 16.943853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.264311, 16.046175, 16.740927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590204, -0.230808, -0.773555,
		0.140195, -0.914386, 0.379794,
		-0.794987, -0.332604, -0.507316,
		16.025814, 15.946394, 16.588732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.246658, 16.618322, 17.208824>,  <16.582306, 16.179216, 16.943853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.246658, 16.618322, 17.208824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.603481, 16.790159, 17.264936>,  <17.817575, 16.893261, 17.298603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.603481, 16.790159, 17.264936>,  <17.246658, 16.618322, 17.208824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.603481, 16.790159, 17.264936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221692, 0.145497, 0.964201,
		0.393806, -0.891223, 0.225030,
		0.892059, 0.429595, 0.140279,
		17.871099, 16.919037, 17.307020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.625940, 16.231977, 17.788839>,  <17.246658, 16.618322, 17.208824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.625940, 16.231977, 17.788839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.789482, 16.595913, 17.760477>,  <17.887608, 16.814274, 17.743460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.789482, 16.595913, 17.760477>,  <17.625940, 16.231977, 17.788839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.789482, 16.595913, 17.760477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134805, 0.137055, 0.981348,
		0.902588, -0.391671, 0.178687,
		0.408855, 0.909841, -0.070905,
		17.912138, 16.868866, 17.739206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.212200, 16.295074, 18.297043>,  <17.625940, 16.231977, 17.788839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.212200, 16.295074, 18.297043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.132141, 16.679546, 18.221069>,  <18.084105, 16.910229, 18.175486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.132141, 16.679546, 18.221069>,  <18.212200, 16.295074, 18.297043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.132141, 16.679546, 18.221069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227632, 0.234172, 0.945170,
		0.952955, 0.145940, -0.265664,
		-0.200149, 0.961179, -0.189935,
		18.072096, 16.967899, 18.164089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.742296, 16.748056, 18.634666>,  <18.212200, 16.295074, 18.297043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.742296, 16.748056, 18.634666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.415369, 16.974981, 18.594366>,  <18.219213, 17.111135, 18.570187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.415369, 16.974981, 18.594366>,  <18.742296, 16.748056, 18.634666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.415369, 16.974981, 18.594366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064532, 0.263883, 0.962394,
		0.572563, 0.780079, -0.252286,
		-0.817317, 0.567312, -0.100750,
		18.170174, 17.145174, 18.564140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.903431, 17.294443, 19.075691>,  <18.742296, 16.748056, 18.634666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.903431, 17.294443, 19.075691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.509775, 17.328562, 19.013470>,  <18.273582, 17.349033, 18.976137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.509775, 17.328562, 19.013470>,  <18.903431, 17.294443, 19.075691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.509775, 17.328562, 19.013470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088266, 0.525174, 0.846405,
		0.153886, 0.846709, -0.509316,
		-0.984138, 0.085295, -0.155553,
		18.214533, 17.354151, 18.966805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.737358, 17.967766, 19.325785>,  <18.903431, 17.294443, 19.075691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.737358, 17.967766, 19.325785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.381430, 17.787561, 19.296772>,  <18.167873, 17.679438, 19.279366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.381430, 17.787561, 19.296772>,  <18.737358, 17.967766, 19.325785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.381430, 17.787561, 19.296772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315511, 0.492600, 0.811048,
		-0.329659, 0.744570, -0.580467,
		-0.889819, -0.450512, -0.072530,
		18.114485, 17.652409, 19.275013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.264542, 18.513571, 19.339752>,  <18.737358, 17.967766, 19.325785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.264542, 18.513571, 19.339752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.072914, 18.182711, 19.457273>,  <17.957937, 17.984196, 19.527786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.072914, 18.182711, 19.457273>,  <18.264542, 18.513571, 19.339752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.072914, 18.182711, 19.457273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481366, 0.527456, 0.700055,
		-0.734016, 0.193949, -0.650849,
		-0.479069, -0.827148, 0.293801,
		17.929193, 17.934566, 19.545414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.560089, 18.716528, 19.234945>,  <18.264542, 18.513571, 19.339752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.560089, 18.716528, 19.234945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.599033, 18.414993, 19.494869>,  <17.622400, 18.234074, 19.650824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.599033, 18.414993, 19.494869>,  <17.560089, 18.716528, 19.234945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.599033, 18.414993, 19.494869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430613, 0.556729, 0.710370,
		-0.897270, -0.348980, -0.270407,
		0.097361, -0.753834, 0.649811,
		17.628242, 18.188843, 19.689812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021421, 18.848318, 19.617466>,  <17.560089, 18.716528, 19.234945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.021421, 18.848318, 19.617466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.178085, 18.575506, 19.864510>,  <17.272083, 18.411819, 20.012735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.178085, 18.575506, 19.864510>,  <17.021421, 18.848318, 19.617466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.178085, 18.575506, 19.864510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588626, 0.330182, 0.737902,
		-0.707193, -0.652547, -0.272141,
		0.391659, -0.682029, 0.617608,
		17.295584, 18.370897, 20.049791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.443943, 18.679331, 20.036419>,  <17.021421, 18.848318, 19.617466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.443943, 18.679331, 20.036419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.782352, 18.564951, 20.216408>,  <16.985399, 18.496323, 20.324400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.782352, 18.564951, 20.216408>,  <16.443943, 18.679331, 20.036419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.782352, 18.564951, 20.216408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408936, 0.193467, 0.891819,
		-0.342071, -0.938511, 0.046743,
		0.846025, -0.285951, 0.449971,
		17.036160, 18.479166, 20.351398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.221800, 18.230761, 20.450315>,  <16.443943, 18.679331, 20.036419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.221800, 18.230761, 20.450315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.562551, 18.383083, 20.594141>,  <16.767002, 18.474478, 20.680437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.562551, 18.383083, 20.594141>,  <16.221800, 18.230761, 20.450315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.562551, 18.383083, 20.594141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496378, 0.368053, 0.786223,
		0.167062, -0.848247, 0.502562,
		0.851880, 0.380808, 0.359563,
		16.818115, 18.497326, 20.702009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.281569, 17.987780, 21.177250>,  <16.221800, 18.230761, 20.450315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.281569, 17.987780, 21.177250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.504482, 18.319067, 21.153622>,  <16.638229, 18.517839, 21.139444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.504482, 18.319067, 21.153622>,  <16.281569, 17.987780, 21.177250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.504482, 18.319067, 21.153622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333965, 0.288711, 0.897281,
		0.760200, -0.480311, 0.437490,
		0.557282, 0.828219, -0.059071,
		16.671667, 18.567533, 21.135900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.698843, 18.103594, 21.832281>,  <16.281569, 17.987780, 21.177250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.698843, 18.103594, 21.832281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.634867, 18.446575, 21.636654>,  <16.596481, 18.652365, 21.519278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.634867, 18.446575, 21.636654>,  <16.698843, 18.103594, 21.832281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.634867, 18.446575, 21.636654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391936, 0.399559, 0.828697,
		0.905983, 0.324227, 0.272161,
		-0.159942, 0.857455, -0.489070,
		16.586884, 18.703812, 21.489933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.830725, 18.735668, 22.283688>,  <16.698843, 18.103594, 21.832281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.830725, 18.735668, 22.283688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.560392, 18.852446, 22.012978>,  <16.398193, 18.922512, 21.850552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.560392, 18.852446, 22.012978>,  <16.830725, 18.735668, 22.283688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.560392, 18.852446, 22.012978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524113, 0.455244, 0.719762,
		0.518227, 0.841143, -0.154656,
		-0.675830, 0.291943, -0.676774,
		16.357643, 18.940029, 21.809946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.720205, 19.354198, 22.505836>,  <16.830725, 18.735668, 22.283688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.720205, 19.354198, 22.505836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.421125, 19.282558, 22.250067>,  <16.241676, 19.239574, 22.096605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.421125, 19.282558, 22.250067>,  <16.720205, 19.354198, 22.505836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.421125, 19.282558, 22.250067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654537, 0.361058, 0.664242,
		0.111905, 0.915183, -0.387190,
		-0.747702, -0.179098, -0.639426,
		16.196815, 19.228828, 22.058239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.210533, 19.897837, 22.580870>,  <16.720205, 19.354198, 22.505836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.210533, 19.897837, 22.580870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.002747, 19.590082, 22.432167>,  <15.878076, 19.405430, 22.342945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.002747, 19.590082, 22.432167>,  <16.210533, 19.897837, 22.580870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.002747, 19.590082, 22.432167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740461, 0.188173, 0.645220,
		-0.426468, 0.610440, -0.667449,
		-0.519464, -0.769385, -0.371757,
		15.846908, 19.359266, 22.320641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549994, 20.127134, 22.566999>,  <16.210533, 19.897837, 22.580870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.549994, 20.127134, 22.566999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.498823, 19.733870, 22.514807>,  <15.468122, 19.497910, 22.483492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.498823, 19.733870, 22.514807>,  <15.549994, 20.127134, 22.566999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.498823, 19.733870, 22.514807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743809, 0.008082, 0.668344,
		-0.656037, 0.182551, -0.732319,
		-0.127925, -0.983163, -0.130481,
		15.460445, 19.438921, 22.475662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.867924, 20.085606, 22.352272>,  <15.549994, 20.127134, 22.566999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.867924, 20.085606, 22.352272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.988667, 19.749386, 22.532211>,  <15.061113, 19.547655, 22.640175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.988667, 19.749386, 22.532211>,  <14.867924, 20.085606, 22.352272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.988667, 19.749386, 22.532211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775335, 0.058121, 0.628869,
		-0.554740, -0.538611, -0.634162,
		0.301858, -0.840547, 0.449846,
		15.079226, 19.497221, 22.667166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.092175, 19.401640, 22.668282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.399153, 19.263588, 22.884398>,  <14.583339, 19.180756, 23.014067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.399153, 19.263588, 22.884398>,  <14.092175, 19.401640, 22.668282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.399153, 19.263588, 22.884398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632604, -0.270775, 0.725599,
		-0.104130, -0.898646, -0.426136,
		0.767443, -0.345132, 0.540291,
		14.629386, 19.160049, 23.046486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.808890, 18.748812, 23.046581>,  <14.092175, 19.401640, 22.668282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.808890, 18.748812, 23.046581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.131612, 18.874084, 23.246975>,  <14.325245, 18.949247, 23.367210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.131612, 18.874084, 23.246975>,  <13.808890, 18.748812, 23.046581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.131612, 18.874084, 23.246975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516488, -0.037879, 0.855456,
		0.286890, -0.948937, 0.131194,
		0.806804, 0.313182, 0.500982,
		14.373653, 18.968039, 23.397270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.823983, 18.214214, 23.576010>,  <13.808890, 18.748812, 23.046581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.823983, 18.214214, 23.576010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.047662, 18.524302, 23.693542>,  <14.181869, 18.710354, 23.764063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.047662, 18.524302, 23.693542>,  <13.823983, 18.214214, 23.576010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.047662, 18.524302, 23.693542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363430, -0.089332, 0.927328,
		0.745130, -0.625346, 0.231784,
		0.559196, 0.775217, 0.293834,
		14.215421, 18.756866, 23.781693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.271372, 18.072832, 24.141485>,  <13.823983, 18.214214, 23.576010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.271372, 18.072832, 24.141485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.221243, 18.469416, 24.155926>,  <14.191166, 18.707365, 24.164591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.221243, 18.469416, 24.155926>,  <14.271372, 18.072832, 24.141485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.221243, 18.469416, 24.155926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370971, -0.080580, 0.925142,
		0.920150, 0.102547, 0.377901,
		-0.125321, 0.991459, 0.036103,
		14.183646, 18.766853, 24.166758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.313885, 18.182997, 24.849293>,  <14.271372, 18.072832, 24.141485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.313885, 18.182997, 24.849293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.178062, 18.537525, 24.723347>,  <14.096569, 18.750242, 24.647779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.178062, 18.537525, 24.723347>,  <14.313885, 18.182997, 24.849293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.178062, 18.537525, 24.723347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517127, 0.103704, 0.849603,
		0.785672, 0.451313, 0.423126,
		-0.339557, 0.886320, -0.314863,
		14.076196, 18.803421, 24.628887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.373735, 18.681412, 25.419550>,  <14.313885, 18.182997, 24.849293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.373735, 18.681412, 25.419550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.100574, 18.853271, 25.183229>,  <13.936678, 18.956387, 25.041437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.100574, 18.853271, 25.183229>,  <14.373735, 18.681412, 25.419550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.100574, 18.853271, 25.183229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594846, 0.142391, 0.791128,
		0.424032, 0.891699, 0.158336,
		-0.682902, 0.429649, -0.590802,
		13.895703, 18.982166, 25.005989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.315746, 19.250507, 25.742104>,  <14.373735, 18.681412, 25.419550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.315746, 19.250507, 25.742104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.976620, 19.208279, 25.534233>,  <13.773144, 19.182941, 25.409512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.976620, 19.208279, 25.534233>,  <14.315746, 19.250507, 25.742104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.976620, 19.208279, 25.534233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523839, 0.014334, 0.851697,
		-0.082465, 0.994308, -0.067454,
		-0.847816, -0.105570, -0.519675,
		13.722275, 19.176607, 25.378330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.928096, 19.842596, 25.875860>,  <14.315746, 19.250507, 25.742104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.928096, 19.842596, 25.875860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.640643, 19.601786, 25.736645>,  <13.468171, 19.457298, 25.653114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.640643, 19.601786, 25.736645>,  <13.928096, 19.842596, 25.875860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.640643, 19.601786, 25.736645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536220, 0.161072, 0.828568,
		-0.442760, 0.782061, -0.438570,
		-0.718632, -0.602027, -0.348040,
		13.425054, 19.421177, 25.632233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.366457, 20.295847, 25.785933>,  <13.928096, 19.842596, 25.875860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.366457, 20.295847, 25.785933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.231378, 19.920942, 25.820580>,  <13.150331, 19.695999, 25.841368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.231378, 19.920942, 25.820580>,  <13.366457, 20.295847, 25.785933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.231378, 19.920942, 25.820580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539156, 0.268043, 0.798413,
		-0.771538, 0.222923, -0.595848,
		-0.337697, -0.937261, 0.086615,
		13.130069, 19.639765, 25.846563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.604715, 20.397699, 26.014477>,  <13.366457, 20.295847, 25.785933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.604715, 20.397699, 26.014477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.743299, 20.034422, 26.108412>,  <12.826450, 19.816456, 26.164772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.743299, 20.034422, 26.108412>,  <12.604715, 20.397699, 26.014477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.743299, 20.034422, 26.108412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487601, 0.039509, 0.872172,
		-0.801380, -0.416680, -0.429148,
		0.346461, -0.908195, 0.234835,
		12.847238, 19.761963, 26.178862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.051313, 20.149895, 26.417227>,  <12.604715, 20.397699, 26.014477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.051313, 20.149895, 26.417227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.350407, 19.905622, 26.521507>,  <12.529862, 19.759060, 26.584076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.350407, 19.905622, 26.521507>,  <12.051313, 20.149895, 26.417227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.350407, 19.905622, 26.521507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338906, -0.013367, 0.940725,
		-0.570997, -0.791764, -0.216958,
		0.747733, -0.610680, 0.260701,
		12.574727, 19.722418, 26.599718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.723120, 19.777700, 26.881981>,  <12.051313, 20.149895, 26.417227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.723120, 19.777700, 26.881981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.110437, 19.692499, 26.934191>,  <12.342828, 19.641378, 26.965517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.110437, 19.692499, 26.934191>,  <11.723120, 19.777700, 26.881981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.110437, 19.692499, 26.934191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140981, -0.034596, 0.989408,
		-0.206232, -0.976439, -0.063529,
		0.968294, -0.213004, 0.130525,
		12.400926, 19.628599, 26.973349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.631068, 19.408493, 27.497902>,  <11.723120, 19.777700, 26.881981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.631068, 19.408493, 27.497902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.020419, 19.500101, 27.501623>,  <12.254029, 19.555065, 27.503857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.020419, 19.500101, 27.501623>,  <11.631068, 19.408493, 27.497902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.020419, 19.500101, 27.501623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041916, 0.137947, 0.989552,
		0.225345, -0.963597, 0.143874,
		0.973377, 0.229022, 0.009305,
		12.312432, 19.568808, 27.504416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.983443, 19.045839, 28.066757>,  <11.631068, 19.408493, 27.497902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.983443, 19.045839, 28.066757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.205767, 19.370472, 27.994743>,  <12.339161, 19.565252, 27.951536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.205767, 19.370472, 27.994743>,  <11.983443, 19.045839, 28.066757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.205767, 19.370472, 27.994743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037674, 0.191751, 0.980720,
		0.830457, -0.551874, 0.076001,
		0.555808, 0.811583, -0.180032,
		12.372509, 19.613947, 27.940733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.552814, 18.994070, 28.519320>,  <11.983443, 19.045839, 28.066757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.552814, 18.994070, 28.519320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.562765, 19.384048, 28.430901>,  <12.568736, 19.618036, 28.377850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.562765, 19.384048, 28.430901>,  <12.552814, 18.994070, 28.519320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.562765, 19.384048, 28.430901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020590, 0.221570, 0.974927,
		0.999479, -0.019702, 0.025587,
		0.024877, 0.974946, -0.221049,
		12.570229, 19.676533, 28.364586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.995790, 19.223944, 29.073986>,  <12.552814, 18.994070, 28.519320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.995790, 19.223944, 29.073986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.768731, 19.515579, 28.921038>,  <12.632496, 19.690561, 28.829269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.768731, 19.515579, 28.921038>,  <12.995790, 19.223944, 29.073986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.768731, 19.515579, 28.921038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175610, 0.346530, 0.921454,
		0.804324, 0.590209, -0.068672,
		-0.567647, 0.729088, -0.382369,
		12.598437, 19.734306, 28.806326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.291587, 19.710648, 29.495949>,  <12.995790, 19.223944, 29.073986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.291587, 19.710648, 29.495949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.948751, 19.836107, 29.332474>,  <12.743051, 19.911383, 29.234388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.948751, 19.836107, 29.332474>,  <13.291587, 19.710648, 29.495949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.948751, 19.836107, 29.332474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054758, 0.733344, 0.677649,
		0.512251, 0.603184, -0.611366,
		-0.857088, 0.313649, -0.408685,
		12.691625, 19.930202, 29.209867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.394054, 20.414194, 29.395823>,  <13.291587, 19.710648, 29.495949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.394054, 20.414194, 29.395823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.995449, 20.384024, 29.410084>,  <12.756286, 20.365921, 29.418640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.995449, 20.384024, 29.410084>,  <13.394054, 20.414194, 29.395823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.995449, 20.384024, 29.410084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012467, 0.557178, 0.830300,
		-0.082492, 0.826961, -0.556176,
		-0.996514, -0.075427, 0.035653,
		12.696495, 20.361395, 29.420780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.138730, 21.057783, 29.610964>,  <13.394054, 20.414194, 29.395823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.138730, 21.057783, 29.610964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.833572, 20.809847, 29.684488>,  <12.650477, 20.661085, 29.728603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.833572, 20.809847, 29.684488>,  <13.138730, 21.057783, 29.610964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.833572, 20.809847, 29.684488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118934, 0.414004, 0.902472,
		-0.635489, 0.666630, -0.389562,
		-0.762895, -0.619843, 0.183810,
		12.604704, 20.623894, 29.739632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.562449, 21.489901, 29.942621>,  <13.138730, 21.057783, 29.610964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.562449, 21.489901, 29.942621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.527702, 21.101757, 30.032829>,  <12.506854, 20.868872, 30.086954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.527702, 21.101757, 30.032829>,  <12.562449, 21.489901, 29.942621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.527702, 21.101757, 30.032829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167404, 0.237374, 0.956885,
		-0.982054, 0.045369, -0.183062,
		-0.086867, -0.970358, 0.225519,
		12.501642, 20.810650, 30.100485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.081980, 21.451792, 30.406860>,  <12.562449, 21.489901, 29.942621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.081980, 21.451792, 30.406860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.269318, 21.107296, 30.485773>,  <12.381721, 20.900599, 30.533121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.269318, 21.107296, 30.485773>,  <12.081980, 21.451792, 30.406860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.269318, 21.107296, 30.485773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077586, 0.262507, 0.961806,
		-0.880132, -0.435152, 0.189764,
		0.468346, -0.861239, 0.197280,
		12.409822, 20.848925, 30.544956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.767596, 21.089834, 30.951496>,  <12.081980, 21.451792, 30.406860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.767596, 21.089834, 30.951496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.163812, 21.038124, 30.933084>,  <12.401541, 21.007097, 30.922037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.163812, 21.038124, 30.933084>,  <11.767596, 21.089834, 30.951496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.163812, 21.038124, 30.933084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091362, 0.370986, 0.924133,
		-0.102393, -0.919596, 0.379287,
		0.990540, -0.129277, -0.046030,
		12.460974, 20.999340, 30.919275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.933730, 21.036572, 30.794785>,  <11.767596, 21.089834, 30.951496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.933730, 21.036572, 30.794785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.219165, 20.761913, 30.850370>,  <11.390426, 20.597118, 30.883722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.219165, 20.761913, 30.850370>,  <10.933730, 21.036572, 30.794785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.219165, 20.761913, 30.850370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522674, 0.653890, 0.547029,
		-0.466481, -0.317721, 0.825499,
		0.713588, -0.686645, 0.138963,
		11.433241, 20.555920, 30.892059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.706229, 20.422617, 30.716253>,  <10.933730, 21.036572, 30.794785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.706229, 20.422617, 30.716253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.581105, 20.142050, 30.972429>,  <10.506031, 19.973709, 31.126135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.581105, 20.142050, 30.972429>,  <10.706229, 20.422617, 30.716253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.581105, 20.142050, 30.972429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048620, -0.685217, -0.726714,
		0.948571, -0.196185, 0.248445,
		-0.312809, -0.701419, 0.640438,
		10.487263, 19.931623, 31.164560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.081947, 19.788061, 30.731655>,  <10.706229, 20.422617, 30.716253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.081947, 19.788061, 30.731655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.743505, 19.634031, 30.879070>,  <10.540439, 19.541615, 30.967520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.743505, 19.634031, 30.879070>,  <11.081947, 19.788061, 30.731655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.743505, 19.634031, 30.879070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000338, -0.691812, -0.722078,
		0.533011, -0.610831, 0.585478,
		-0.846108, -0.385073, 0.368538,
		10.489672, 19.518509, 30.989632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.197907, 19.048088, 30.913300>,  <11.081947, 19.788061, 30.731655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.197907, 19.048088, 30.913300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.807446, 19.105751, 30.848379>,  <10.573169, 19.140348, 30.809427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.807446, 19.105751, 30.848379>,  <11.197907, 19.048088, 30.913300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.807446, 19.105751, 30.848379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015552, -0.792182, -0.610087,
		-0.216519, -0.593016, 0.775534,
		-0.976155, 0.144156, -0.162300,
		10.514599, 19.148998, 30.799688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.063560, 18.423439, 30.770487>,  <11.197907, 19.048088, 30.913300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.063560, 18.423439, 30.770487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.735439, 18.609243, 30.637022>,  <10.538567, 18.720726, 30.556944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.735439, 18.609243, 30.637022>,  <11.063560, 18.423439, 30.770487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.735439, 18.609243, 30.637022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027781, -0.615071, -0.787982,
		-0.571248, -0.637118, 0.517451,
		-0.820307, 0.464509, -0.333658,
		10.489348, 18.748598, 30.536924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.485647, 17.886169, 30.564350>,  <11.063560, 18.423439, 30.770487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.485647, 17.886169, 30.564350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.398418, 18.220928, 30.363533>,  <10.346081, 18.421783, 30.243042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.398418, 18.220928, 30.363533>,  <10.485647, 17.886169, 30.564350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.398418, 18.220928, 30.363533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033245, -0.507754, -0.860860,
		-0.975366, -0.204421, 0.082904,
		-0.218073, 0.836898, -0.502042,
		10.332996, 18.471998, 30.212921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.035277, 17.667093, 30.016258>,  <10.485647, 17.886169, 30.564350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.035277, 17.667093, 30.016258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.150825, 18.030344, 29.895023>,  <10.220153, 18.248295, 29.822283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.150825, 18.030344, 29.895023>,  <10.035277, 17.667093, 30.016258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.150825, 18.030344, 29.895023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006664, -0.314668, -0.949179,
		-0.957345, 0.276208, -0.084846,
		0.288869, 0.908126, -0.303087,
		10.237485, 18.302782, 29.804098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.581038, 17.904530, 29.479088>,  <10.035277, 17.667093, 30.016258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.581038, 17.904530, 29.479088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.908797, 18.126049, 29.419903>,  <10.105453, 18.258961, 29.384392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.908797, 18.126049, 29.419903>,  <9.581038, 17.904530, 29.479088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.908797, 18.126049, 29.419903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007062, -0.267858, -0.963432,
		-0.573182, 0.788389, -0.223393,
		0.819397, 0.553800, -0.147964,
		10.154616, 18.292189, 29.375513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.541744, 18.269865, 28.835354>,  <9.581038, 17.904530, 29.479088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.541744, 18.269865, 28.835354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.936844, 18.281155, 28.896742>,  <10.173903, 18.287928, 28.933575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.936844, 18.281155, 28.896742>,  <9.541744, 18.269865, 28.835354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.936844, 18.281155, 28.896742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155720, -0.241614, -0.957796,
		0.010048, 0.969962, -0.243049,
		0.987750, 0.028224, 0.153470,
		10.233169, 18.289621, 28.942783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.787548, 18.617004, 28.319511>,  <9.541744, 18.269865, 28.835354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.787548, 18.617004, 28.319511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.083120, 18.377775, 28.443634>,  <10.260464, 18.234238, 28.518106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.083120, 18.377775, 28.443634>,  <9.787548, 18.617004, 28.319511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.083120, 18.377775, 28.443634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260458, -0.171196, -0.950186,
		0.621404, 0.782943, 0.029271,
		0.738931, -0.598073, 0.310306,
		10.304799, 18.198353, 28.536726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.339373, 18.821299, 28.008537>,  <9.787548, 18.617004, 28.319511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.339373, 18.821299, 28.008537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.458055, 18.453678, 28.112312>,  <10.529263, 18.233105, 28.174578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.458055, 18.453678, 28.112312>,  <10.339373, 18.821299, 28.008537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.458055, 18.453678, 28.112312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238053, -0.191915, -0.952103,
		0.924822, 0.344254, 0.161841,
		0.296706, -0.919053, 0.259438,
		10.547067, 18.177963, 28.190144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.908735, 18.838902, 27.555750>,  <10.339373, 18.821299, 28.008537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.908735, 18.838902, 27.555750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.869904, 18.449371, 27.637962>,  <10.846604, 18.215654, 27.687290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.869904, 18.449371, 27.637962>,  <10.908735, 18.838902, 27.555750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.869904, 18.449371, 27.637962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245334, -0.223550, -0.943312,
		0.964566, -0.041150, 0.260614,
		-0.097078, -0.973824, 0.205533,
		10.840780, 18.157225, 27.699623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.571206, 18.523359, 27.394585>,  <10.908735, 18.838902, 27.555750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.571206, 18.523359, 27.394585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.297632, 18.231577, 27.399057>,  <11.133488, 18.056507, 27.401741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.297632, 18.231577, 27.399057>,  <11.571206, 18.523359, 27.394585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.297632, 18.231577, 27.399057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343495, -0.335503, -0.877182,
		0.643618, -0.596095, 0.480027,
		-0.683935, -0.729458, 0.011180,
		11.092452, 18.012739, 27.402411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.923667, 17.972790, 27.282526>,  <11.571206, 18.523359, 27.394585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.923667, 17.972790, 27.282526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.544885, 17.896303, 27.179213>,  <11.317616, 17.850410, 27.117224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.544885, 17.896303, 27.179213>,  <11.923667, 17.972790, 27.282526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.544885, 17.896303, 27.179213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308994, -0.320920, -0.895284,
		0.088305, -0.927603, 0.362982,
		-0.946956, -0.191218, -0.258285,
		11.260798, 17.838938, 27.101727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.971973, 17.354832, 26.748434>,  <11.923667, 17.972790, 27.282526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.971973, 17.354832, 26.748434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.591643, 17.464775, 26.691322>,  <11.363445, 17.530741, 26.657055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.591643, 17.464775, 26.691322>,  <11.971973, 17.354832, 26.748434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.591643, 17.464775, 26.691322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014887, -0.419897, -0.907450,
		-0.309372, -0.864951, 0.395156,
		-0.950824, 0.274857, -0.142781,
		11.306396, 17.547232, 26.648487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.618463, 16.822195, 26.507969>,  <11.971973, 17.354832, 26.748434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.618463, 16.822195, 26.507969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.415586, 17.143539, 26.383154>,  <11.293859, 17.336346, 26.308266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.415586, 17.143539, 26.383154>,  <11.618463, 16.822195, 26.507969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.415586, 17.143539, 26.383154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022976, -0.349330, -0.936718,
		-0.861526, -0.482266, 0.158720,
		-0.507192, 0.803361, -0.312037,
		11.263428, 17.384548, 26.289543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.316568, 16.573782, 25.956139>,  <11.618463, 16.822195, 26.507969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.316568, 16.573782, 25.956139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.259314, 16.968243, 25.922625>,  <11.224960, 17.204918, 25.902515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.259314, 16.968243, 25.922625>,  <11.316568, 16.573782, 25.956139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.259314, 16.968243, 25.922625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136495, -0.064180, -0.988559,
		-0.980245, -0.152936, -0.125418,
		-0.143137, 0.986150, -0.083787,
		11.216372, 17.264088, 25.897488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.774789, 16.727720, 25.389503>,  <11.316568, 16.573782, 25.956139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.774789, 16.727720, 25.389503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.971884, 17.073805, 25.426632>,  <11.090140, 17.281456, 25.448908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.971884, 17.073805, 25.426632>,  <10.774789, 16.727720, 25.389503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.971884, 17.073805, 25.426632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133542, 0.030217, -0.990582,
		-0.859870, 0.500492, -0.100653,
		0.492737, 0.865214, 0.092819,
		11.119705, 17.333368, 25.454477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.560719, 17.235163, 24.875715>,  <10.774789, 16.727720, 25.389503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.560719, 17.235163, 24.875715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.940605, 17.316847, 24.970659>,  <11.168537, 17.365856, 25.027626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.940605, 17.316847, 24.970659>,  <10.560719, 17.235163, 24.875715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.940605, 17.316847, 24.970659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243472, -0.004968, -0.969895,
		-0.196882, 0.978915, -0.054438,
		0.949715, 0.204209, 0.237360,
		11.225520, 17.378109, 25.041868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.695779, 17.718210, 24.301395>,  <10.560719, 17.235163, 24.875715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.695779, 17.718210, 24.301395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.040970, 17.599846, 24.465202>,  <11.248084, 17.528828, 24.563486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.040970, 17.599846, 24.465202>,  <10.695779, 17.718210, 24.301395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.040970, 17.599846, 24.465202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364888, -0.195606, -0.910272,
		0.349465, 0.934973, -0.060828,
		0.862978, -0.295913, 0.409518,
		11.299863, 17.511072, 24.588058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.173428, 17.997366, 23.812164>,  <10.695779, 17.718210, 24.301395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.173428, 17.997366, 23.812164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.369864, 17.741953, 24.049181>,  <11.487726, 17.588705, 24.191391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.369864, 17.741953, 24.049181>,  <11.173428, 17.997366, 23.812164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.369864, 17.741953, 24.049181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652266, -0.181321, -0.735984,
		0.577389, 0.747931, 0.327446,
		0.491092, -0.638531, 0.592543,
		11.517192, 17.550394, 24.226944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.762230, 18.239042, 23.864843>,  <11.173428, 17.997366, 23.812164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.762230, 18.239042, 23.864843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.775847, 17.847055, 23.943338>,  <11.784019, 17.611864, 23.990435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.775847, 17.847055, 23.943338>,  <11.762230, 18.239042, 23.864843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.775847, 17.847055, 23.943338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631668, -0.131062, -0.764080,
		0.774491, 0.149970, 0.614551,
		0.034045, -0.979965, 0.196238,
		11.786060, 17.553066, 24.002209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.529930, 27.914402, 12.010104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.778301, 27.843914, 12.315626>,  <19.927324, 27.801622, 12.498940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.778301, 27.843914, 12.315626>,  <19.529930, 27.914402, 12.010104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.778301, 27.843914, 12.315626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118409, -0.942137, -0.313620,
		0.774874, 0.285176, -0.564132,
		0.620926, -0.176218, 0.763805,
		19.964579, 27.791048, 12.544767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.305330, 27.380262, 12.285765>,  <19.529930, 27.914402, 12.010104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.305330, 27.380262, 12.285765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.959766, 27.416981, 12.483848>,  <18.752428, 27.439011, 12.602697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.959766, 27.416981, 12.483848>,  <19.305330, 27.380262, 12.285765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.959766, 27.416981, 12.483848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084529, -0.942877, 0.322240,
		0.496499, 0.320246, 0.806803,
		-0.863912, 0.091794, 0.495207,
		18.700592, 27.444519, 12.632410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.281151, 26.749392, 12.650034>,  <19.305330, 27.380262, 12.285765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.281151, 26.749392, 12.650034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.934923, 26.907869, 12.772555>,  <18.727186, 27.002956, 12.846068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.934923, 26.907869, 12.772555>,  <19.281151, 26.749392, 12.650034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.934923, 26.907869, 12.772555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231137, -0.858655, 0.457479,
		0.444260, 0.325181, 0.834800,
		-0.865569, 0.396193, 0.306304,
		18.675253, 27.026728, 12.864447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.157331, 26.913574, 13.474771>,  <19.281151, 26.749392, 12.650034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.157331, 26.913574, 13.474771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.808464, 26.833708, 13.296130>,  <18.599144, 26.785788, 13.188946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.808464, 26.833708, 13.296130>,  <19.157331, 26.913574, 13.474771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.808464, 26.833708, 13.296130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022756, -0.895369, 0.444743,
		-0.488673, 0.398055, 0.776371,
		-0.872170, -0.199667, -0.446601,
		18.546812, 26.773808, 13.162149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.765217, 26.562593, 13.987393>,  <19.157331, 26.913574, 13.474771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.765217, 26.562593, 13.987393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.624144, 26.435101, 13.635478>,  <18.539499, 26.358604, 13.424329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.624144, 26.435101, 13.635478>,  <18.765217, 26.562593, 13.987393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.624144, 26.435101, 13.635478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046826, -0.933012, 0.356786,
		-0.934571, 0.167029, 0.314131,
		-0.352682, -0.318732, -0.879787,
		18.518339, 26.339481, 13.371542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.299292, 26.077244, 14.195887>,  <18.765217, 26.562593, 13.987393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.299292, 26.077244, 14.195887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.379282, 25.983110, 13.815438>,  <18.427277, 25.926630, 13.587170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.379282, 25.983110, 13.815438>,  <18.299292, 26.077244, 14.195887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.379282, 25.983110, 13.815438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099743, -0.960795, 0.258697,
		-0.974711, -0.146600, -0.168661,
		0.199974, -0.235332, -0.951120,
		18.439274, 25.912510, 13.530103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070572, 25.398846, 14.164014>,  <18.299292, 26.077244, 14.195887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.070572, 25.398846, 14.164014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.308300, 25.445297, 13.845695>,  <18.450937, 25.473167, 13.654703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.308300, 25.445297, 13.845695>,  <18.070572, 25.398846, 14.164014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.308300, 25.445297, 13.845695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328160, -0.938412, 0.108137,
		-0.734230, -0.325417, -0.595827,
		0.594321, 0.116129, -0.795799,
		18.486597, 25.480137, 13.606955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.903818, 24.775694, 13.834063>,  <18.070572, 25.398846, 14.164014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.903818, 24.775694, 13.834063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.261070, 24.916391, 13.721926>,  <18.475422, 25.000809, 13.654644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.261070, 24.916391, 13.721926>,  <17.903818, 24.775694, 13.834063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.261070, 24.916391, 13.721926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391601, -0.914692, 0.099934,
		-0.221276, -0.199036, -0.954684,
		0.893133, 0.351742, -0.280342,
		18.529011, 25.021914, 13.637823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.128958, 24.373245, 13.178538>,  <17.903818, 24.775694, 13.834063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.128958, 24.373245, 13.178538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.424406, 24.515965, 13.407321>,  <18.601675, 24.601597, 13.544591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.424406, 24.515965, 13.407321>,  <18.128958, 24.373245, 13.178538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.424406, 24.515965, 13.407321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285120, -0.934169, 0.214555,
		0.610859, 0.004602, -0.791726,
		0.738619, 0.356800, 0.571958,
		18.645992, 24.623005, 13.578908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.908577, 24.045469, 13.060123>,  <18.128958, 24.373245, 13.178538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.908577, 24.045469, 13.060123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.813126, 24.159739, 13.431380>,  <18.755856, 24.228300, 13.654134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.813126, 24.159739, 13.431380>,  <18.908577, 24.045469, 13.060123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.813126, 24.159739, 13.431380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295670, -0.889004, 0.349646,
		0.925006, 0.357858, 0.127675,
		-0.238627, 0.285675, 0.928142,
		18.741537, 24.245441, 13.709823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.403530, 23.818817, 13.391998>,  <18.908577, 24.045469, 13.060123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.403530, 23.818817, 13.391998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.138651, 23.857897, 13.689171>,  <18.979723, 23.881344, 13.867475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.138651, 23.857897, 13.689171>,  <19.403530, 23.818817, 13.391998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.138651, 23.857897, 13.689171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266774, -0.895766, 0.355578,
		0.700233, 0.433658, 0.567111,
		-0.662198, 0.097697, 0.742933,
		18.939991, 23.887205, 13.912050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.803497, 23.664946, 14.005992>,  <19.403530, 23.818817, 13.391998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.803497, 23.664946, 14.005992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.413240, 23.625847, 14.084551>,  <19.179087, 23.602388, 14.131686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.413240, 23.625847, 14.084551>,  <19.803497, 23.664946, 14.005992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.413240, 23.625847, 14.084551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154849, -0.940997, 0.300907,
		0.155397, 0.323990, 0.933211,
		-0.975640, -0.097747, 0.196398,
		19.120548, 23.596523, 14.143470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.681570, 23.443754, 14.720090>,  <19.803497, 23.664946, 14.005992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.681570, 23.443754, 14.720090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.359114, 23.313009, 14.522790>,  <19.165640, 23.234562, 14.404409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.359114, 23.313009, 14.522790>,  <19.681570, 23.443754, 14.720090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.359114, 23.313009, 14.522790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110794, -0.902222, 0.416797,
		-0.581256, 0.281349, 0.763534,
		-0.806143, -0.326861, -0.493250,
		19.117271, 23.214951, 14.374815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.322220, 23.025045, 15.238615>,  <19.681570, 23.443754, 14.720090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.322220, 23.025045, 15.238615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.205578, 22.906057, 14.874972>,  <19.135593, 22.834663, 14.656786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.205578, 22.906057, 14.874972>,  <19.322220, 23.025045, 15.238615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.205578, 22.906057, 14.874972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271670, -0.937032, 0.219468,
		-0.917149, -0.182979, 0.354058,
		-0.291605, -0.297472, -0.909108,
		19.118097, 22.816816, 14.602240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.010347, 22.378160, 15.348511>,  <19.322220, 23.025045, 15.238615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.010347, 22.378160, 15.348511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.036409, 22.368774, 14.949471>,  <19.052046, 22.363142, 14.710048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.036409, 22.368774, 14.949471>,  <19.010347, 22.378160, 15.348511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.036409, 22.368774, 14.949471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019116, -0.999511, 0.024758,
		-0.997692, -0.020684, -0.064675,
		0.065155, -0.023465, -0.997599,
		19.055956, 22.361734, 14.650191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.405491, 21.907490, 15.014936>,  <19.010347, 22.378160, 15.348511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.405491, 21.907490, 15.014936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.684496, 21.901834, 14.728363>,  <18.851898, 21.898441, 14.556419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.684496, 21.901834, 14.728363>,  <18.405491, 21.907490, 15.014936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.684496, 21.901834, 14.728363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048154, -0.998470, -0.027182,
		-0.714953, 0.053459, -0.697126,
		0.697513, -0.014136, -0.716433,
		18.893749, 21.897594, 14.513433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.215889, 21.383533, 14.512581>,  <18.405491, 21.907490, 15.014936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.215889, 21.383533, 14.512581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.609642, 21.422821, 14.454144>,  <18.845894, 21.446394, 14.419083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.609642, 21.422821, 14.454144>,  <18.215889, 21.383533, 14.512581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.609642, 21.422821, 14.454144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076818, -0.986364, -0.145550,
		-0.158394, 0.132054, -0.978506,
		0.984383, 0.098221, -0.146090,
		18.904957, 21.452288, 14.410317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.310598, 21.037249, 13.888411>,  <18.215889, 21.383533, 14.512581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.310598, 21.037249, 13.888411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.665810, 21.049154, 14.071939>,  <18.878937, 21.056297, 14.182056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.665810, 21.049154, 14.071939>,  <18.310598, 21.037249, 13.888411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.665810, 21.049154, 14.071939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000790, -0.998000, 0.063212,
		0.459786, -0.055772, -0.886277,
		0.888029, 0.029765, 0.458822,
		18.932219, 21.058084, 14.209586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.627697, 20.496483, 13.594592>,  <18.310598, 21.037249, 13.888411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.627697, 20.496483, 13.594592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.844393, 20.551750, 13.926236>,  <18.974411, 20.584911, 14.125223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.844393, 20.551750, 13.926236>,  <18.627697, 20.496483, 13.594592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.844393, 20.551750, 13.926236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503408, -0.843259, -0.188400,
		0.673125, 0.519445, -0.526384,
		0.541741, 0.138169, 0.829111,
		19.006916, 20.593201, 14.174970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.304617, 20.196819, 13.490584>,  <18.627697, 20.496483, 13.594592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.304617, 20.196819, 13.490584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.339487, 20.244764, 13.886167>,  <19.360409, 20.273531, 14.123516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.339487, 20.244764, 13.886167>,  <19.304617, 20.196819, 13.490584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.339487, 20.244764, 13.886167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563161, -0.824813, 0.050327,
		0.821736, 0.552555, -0.139402,
		0.087173, 0.119861, 0.988956,
		19.365639, 20.280724, 14.182854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.007645, 19.969841, 13.682914>,  <19.304617, 20.196819, 13.490584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.007645, 19.969841, 13.682914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.801550, 19.950357, 14.025178>,  <19.677893, 19.938667, 14.230536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.801550, 19.950357, 14.025178>,  <20.007645, 19.969841, 13.682914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.801550, 19.950357, 14.025178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364219, -0.916188, 0.167164,
		0.775805, 0.397778, 0.489796,
		-0.515239, -0.048707, 0.855661,
		19.646978, 19.935745, 14.281877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.492893, 19.640272, 14.119714>,  <20.007645, 19.969841, 13.682914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.492893, 19.640272, 14.119714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.128258, 19.608688, 14.281093>,  <19.909475, 19.589737, 14.377920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.128258, 19.608688, 14.281093>,  <20.492893, 19.640272, 14.119714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.128258, 19.608688, 14.281093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273473, -0.849219, 0.451709,
		0.306948, 0.522105, 0.795732,
		-0.911590, -0.078960, 0.403447,
		19.854780, 19.585001, 14.402126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.601305, 19.388029, 14.731194>,  <20.492893, 19.640272, 14.119714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.601305, 19.388029, 14.731194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.213655, 19.299656, 14.687395>,  <19.981066, 19.246632, 14.661116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.213655, 19.299656, 14.687395>,  <20.601305, 19.388029, 14.731194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.213655, 19.299656, 14.687395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171366, -0.922764, 0.345167,
		-0.177298, 0.315746, 0.932132,
		-0.969123, -0.220934, -0.109496,
		19.922918, 19.233376, 14.654547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.463232, 19.111406, 15.351851>,  <20.601305, 19.388029, 14.731194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.463232, 19.111406, 15.351851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.189129, 18.984589, 15.089583>,  <20.024668, 18.908497, 14.932222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.189129, 18.984589, 15.089583>,  <20.463232, 19.111406, 15.351851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.189129, 18.984589, 15.089583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398061, -0.916951, 0.027362,
		-0.609892, -0.242247, 0.754552,
		-0.685259, -0.317045, -0.655670,
		19.983551, 18.889475, 14.892882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.162001, 18.537601, 15.649690>,  <20.463232, 19.111406, 15.351851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.162001, 18.537601, 15.649690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.037277, 18.474901, 15.274839>,  <19.962442, 18.437281, 15.049930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.037277, 18.474901, 15.274839>,  <20.162001, 18.537601, 15.649690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.037277, 18.474901, 15.274839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131252, -0.983948, 0.120909,
		-0.941036, -0.085299, 0.327378,
		-0.311809, -0.156749, -0.937126,
		19.943735, 18.427877, 14.993702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.539171, 18.094278, 15.688860>,  <20.162001, 18.537601, 15.649690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.539171, 18.094278, 15.688860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.775309, 18.076788, 15.366473>,  <19.916990, 18.066294, 15.173041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.775309, 18.076788, 15.366473>,  <19.539171, 18.094278, 15.688860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.775309, 18.076788, 15.366473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184603, -0.964751, 0.187558,
		-0.785758, -0.259508, -0.561462,
		0.590344, -0.043728, -0.805967,
		19.952412, 18.063669, 15.124683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.453291, 17.402643, 15.482878>,  <19.539171, 18.094278, 15.688860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.453291, 17.402643, 15.482878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.763704, 17.507292, 15.253329>,  <19.949953, 17.570080, 15.115601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.763704, 17.507292, 15.253329>,  <19.453291, 17.402643, 15.482878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.763704, 17.507292, 15.253329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303217, -0.952613, -0.024250,
		-0.553021, -0.155189, -0.818587,
		0.776033, 0.261621, -0.573871,
		19.996513, 17.585777, 15.081168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.517382, 16.928616, 15.106697>,  <19.453291, 17.402643, 15.482878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.517382, 16.928616, 15.106697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.887804, 17.076807, 15.077960>,  <20.110058, 17.165722, 15.060718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.887804, 17.076807, 15.077960>,  <19.517382, 16.928616, 15.106697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.887804, 17.076807, 15.077960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371451, -0.928453, 0.000166,
		-0.066641, -0.026840, -0.997416,
		0.926058, 0.370480, -0.071842,
		20.165621, 17.187952, 15.056407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.934139, 16.461754, 14.656744>,  <19.517382, 16.928616, 15.106697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.934139, 16.461754, 14.656744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.225416, 16.676788, 14.826797>,  <20.400183, 16.805809, 14.928828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.225416, 16.676788, 14.826797>,  <19.934139, 16.461754, 14.656744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.225416, 16.676788, 14.826797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636236, -0.760857, -0.127672,
		0.254829, 0.363453, -0.896083,
		0.728193, 0.537586, 0.425131,
		20.443874, 16.838064, 14.954335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.499002, 16.430151, 14.192333>,  <19.934139, 16.461754, 14.656744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.499002, 16.430151, 14.192333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.641022, 16.508127, 14.558052>,  <20.726234, 16.554913, 14.777483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.641022, 16.508127, 14.558052>,  <20.499002, 16.430151, 14.192333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.641022, 16.508127, 14.558052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530100, -0.847562, -0.025143,
		0.770022, 0.493595, -0.404264,
		0.355049, 0.194939, 0.914297,
		20.747536, 16.566608, 14.832341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.375700, 16.517593, 14.169256>,  <20.499002, 16.430151, 14.192333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.375700, 16.517593, 14.169256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.335316, 16.455524, 14.562343>,  <21.311085, 16.418283, 14.798194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.335316, 16.455524, 14.562343>,  <21.375700, 16.517593, 14.169256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.335316, 16.455524, 14.562343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478548, -0.873562, -0.088773,
		0.872238, 0.461315, 0.162450,
		-0.100958, -0.155171, 0.982715,
		21.305029, 16.408974, 14.857157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.101471, 16.308365, 14.418402>,  <21.375700, 16.517593, 14.169256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.101471, 16.308365, 14.418402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.812542, 16.173595, 14.659974>,  <21.639185, 16.092733, 14.804917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.812542, 16.173595, 14.659974>,  <22.101471, 16.308365, 14.418402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.812542, 16.173595, 14.659974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405595, -0.913721, -0.024646,
		0.560127, 0.227149, 0.796656,
		-0.722323, -0.336924, 0.603930,
		21.595844, 16.072517, 14.841153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.453861, 16.051655, 14.990119>,  <22.101471, 16.308365, 14.418402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.453861, 16.051655, 14.990119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.093229, 15.884740, 14.944471>,  <21.876850, 15.784591, 14.917083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.093229, 15.884740, 14.944471>,  <22.453861, 16.051655, 14.990119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.093229, 15.884740, 14.944471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421375, -0.906790, -0.013252,
		-0.097952, -0.060034, 0.993379,
		-0.901581, -0.417287, -0.114119,
		21.822756, 15.759554, 14.910235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.060751, 16.463837, 14.856319>,  <22.453861, 16.051655, 14.990119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.060751, 16.463837, 14.856319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.101168, 16.778437, 14.612612>,  <23.125418, 16.967197, 14.466387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.101168, 16.778437, 14.612612>,  <23.060751, 16.463837, 14.856319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.101168, 16.778437, 14.612612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889165, -0.203327, -0.409932,
		-0.446292, 0.583161, 0.678783,
		0.101041, 0.786499, -0.609270,
		23.131479, 17.014387, 14.429831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.770023, 16.721899, 15.214365>,  <23.060751, 16.463837, 14.856319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.770023, 16.721899, 15.214365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.133324, 16.879023, 15.156701>,  <24.351303, 16.973297, 15.122103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.133324, 16.879023, 15.156701>,  <23.770023, 16.721899, 15.214365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.133324, 16.879023, 15.156701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366598, 0.913117, 0.178392,
		0.201708, -0.109176, 0.973342,
		0.908251, 0.392809, -0.144159,
		24.405800, 16.996864, 15.113453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.875437, 17.184095, 15.722002>,  <23.770023, 16.721899, 15.214365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.875437, 17.184095, 15.722002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.125420, 17.321600, 15.441643>,  <24.275410, 17.404102, 15.273427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.125420, 17.321600, 15.441643>,  <23.875437, 17.184095, 15.722002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.125420, 17.321600, 15.441643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256704, 0.938392, 0.231350,
		0.737246, 0.035339, 0.674699,
		0.624957, 0.343760, -0.700898,
		24.312906, 17.424728, 15.231374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.461885, 17.580832, 16.105957>,  <23.875437, 17.184095, 15.722002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.461885, 17.580832, 16.105957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.399147, 17.689426, 15.726128>,  <24.361504, 17.754583, 15.498229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.399147, 17.689426, 15.726128>,  <24.461885, 17.580832, 16.105957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.399147, 17.689426, 15.726128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091789, 0.953308, 0.287714,
		0.983348, 0.132288, -0.124605,
		-0.156848, 0.271486, -0.949576,
		24.352093, 17.770872, 15.441255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.857359, 18.104406, 15.958476>,  <24.461885, 17.580832, 16.105957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.857359, 18.104406, 15.958476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.647411, 18.155529, 15.621863>,  <24.521442, 18.186203, 15.419896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.647411, 18.155529, 15.621863>,  <24.857359, 18.104406, 15.958476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.647411, 18.155529, 15.621863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028589, 0.990752, 0.132640,
		0.850702, 0.045561, -0.523671,
		-0.524871, 0.127808, -0.841532,
		24.489950, 18.193872, 15.369404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204266, 18.698662, 15.650505>,  <24.857359, 18.104406, 15.958476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204266, 18.698662, 15.650505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.841637, 18.688051, 15.482020>,  <24.624060, 18.681684, 15.380930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.841637, 18.688051, 15.482020>,  <25.204266, 18.698662, 15.650505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.841637, 18.688051, 15.482020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077252, 0.991591, 0.103820,
		0.414915, 0.126660, -0.901001,
		-0.906575, -0.026527, -0.421211,
		24.569664, 18.680094, 15.355657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.181938, 19.185566, 15.077506>,  <25.204266, 18.698662, 15.650505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.181938, 19.185566, 15.077506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.798738, 19.115475, 15.168313>,  <24.568819, 19.073420, 15.222797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.798738, 19.115475, 15.168313>,  <25.181938, 19.185566, 15.077506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.798738, 19.115475, 15.168313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213081, 0.964736, -0.154534,
		-0.191933, -0.196416, -0.961552,
		-0.957997, -0.175228, 0.227017,
		24.511339, 19.062906, 15.236418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.826126, 19.515081, 14.538789>,  <25.181938, 19.185566, 15.077506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.826126, 19.515081, 14.538789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.567616, 19.476027, 14.841522>,  <24.412510, 19.452593, 15.023162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.567616, 19.476027, 14.841522>,  <24.826126, 19.515081, 14.538789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.567616, 19.476027, 14.841522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401878, 0.886652, -0.228785,
		-0.648709, -0.452013, -0.612259,
		-0.646275, -0.097639, 0.756833,
		24.373734, 19.446735, 15.068572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.262997, 19.848206, 14.235906>,  <24.826126, 19.515081, 14.538789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.262997, 19.848206, 14.235906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.146496, 19.836748, 14.618393>,  <24.076595, 19.829874, 14.847885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.146496, 19.836748, 14.618393>,  <24.262997, 19.848206, 14.235906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.146496, 19.836748, 14.618393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532766, 0.835057, -0.137260,
		-0.794565, -0.549417, -0.258470,
		-0.291251, -0.028642, 0.956218,
		24.059120, 19.828156, 14.905258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.533003, 20.090191, 14.327595>,  <24.262997, 19.848206, 14.235906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.533003, 20.090191, 14.327595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.703075, 20.133291, 14.687063>,  <23.805119, 20.159151, 14.902744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.703075, 20.133291, 14.687063>,  <23.533003, 20.090191, 14.327595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.703075, 20.133291, 14.687063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306860, 0.951245, 0.031130,
		-0.851504, -0.289003, 0.437515,
		0.425180, 0.107749, 0.898672,
		23.830629, 20.165615, 14.956665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.023293, 20.278267, 14.655960>,  <23.533003, 20.090191, 14.327595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.023293, 20.278267, 14.655960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.332403, 20.410105, 14.872914>,  <23.517870, 20.489208, 15.003087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.332403, 20.410105, 14.872914>,  <23.023293, 20.278267, 14.655960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.332403, 20.410105, 14.872914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389568, 0.920986, -0.004615,
		-0.501052, -0.207730, 0.840116,
		0.772777, 0.329595, 0.542387,
		23.564236, 20.508984, 15.035630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.772812, 20.774553, 14.921087>,  <23.023293, 20.278267, 14.655960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.772812, 20.774553, 14.921087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.152901, 20.848734, 15.021236>,  <23.380955, 20.893242, 15.081326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.152901, 20.848734, 15.021236>,  <22.772812, 20.774553, 14.921087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.152901, 20.848734, 15.021236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182717, 0.982566, -0.034332,
		-0.252374, -0.013124, 0.967541,
		0.950222, 0.185450, 0.250372,
		23.437967, 20.904369, 15.096348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.820551, 21.063835, 15.537234>,  <22.772812, 20.774553, 14.921087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.820551, 21.063835, 15.537234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.163177, 21.176458, 15.364251>,  <23.368753, 21.244032, 15.260461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.163177, 21.176458, 15.364251>,  <22.820551, 21.063835, 15.537234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.163177, 21.176458, 15.364251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302555, 0.952898, 0.021127,
		0.418037, 0.112746, 0.901406,
		0.856566, 0.281557, -0.432458,
		23.420147, 21.260925, 15.234513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.027184, 21.564453, 15.961353>,  <22.820551, 21.063835, 15.537234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.027184, 21.564453, 15.961353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.184696, 21.596869, 15.595103>,  <23.279203, 21.616318, 15.375354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.184696, 21.596869, 15.595103>,  <23.027184, 21.564453, 15.961353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.184696, 21.596869, 15.595103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458189, 0.880840, -0.119095,
		0.796867, 0.466427, 0.383990,
		0.393783, 0.081037, -0.915624,
		23.302832, 21.621180, 15.320415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.400764, 22.164137, 15.940727>,  <23.027184, 21.564453, 15.961353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.400764, 22.164137, 15.940727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.364573, 22.130299, 15.543808>,  <23.342857, 22.109997, 15.305656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.364573, 22.130299, 15.543808>,  <23.400764, 22.164137, 15.940727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.364573, 22.130299, 15.543808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306312, 0.950449, -0.053096,
		0.947621, 0.299149, -0.111908,
		-0.090479, -0.084594, -0.992299,
		23.337429, 22.104919, 15.246119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.691652, 22.739817, 15.653872>,  <23.400764, 22.164137, 15.940727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.691652, 22.739817, 15.653872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.468880, 22.614923, 15.346019>,  <23.335217, 22.539988, 15.161306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.468880, 22.614923, 15.346019>,  <23.691652, 22.739817, 15.653872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.468880, 22.614923, 15.346019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178152, 0.949988, -0.256484,
		0.811226, -0.005733, -0.584705,
		-0.556933, -0.312233, -0.769634,
		23.301800, 22.521254, 15.115129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.840029, 23.184582, 15.083788>,  <23.691652, 22.739817, 15.653872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.840029, 23.184582, 15.083788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.478266, 23.037519, 14.997188>,  <23.261208, 22.949282, 14.945228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.478266, 23.037519, 14.997188>,  <23.840029, 23.184582, 15.083788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.478266, 23.037519, 14.997188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320031, 0.920140, -0.225659,
		0.282175, -0.134801, -0.949845,
		-0.904410, -0.367655, -0.216501,
		23.206944, 22.927223, 14.932238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.559702, 23.420595, 14.417775>,  <23.840029, 23.184582, 15.083788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.559702, 23.420595, 14.417775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.220686, 23.304543, 14.595540>,  <23.017277, 23.234911, 14.702199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.220686, 23.304543, 14.595540>,  <23.559702, 23.420595, 14.417775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.220686, 23.304543, 14.595540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476704, 0.784246, -0.397129,
		-0.233308, -0.548435, -0.802986,
		-0.847538, -0.290133, 0.444412,
		22.966425, 23.217503, 14.728864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.111115, 23.405577, 13.967690>,  <23.559702, 23.420595, 14.417775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.111115, 23.405577, 13.967690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.886957, 23.471046, 14.292447>,  <22.752462, 23.510328, 14.487302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.886957, 23.471046, 14.292447>,  <23.111115, 23.405577, 13.967690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.886957, 23.471046, 14.292447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382911, 0.818023, -0.429205,
		-0.734398, -0.551406, -0.395740,
		-0.560391, 0.163674, 0.811894,
		22.718840, 23.520149, 14.536016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.602312, 19.486267, 21.201693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.300976, 19.224653, 21.174223>,  <17.120174, 19.067684, 21.157742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.300976, 19.224653, 21.174223>,  <17.602312, 19.486267, 21.201693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.300976, 19.224653, 21.174223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477173, -0.471772, -0.741443,
		0.452532, -0.591328, 0.667493,
		-0.753340, -0.654036, -0.068673,
		17.074974, 19.028442, 21.153622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.934919, 18.893373, 21.175640>,  <17.602312, 19.486267, 21.201693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.934919, 18.893373, 21.175640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.584433, 18.764151, 21.032600>,  <17.374140, 18.686617, 20.946777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.584433, 18.764151, 21.032600>,  <17.934919, 18.893373, 21.175640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.584433, 18.764151, 21.032600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481187, -0.545743, -0.686020,
		0.026465, -0.773175, 0.633640,
		-0.876218, -0.323055, -0.357599,
		17.321568, 18.667234, 20.925322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.989561, 18.157585, 21.115973>,  <17.934919, 18.893373, 21.175640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.989561, 18.157585, 21.115973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.707233, 18.268551, 20.855247>,  <17.537836, 18.335131, 20.698812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.707233, 18.268551, 20.855247>,  <17.989561, 18.157585, 21.115973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.707233, 18.268551, 20.855247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323768, -0.692073, -0.645142,
		-0.630075, -0.666390, 0.398660,
		-0.705819, 0.277414, -0.651814,
		17.495487, 18.351776, 20.659704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.837696, 17.503967, 20.874241>,  <17.989561, 18.157585, 21.115973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.837696, 17.503967, 20.874241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666077, 17.757235, 20.616554>,  <17.563105, 17.909195, 20.461943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666077, 17.757235, 20.616554>,  <17.837696, 17.503967, 20.874241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.666077, 17.757235, 20.616554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295584, -0.575516, -0.762503,
		-0.853550, -0.517572, 0.059771,
		-0.429049, 0.633167, -0.644217,
		17.537361, 17.947186, 20.423288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.681166, 17.118155, 20.412111>,  <17.837696, 17.503967, 20.874241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.681166, 17.118155, 20.412111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643799, 17.457008, 20.202871>,  <17.621378, 17.660320, 20.077328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643799, 17.457008, 20.202871>,  <17.681166, 17.118155, 20.412111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.643799, 17.457008, 20.202871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160201, -0.505761, -0.847668,
		-0.982654, -0.162989, -0.088464,
		-0.093419, 0.847136, -0.523099,
		17.615772, 17.711149, 20.045942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.294445, 16.889914, 20.015203>,  <17.681166, 17.118155, 20.412111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.294445, 16.889914, 20.015203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.469889, 17.214413, 19.860544>,  <17.575155, 17.409113, 19.767748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.469889, 17.214413, 19.860544>,  <17.294445, 16.889914, 20.015203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.469889, 17.214413, 19.860544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103564, -0.473004, -0.874952,
		-0.892691, 0.343717, -0.291480,
		0.438607, 0.811249, -0.386650,
		17.601471, 17.457787, 19.744549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.923615, 17.171902, 19.391878>,  <17.294445, 16.889914, 20.015203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.923615, 17.171902, 19.391878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.293762, 17.315851, 19.344240>,  <17.515850, 17.402222, 19.315659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.293762, 17.315851, 19.344240>,  <16.923615, 17.171902, 19.391878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.293762, 17.315851, 19.344240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055083, -0.438496, -0.897043,
		-0.375046, 0.823535, -0.425593,
		0.925368, 0.359876, -0.119094,
		17.571373, 17.423815, 19.308512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907673, 17.475399, 18.783604>,  <16.923615, 17.171902, 19.391878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.907673, 17.475399, 18.783604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.299974, 17.426567, 18.844551>,  <17.535357, 17.397268, 18.881119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.299974, 17.426567, 18.844551>,  <16.907673, 17.475399, 18.783604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.299974, 17.426567, 18.844551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115142, -0.268588, -0.956349,
		0.157677, 0.955488, -0.249362,
		0.980755, -0.122082, 0.152367,
		17.594200, 17.389942, 18.890261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.180330, 17.798607, 18.163536>,  <16.907673, 17.475399, 18.783604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.180330, 17.798607, 18.163536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.512861, 17.626621, 18.304403>,  <17.712379, 17.523430, 18.388924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.512861, 17.626621, 18.304403>,  <17.180330, 17.798607, 18.163536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.512861, 17.626621, 18.304403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316855, -0.153929, -0.935900,
		0.456613, 0.889627, 0.008271,
		0.831329, -0.429965, 0.352169,
		17.762260, 17.497631, 18.410053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.784786, 18.150948, 17.879951>,  <17.180330, 17.798607, 18.163536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.784786, 18.150948, 17.879951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.882395, 17.769987, 17.953043>,  <17.940960, 17.541410, 17.996899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.882395, 17.769987, 17.953043>,  <17.784786, 18.150948, 17.879951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.882395, 17.769987, 17.953043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163157, -0.145419, -0.975824,
		0.955947, 0.267933, 0.119906,
		0.244019, -0.952400, 0.182728,
		17.955601, 17.484266, 18.007862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.416977, 18.041679, 17.563406>,  <17.784786, 18.150948, 17.879951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.416977, 18.041679, 17.563406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.252312, 17.681623, 17.620373>,  <18.153513, 17.465590, 17.654552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.252312, 17.681623, 17.620373>,  <18.416977, 18.041679, 17.563406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.252312, 17.681623, 17.620373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228515, -0.253235, -0.940028,
		0.882221, -0.354432, 0.309943,
		-0.411665, -0.900139, 0.142416,
		18.128813, 17.411581, 17.663097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.970888, 17.491165, 17.524773>,  <18.416977, 18.041679, 17.563406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.970888, 17.491165, 17.524773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.615656, 17.337555, 17.423710>,  <18.402515, 17.245390, 17.363071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.615656, 17.337555, 17.423710>,  <18.970888, 17.491165, 17.524773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.615656, 17.337555, 17.423710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348137, -0.202958, -0.915209,
		0.300184, -0.900740, 0.313937,
		-0.888082, -0.384025, -0.252656,
		18.349232, 17.222347, 17.347914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.340155, 16.873606, 17.675188>,  <18.970888, 17.491165, 17.524773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.340155, 16.873606, 17.675188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.423168, 17.014416, 18.040266>,  <19.472977, 17.098902, 18.259312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.423168, 17.014416, 18.040266>,  <19.340155, 16.873606, 17.675188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.423168, 17.014416, 18.040266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966514, -0.217744, -0.135790,
		0.150932, 0.910312, -0.385424,
		0.207535, 0.352023, 0.912693,
		19.485428, 17.120022, 18.314074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.124971, 16.275347, 17.173084>,  <19.340155, 16.873606, 17.675188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.124971, 16.275347, 17.173084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.032461, 16.272772, 17.562231>,  <18.976955, 16.271227, 17.795719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.032461, 16.272772, 17.562231>,  <19.124971, 16.275347, 17.173084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.032461, 16.272772, 17.562231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938400, 0.262418, 0.224817,
		-0.256745, 0.964933, -0.054649,
		-0.231275, -0.006438, 0.972867,
		18.963079, 16.270840, 17.854092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.430223, 15.593609, 17.144583>,  <19.124971, 16.275347, 17.173084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.430223, 15.593609, 17.144583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.782190, 15.403558, 17.144436>,  <19.993370, 15.289527, 17.144348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.782190, 15.403558, 17.144436>,  <19.430223, 15.593609, 17.144583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.782190, 15.403558, 17.144436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232302, -0.430889, 0.871992,
		-0.414473, -0.767191, -0.489520,
		0.879914, -0.475134, -0.000372,
		20.046165, 15.261019, 17.144325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.314060, 14.899812, 17.306610>,  <19.430223, 15.593609, 17.144583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.314060, 14.899812, 17.306610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.695738, 14.965491, 17.406652>,  <19.924744, 15.004899, 17.466679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.695738, 14.965491, 17.406652>,  <19.314060, 14.899812, 17.306610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.695738, 14.965491, 17.406652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198016, -0.280080, 0.939332,
		0.224287, -0.945830, -0.234736,
		0.954194, 0.164199, 0.250108,
		19.981997, 15.014751, 17.481686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.509617, 14.321198, 17.634840>,  <19.314060, 14.899812, 17.306610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.509617, 14.321198, 17.634840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.770033, 14.598569, 17.758326>,  <19.926283, 14.764992, 17.832417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.770033, 14.598569, 17.758326>,  <19.509617, 14.321198, 17.634840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.770033, 14.598569, 17.758326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162871, -0.269622, 0.949093,
		0.741362, -0.668180, -0.062596,
		0.651042, 0.693427, 0.308714,
		19.965345, 14.806597, 17.850941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.799522, 13.952476, 18.102833>,  <19.509617, 14.321198, 17.634840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.799522, 13.952476, 18.102833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.884434, 14.334261, 18.186678>,  <19.935381, 14.563333, 18.236984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.884434, 14.334261, 18.186678>,  <19.799522, 13.952476, 18.102833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.884434, 14.334261, 18.186678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237632, -0.157643, 0.958478,
		0.947876, -0.253274, 0.193347,
		0.212278, 0.954464, 0.209612,
		19.948116, 14.620600, 18.249561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.158834, 13.968194, 18.770729>,  <19.799522, 13.952476, 18.102833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.158834, 13.968194, 18.770729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.025331, 14.342931, 18.728907>,  <19.945230, 14.567773, 18.703814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.025331, 14.342931, 18.728907>,  <20.158834, 13.968194, 18.770729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.025331, 14.342931, 18.728907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262012, 0.014350, 0.964958,
		0.905514, 0.349456, 0.240674,
		-0.333757, 0.936843, -0.104556,
		19.925205, 14.623983, 18.697540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.399799, 14.302159, 19.364599>,  <20.158834, 13.968194, 18.770729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.399799, 14.302159, 19.364599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.086956, 14.496823, 19.208923>,  <19.899250, 14.613622, 19.115519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.086956, 14.496823, 19.208923>,  <20.399799, 14.302159, 19.364599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.086956, 14.496823, 19.208923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335720, 0.197092, 0.921112,
		0.524975, 0.851068, 0.009235,
		-0.782108, 0.486661, -0.389189,
		19.852324, 14.642821, 19.092167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.466776, 14.983402, 19.631207>,  <20.399799, 14.302159, 19.364599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.466776, 14.983402, 19.631207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.086336, 14.937187, 19.516619>,  <19.858072, 14.909458, 19.447866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.086336, 14.937187, 19.516619>,  <20.466776, 14.983402, 19.631207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.086336, 14.937187, 19.516619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307959, 0.282728, 0.908420,
		-0.023964, 0.952216, -0.304483,
		-0.951098, -0.115537, -0.286468,
		19.801006, 14.902526, 19.430677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.127945, 15.438529, 19.972065>,  <20.466776, 14.983402, 19.631207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.127945, 15.438529, 19.972065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.815920, 15.214471, 19.860538>,  <19.628704, 15.080036, 19.793623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.815920, 15.214471, 19.860538>,  <20.127945, 15.438529, 19.972065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.815920, 15.214471, 19.860538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407553, 0.116751, 0.905688,
		-0.474766, 0.820125, -0.319362,
		-0.780063, -0.560146, -0.278815,
		19.581902, 15.046427, 19.776894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.529781, 15.805943, 20.222252>,  <20.127945, 15.438529, 19.972065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.529781, 15.805943, 20.222252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.375774, 15.442368, 20.158262>,  <19.283369, 15.224222, 20.119869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.375774, 15.442368, 20.158262>,  <19.529781, 15.805943, 20.222252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.375774, 15.442368, 20.158262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506407, 0.063154, 0.859979,
		-0.771565, 0.412119, -0.484608,
		-0.385019, -0.908939, -0.159972,
		19.260269, 15.169686, 20.110271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.733315, 15.877720, 20.240263>,  <19.529781, 15.805943, 20.222252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.733315, 15.877720, 20.240263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.805523, 15.492169, 20.318600>,  <18.848848, 15.260839, 20.365602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.805523, 15.492169, 20.318600>,  <18.733315, 15.877720, 20.240263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.805523, 15.492169, 20.318600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443706, 0.097895, 0.890809,
		-0.877802, -0.247707, -0.410006,
		0.180522, -0.963876, 0.195841,
		18.859680, 15.203007, 20.377352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.020864, 15.554376, 20.520454>,  <18.733315, 15.877720, 20.240263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.020864, 15.554376, 20.520454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.309004, 15.317792, 20.665380>,  <18.481888, 15.175842, 20.752337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.309004, 15.317792, 20.665380>,  <18.020864, 15.554376, 20.520454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.309004, 15.317792, 20.665380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422730, 0.039768, 0.905382,
		-0.549905, -0.805354, -0.221381,
		0.720349, -0.591459, 0.362316,
		18.525108, 15.140354, 20.774075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.644068, 15.059586, 20.926193>,  <18.020864, 15.554376, 20.520454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.644068, 15.059586, 20.926193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.017738, 14.981894, 21.045921>,  <18.241940, 14.935278, 21.117758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.017738, 14.981894, 21.045921>,  <17.644068, 15.059586, 20.926193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.017738, 14.981894, 21.045921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290671, 0.072287, 0.954089,
		-0.206950, -0.978289, 0.011071,
		0.934175, -0.194231, 0.299320,
		18.297991, 14.923625, 21.135717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.539047, 14.663857, 21.485600>,  <17.644068, 15.059586, 20.926193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.539047, 14.663857, 21.485600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.916607, 14.788769, 21.528555>,  <18.143143, 14.863715, 21.554329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.916607, 14.788769, 21.528555>,  <17.539047, 14.663857, 21.485600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.916607, 14.788769, 21.528555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159625, 0.146775, 0.976205,
		0.289087, -0.938583, 0.188389,
		0.943900, 0.312279, 0.107390,
		18.199778, 14.882452, 21.560772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.937025, 14.224018, 22.055948>,  <17.539047, 14.663857, 21.485600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.937025, 14.224018, 22.055948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070749, 14.597726, 22.006348>,  <18.150984, 14.821951, 21.976587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070749, 14.597726, 22.006348>,  <17.937025, 14.224018, 22.055948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.070749, 14.597726, 22.006348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153961, 0.183941, 0.970805,
		0.929802, -0.305461, 0.205335,
		0.334312, 0.934270, -0.124000,
		18.171043, 14.878007, 21.969149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.871868, 13.507220, 22.389359>,  <17.937025, 14.224018, 22.055948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.871868, 13.507220, 22.389359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666124, 13.269506, 22.636667>,  <17.542679, 13.126879, 22.785053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666124, 13.269506, 22.636667>,  <17.871868, 13.507220, 22.389359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.666124, 13.269506, 22.636667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147686, -0.771568, -0.618766,
		0.844763, -0.226957, 0.484630,
		-0.514359, -0.594284, 0.618273,
		17.511816, 13.091221, 22.822149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.239794, 12.844604, 22.491106>,  <17.871868, 13.507220, 22.389359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.239794, 12.844604, 22.491106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.848639, 12.793502, 22.557337>,  <17.613945, 12.762840, 22.597075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.848639, 12.793502, 22.557337>,  <18.239794, 12.844604, 22.491106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.848639, 12.793502, 22.557337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038297, -0.668947, -0.742323,
		0.205599, -0.732249, 0.649261,
		-0.977887, -0.127756, 0.165577,
		17.555273, 12.755175, 22.607010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070005, 12.106824, 22.637661>,  <18.239794, 12.844604, 22.491106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.070005, 12.106824, 22.637661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.727348, 12.268708, 22.509678>,  <17.521755, 12.365839, 22.432888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.727348, 12.268708, 22.509678>,  <18.070005, 12.106824, 22.637661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.727348, 12.268708, 22.509678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046860, -0.678656, -0.732960,
		-0.513779, -0.612891, 0.600330,
		-0.856642, 0.404710, -0.319959,
		17.470356, 12.390121, 22.413691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.622585, 11.593269, 22.598492>,  <18.070005, 12.106824, 22.637661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.622585, 11.593269, 22.598492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.487337, 11.873589, 22.347237>,  <17.406187, 12.041780, 22.196484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.487337, 11.873589, 22.347237>,  <17.622585, 11.593269, 22.598492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.487337, 11.873589, 22.347237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039248, -0.677369, -0.734596,
		-0.940284, -0.223729, 0.256538,
		-0.338122, 0.700798, -0.628138,
		17.385900, 12.083828, 22.158796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.108894, 11.207471, 22.164484>,  <17.622585, 11.593269, 22.598492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.108894, 11.207471, 22.164484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.218948, 11.552568, 21.994791>,  <17.284981, 11.759626, 21.892975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.218948, 11.552568, 21.994791>,  <17.108894, 11.207471, 22.164484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.218948, 11.552568, 21.994791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007141, -0.443086, -0.896451,
		-0.961379, 0.243617, -0.128069,
		0.275136, 0.862743, -0.424234,
		17.301489, 11.811392, 21.867521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.573709, 11.421283, 21.697353>,  <17.108894, 11.207471, 22.164484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.573709, 11.421283, 21.697353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.912649, 11.583371, 21.560066>,  <17.116013, 11.680624, 21.477694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.912649, 11.583371, 21.560066>,  <16.573709, 11.421283, 21.697353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.912649, 11.583371, 21.560066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168359, -0.407978, -0.897335,
		-0.503643, 0.818138, -0.277477,
		0.847348, 0.405221, -0.343216,
		17.166853, 11.704937, 21.457102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.421196, 11.537698, 21.023453>,  <16.573709, 11.421283, 21.697353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.421196, 11.537698, 21.023453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.820780, 11.547404, 21.007996>,  <17.060530, 11.553228, 20.998720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.820780, 11.547404, 21.007996>,  <16.421196, 11.537698, 21.023453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.820780, 11.547404, 21.007996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028094, -0.340271, -0.939908,
		-0.035958, 0.940014, -0.339235,
		0.998958, 0.024266, -0.038644,
		17.120468, 11.554685, 20.996403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.496227, 11.735660, 20.335207>,  <16.421196, 11.537698, 21.023453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.496227, 11.735660, 20.335207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.848549, 11.583158, 20.447517>,  <17.059942, 11.491658, 20.514904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.848549, 11.583158, 20.447517>,  <16.496227, 11.735660, 20.335207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.848549, 11.583158, 20.447517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178508, -0.281853, -0.942705,
		0.438546, 0.880457, -0.180200,
		0.880802, -0.381253, 0.280775,
		17.112789, 11.468782, 20.531750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.853865, 11.930214, 19.775669>,  <16.496227, 11.735660, 20.335207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.853865, 11.930214, 19.775669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.082815, 11.671080, 19.976746>,  <17.220184, 11.515599, 20.097391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.082815, 11.671080, 19.976746>,  <16.853865, 11.930214, 19.775669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.082815, 11.671080, 19.976746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279200, -0.422439, -0.862318,
		0.770995, 0.633921, -0.060918,
		0.572375, -0.647835, 0.502689,
		17.254528, 11.476729, 20.127552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.525757, 11.984208, 19.545181>,  <16.853865, 11.930214, 19.775669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.525757, 11.984208, 19.545181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.419720, 11.620400, 19.673244>,  <17.356098, 11.402116, 19.750082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.419720, 11.620400, 19.673244>,  <17.525757, 11.984208, 19.545181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.419720, 11.620400, 19.673244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129827, -0.362681, -0.922826,
		0.955443, -0.203068, 0.214224,
		-0.265091, -0.909520, 0.320157,
		17.340193, 11.347545, 19.769291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.012436, 11.453359, 19.260021>,  <17.525757, 11.984208, 19.545181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.012436, 11.453359, 19.260021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.705013, 11.224405, 19.374353>,  <17.520559, 11.087033, 19.442951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.705013, 11.224405, 19.374353>,  <18.012436, 11.453359, 19.260021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.705013, 11.224405, 19.374353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125818, -0.302814, -0.944708,
		0.627288, -0.762024, 0.160714,
		-0.768557, -0.572384, 0.285828,
		17.474445, 11.052691, 19.460102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.103491, 10.883155, 18.851522>,  <18.012436, 11.453359, 19.260021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.103491, 10.883155, 18.851522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.720106, 10.864242, 18.964031>,  <17.490074, 10.852894, 19.031536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.720106, 10.864242, 18.964031>,  <18.103491, 10.883155, 18.851522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.720106, 10.864242, 18.964031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261502, -0.248022, -0.932793,
		0.113869, -0.967600, 0.225355,
		-0.958463, -0.047285, 0.281271,
		17.432568, 10.850057, 19.048412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.562458, 13.944976, 27.421587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.897861, 14.032067, 27.621386>,  <15.099104, 14.084322, 27.741264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.897861, 14.032067, 27.621386>,  <14.562458, 13.944976, 27.421587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.897861, 14.032067, 27.621386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472379, 0.166445, -0.865537,
		-0.271590, 0.961712, 0.036715,
		0.838509, 0.217728, 0.499497,
		15.149414, 14.097385, 27.771235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.787582, 14.573810, 27.166183>,  <14.562458, 13.944976, 27.421587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.787582, 14.573810, 27.166183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.105000, 14.389084, 27.324684>,  <15.295451, 14.278249, 27.419785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.105000, 14.389084, 27.324684>,  <14.787582, 14.573810, 27.166183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.105000, 14.389084, 27.324684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480097, 0.075042, -0.874000,
		0.373890, 0.883796, 0.281265,
		0.793545, -0.461815, 0.396250,
		15.343064, 14.250540, 27.443560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.374942, 14.977219, 26.940685>,  <14.787582, 14.573810, 27.166183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.374942, 14.977219, 26.940685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.515350, 14.617304, 27.044352>,  <15.599595, 14.401355, 27.106552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.515350, 14.617304, 27.044352>,  <15.374942, 14.977219, 26.940685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.515350, 14.617304, 27.044352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512278, -0.047145, -0.857525,
		0.783809, 0.433773, 0.444393,
		0.351020, -0.899788, 0.259165,
		15.620656, 14.347367, 27.122101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.121811, 15.064504, 26.866030>,  <15.374942, 14.977219, 26.940685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.121811, 15.064504, 26.866030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.032087, 14.674698, 26.864864>,  <15.978253, 14.440814, 26.864166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.032087, 14.674698, 26.864864>,  <16.121811, 15.064504, 26.866030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.032087, 14.674698, 26.864864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448617, -0.100605, -0.888043,
		0.865118, -0.200501, 0.459751,
		-0.224307, -0.974514, -0.002913,
		15.964795, 14.382343, 26.863991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.630177, 14.653479, 26.601496>,  <16.121811, 15.064504, 26.866030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.630177, 14.653479, 26.601496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.345736, 14.375326, 26.559969>,  <16.175072, 14.208435, 26.535053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.345736, 14.375326, 26.559969>,  <16.630177, 14.653479, 26.601496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.345736, 14.375326, 26.559969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377337, -0.252863, -0.890885,
		0.593253, -0.672685, 0.442205,
		-0.711103, -0.695381, -0.103817,
		16.132404, 14.166712, 26.528824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.961964, 13.948236, 26.600496>,  <16.630177, 14.653479, 26.601496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.961964, 13.948236, 26.600496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.612585, 13.916152, 26.408388>,  <16.402958, 13.896902, 26.293123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.612585, 13.916152, 26.408388>,  <16.961964, 13.948236, 26.600496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.612585, 13.916152, 26.408388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484577, -0.239885, -0.841213,
		-0.047736, -0.967482, 0.248394,
		-0.873445, -0.080210, -0.480271,
		16.350552, 13.892089, 26.264307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.015514, 13.347095, 26.211998>,  <16.961964, 13.948236, 26.600496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.015514, 13.347095, 26.211998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.719522, 13.553811, 26.039785>,  <16.541927, 13.677840, 25.936459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.719522, 13.553811, 26.039785>,  <17.015514, 13.347095, 26.211998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.719522, 13.553811, 26.039785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338309, -0.267264, -0.902284,
		-0.581357, -0.813325, 0.022936,
		-0.739981, 0.516790, -0.430531,
		16.497528, 13.708848, 25.910625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.786949, 12.895404, 25.641607>,  <17.015514, 13.347095, 26.211998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.786949, 12.895404, 25.641607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.626770, 13.245719, 25.533802>,  <16.530663, 13.455908, 25.469118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.626770, 13.245719, 25.533802>,  <16.786949, 12.895404, 25.641607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.626770, 13.245719, 25.533802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148937, -0.228005, -0.962201,
		-0.904136, -0.425450, -0.039134,
		-0.400446, 0.875789, -0.269512,
		16.506636, 13.508455, 25.452948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.338549, 12.763963, 25.182371>,  <16.786949, 12.895404, 25.641607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.338549, 12.763963, 25.182371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.437422, 13.144455, 25.108549>,  <16.496746, 13.372750, 25.064257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.437422, 13.144455, 25.108549>,  <16.338549, 12.763963, 25.182371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.437422, 13.144455, 25.108549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280998, -0.252651, -0.925855,
		-0.927330, 0.176996, -0.329745,
		0.247183, 0.951231, -0.184556,
		16.511576, 13.429824, 25.053183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040211, 12.911640, 24.648691>,  <16.338549, 12.763963, 25.182371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.040211, 12.911640, 24.648691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.318808, 13.198580, 24.641668>,  <16.485966, 13.370744, 24.637455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.318808, 13.198580, 24.641668>,  <16.040211, 12.911640, 24.648691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.318808, 13.198580, 24.641668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234125, -0.250312, -0.939430,
		-0.678294, 0.650196, -0.342290,
		0.696493, 0.717348, -0.017558,
		16.527756, 13.413784, 24.636400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.925747, 13.363523, 24.081865>,  <16.040211, 12.911640, 24.648691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.925747, 13.363523, 24.081865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.307356, 13.434844, 24.178240>,  <16.536322, 13.477636, 24.236065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.307356, 13.434844, 24.178240>,  <15.925747, 13.363523, 24.081865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.307356, 13.434844, 24.178240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277806, -0.224200, -0.934108,
		-0.112535, 0.958094, -0.263425,
		0.954023, 0.178301, 0.240934,
		16.593563, 13.488335, 24.250521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.194689, 13.867131, 23.547146>,  <15.925747, 13.363523, 24.081865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.194689, 13.867131, 23.547146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.527365, 13.708852, 23.702950>,  <16.726971, 13.613884, 23.796432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.527365, 13.708852, 23.702950>,  <16.194689, 13.867131, 23.547146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.527365, 13.708852, 23.702950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412217, -0.029944, -0.910593,
		0.371983, 0.917893, 0.138210,
		0.831688, -0.395697, 0.389510,
		16.776871, 13.590142, 23.819803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716928, 14.056201, 23.149975>,  <16.194689, 13.867131, 23.547146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.716928, 14.056201, 23.149975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.872955, 13.741656, 23.341593>,  <16.966572, 13.552930, 23.456564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.872955, 13.741656, 23.341593>,  <16.716928, 14.056201, 23.149975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.872955, 13.741656, 23.341593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352728, -0.352961, -0.866603,
		0.850548, 0.507005, 0.139693,
		0.390066, -0.786361, 0.479045,
		16.989975, 13.505748, 23.485306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.435308, 13.987800, 22.919209>,  <16.716928, 14.056201, 23.149975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.435308, 13.987800, 22.919209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.339373, 13.630432, 23.071146>,  <17.281811, 13.416012, 23.162308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.339373, 13.630432, 23.071146>,  <17.435308, 13.987800, 22.919209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.339373, 13.630432, 23.071146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439879, -0.448804, -0.777870,
		0.865438, -0.019479, 0.500637,
		-0.239840, -0.893418, 0.379843,
		17.267420, 13.362407, 23.185099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.147457, 14.386310, 22.776806>,  <17.435308, 13.987800, 22.919209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.147457, 14.386310, 22.776806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.155720, 14.740709, 22.591516>,  <18.160677, 14.953349, 22.480343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.155720, 14.740709, 22.591516>,  <18.147457, 14.386310, 22.776806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.155720, 14.740709, 22.591516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186837, 0.458583, 0.868789,
		0.982174, 0.068602, 0.175009,
		0.020655, 0.886000, -0.463226,
		18.161917, 15.006509, 22.452549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.564112, 14.805820, 23.272303>,  <18.147457, 14.386310, 22.776806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.564112, 14.805820, 23.272303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.369417, 15.062430, 23.035143>,  <18.252600, 15.216397, 22.892847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.369417, 15.062430, 23.035143>,  <18.564112, 14.805820, 23.272303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.369417, 15.062430, 23.035143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168573, 0.596987, 0.784340,
		0.857129, 0.481714, -0.182433,
		-0.486738, 0.641527, -0.592899,
		18.223396, 15.254889, 22.857273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.841497, 15.406199, 23.469597>,  <18.564112, 14.805820, 23.272303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.841497, 15.406199, 23.469597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.485809, 15.476482, 23.300640>,  <18.272396, 15.518653, 23.199266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.485809, 15.476482, 23.300640>,  <18.841497, 15.406199, 23.469597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.485809, 15.476482, 23.300640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193118, 0.692830, 0.694760,
		0.414721, 0.699366, -0.582146,
		-0.889220, 0.175709, -0.422392,
		18.219044, 15.529195, 23.173923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.742794, 16.075577, 23.486010>,  <18.841497, 15.406199, 23.469597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.742794, 16.075577, 23.486010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.362673, 15.968390, 23.422611>,  <18.134600, 15.904078, 23.384573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.362673, 15.968390, 23.422611>,  <18.742794, 16.075577, 23.486010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.362673, 15.968390, 23.422611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303348, 0.682404, 0.665060,
		-0.070056, 0.680086, -0.729777,
		-0.950301, -0.267968, -0.158497,
		18.077583, 15.888000, 23.375063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.324989, 16.738661, 23.525351>,  <18.742794, 16.075577, 23.486010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.324989, 16.738661, 23.525351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.038239, 16.460279, 23.542009>,  <17.866188, 16.293251, 23.552004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.038239, 16.460279, 23.542009>,  <18.324989, 16.738661, 23.525351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.038239, 16.460279, 23.542009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408308, 0.467502, 0.784045,
		-0.565127, 0.545061, -0.619305,
		-0.716879, -0.695953, 0.041645,
		17.823175, 16.251493, 23.554502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.650873, 17.099335, 23.508802>,  <18.324989, 16.738661, 23.525351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.650873, 17.099335, 23.508802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.638828, 16.744236, 23.692541>,  <17.631601, 16.531178, 23.802784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.638828, 16.744236, 23.692541>,  <17.650873, 17.099335, 23.508802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.638828, 16.744236, 23.692541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400500, 0.431766, 0.808194,
		-0.915802, -0.159631, -0.368544,
		-0.030112, -0.887748, 0.459345,
		17.629795, 16.477911, 23.830345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.032671, 17.130562, 23.796824>,  <17.650873, 17.099335, 23.508802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.032671, 17.130562, 23.796824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.219599, 16.845325, 24.005865>,  <17.331755, 16.674183, 24.131290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.219599, 16.845325, 24.005865>,  <17.032671, 17.130562, 23.796824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.219599, 16.845325, 24.005865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306861, 0.423542, 0.852319,
		-0.829127, -0.558670, -0.020892,
		0.467317, -0.713092, 0.522604,
		17.359795, 16.631397, 24.162647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.602985, 17.070492, 24.402887>,  <17.032671, 17.130562, 23.796824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.602985, 17.070492, 24.402887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.944624, 16.882711, 24.492451>,  <17.149607, 16.770044, 24.546188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.944624, 16.882711, 24.492451>,  <16.602985, 17.070492, 24.402887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.944624, 16.882711, 24.492451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103115, 0.269117, 0.957572,
		-0.509789, -0.840948, 0.181445,
		0.854097, -0.469450, 0.223907,
		17.200853, 16.741877, 24.559624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.480621, 16.592503, 24.984179>,  <16.602985, 17.070492, 24.402887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.480621, 16.592503, 24.984179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.865362, 16.701820, 24.979277>,  <17.096207, 16.767412, 24.976336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.865362, 16.701820, 24.979277>,  <16.480621, 16.592503, 24.984179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.865362, 16.701820, 24.979277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080071, 0.324078, 0.942636,
		0.261586, -0.905696, 0.333598,
		0.961853, 0.273292, -0.012255,
		17.153917, 16.783810, 24.975599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.647734, 16.386131, 25.611954>,  <16.480621, 16.592503, 24.984179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.647734, 16.386131, 25.611954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.914762, 16.666376, 25.511164>,  <17.074980, 16.834522, 25.450689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.914762, 16.666376, 25.511164>,  <16.647734, 16.386131, 25.611954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.914762, 16.666376, 25.511164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044066, 0.300656, 0.952714,
		0.743241, -0.647107, 0.169836,
		0.667570, 0.700613, -0.251975,
		17.115034, 16.876560, 25.435572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.033573, 16.333994, 26.172930>,  <16.647734, 16.386131, 25.611954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.033573, 16.333994, 26.172930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.113714, 16.667782, 25.967594>,  <17.161798, 16.868055, 25.844393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.113714, 16.667782, 25.967594>,  <17.033573, 16.333994, 26.172930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.113714, 16.667782, 25.967594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147887, 0.492200, 0.857828,
		0.968498, -0.247783, -0.024795,
		0.200351, 0.834472, -0.513338,
		17.173819, 16.918123, 25.813593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.596931, 16.534100, 26.460121>,  <17.033573, 16.333994, 26.172930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.596931, 16.534100, 26.460121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.460234, 16.863050, 26.278173>,  <17.378214, 17.060421, 26.169004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.460234, 16.863050, 26.278173>,  <17.596931, 16.534100, 26.460121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.460234, 16.863050, 26.278173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139713, 0.523092, 0.840747,
		0.929349, 0.223771, -0.293662,
		-0.341747, 0.822376, -0.454871,
		17.357710, 17.109764, 26.141712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.056274, 17.209225, 26.635590>,  <17.596931, 16.534100, 26.460121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.056274, 17.209225, 26.635590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.687571, 17.321693, 26.528780>,  <17.466349, 17.389174, 26.464695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.687571, 17.321693, 26.528780>,  <18.056274, 17.209225, 26.635590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.687571, 17.321693, 26.528780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155236, 0.363461, 0.918585,
		0.355331, 0.888166, -0.291376,
		-0.921760, 0.281170, -0.267025,
		17.411043, 17.406044, 26.448673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.795465, 17.175158, 26.577461>,  <18.056274, 17.209225, 26.635590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.795465, 17.175158, 26.577461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.874596, 17.557653, 26.491228>,  <18.922073, 17.787151, 26.439489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.874596, 17.557653, 26.491228>,  <18.795465, 17.175158, 26.577461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.874596, 17.557653, 26.491228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146722, 0.246335, 0.958015,
		0.969195, -0.157888, 0.189032,
		0.197824, 0.956238, -0.215581,
		18.933943, 17.844524, 26.426554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<10.486191, 15.465910, 25.833206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.847046, 15.296984, 25.868525>,  <11.063560, 15.195628, 25.889715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.847046, 15.296984, 25.868525>,  <10.486191, 15.465910, 25.833206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.847046, 15.296984, 25.868525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017973, -0.241257, -0.970295,
		0.431072, 0.873753, -0.225237,
		0.902138, -0.422315, 0.088295,
		11.117687, 15.170289, 25.895014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.974422, 15.701486, 25.288443>,  <10.486191, 15.465910, 25.833206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.974422, 15.701486, 25.288443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.141994, 15.352625, 25.389515>,  <11.242538, 15.143309, 25.450159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.141994, 15.352625, 25.389515>,  <10.974422, 15.701486, 25.288443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.141994, 15.352625, 25.389515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344336, -0.104901, -0.932968,
		0.840195, 0.477857, 0.256367,
		0.418932, -0.872151, 0.252681,
		11.267674, 15.090980, 25.465319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.634995, 15.703594, 24.957211>,  <10.974422, 15.701486, 25.288443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.634995, 15.703594, 24.957211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.530373, 15.322025, 25.016027>,  <11.467599, 15.093084, 25.051317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.530373, 15.322025, 25.016027>,  <11.634995, 15.703594, 24.957211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.530373, 15.322025, 25.016027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375210, -0.240855, -0.895102,
		0.889273, -0.178949, 0.420918,
		-0.261558, -0.953922, 0.147042,
		11.451905, 15.035849, 25.060141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.296058, 15.283198, 24.781494>,  <11.634995, 15.703594, 24.957211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.296058, 15.283198, 24.781494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.968825, 15.053823, 24.764000>,  <11.772486, 14.916199, 24.753504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.968825, 15.053823, 24.764000>,  <12.296058, 15.283198, 24.781494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.968825, 15.053823, 24.764000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218644, -0.239781, -0.945886,
		0.531919, -0.783374, 0.321539,
		-0.818082, -0.573437, -0.043735,
		11.723401, 14.881792, 24.750879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.461935, 14.667345, 24.511036>,  <12.296058, 15.283198, 24.781494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.461935, 14.667345, 24.511036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.070984, 14.636703, 24.432178>,  <11.836413, 14.618318, 24.384865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.070984, 14.636703, 24.432178>,  <12.461935, 14.667345, 24.511036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.070984, 14.636703, 24.432178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211187, -0.302476, -0.929467,
		0.011572, -0.950074, 0.311811,
		-0.977377, -0.076606, -0.197143,
		11.777771, 14.613721, 24.373035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.392551, 14.048429, 24.253315>,  <12.461935, 14.667345, 24.511036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.392551, 14.048429, 24.253315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.072017, 14.253578, 24.130142>,  <11.879696, 14.376667, 24.056238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.072017, 14.253578, 24.130142>,  <12.392551, 14.048429, 24.253315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.072017, 14.253578, 24.130142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171814, -0.295747, -0.939688,
		-0.573010, -0.805913, 0.148874,
		-0.801336, 0.512872, -0.307933,
		11.831615, 14.407439, 24.037762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.090110, 13.701853, 23.776798>,  <12.392551, 14.048429, 24.253315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.090110, 13.701853, 23.776798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.901859, 14.041498, 23.680866>,  <11.788909, 14.245285, 23.623308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.901859, 14.041498, 23.680866>,  <12.090110, 13.701853, 23.776798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.901859, 14.041498, 23.680866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015138, -0.279542, -0.960014,
		-0.882202, -0.448178, 0.144414,
		-0.470627, 0.849113, -0.239828,
		11.760672, 14.296232, 23.608917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.576344, 13.498197, 23.327278>,  <12.090110, 13.701853, 23.776798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.576344, 13.498197, 23.327278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.648521, 13.884981, 23.255249>,  <11.691828, 14.117052, 23.212032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.648521, 13.884981, 23.255249>,  <11.576344, 13.498197, 23.327278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.648521, 13.884981, 23.255249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089655, -0.198485, -0.975995,
		-0.979491, 0.159967, -0.122508,
		0.180443, 0.966962, -0.180072,
		11.702654, 14.175070, 23.201227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.274363, 13.564266, 22.652264>,  <11.576344, 13.498197, 23.327278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.274363, 13.564266, 22.652264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.519971, 13.877168, 22.694326>,  <11.667336, 14.064908, 22.719564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.519971, 13.877168, 22.694326>,  <11.274363, 13.564266, 22.652264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.519971, 13.877168, 22.694326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169786, -0.000793, -0.985481,
		-0.770811, 0.622961, -0.133302,
		0.614022, 0.782253, 0.105159,
		11.704178, 14.111843, 22.725874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.142759, 14.014043, 22.001049>,  <11.274363, 13.564266, 22.652264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.142759, 14.014043, 22.001049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.479405, 14.154795, 22.164932>,  <11.681394, 14.239246, 22.263262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.479405, 14.154795, 22.164932>,  <11.142759, 14.014043, 22.001049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.479405, 14.154795, 22.164932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381947, 0.148549, -0.912168,
		-0.381836, 0.924182, -0.009379,
		0.841616, 0.351881, 0.409710,
		11.731891, 14.260359, 22.287846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.212919, 14.769347, 21.795984>,  <11.142759, 14.014043, 22.001049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.212919, 14.769347, 21.795984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.580529, 14.624480, 21.858246>,  <11.801095, 14.537560, 21.895603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.580529, 14.624480, 21.858246>,  <11.212919, 14.769347, 21.795984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.580529, 14.624480, 21.858246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267027, 0.281488, -0.921662,
		0.289981, 0.888594, 0.355403,
		0.919025, -0.362167, 0.155653,
		11.856236, 14.515830, 21.904942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.665935, 15.229644, 21.307875>,  <11.212919, 14.769347, 21.795984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.665935, 15.229644, 21.307875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.877855, 14.911402, 21.425398>,  <12.005008, 14.720456, 21.495911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.877855, 14.911402, 21.425398>,  <11.665935, 15.229644, 21.307875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.877855, 14.911402, 21.425398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345519, -0.113896, -0.931474,
		0.774550, 0.595011, 0.214555,
		0.529801, -0.795606, 0.293806,
		12.036796, 14.672720, 21.513540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.342557, 15.405210, 21.003304>,  <11.665935, 15.229644, 21.307875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.342557, 15.405210, 21.003304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.312809, 15.014412, 21.083250>,  <12.294960, 14.779933, 21.131218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.312809, 15.014412, 21.083250>,  <12.342557, 15.405210, 21.003304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.312809, 15.014412, 21.083250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474026, -0.210966, -0.854864,
		0.877365, 0.031165, 0.478811,
		-0.074371, -0.976997, 0.199867,
		12.290498, 14.721313, 21.143209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.008090, 15.189943, 20.992128>,  <12.342557, 15.405210, 21.003304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.008090, 15.189943, 20.992128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.783565, 14.863142, 20.939318>,  <12.648849, 14.667061, 20.907631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.783565, 14.863142, 20.939318>,  <13.008090, 15.189943, 20.992128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.783565, 14.863142, 20.939318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527759, -0.230479, -0.817526,
		0.637492, -0.528568, 0.560553,
		-0.561314, -0.817004, -0.132028,
		12.615170, 14.618041, 20.899710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.778231, 15.352809, 20.952808>,  <13.008090, 15.189943, 20.992128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.778231, 15.352809, 20.952808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.655932, 15.713850, 20.831594>,  <13.582553, 15.930474, 20.758867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.655932, 15.713850, 20.831594>,  <13.778231, 15.352809, 20.952808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.655932, 15.713850, 20.831594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226131, 0.240328, 0.943985,
		0.924870, 0.357146, 0.130627,
		-0.305747, 0.902602, -0.303034,
		13.564208, 15.984631, 20.740685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.764607, 15.773045, 21.579746>,  <13.778231, 15.352809, 20.952808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.764607, 15.773045, 21.579746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.540994, 16.013727, 21.351561>,  <13.406825, 16.158136, 21.214649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.540994, 16.013727, 21.351561>,  <13.764607, 15.773045, 21.579746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.540994, 16.013727, 21.351561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292014, 0.501055, 0.814661,
		0.776020, 0.622007, -0.104400,
		-0.559035, 0.601707, -0.570463,
		13.373283, 16.194239, 21.180422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.783196, 16.398092, 21.845829>,  <13.764607, 15.773045, 21.579746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.783196, 16.398092, 21.845829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.476521, 16.451759, 21.594692>,  <13.292515, 16.483959, 21.444010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.476521, 16.451759, 21.594692>,  <13.783196, 16.398092, 21.845829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.476521, 16.451759, 21.594692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478406, 0.532776, 0.698053,
		0.428155, 0.835553, -0.344288,
		-0.766689, 0.134165, -0.627844,
		13.246514, 16.492008, 21.406340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.615623, 17.077082, 21.682781>,  <13.783196, 16.398092, 21.845829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.615623, 17.077082, 21.682781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.271815, 16.872646, 21.684269>,  <13.065531, 16.749985, 21.685162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.271815, 16.872646, 21.684269>,  <13.615623, 17.077082, 21.682781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.271815, 16.872646, 21.684269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326059, 0.553922, 0.766066,
		-0.393590, 0.657235, -0.642752,
		-0.859519, -0.511090, 0.003720,
		13.013960, 16.719318, 21.685385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.165563, 17.597748, 21.921127>,  <13.615623, 17.077082, 21.682781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.165563, 17.597748, 21.921127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.899701, 17.298958, 21.927631>,  <12.740184, 17.119684, 21.931534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.899701, 17.298958, 21.927631>,  <13.165563, 17.597748, 21.921127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.899701, 17.298958, 21.927631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521342, 0.479258, 0.706055,
		-0.535198, 0.460805, -0.707970,
		-0.664654, -0.746974, 0.016261,
		12.700305, 17.074865, 21.932510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.462277, 17.935755, 22.032640>,  <13.165563, 17.597748, 21.921127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.462277, 17.935755, 22.032640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.474321, 17.548084, 22.130445>,  <12.481547, 17.315481, 22.189129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.474321, 17.548084, 22.130445>,  <12.462277, 17.935755, 22.032640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.474321, 17.548084, 22.130445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519671, 0.193784, 0.832100,
		-0.853836, -0.152120, -0.497819,
		0.030109, -0.969178, 0.244512,
		12.483355, 17.257330, 22.203798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.727846, 17.620470, 22.250496>,  <12.462277, 17.935755, 22.032640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.727846, 17.620470, 22.250496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.983889, 17.353682, 22.403028>,  <12.137514, 17.193609, 22.494549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.983889, 17.353682, 22.403028>,  <11.727846, 17.620470, 22.250496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.983889, 17.353682, 22.403028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552834, -0.055189, 0.831462,
		-0.533515, -0.743037, -0.404050,
		0.640106, -0.666971, 0.381333,
		12.175920, 17.153591, 22.517427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.280028, 17.186024, 22.565941>,  <11.727846, 17.620470, 22.250496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.280028, 17.186024, 22.565941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.638707, 17.147051, 22.738657>,  <11.853914, 17.123667, 22.842287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.638707, 17.147051, 22.738657>,  <11.280028, 17.186024, 22.565941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.638707, 17.147051, 22.738657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442459, -0.169025, 0.880716,
		-0.012825, -0.980784, -0.194673,
		0.896697, -0.097430, 0.431789,
		11.907716, 17.117821, 22.868195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.145350, 16.721094, 23.127361>,  <11.280028, 17.186024, 22.565941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.145350, 16.721094, 23.127361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.507881, 16.866920, 23.212831>,  <11.725400, 16.954416, 23.264114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.507881, 16.866920, 23.212831>,  <11.145350, 16.721094, 23.127361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.507881, 16.866920, 23.212831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218295, -0.029028, 0.975451,
		0.361820, -0.930725, 0.053274,
		0.906329, 0.364567, 0.213676,
		11.779780, 16.976290, 23.276934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.410307, 16.280487, 23.658894>,  <11.145350, 16.721094, 23.127361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.410307, 16.280487, 23.658894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.601551, 16.631752, 23.665075>,  <11.716297, 16.842512, 23.668785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.601551, 16.631752, 23.665075>,  <11.410307, 16.280487, 23.658894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.601551, 16.631752, 23.665075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320057, 0.157812, 0.934162,
		0.817908, -0.451579, 0.356514,
		0.478110, 0.878164, 0.015455,
		11.744985, 16.895201, 23.669712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.803155, 16.284542, 24.227381>,  <11.410307, 16.280487, 23.658894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.803155, 16.284542, 24.227381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.812937, 16.678247, 24.157377>,  <11.818806, 16.914471, 24.115376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.812937, 16.678247, 24.157377>,  <11.803155, 16.284542, 24.227381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.812937, 16.678247, 24.157377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240154, 0.175717, 0.954699,
		0.970427, 0.018683, 0.240671,
		0.024454, 0.984263, -0.175008,
		11.820273, 16.973526, 24.104876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.168899, 16.619694, 24.875355>,  <11.803155, 16.284542, 24.227381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.168899, 16.619694, 24.875355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.962032, 16.895674, 24.672768>,  <11.837913, 17.061262, 24.551214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.962032, 16.895674, 24.672768>,  <12.168899, 16.619694, 24.875355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.962032, 16.895674, 24.672768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174459, 0.494348, 0.851578,
		0.837916, 0.528765, -0.135291,
		-0.517165, 0.689948, -0.506470,
		11.806883, 17.102657, 24.520826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.439922, 17.289764, 25.047638>,  <12.168899, 16.619694, 24.875355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.439922, 17.289764, 25.047638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.061803, 17.313019, 24.919245>,  <11.834931, 17.326971, 24.842209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.061803, 17.313019, 24.919245>,  <12.439922, 17.289764, 25.047638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.061803, 17.313019, 24.919245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257548, 0.470886, 0.843763,
		0.200200, 0.880277, -0.430155,
		-0.945298, 0.058136, -0.320985,
		11.778214, 17.330460, 24.822948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.348267, 17.843008, 25.397873>,  <12.439922, 17.289764, 25.047638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.348267, 17.843008, 25.397873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.006915, 17.678988, 25.269125>,  <11.802104, 17.580576, 25.191875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.006915, 17.678988, 25.269125>,  <12.348267, 17.843008, 25.397873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.006915, 17.678988, 25.269125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447269, 0.258812, 0.856135,
		-0.267755, 0.874571, -0.404268,
		-0.853380, -0.410051, -0.321871,
		11.750901, 17.555973, 25.172564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.467597, 18.624975, 25.248405>,  <12.348267, 17.843008, 25.397873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.467597, 18.624975, 25.248405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.766472, 18.866924, 25.358561>,  <12.945797, 19.012094, 25.424654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.766472, 18.866924, 25.358561>,  <12.467597, 18.624975, 25.248405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.766472, 18.866924, 25.358561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315956, 0.041254, -0.947876,
		-0.584707, 0.795252, -0.160289,
		0.747188, 0.604874, 0.275386,
		12.990628, 19.048386, 25.441177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.578406, 19.144810, 24.740053>,  <12.467597, 18.624975, 25.248405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.578406, 19.144810, 24.740053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.933256, 19.161457, 24.923912>,  <13.146166, 19.171446, 25.034227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.933256, 19.161457, 24.923912>,  <12.578406, 19.144810, 24.740053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.933256, 19.161457, 24.923912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461001, -0.032269, -0.886813,
		-0.022076, 0.998612, -0.047813,
		0.887125, 0.041619, 0.459649,
		13.199393, 19.173943, 25.061808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.985593, 19.505289, 24.282211>,  <12.578406, 19.144810, 24.740053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.985593, 19.505289, 24.282211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.273708, 19.353184, 24.514275>,  <13.446578, 19.261921, 24.653513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.273708, 19.353184, 24.514275>,  <12.985593, 19.505289, 24.282211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.273708, 19.353184, 24.514275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645279, 0.060390, -0.761557,
		0.254557, 0.922904, 0.288876,
		0.720289, -0.380265, 0.580157,
		13.489795, 19.239103, 24.688322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.635981, 19.986477, 24.237970>,  <12.985593, 19.505289, 24.282211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.635981, 19.986477, 24.237970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.750690, 19.619959, 24.349802>,  <13.819516, 19.400047, 24.416901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.750690, 19.619959, 24.349802>,  <13.635981, 19.986477, 24.237970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.750690, 19.619959, 24.349802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835043, 0.096051, -0.541735,
		0.469535, 0.388817, 0.792690,
		0.286775, -0.916294, 0.279579,
		13.836723, 19.345070, 24.433676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.335831, 20.038485, 24.175213>,  <13.635981, 19.986477, 24.237970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.335831, 20.038485, 24.175213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.260589, 19.646837, 24.206051>,  <14.215444, 19.411848, 24.224554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.260589, 19.646837, 24.206051>,  <14.335831, 20.038485, 24.175213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.260589, 19.646837, 24.206051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672754, -0.185640, -0.716198,
		0.715554, -0.082856, 0.693626,
		-0.188106, -0.979118, 0.077094,
		14.204157, 19.353102, 24.229179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.943994, 19.834726, 24.074608>,  <14.335831, 20.038485, 24.175213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.943994, 19.834726, 24.074608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.735632, 19.501032, 24.002268>,  <14.610615, 19.300816, 23.958864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.735632, 19.501032, 24.002268>,  <14.943994, 19.834726, 24.074608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.735632, 19.501032, 24.002268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612904, -0.218059, -0.759473,
		0.594145, -0.506456, 0.624895,
		-0.520904, -0.834238, -0.180850,
		14.579361, 19.250761, 23.948013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.412026, 19.340956, 24.058180>,  <14.943994, 19.834726, 24.074608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.412026, 19.340956, 24.058180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.096699, 19.212755, 23.848101>,  <14.907502, 19.135836, 23.722054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.096699, 19.212755, 23.848101>,  <15.412026, 19.340956, 24.058180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.096699, 19.212755, 23.848101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568237, -0.051932, -0.821225,
		0.235927, -0.945824, 0.223058,
		-0.788318, -0.320499, -0.525200,
		14.860204, 19.116606, 23.690540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.628744, 18.698444, 23.679253>,  <15.412026, 19.340956, 24.058180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.628744, 18.698444, 23.679253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.318681, 18.869915, 23.493622>,  <15.132643, 18.972797, 23.382244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.318681, 18.869915, 23.493622>,  <15.628744, 18.698444, 23.679253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.318681, 18.869915, 23.493622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521459, 0.019437, -0.853055,
		-0.356663, -0.903250, -0.238603,
		-0.775159, 0.428674, -0.464076,
		15.086133, 18.998518, 23.354399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.552171, 18.347429, 23.068979>,  <15.628744, 18.698444, 23.679253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.552171, 18.347429, 23.068979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.383054, 18.690704, 22.952522>,  <15.281584, 18.896669, 22.882648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.383054, 18.690704, 22.952522>,  <15.552171, 18.347429, 23.068979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.383054, 18.690704, 22.952522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478629, -0.061343, -0.875872,
		-0.769520, -0.509660, -0.384818,
		-0.422791, 0.858186, -0.291143,
		15.256216, 18.948160, 22.865179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.176975, 18.168203, 22.431063>,  <15.552171, 18.347429, 23.068979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.176975, 18.168203, 22.431063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.272125, 18.556625, 22.439686>,  <15.329215, 18.789679, 22.444860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.272125, 18.556625, 22.439686>,  <15.176975, 18.168203, 22.431063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.272125, 18.556625, 22.439686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502349, -0.104000, -0.858387,
		-0.831300, 0.215020, -0.512549,
		0.237875, 0.971056, 0.021560,
		15.343488, 18.847942, 22.446154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.112623, 18.474251, 21.805183>,  <15.176975, 18.168203, 22.431063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.112623, 18.474251, 21.805183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.342769, 18.757521, 21.968863>,  <15.480856, 18.927483, 22.067070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.342769, 18.757521, 21.968863>,  <15.112623, 18.474251, 21.805183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.342769, 18.757521, 21.968863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568091, 0.013909, -0.822848,
		-0.588412, 0.705900, -0.394305,
		0.575364, 0.708175, 0.409200,
		15.515378, 18.969973, 22.091623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.200970, 18.885387, 21.230310>,  <15.112623, 18.474251, 21.805183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.200970, 18.885387, 21.230310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.496822, 18.985476, 21.480217>,  <15.674335, 19.045528, 21.630161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.496822, 18.985476, 21.480217>,  <15.200970, 18.885387, 21.230310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.496822, 18.985476, 21.480217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646610, -0.006741, -0.762791,
		-0.186654, 0.968166, -0.166781,
		0.739632, 0.250220, 0.624767,
		15.718712, 19.060541, 21.667646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.538011, 19.388142, 20.921141>,  <15.200970, 18.885387, 21.230310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.538011, 19.388142, 20.921141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.800804, 19.245600, 21.186888>,  <15.958480, 19.160074, 21.346336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.800804, 19.245600, 21.186888>,  <15.538011, 19.388142, 20.921141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.800804, 19.245600, 21.186888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662020, -0.148922, -0.734541,
		0.360696, 0.922407, 0.138074,
		0.656984, -0.356354, 0.664367,
		15.997899, 19.138693, 21.386198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115782, 19.808664, 20.770597>,  <15.538011, 19.388142, 20.921141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.115782, 19.808664, 20.770597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.241861, 19.488993, 20.975327>,  <16.317509, 19.297190, 21.098164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.241861, 19.488993, 20.975327>,  <16.115782, 19.808664, 20.770597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.241861, 19.488993, 20.975327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742807, -0.127914, -0.657173,
		0.590668, 0.587324, 0.553318,
		0.315197, -0.799180, 0.511823,
		16.336420, 19.249239, 21.128874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<5.571027, 25.221325, 7.978693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.405246, 24.946413, 7.740072>,  <5.305777, 24.781466, 7.596899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.405246, 24.946413, 7.740072>,  <5.571027, 25.221325, 7.978693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.405246, 24.946413, 7.740072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556782, -0.710000, 0.431153,
		-0.719876, -0.153457, 0.676927,
		-0.414454, -0.687278, -0.596554,
		5.280910, 24.740231, 7.561106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.275655, 25.576719, 8.096126>,  <5.571027, 25.221325, 7.978693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.275655, 25.576719, 8.096126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.622721, 25.454483, 7.939273>,  <6.830961, 25.381142, 7.845161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.622721, 25.454483, 7.939273>,  <6.275655, 25.576719, 8.096126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.622721, 25.454483, 7.939273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043147, -0.832079, 0.552976,
		-0.495271, -0.462880, -0.735153,
		0.867667, -0.305592, -0.392133,
		6.883021, 25.362804, 7.821633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.396043, 24.869383, 7.903769>,  <6.275655, 25.576719, 8.096126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.396043, 24.869383, 7.903769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.745292, 25.030855, 8.013094>,  <6.954841, 25.127739, 8.078689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.745292, 25.030855, 8.013094>,  <6.396043, 24.869383, 7.903769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.745292, 25.030855, 8.013094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166780, -0.774154, 0.610631,
		0.458087, -0.487572, -0.743257,
		0.873122, 0.403682, 0.273312,
		7.007228, 25.151960, 8.095088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.953021, 24.432495, 7.749361>,  <6.396043, 24.869383, 7.903769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.953021, 24.432495, 7.749361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.111570, 24.624327, 8.062510>,  <7.206700, 24.739426, 8.250401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.111570, 24.624327, 8.062510>,  <6.953021, 24.432495, 7.749361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.111570, 24.624327, 8.062510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198086, -0.877310, 0.437137,
		0.896466, -0.018193, -0.442739,
		0.396373, 0.479579, 0.782875,
		7.230482, 24.768200, 8.297373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.514997, 24.154945, 7.829755>,  <6.953021, 24.432495, 7.749361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.514997, 24.154945, 7.829755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.366101, 24.311569, 8.166355>,  <7.276763, 24.405542, 8.368315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.366101, 24.311569, 8.166355>,  <7.514997, 24.154945, 7.829755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.366101, 24.311569, 8.166355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118559, -0.879167, 0.461529,
		0.920533, 0.271567, 0.280838,
		-0.372239, 0.391557, 0.841499,
		7.254429, 24.429037, 8.418805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.996592, 24.121078, 8.517459>,  <7.514997, 24.154945, 7.829755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.996592, 24.121078, 8.517459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.601256, 24.107569, 8.576849>,  <7.364055, 24.099463, 8.612483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.601256, 24.107569, 8.576849>,  <7.996592, 24.121078, 8.517459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.601256, 24.107569, 8.576849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112072, -0.821457, 0.559150,
		0.103081, 0.569269, 0.815664,
		-0.988339, -0.033775, 0.148475,
		7.304755, 24.097437, 8.621391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.971305, 23.994230, 9.269880>,  <7.996592, 24.121078, 8.517459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.971305, 23.994230, 9.269880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.635773, 23.860783, 9.097805>,  <7.434454, 23.780714, 8.994560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.635773, 23.860783, 9.097805>,  <7.971305, 23.994230, 9.269880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.635773, 23.860783, 9.097805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033550, -0.820392, 0.570816,
		-0.543359, 0.464385, 0.699363,
		-0.838830, -0.333621, -0.430187,
		7.384124, 23.760696, 8.968749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.410913, 23.850658, 9.799627>,  <7.971305, 23.994230, 9.269880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.410913, 23.850658, 9.799627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.396177, 23.624437, 9.470072>,  <7.387336, 23.488705, 9.272338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.396177, 23.624437, 9.470072>,  <7.410913, 23.850658, 9.799627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.396177, 23.624437, 9.470072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210371, -0.810362, 0.546860,
		-0.976927, -0.153176, 0.148829,
		-0.036840, -0.565552, -0.823889,
		7.385126, 23.454771, 9.222905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.893426, 23.457747, 9.998828>,  <7.410913, 23.850658, 9.799627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.893426, 23.457747, 9.998828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.141119, 23.308474, 9.722484>,  <7.289735, 23.218910, 9.556677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.141119, 23.308474, 9.722484>,  <6.893426, 23.457747, 9.998828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.141119, 23.308474, 9.722484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222019, -0.760726, 0.609920,
		-0.753156, -0.531073, -0.388225,
		0.619245, -0.373172, -0.690853,
		7.326889, 23.196520, 9.515225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.470410, 23.925152, 10.250824>,  <6.893426, 23.457747, 9.998828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.470410, 23.925152, 10.250824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.205863, 23.830051, 10.535378>,  <6.047135, 23.772991, 10.706111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.205863, 23.830051, 10.535378>,  <6.470410, 23.925152, 10.250824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.205863, 23.830051, 10.535378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296438, -0.954072, -0.043262,
		0.688999, 0.182269, 0.701469,
		-0.661367, -0.237749, 0.711386,
		6.007453, 23.758726, 10.748795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.759537, 23.460402, 10.812488>,  <6.470410, 23.925152, 10.250824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.759537, 23.460402, 10.812488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.364236, 23.399786, 10.820437>,  <6.127056, 23.363417, 10.825208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.364236, 23.399786, 10.820437>,  <6.759537, 23.460402, 10.812488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.364236, 23.399786, 10.820437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152816, -0.977720, 0.143910,
		-0.002376, 0.145257, 0.989391,
		-0.988252, -0.151537, 0.019874,
		6.067760, 23.354324, 10.826400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.672265, 22.969988, 11.343464>,  <6.759537, 23.460402, 10.812488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.672265, 22.969988, 11.343464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.354055, 22.944599, 11.102428>,  <6.163129, 22.929365, 10.957808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.354055, 22.944599, 11.102428>,  <6.672265, 22.969988, 11.343464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.354055, 22.944599, 11.102428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080486, -0.974616, 0.208917,
		-0.600553, 0.214698, 0.770221,
		-0.795524, -0.063474, -0.602589,
		6.115398, 22.925556, 10.921652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.232093, 22.560602, 11.699604>,  <6.672265, 22.969988, 11.343464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.232093, 22.560602, 11.699604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.070096, 22.562368, 11.333880>,  <5.972898, 22.563429, 11.114446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.070096, 22.562368, 11.333880>,  <6.232093, 22.560602, 11.699604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.070096, 22.562368, 11.333880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273343, -0.954840, 0.116465,
		-0.872505, 0.297088, 0.387909,
		-0.404992, 0.004416, -0.914310,
		5.948598, 22.563694, 11.059587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.485287, 22.295162, 11.692441>,  <6.232093, 22.560602, 11.699604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.485287, 22.295162, 11.692441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.656225, 22.230083, 11.336710>,  <5.758788, 22.191036, 11.123271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.656225, 22.230083, 11.336710>,  <5.485287, 22.295162, 11.692441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.656225, 22.230083, 11.336710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034880, -0.985909, 0.163605,
		-0.903415, -0.038896, -0.427000,
		0.427347, -0.162697, -0.889328,
		5.784429, 22.181274, 11.069912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.052167, 21.747837, 11.373041>,  <5.485287, 22.295162, 11.692441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.052167, 21.747837, 11.373041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.397926, 21.784269, 11.175243>,  <5.605381, 21.806128, 11.056565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.397926, 21.784269, 11.175243>,  <5.052167, 21.747837, 11.373041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.397926, 21.784269, 11.175243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038023, -0.992482, -0.116337,
		-0.501372, 0.081760, -0.861361,
		0.864396, 0.091080, -0.494493,
		5.657245, 21.811594, 11.026896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.089376, 21.202135, 10.979895>,  <5.052167, 21.747837, 11.373041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.089376, 21.202135, 10.979895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.470902, 21.322186, 10.984948>,  <5.699818, 21.394217, 10.987981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.470902, 21.322186, 10.984948>,  <5.089376, 21.202135, 10.979895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.470902, 21.322186, 10.984948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299395, -0.953234, 0.041331,
		0.024448, -0.035639, -0.999066,
		0.953816, 0.300126, 0.012635,
		5.757047, 21.412224, 10.988738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.497966, 20.759689, 10.470356>,  <5.089376, 21.202135, 10.979895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.497966, 20.759689, 10.470356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.746207, 20.899715, 10.751015>,  <5.895152, 20.983730, 10.919410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.746207, 20.899715, 10.751015>,  <5.497966, 20.759689, 10.470356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.746207, 20.899715, 10.751015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358573, -0.922471, 0.143083,
		0.697337, 0.162794, -0.698011,
		0.620602, 0.350065, 0.701646,
		5.932388, 21.004734, 10.961509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.010040, 20.301718, 10.366797>,  <5.497966, 20.759689, 10.470356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.010040, 20.301718, 10.366797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.072484, 20.448502, 10.733615>,  <6.109950, 20.536572, 10.953706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.072484, 20.448502, 10.733615>,  <6.010040, 20.301718, 10.366797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.072484, 20.448502, 10.733615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045025, -0.930105, 0.364523,
		0.986713, -0.015615, -0.161721,
		0.156109, 0.366961, 0.917044,
		6.119317, 20.558590, 11.008728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.410306, 19.793121, 10.635300>,  <6.010040, 20.301718, 10.366797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.410306, 19.793121, 10.635300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.296219, 19.999290, 10.958531>,  <6.227767, 20.122992, 11.152471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.296219, 19.999290, 10.958531>,  <6.410306, 19.793121, 10.635300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.296219, 19.999290, 10.958531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150960, -0.808417, 0.568922,
		0.946500, 0.284255, 0.152767,
		-0.285218, 0.515423, 0.808078,
		6.210654, 20.153917, 11.200954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.843485, 19.534599, 11.191485>,  <6.410306, 19.793121, 10.635300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.843485, 19.534599, 11.191485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.534271, 19.718584, 11.366231>,  <6.348743, 19.828976, 11.471078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.534271, 19.718584, 11.366231>,  <6.843485, 19.534599, 11.191485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.534271, 19.718584, 11.366231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022005, -0.707693, 0.706177,
		0.633981, 0.536287, 0.557194,
		-0.773035, 0.459964, 0.436863,
		6.302361, 19.856573, 11.497290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.986797, 19.395773, 11.845960>,  <6.843485, 19.534599, 11.191485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.986797, 19.395773, 11.845960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.599594, 19.495638, 11.855984>,  <6.367272, 19.555557, 11.861998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.599594, 19.495638, 11.855984>,  <6.986797, 19.395773, 11.845960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.599594, 19.495638, 11.855984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162319, -0.699233, 0.696222,
		0.191344, 0.669881, 0.717389,
		-0.968008, 0.249663, 0.025060,
		6.309192, 19.570538, 11.863502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.827792, 19.389486, 12.600513>,  <6.986797, 19.395773, 11.845960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.827792, 19.389486, 12.600513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.493127, 19.368467, 12.382437>,  <6.292328, 19.355856, 12.251591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.493127, 19.368467, 12.382437>,  <6.827792, 19.389486, 12.600513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.493127, 19.368467, 12.382437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356703, -0.703087, 0.615168,
		-0.415642, 0.709160, 0.569503,
		-0.836663, -0.052547, -0.545192,
		6.242128, 19.352703, 12.218879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.336106, 19.446690, 13.077101>,  <6.827792, 19.389486, 12.600513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.336106, 19.446690, 13.077101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.170951, 19.252296, 12.768986>,  <6.071858, 19.135660, 12.584117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.170951, 19.252296, 12.768986>,  <6.336106, 19.446690, 13.077101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.170951, 19.252296, 12.768986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406645, -0.658400, 0.633363,
		-0.814962, 0.574742, 0.074222,
		-0.412888, -0.485985, -0.770287,
		6.047084, 19.106501, 12.537900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.743086, 19.262234, 13.429446>,  <6.336106, 19.446690, 13.077101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.743086, 19.262234, 13.429446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.752318, 19.036167, 13.099585>,  <5.757857, 18.900526, 12.901668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.752318, 19.036167, 13.099585>,  <5.743086, 19.262234, 13.429446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.752318, 19.036167, 13.099585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461617, -0.737700, 0.492655,
		-0.886779, 0.369303, -0.277917,
		0.023080, -0.565167, -0.824654,
		5.759242, 18.866617, 12.852188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.110040, 19.001743, 13.235386>,  <5.743086, 19.262234, 13.429446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.110040, 19.001743, 13.235386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.313767, 18.722536, 13.034045>,  <5.436004, 18.555012, 12.913240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.313767, 18.722536, 13.034045>,  <5.110040, 19.001743, 13.235386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.313767, 18.722536, 13.034045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500029, -0.716070, 0.487046,
		-0.700406, 0.003633, -0.713735,
		0.509316, -0.698019, -0.503357,
		5.466563, 18.513130, 12.883039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.630105, 18.499134, 13.185146>,  <5.110040, 19.001743, 13.235386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.630105, 18.499134, 13.185146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.975792, 18.316114, 13.101460>,  <5.183205, 18.206303, 13.051249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.975792, 18.316114, 13.101460>,  <4.630105, 18.499134, 13.185146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.975792, 18.316114, 13.101460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337477, -0.835612, 0.433431,
		-0.373139, -0.303975, -0.876565,
		0.864220, -0.457550, -0.209215,
		5.235058, 18.178850, 13.038696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.494484, 17.911148, 12.837781>,  <4.630105, 18.499134, 13.185146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.494484, 17.911148, 12.837781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.851026, 17.839588, 13.004387>,  <5.064950, 17.796652, 13.104350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.851026, 17.839588, 13.004387>,  <4.494484, 17.911148, 12.837781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.851026, 17.839588, 13.004387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334871, -0.879162, 0.339022,
		0.305533, -0.441667, -0.843552,
		0.891353, -0.178899, 0.416515,
		5.118432, 17.785919, 13.129341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.530007, 17.167614, 12.822738>,  <4.494484, 17.911148, 12.837781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.530007, 17.167614, 12.822738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.790411, 17.305679, 13.093159>,  <4.946654, 17.388517, 13.255411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.790411, 17.305679, 13.093159>,  <4.530007, 17.167614, 12.822738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.790411, 17.305679, 13.093159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285447, -0.713943, 0.639379,
		0.703353, -0.609221, -0.366259,
		0.651011, 0.345162, 0.676054,
		4.985715, 17.409227, 13.295975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.924254, 16.552366, 12.990547>,  <4.530007, 17.167614, 12.822738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.924254, 16.552366, 12.990547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.003723, 16.803457, 13.291608>,  <5.051404, 16.954113, 13.472244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.003723, 16.803457, 13.291608>,  <4.924254, 16.552366, 12.990547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.003723, 16.803457, 13.291608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122815, -0.745962, 0.654567,
		0.972341, -0.222480, -0.071106,
		0.198670, 0.627729, 0.752653,
		5.063323, 16.991776, 13.517404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.330490, 16.253464, 13.482778>,  <4.924254, 16.552366, 12.990547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.330490, 16.253464, 13.482778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.167717, 16.547604, 13.699543>,  <5.070054, 16.724087, 13.829602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.167717, 16.547604, 13.699543>,  <5.330490, 16.253464, 13.482778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.167717, 16.547604, 13.699543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161073, -0.641722, 0.749832,
		0.899146, 0.217842, 0.379581,
		-0.406930, 0.735349, 0.541913,
		5.045639, 16.768208, 13.862117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.656074, 16.213686, 14.275651>,  <5.330490, 16.253464, 13.482778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.656074, 16.213686, 14.275651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.303801, 16.402876, 14.286180>,  <5.092437, 16.516390, 14.292499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.303801, 16.402876, 14.286180>,  <5.656074, 16.213686, 14.275651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.303801, 16.402876, 14.286180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320166, -0.635266, 0.702802,
		0.349130, 0.610518, 0.710898,
		-0.880683, 0.472975, 0.026323,
		5.039596, 16.544769, 14.294078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.998125, 15.781106, 14.871098>,  <5.656074, 16.213686, 14.275651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.998125, 15.781106, 14.871098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.390125, 15.747320, 14.799025>,  <6.625325, 15.727049, 14.755780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.390125, 15.747320, 14.799025>,  <5.998125, 15.781106, 14.871098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.390125, 15.747320, 14.799025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146648, 0.918590, 0.366997,
		0.134517, -0.386080, 0.912605,
		0.980000, -0.084464, -0.180183,
		6.684125, 15.721981, 14.744969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.396071, 16.033585, 15.403907>,  <5.998125, 15.781106, 14.871098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.396071, 16.033585, 15.403907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.644779, 16.053991, 15.091291>,  <6.794003, 16.066235, 14.903723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.644779, 16.053991, 15.091291>,  <6.396071, 16.033585, 15.403907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.644779, 16.053991, 15.091291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099988, 0.984540, 0.143815,
		0.776792, -0.167564, 0.607055,
		0.621769, 0.051016, -0.781538,
		6.831309, 16.069296, 14.856831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.027923, 16.117384, 15.756590>,  <6.396071, 16.033585, 15.403907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.027923, 16.117384, 15.756590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.037923, 16.258101, 15.382293>,  <7.043924, 16.342531, 15.157714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.037923, 16.258101, 15.382293>,  <7.027923, 16.117384, 15.756590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.037923, 16.258101, 15.382293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222345, 0.910634, 0.348293,
		0.974648, -0.216766, -0.055451,
		0.025003, 0.351793, -0.935744,
		7.045424, 16.363638, 15.101569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.621163, 16.589176, 15.653074>,  <7.027923, 16.117384, 15.756590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.621163, 16.589176, 15.653074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.351310, 16.701794, 15.380135>,  <7.189397, 16.769365, 15.216371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.351310, 16.701794, 15.380135>,  <7.621163, 16.589176, 15.653074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.351310, 16.701794, 15.380135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050664, 0.939883, 0.337717,
		0.736411, 0.193265, -0.648342,
		-0.674635, 0.281546, -0.682349,
		7.148920, 16.786257, 15.175430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.887078, 17.288851, 15.592008>,  <7.621163, 16.589176, 15.653074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.887078, 17.288851, 15.592008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.541770, 17.285454, 15.390139>,  <7.334585, 17.283417, 15.269017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.541770, 17.285454, 15.390139>,  <7.887078, 17.288851, 15.592008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.541770, 17.285454, 15.390139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035667, 0.998385, 0.044214,
		0.503482, 0.056169, -0.862178,
		-0.863269, -0.008491, -0.504673,
		7.282789, 17.282907, 15.238737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.015161, 17.728350, 14.938646>,  <7.887078, 17.288851, 15.592008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.015161, 17.728350, 14.938646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.621939, 17.724545, 15.011874>,  <7.386006, 17.722261, 15.055811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.621939, 17.724545, 15.011874>,  <8.015161, 17.728350, 14.938646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.621939, 17.724545, 15.011874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040992, 0.984773, -0.168940,
		-0.178675, -0.173582, -0.968475,
		-0.983054, -0.009514, 0.183070,
		7.327023, 17.721689, 15.066795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.660506, 18.236851, 14.429564>,  <8.015161, 17.728350, 14.938646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.660506, 18.236851, 14.429564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.414407, 18.184032, 14.740442>,  <7.266748, 18.152342, 14.926970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.414407, 18.184032, 14.740442>,  <7.660506, 18.236851, 14.429564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.414407, 18.184032, 14.740442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210649, 0.977562, -0.000666,
		-0.759671, -0.164125, -0.629256,
		-0.615246, -0.132046, 0.777198,
		7.229834, 18.144419, 14.973601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.217128, 18.786554, 14.308763>,  <7.660506, 18.236851, 14.429564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.217128, 18.786554, 14.308763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.184665, 18.659616, 14.686695>,  <7.165187, 18.583454, 14.913454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.184665, 18.659616, 14.686695>,  <7.217128, 18.786554, 14.308763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.184665, 18.659616, 14.686695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247201, 0.924748, 0.289367,
		-0.965559, -0.210079, -0.153499,
		-0.081158, -0.317346, 0.944831,
		7.160318, 18.564413, 14.970144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.847037, 19.345467, 14.538829>,  <7.217128, 18.786554, 14.308763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.847037, 19.345467, 14.538829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.948901, 19.156834, 14.876530>,  <7.010019, 19.043653, 15.079150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.948901, 19.156834, 14.876530>,  <6.847037, 19.345467, 14.538829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.948901, 19.156834, 14.876530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127030, 0.849156, 0.512638,
		-0.958651, -0.237794, 0.156341,
		0.254660, -0.471581, 0.844251,
		7.025299, 19.015360, 15.129805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.271275, 19.395569, 14.990740>,  <6.847037, 19.345467, 14.538829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.271275, 19.395569, 14.990740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.617126, 19.369318, 15.189982>,  <6.824637, 19.353567, 15.309528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.617126, 19.369318, 15.189982>,  <6.271275, 19.395569, 14.990740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.617126, 19.369318, 15.189982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175576, 0.889452, 0.421957,
		-0.470733, -0.452292, 0.757524,
		0.864629, -0.065627, 0.498106,
		6.876515, 19.349630, 15.339415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.043087, 19.517406, 15.667100>,  <6.271275, 19.395569, 14.990740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.043087, 19.517406, 15.667100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.439393, 19.571638, 15.666165>,  <6.677176, 19.604177, 15.665605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.439393, 19.571638, 15.666165>,  <6.043087, 19.517406, 15.667100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.439393, 19.571638, 15.666165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131695, 0.966211, 0.221570,
		0.032297, -0.219216, 0.975142,
		0.990764, 0.135577, -0.002336,
		6.736622, 19.612310, 15.665464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.291009, 19.822315, 16.322718>,  <6.043087, 19.517406, 15.667100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.291009, 19.822315, 16.322718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.576572, 19.902840, 16.054447>,  <6.747910, 19.951155, 15.893484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.576572, 19.902840, 16.054447>,  <6.291009, 19.822315, 16.322718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.576572, 19.902840, 16.054447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141330, 0.979497, 0.143568,
		0.685829, -0.007708, 0.727722,
		0.713908, 0.201312, -0.670678,
		6.790745, 19.963234, 15.853244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.739438, 20.341055, 16.637474>,  <6.291009, 19.822315, 16.322718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.739438, 20.341055, 16.637474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.809832, 20.368095, 16.244646>,  <6.852069, 20.384319, 16.008949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.809832, 20.368095, 16.244646>,  <6.739438, 20.341055, 16.637474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.809832, 20.368095, 16.244646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079701, 0.995342, 0.054231,
		0.981161, 0.068728, 0.180554,
		0.175986, 0.067600, -0.982069,
		6.862628, 20.388376, 15.950026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.043834, 20.950029, 16.588198>,  <6.739438, 20.341055, 16.637474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.043834, 20.950029, 16.588198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.944537, 20.868061, 16.209488>,  <6.884959, 20.818880, 15.982262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.944537, 20.868061, 16.209488>,  <7.043834, 20.950029, 16.588198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.944537, 20.868061, 16.209488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070058, 0.978607, -0.193441,
		0.966162, 0.018309, -0.257287,
		-0.248242, -0.204921, -0.946775,
		6.870065, 20.806585, 15.925455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.458001, 21.453493, 16.173037>,  <7.043834, 20.950029, 16.588198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.458001, 21.453493, 16.173037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.148561, 21.321848, 15.956435>,  <6.962896, 21.242861, 15.826474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.148561, 21.321848, 15.956435>,  <7.458001, 21.453493, 16.173037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.148561, 21.321848, 15.956435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212063, 0.939735, -0.268194,
		0.597135, -0.092642, -0.796773,
		-0.773601, -0.329114, -0.541502,
		6.916480, 21.223114, 15.793984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.487643, 21.842667, 15.513984>,  <7.458001, 21.453493, 16.173037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.487643, 21.842667, 15.513984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.107083, 21.719585, 15.508976>,  <6.878747, 21.645737, 15.505972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.107083, 21.719585, 15.508976>,  <7.487643, 21.842667, 15.513984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.107083, 21.719585, 15.508976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272711, 0.860697, -0.429918,
		0.143061, -0.405610, -0.902781,
		-0.951400, -0.307703, -0.012518,
		6.821663, 21.627275, 15.505220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.198280, 21.868402, 14.788831>,  <7.487643, 21.842667, 15.513984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.198280, 21.868402, 14.788831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.899640, 21.872465, 15.054908>,  <6.720455, 21.874903, 15.214554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.899640, 21.872465, 15.054908>,  <7.198280, 21.868402, 14.788831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.899640, 21.872465, 15.054908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334017, 0.859001, -0.388008,
		-0.575342, -0.511873, -0.637940,
		-0.746602, 0.010154, 0.665193,
		6.675659, 21.875511, 15.254466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.669596, 22.106688, 14.347615>,  <7.198280, 21.868402, 14.788831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.669596, 22.106688, 14.347615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.554706, 22.139944, 14.729314>,  <6.485771, 22.159899, 14.958333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.554706, 22.139944, 14.729314>,  <6.669596, 22.106688, 14.347615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.554706, 22.139944, 14.729314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366179, 0.911025, -0.189595,
		-0.885107, -0.403882, -0.231226,
		-0.287226, 0.083142, 0.954247,
		6.468538, 22.164886, 15.015588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.045642, 22.431246, 14.259022>,  <6.669596, 22.106688, 14.347615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.045642, 22.431246, 14.259022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.127481, 22.487675, 14.646473>,  <6.176583, 22.521532, 14.878943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.127481, 22.487675, 14.646473>,  <6.045642, 22.431246, 14.259022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.127481, 22.487675, 14.646473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387231, 0.920500, -0.052271,
		-0.898995, -0.364389, 0.242958,
		0.204596, 0.141072, 0.968628,
		6.188859, 22.529997, 14.937061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.506948, 22.777033, 14.457804>,  <6.045642, 22.431246, 14.259022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.506948, 22.777033, 14.457804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.811221, 22.851809, 14.706453>,  <5.993784, 22.896673, 14.855643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.811221, 22.851809, 14.706453>,  <5.506948, 22.777033, 14.457804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.811221, 22.851809, 14.706453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201137, 0.978382, -0.048096,
		-0.617176, -0.088446, 0.781839,
		0.760683, 0.186940, 0.621623,
		6.039425, 22.907890, 14.892941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.278327, 23.327616, 14.746740>,  <5.506948, 22.777033, 14.457804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.278327, 23.327616, 14.746740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.673862, 23.353144, 14.800593>,  <5.911184, 23.368460, 14.832905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.673862, 23.353144, 14.800593>,  <5.278327, 23.327616, 14.746740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.673862, 23.353144, 14.800593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083720, 0.985473, 0.147762,
		-0.123247, -0.157384, 0.979816,
		0.988838, 0.063819, 0.134633,
		5.970514, 23.372290, 14.840983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.932693, 18.718817, 27.344597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.755337, 18.408485, 27.165043>,  <16.648924, 18.222286, 27.057310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.755337, 18.408485, 27.165043>,  <16.932693, 18.718817, 27.344597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.755337, 18.408485, 27.165043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657557, -0.058785, 0.751108,
		-0.609118, 0.628200, -0.484086,
		-0.443390, -0.775828, -0.448884,
		16.622320, 18.175737, 27.030378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.184086, 18.840979, 27.214724>,  <16.932693, 18.718817, 27.344597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.184086, 18.840979, 27.214724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.309242, 18.466682, 27.279831>,  <16.384336, 18.242105, 27.318895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.309242, 18.466682, 27.279831>,  <16.184086, 18.840979, 27.214724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.309242, 18.466682, 27.279831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484192, -0.009717, 0.874908,
		-0.817103, -0.352561, -0.456118,
		0.312890, -0.935739, 0.162767,
		16.403109, 18.185961, 27.328661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.555502, 18.448372, 27.234432>,  <16.184086, 18.840979, 27.214724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.555502, 18.448372, 27.234432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.835743, 18.250967, 27.440578>,  <16.003887, 18.132524, 27.564266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.835743, 18.250967, 27.440578>,  <15.555502, 18.448372, 27.234432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.835743, 18.250967, 27.440578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656201, -0.161912, 0.737010,
		-0.280281, -0.854534, -0.437280,
		0.700601, -0.493514, 0.515366,
		16.045923, 18.102913, 27.595188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.250536, 17.959480, 27.617350>,  <15.555502, 18.448372, 27.234432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.250536, 17.959480, 27.617350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.603350, 17.922342, 27.802130>,  <15.815038, 17.900061, 27.912998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.603350, 17.922342, 27.802130>,  <15.250536, 17.959480, 27.617350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.603350, 17.922342, 27.802130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470818, -0.134969, 0.871845,
		-0.018595, -0.986491, -0.162759,
		0.882034, -0.092842, 0.461948,
		15.867960, 17.894489, 27.940714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.152743, 17.555511, 28.160173>,  <15.250536, 17.959480, 27.617350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.152743, 17.555511, 28.160173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.503226, 17.716469, 28.266258>,  <15.713516, 17.813044, 28.329908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.503226, 17.716469, 28.266258>,  <15.152743, 17.555511, 28.160173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.503226, 17.716469, 28.266258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291690, 0.004734, 0.956501,
		0.383636, -0.915454, 0.121523,
		0.876208, 0.402395, 0.265212,
		15.766088, 17.837187, 28.345821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.425309, 17.039248, 28.621759>,  <15.152743, 17.555511, 28.160173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.425309, 17.039248, 28.621759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.565221, 17.410494, 28.672752>,  <15.649168, 17.633242, 28.703348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.565221, 17.410494, 28.672752>,  <15.425309, 17.039248, 28.621759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.565221, 17.410494, 28.672752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278893, -0.026746, 0.959949,
		0.894356, -0.371324, 0.249490,
		0.349780, 0.928118, 0.127480,
		15.670155, 17.688929, 28.710997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.748282, 16.952496, 29.204346>,  <15.425309, 17.039248, 28.621759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.748282, 16.952496, 29.204346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.656709, 17.338938, 29.156631>,  <15.601765, 17.570803, 29.128002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.656709, 17.338938, 29.156631>,  <15.748282, 16.952496, 29.204346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.656709, 17.338938, 29.156631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455732, 0.001911, 0.890115,
		0.860173, 0.258142, 0.439848,
		-0.228935, 0.966105, -0.119287,
		15.588028, 17.628769, 29.120846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.994866, 17.282656, 29.815973>,  <15.748282, 16.952496, 29.204346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.994866, 17.282656, 29.815973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.719620, 17.524611, 29.655672>,  <15.554472, 17.669785, 29.559490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.719620, 17.524611, 29.655672>,  <15.994866, 17.282656, 29.815973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.719620, 17.524611, 29.655672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490739, 0.018868, 0.871102,
		0.534481, 0.796087, 0.283859,
		-0.688118, 0.604888, -0.400755,
		15.513185, 17.706078, 29.535446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.969022, 17.764071, 30.298582>,  <15.994866, 17.282656, 29.815973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.969022, 17.764071, 30.298582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.624627, 17.759352, 30.095186>,  <15.417991, 17.756521, 29.973148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.624627, 17.759352, 30.095186>,  <15.969022, 17.764071, 30.298582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.624627, 17.759352, 30.095186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500819, 0.194168, 0.843492,
		0.088781, 0.980897, -0.173085,
		-0.860987, -0.011798, -0.508491,
		15.366331, 17.755812, 29.942638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.530266, 18.398436, 30.493158>,  <15.969022, 17.764071, 30.298582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.530266, 18.398436, 30.493158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.298238, 18.102148, 30.357599>,  <15.159020, 17.924376, 30.276264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.298238, 18.102148, 30.357599>,  <15.530266, 18.398436, 30.493158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.298238, 18.102148, 30.357599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627605, 0.141196, 0.765621,
		-0.519260, 0.656809, -0.546783,
		-0.580070, -0.740720, -0.338899,
		15.124217, 17.879932, 30.255930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.917286, 18.648462, 30.570673>,  <15.530266, 18.398436, 30.493158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.917286, 18.648462, 30.570673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.827435, 18.262991, 30.512894>,  <14.773525, 18.031708, 30.478226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.827435, 18.262991, 30.512894>,  <14.917286, 18.648462, 30.570673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.827435, 18.262991, 30.512894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731548, 0.068844, 0.678305,
		-0.643724, 0.258037, -0.720441,
		-0.224626, -0.963679, -0.144450,
		14.760048, 17.973886, 30.469559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.180505, 18.650545, 30.498091>,  <14.917286, 18.648462, 30.570673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.180505, 18.650545, 30.498091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.281322, 18.275976, 30.595730>,  <14.341811, 18.051235, 30.654314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.281322, 18.275976, 30.595730>,  <14.180505, 18.650545, 30.498091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.281322, 18.275976, 30.595730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751232, -0.030325, 0.659341,
		-0.610021, -0.349556, -0.711115,
		0.252041, -0.936424, 0.244099,
		14.356934, 17.995049, 30.668959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.954075, 19.044830, 31.235893>,  <14.180505, 18.650545, 30.498091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.954075, 19.044830, 31.235893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.978434, 19.442186, 31.274822>,  <13.993049, 19.680599, 31.298180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.978434, 19.442186, 31.274822>,  <13.954075, 19.044830, 31.235893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.978434, 19.442186, 31.274822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626211, 0.037902, -0.778731,
		-0.777271, 0.108366, -0.619763,
		0.060898, 0.993388, 0.097320,
		13.996703, 19.740202, 31.304018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.920515, 19.421070, 30.597170>,  <13.954075, 19.044830, 31.235893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.920515, 19.421070, 30.597170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.089330, 19.719185, 30.803638>,  <14.190619, 19.898054, 30.927521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.089330, 19.719185, 30.803638>,  <13.920515, 19.421070, 30.597170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.089330, 19.719185, 30.803638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634357, 0.163990, -0.755445,
		-0.647670, 0.646263, -0.403568,
		0.422036, 0.745286, 0.516173,
		14.215940, 19.942770, 30.958490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.427562, 20.054066, 30.910763>,  <13.920515, 19.421070, 30.597170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.427562, 20.054066, 30.910763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.142167, 20.332005, 30.946823>,  <12.970930, 20.498768, 30.968458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.142167, 20.332005, 30.946823>,  <13.427562, 20.054066, 30.910763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.142167, 20.332005, 30.946823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282050, -0.167046, -0.944745,
		-0.641393, -0.699489, 0.315166,
		-0.713486, 0.694846, 0.090149,
		12.928121, 20.540459, 30.973867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.934174, 19.711006, 30.578621>,  <13.427562, 20.054066, 30.910763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.934174, 19.711006, 30.578621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.750543, 20.066278, 30.570793>,  <12.640365, 20.279442, 30.566097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.750543, 20.066278, 30.570793>,  <12.934174, 19.711006, 30.578621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.750543, 20.066278, 30.570793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302472, -0.176975, -0.936584,
		-0.835320, -0.424045, 0.349895,
		-0.459077, 0.888181, -0.019569,
		12.612820, 20.332733, 30.564922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.272488, 19.556883, 30.318157>,  <12.934174, 19.711006, 30.578621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.272488, 19.556883, 30.318157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.344031, 19.947180, 30.267660>,  <12.386958, 20.181358, 30.237362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.344031, 19.947180, 30.267660>,  <12.272488, 19.556883, 30.318157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.344031, 19.947180, 30.267660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134374, -0.102881, -0.985575,
		-0.974655, 0.193244, 0.112713,
		0.178860, 0.975742, -0.126240,
		12.397690, 20.239902, 30.229788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.657490, 19.753267, 29.971159>,  <12.272488, 19.556883, 30.318157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.657490, 19.753267, 29.971159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.946944, 20.022657, 29.910780>,  <12.120617, 20.184292, 29.874552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.946944, 20.022657, 29.910780>,  <11.657490, 19.753267, 29.971159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.946944, 20.022657, 29.910780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137437, -0.073720, -0.987764,
		-0.676360, 0.735527, 0.039214,
		0.723635, 0.673473, -0.150950,
		12.164035, 20.224699, 29.865496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.351533, 20.151133, 29.418062>,  <11.657490, 19.753267, 29.971159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.351533, 20.151133, 29.418062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.748996, 20.195957, 29.421850>,  <11.987473, 20.222851, 29.424124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.748996, 20.195957, 29.421850>,  <11.351533, 20.151133, 29.418062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.748996, 20.195957, 29.421850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030149, -0.184310, -0.982406,
		-0.108343, 0.976459, -0.186519,
		0.993656, 0.112060, 0.009471,
		12.047092, 20.229576, 29.424692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.415131, 20.319448, 28.793764>,  <11.351533, 20.151133, 29.418062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.415131, 20.319448, 28.793764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.786072, 20.228689, 28.912783>,  <12.008636, 20.174232, 28.984194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.786072, 20.228689, 28.912783>,  <11.415131, 20.319448, 28.793764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.786072, 20.228689, 28.912783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252360, -0.207868, -0.945042,
		0.276280, 0.951477, -0.135507,
		0.927353, -0.226900, 0.297544,
		12.064278, 20.160620, 29.002047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.870261, 20.715792, 28.470196>,  <11.415131, 20.319448, 28.793764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.870261, 20.715792, 28.470196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.100594, 20.400642, 28.557531>,  <12.238793, 20.211552, 28.609932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.100594, 20.400642, 28.557531>,  <11.870261, 20.715792, 28.470196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.100594, 20.400642, 28.557531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221591, -0.106661, -0.969289,
		0.786967, 0.606528, 0.113167,
		0.575831, -0.787875, 0.218340,
		12.273343, 20.164280, 28.623034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.361172, 20.900690, 27.924376>,  <11.870261, 20.715792, 28.470196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.361172, 20.900690, 27.924376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.438045, 20.531227, 28.056995>,  <12.484168, 20.309549, 28.136568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.438045, 20.531227, 28.056995>,  <12.361172, 20.900690, 27.924376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.438045, 20.531227, 28.056995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353916, -0.249880, -0.901279,
		0.915319, 0.290551, 0.278874,
		0.192183, -0.923656, 0.331551,
		12.495700, 20.254131, 28.156460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.135050, 20.632664, 27.766933>,  <12.361172, 20.900690, 27.924376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.135050, 20.632664, 27.766933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.935347, 20.290884, 27.824423>,  <12.815525, 20.085815, 27.858915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.935347, 20.290884, 27.824423>,  <13.135050, 20.632664, 27.766933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.935347, 20.290884, 27.824423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204069, -0.277165, -0.938901,
		0.842080, -0.439424, 0.312743,
		-0.499257, -0.854451, 0.143722,
		12.785569, 20.034548, 27.867540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.485254, 20.142921, 27.485292>,  <13.135050, 20.632664, 27.766933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.485254, 20.142921, 27.485292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.144588, 19.933401, 27.492168>,  <12.940187, 19.807688, 27.496294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.144588, 19.933401, 27.492168>,  <13.485254, 20.142921, 27.485292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.144588, 19.933401, 27.492168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139510, -0.258206, -0.955963,
		0.505175, -0.811764, 0.292981,
		-0.851666, -0.523803, 0.017190,
		12.889088, 19.776260, 27.497326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.700027, 19.538334, 27.240519>,  <13.485254, 20.142921, 27.485292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.700027, 19.538334, 27.240519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.306679, 19.554579, 27.169710>,  <13.070670, 19.564325, 27.127224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.306679, 19.554579, 27.169710>,  <13.700027, 19.538334, 27.240519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.306679, 19.554579, 27.169710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159456, -0.273550, -0.948548,
		-0.086949, -0.961000, 0.262524,
		-0.983369, 0.040614, -0.177023,
		13.011668, 19.566763, 27.116604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.406249, 18.910904, 27.045479>,  <13.700027, 19.538334, 27.240519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.406249, 18.910904, 27.045479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.162555, 19.176517, 26.872095>,  <13.016338, 19.335886, 26.768064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.162555, 19.176517, 26.872095>,  <13.406249, 18.910904, 27.045479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.162555, 19.176517, 26.872095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050768, -0.512833, -0.856986,
		-0.791363, -0.544112, 0.278725,
		-0.609235, 0.664036, -0.433460,
		12.979784, 19.375729, 26.742058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.092476, 18.575006, 26.598215>,  <13.406249, 18.910904, 27.045479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.092476, 18.575006, 26.598215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.012946, 18.937046, 26.447874>,  <12.965228, 19.154270, 26.357670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.012946, 18.937046, 26.447874>,  <13.092476, 18.575006, 26.598215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.012946, 18.937046, 26.447874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076104, -0.368092, -0.926669,
		-0.977076, -0.212848, 0.004304,
		-0.198824, 0.905099, -0.375853,
		12.953299, 19.208576, 26.335117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.659636, 18.453518, 25.950464>,  <13.092476, 18.575006, 26.598215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.659636, 18.453518, 25.950464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.828750, 18.815136, 25.925308>,  <12.930218, 19.032106, 25.910213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.828750, 18.815136, 25.925308>,  <12.659636, 18.453518, 25.950464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.828750, 18.815136, 25.925308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359726, -0.231114, -0.903982,
		-0.831777, 0.359563, -0.422920,
		0.422782, 0.904047, -0.062891,
		12.955585, 19.086349, 25.906441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.901050, 18.366945, 25.591257>,  <12.659636, 18.453518, 25.950464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.901050, 18.366945, 25.591257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.657136, 18.054934, 25.535091>,  <11.510788, 17.867725, 25.501392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.657136, 18.054934, 25.535091>,  <11.901050, 18.366945, 25.591257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.657136, 18.054934, 25.535091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536200, 0.275550, 0.797848,
		-0.583656, 0.561804, -0.586278,
		-0.609784, -0.780031, -0.140413,
		11.474201, 17.820925, 25.492968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.195702, 18.584711, 25.825432>,  <11.901050, 18.366945, 25.591257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.195702, 18.584711, 25.825432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.195690, 18.184715, 25.823792>,  <11.195683, 17.944717, 25.822807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.195690, 18.184715, 25.823792>,  <11.195702, 18.584711, 25.825432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.195690, 18.184715, 25.823792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465328, -0.003615, 0.885131,
		-0.885138, 0.001932, -0.465324,
		-0.000028, -0.999992, -0.004099,
		11.195682, 17.884718, 25.822561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.575917, 18.426010, 26.013916>,  <11.195702, 18.584711, 25.825432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.575917, 18.426010, 26.013916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.784352, 18.090452, 26.076805>,  <10.909413, 17.889116, 26.114538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.784352, 18.090452, 26.076805>,  <10.575917, 18.426010, 26.013916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.784352, 18.090452, 26.076805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415717, -0.088582, 0.905170,
		-0.745417, -0.537033, -0.394903,
		0.521088, -0.838897, 0.157223,
		10.940679, 17.838783, 26.123972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.188086, 18.097286, 26.471632>,  <10.575917, 18.426010, 26.013916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.188086, 18.097286, 26.471632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.517913, 17.880228, 26.535662>,  <10.715810, 17.749994, 26.574080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.517913, 17.880228, 26.535662>,  <10.188086, 18.097286, 26.471632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.517913, 17.880228, 26.535662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264186, -0.119112, 0.957088,
		-0.500292, -0.831474, -0.241575,
		0.824568, -0.542645, 0.160073,
		10.765284, 17.717434, 26.583683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.043035, 17.366240, 26.767202>,  <10.188086, 18.097286, 26.471632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.043035, 17.366240, 26.767202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.401688, 17.510202, 26.870365>,  <10.616879, 17.596581, 26.932262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.401688, 17.510202, 26.870365>,  <10.043035, 17.366240, 26.767202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.401688, 17.510202, 26.870365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295276, 0.051991, 0.953996,
		0.329942, -0.931538, 0.152890,
		0.896633, 0.359908, 0.257907,
		10.670677, 17.618176, 26.947737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.293003, 16.994795, 27.369865>,  <10.043035, 17.366240, 26.767202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.293003, 16.994795, 27.369865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.508951, 17.331205, 27.383804>,  <10.638519, 17.533052, 27.392168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.508951, 17.331205, 27.383804>,  <10.293003, 16.994795, 27.369865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.508951, 17.331205, 27.383804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193776, 0.083887, 0.977453,
		0.819141, -0.534449, 0.208259,
		0.539869, 0.841027, 0.034848,
		10.670912, 17.583513, 27.394258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.591143, 16.939610, 28.003967>,  <10.293003, 16.994795, 27.369865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.591143, 16.939610, 28.003967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.670663, 17.323479, 27.924463>,  <10.718375, 17.553801, 27.876760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.670663, 17.323479, 27.924463>,  <10.591143, 16.939610, 28.003967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.670663, 17.323479, 27.924463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035926, 0.209808, 0.977082,
		0.979381, -0.187103, 0.076187,
		0.198800, 0.959674, -0.198760,
		10.730303, 17.611382, 27.864836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.063282, 16.357798, 28.327856>,  <10.591143, 16.939610, 28.003967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.063282, 16.357798, 28.327856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.917737, 16.001362, 28.436348>,  <10.830410, 15.787500, 28.501444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.917737, 16.001362, 28.436348>,  <11.063282, 16.357798, 28.327856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.917737, 16.001362, 28.436348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416711, -0.416155, -0.808187,
		0.833041, -0.181043, 0.522749,
		-0.363861, -0.891088, 0.271232,
		10.808578, 15.734035, 28.517717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.694492, 15.916415, 28.310633>,  <11.063282, 16.357798, 28.327856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.694492, 15.916415, 28.310633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.363870, 15.695312, 28.268185>,  <11.165496, 15.562650, 28.242716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.363870, 15.695312, 28.268185>,  <11.694492, 15.916415, 28.310633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.363870, 15.695312, 28.268185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375404, -0.400917, -0.835666,
		0.419375, -0.730564, 0.538889,
		-0.826557, -0.552758, -0.106122,
		11.115903, 15.529484, 28.236347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.940656, 15.117825, 28.189848>,  <11.694492, 15.916415, 28.310633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.940656, 15.117825, 28.189848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.572103, 15.188789, 28.051527>,  <11.350970, 15.231368, 27.968534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.572103, 15.188789, 28.051527>,  <11.940656, 15.117825, 28.189848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.572103, 15.188789, 28.051527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242890, -0.431739, -0.868680,
		-0.303411, -0.884379, 0.354705,
		-0.921383, 0.177412, -0.345801,
		11.295688, 15.242013, 27.947786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.697269, 14.436295, 27.899441>,  <11.940656, 15.117825, 28.189848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.697269, 14.436295, 27.899441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.461476, 14.712734, 27.732159>,  <11.320001, 14.878598, 27.631790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.461476, 14.712734, 27.732159>,  <11.697269, 14.436295, 27.899441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.461476, 14.712734, 27.732159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150087, -0.414998, -0.897357,
		-0.793716, -0.591743, 0.140909,
		-0.589482, 0.691098, -0.418204,
		11.284632, 14.920064, 27.606697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.341449, 14.013551, 27.500109>,  <11.697269, 14.436295, 27.899441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.341449, 14.013551, 27.500109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.356132, 14.398238, 27.391481>,  <11.364942, 14.629051, 27.326305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.356132, 14.398238, 27.391481>,  <11.341449, 14.013551, 27.500109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.356132, 14.398238, 27.391481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077512, -0.273672, -0.958695,
		-0.996315, 0.014142, -0.084591,
		0.036708, 0.961719, -0.271567,
		11.367144, 14.686754, 27.310011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.787440, 14.079202, 27.034979>,  <11.341449, 14.013551, 27.500109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.787440, 14.079202, 27.034979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.980351, 14.417050, 26.942007>,  <11.096098, 14.619760, 26.886223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.980351, 14.417050, 26.942007>,  <10.787440, 14.079202, 27.034979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.980351, 14.417050, 26.942007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100038, -0.210490, -0.972464,
		-0.870288, 0.492249, -0.017021,
		0.482278, 0.844621, -0.232431,
		11.125034, 14.670437, 26.872278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.424410, 14.531122, 26.515076>,  <10.787440, 14.079202, 27.034979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.424410, 14.531122, 26.515076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.807731, 14.638453, 26.475765>,  <11.037724, 14.702850, 26.452179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.807731, 14.638453, 26.475765>,  <10.424410, 14.531122, 26.515076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.807731, 14.638453, 26.475765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036272, -0.226923, -0.973237,
		-0.283446, 0.936220, -0.207728,
		0.958302, 0.268325, -0.098279,
		11.095222, 14.718950, 26.446281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<12.956112, 15.221867, 32.076317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.137600, 15.577120, 32.047035>,  <13.246492, 15.790272, 32.029469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.137600, 15.577120, 32.047035>,  <12.956112, 15.221867, 32.076317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.137600, 15.577120, 32.047035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193416, -0.178329, -0.964774,
		-0.869902, 0.423578, -0.252690,
		0.453719, 0.888133, -0.073202,
		13.273716, 15.843560, 32.025074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.666595, 15.589283, 31.529285>,  <12.956112, 15.221867, 32.076317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.666595, 15.589283, 31.529285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.042169, 15.726834, 31.534222>,  <13.267512, 15.809365, 31.537184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.042169, 15.726834, 31.534222>,  <12.666595, 15.589283, 31.529285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.042169, 15.726834, 31.534222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069756, -0.155102, -0.985433,
		-0.336956, 0.926116, -0.169619,
		0.938933, 0.343879, 0.012340,
		13.323849, 15.829998, 31.537924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.850945, 15.927932, 30.793135>,  <12.666595, 15.589283, 31.529285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.850945, 15.927932, 30.793135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.199280, 15.862294, 30.978487>,  <13.408280, 15.822911, 31.089699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.199280, 15.862294, 30.978487>,  <12.850945, 15.927932, 30.793135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.199280, 15.862294, 30.978487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412089, -0.270240, -0.870145,
		0.268009, 0.948706, -0.167713,
		0.870835, -0.164094, 0.463379,
		13.460530, 15.813066, 31.117500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.405505, 16.274714, 30.331211>,  <12.850945, 15.927932, 30.793135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.405505, 16.274714, 30.331211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.585613, 15.992394, 30.549974>,  <13.693678, 15.823004, 30.681232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.585613, 15.992394, 30.549974>,  <13.405505, 16.274714, 30.331211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.585613, 15.992394, 30.549974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413645, -0.377937, -0.828289,
		0.791299, 0.599180, 0.121774,
		0.450271, -0.705795, 0.546909,
		13.720695, 15.780656, 30.714046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.004593, 16.223099, 30.025999>,  <13.405505, 16.274714, 30.331211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.004593, 16.223099, 30.025999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.989363, 15.877606, 30.227003>,  <13.980225, 15.670311, 30.347605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.989363, 15.877606, 30.227003>,  <14.004593, 16.223099, 30.025999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.989363, 15.877606, 30.227003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503124, -0.451055, -0.737167,
		0.863375, 0.224756, 0.451739,
		-0.038076, -0.863733, 0.502510,
		13.977940, 15.618486, 30.377756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.707290, 16.025259, 30.022444>,  <14.004593, 16.223099, 30.025999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.707290, 16.025259, 30.022444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.500817, 15.694056, 30.110043>,  <14.376934, 15.495334, 30.162601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.500817, 15.694056, 30.110043>,  <14.707290, 16.025259, 30.022444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.500817, 15.694056, 30.110043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462421, -0.484651, -0.742482,
		0.720919, -0.281985, 0.633056,
		-0.516180, -0.828008, 0.218998,
		14.345963, 15.445653, 30.175741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.129148, 15.535150, 30.196560>,  <14.707290, 16.025259, 30.022444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.129148, 15.535150, 30.196560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.823124, 15.291281, 30.113630>,  <14.639509, 15.144959, 30.063871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.823124, 15.291281, 30.113630>,  <15.129148, 15.535150, 30.196560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.823124, 15.291281, 30.113630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547425, -0.446192, -0.707982,
		0.339130, -0.655144, 0.675113,
		-0.765060, -0.609672, -0.207325,
		14.593606, 15.108379, 30.051434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.453996, 14.980906, 29.826021>,  <15.129148, 15.535150, 30.196560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.453996, 14.980906, 29.826021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.075024, 14.868031, 29.765696>,  <14.847641, 14.800304, 29.729500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.075024, 14.868031, 29.765696>,  <15.453996, 14.980906, 29.826021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.075024, 14.868031, 29.765696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272739, -0.465790, -0.841815,
		0.167304, -0.838694, 0.518268,
		-0.947430, -0.282191, -0.150816,
		14.790794, 14.783373, 29.720451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.396613, 14.166886, 29.801476>,  <15.453996, 14.980906, 29.826021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.396613, 14.166886, 29.801476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.102707, 14.326563, 29.582108>,  <14.926363, 14.422369, 29.450487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.102707, 14.326563, 29.582108>,  <15.396613, 14.166886, 29.801476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.102707, 14.326563, 29.582108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353995, -0.464005, -0.812027,
		-0.578624, -0.790788, 0.199623,
		-0.734767, 0.399192, -0.548419,
		14.882277, 14.446321, 29.417582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.204929, 13.595359, 29.474550>,  <15.396613, 14.166886, 29.801476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.204929, 13.595359, 29.474550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.108355, 13.918688, 29.259768>,  <15.050409, 14.112685, 29.130898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.108355, 13.918688, 29.259768>,  <15.204929, 13.595359, 29.474550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.108355, 13.918688, 29.259768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187383, -0.504078, -0.843085,
		-0.952153, -0.304169, -0.029762,
		-0.241437, 0.808323, -0.536956,
		15.035923, 14.161184, 29.098680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.870155, 13.332936, 28.923395>,  <15.204929, 13.595359, 29.474550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.870155, 13.332936, 28.923395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.944224, 13.700093, 28.783005>,  <14.988666, 13.920387, 28.698771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.944224, 13.700093, 28.783005>,  <14.870155, 13.332936, 28.923395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.944224, 13.700093, 28.783005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450672, -0.396699, -0.799703,
		-0.873273, -0.010090, -0.487126,
		0.185173, 0.917893, -0.350974,
		14.999776, 13.975461, 28.677713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.635159, 13.396924, 28.266592>,  <14.870155, 13.332936, 28.923395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.635159, 13.396924, 28.266592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.908792, 13.688356, 28.280443>,  <15.072972, 13.863215, 28.288754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.908792, 13.688356, 28.280443>,  <14.635159, 13.396924, 28.266592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.908792, 13.688356, 28.280443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330721, -0.267512, -0.905020,
		-0.650117, 0.630562, -0.423958,
		0.684084, 0.728581, 0.034626,
		15.114017, 13.906931, 28.290831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.077074, 12.871677, 28.121105>,  <14.635159, 13.396924, 28.266592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.077074, 12.871677, 28.121105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.700570, 12.836759, 27.990622>,  <13.474668, 12.815807, 27.912333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.700570, 12.836759, 27.990622>,  <14.077074, 12.871677, 28.121105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.700570, 12.836759, 27.990622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336294, 0.154706, 0.928963,
		-0.030630, 0.984096, -0.174976,
		-0.941259, -0.087298, -0.326207,
		13.418193, 12.810570, 27.892759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.772199, 13.418415, 28.436977>,  <14.077074, 12.871677, 28.121105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.772199, 13.418415, 28.436977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.484182, 13.153197, 28.355085>,  <13.311373, 12.994066, 28.305950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.484182, 13.153197, 28.355085>,  <13.772199, 13.418415, 28.436977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.484182, 13.153197, 28.355085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411455, 0.170360, 0.895367,
		-0.558791, 0.728937, -0.395479,
		-0.720040, -0.663045, -0.204729,
		13.268170, 12.954284, 28.293667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.178963, 13.792568, 28.663595>,  <13.772199, 13.418415, 28.436977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.178963, 13.792568, 28.663595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.030849, 13.423149, 28.623699>,  <12.941980, 13.201498, 28.599762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.030849, 13.423149, 28.623699>,  <13.178963, 13.792568, 28.663595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.030849, 13.423149, 28.623699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519862, 0.117044, 0.846194,
		-0.769827, 0.365185, -0.523457,
		-0.370284, -0.923548, -0.099742,
		12.919764, 13.146085, 28.593777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.457089, 13.879000, 28.718483>,  <13.178963, 13.792568, 28.663595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.457089, 13.879000, 28.718483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.518682, 13.492774, 28.802362>,  <12.555638, 13.261039, 28.852690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.518682, 13.492774, 28.802362>,  <12.457089, 13.879000, 28.718483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.518682, 13.492774, 28.802362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471834, 0.114613, 0.874206,
		-0.868137, -0.233556, -0.437938,
		0.153983, -0.965565, 0.209700,
		12.564878, 13.203105, 28.865273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.779198, 13.614907, 28.812815>,  <12.457089, 13.879000, 28.718483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.779198, 13.614907, 28.812815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.025675, 13.366722, 29.006859>,  <12.173561, 13.217812, 29.123285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.025675, 13.366722, 29.006859>,  <11.779198, 13.614907, 28.812815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.025675, 13.366722, 29.006859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461778, 0.214348, 0.860707,
		-0.638019, -0.754374, -0.154436,
		0.616192, -0.620463, 0.485112,
		12.210532, 13.180583, 29.152393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.298925, 13.303889, 29.235216>,  <11.779198, 13.614907, 28.812815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.298925, 13.303889, 29.235216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.656449, 13.220011, 29.393776>,  <11.870964, 13.169683, 29.488913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.656449, 13.220011, 29.393776>,  <11.298925, 13.303889, 29.235216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.656449, 13.220011, 29.393776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295524, 0.389424, 0.872361,
		-0.337299, -0.896870, 0.286101,
		0.893809, -0.209697, 0.396399,
		11.924592, 13.157102, 29.512695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.158060, 12.901556, 29.813261>,  <11.298925, 13.303889, 29.235216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.158060, 12.901556, 29.813261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.521623, 13.053414, 29.882261>,  <11.739760, 13.144529, 29.923662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.521623, 13.053414, 29.882261>,  <11.158060, 12.901556, 29.813261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.521623, 13.053414, 29.882261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293708, 0.289189, 0.911101,
		0.296046, -0.878757, 0.374357,
		0.908896, 0.379679, 0.172485,
		11.794295, 13.167308, 29.934011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.360937, 12.733809, 30.540695>,  <11.158060, 12.901556, 29.813261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.360937, 12.733809, 30.540695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.570948, 13.061308, 30.447742>,  <11.696954, 13.257807, 30.391970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.570948, 13.061308, 30.447742>,  <11.360937, 12.733809, 30.540695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.570948, 13.061308, 30.447742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176475, 0.371839, 0.911369,
		0.832588, -0.437483, 0.339713,
		0.525027, 0.818746, -0.232384,
		11.728456, 13.306931, 30.378027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.810867, 12.877267, 31.066366>,  <11.360937, 12.733809, 30.540695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.810867, 12.877267, 31.066366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.772320, 13.230454, 30.882593>,  <11.749191, 13.442367, 30.772329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.772320, 13.230454, 30.882593>,  <11.810867, 12.877267, 31.066366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.772320, 13.230454, 30.882593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227498, 0.429825, 0.873782,
		0.968998, 0.188725, 0.159453,
		-0.096368, 0.882969, -0.459434,
		11.743409, 13.495345, 30.744762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.242415, 13.449828, 31.406050>,  <11.810867, 12.877267, 31.066366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.242415, 13.449828, 31.406050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.946659, 13.634130, 31.209681>,  <11.769205, 13.744712, 31.091860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.946659, 13.634130, 31.209681>,  <12.242415, 13.449828, 31.406050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.946659, 13.634130, 31.209681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132395, 0.615414, 0.777005,
		0.660130, 0.639506, -0.394031,
		-0.739392, 0.460756, -0.490921,
		11.724841, 13.772357, 31.062405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.182149, 14.084922, 31.802435>,  <12.242415, 13.449828, 31.406050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.182149, 14.084922, 31.802435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.855109, 14.134970, 31.577623>,  <11.658885, 14.164998, 31.442738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.855109, 14.134970, 31.577623>,  <12.182149, 14.084922, 31.802435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.855109, 14.134970, 31.577623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354334, 0.660052, 0.662404,
		0.453847, 0.740727, -0.495324,
		-0.817600, 0.125120, -0.562027,
		11.609829, 14.172505, 31.409016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.995799, 14.825033, 31.812263>,  <12.182149, 14.084922, 31.802435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.995799, 14.825033, 31.812263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.665321, 14.623688, 31.711048>,  <11.467035, 14.502881, 31.650318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.665321, 14.623688, 31.711048>,  <11.995799, 14.825033, 31.812263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.665321, 14.623688, 31.711048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531610, 0.547830, 0.645967,
		-0.186533, 0.668213, -0.720206,
		-0.826194, -0.503363, -0.253040,
		11.417463, 14.472679, 31.635136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.558193, 15.373745, 31.604162>,  <11.995799, 14.825033, 31.812263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.558193, 15.373745, 31.604162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.315527, 15.069097, 31.695282>,  <11.169928, 14.886308, 31.749954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.315527, 15.069097, 31.695282>,  <11.558193, 15.373745, 31.604162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.315527, 15.069097, 31.695282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498548, 0.587707, 0.637221,
		-0.619199, 0.273011, -0.736246,
		-0.606665, -0.761620, 0.227798,
		11.133528, 14.840611, 31.763622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.873577, 15.622701, 31.577076>,  <11.558193, 15.373745, 31.604162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.873577, 15.622701, 31.577076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.844477, 15.293550, 31.802494>,  <10.827017, 15.096059, 31.937744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.844477, 15.293550, 31.802494>,  <10.873577, 15.622701, 31.577076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.844477, 15.293550, 31.802494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465224, 0.527801, 0.710628,
		-0.882198, -0.210475, -0.421220,
		-0.072751, -0.822877, 0.563543,
		10.822651, 15.046686, 31.971558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.374336, 15.118171, 31.373650>,  <10.873577, 15.622701, 31.577076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.374336, 15.118171, 31.373650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.115367, 15.413720, 31.298914>,  <9.959986, 15.591050, 31.254072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.115367, 15.413720, 31.298914>,  <10.374336, 15.118171, 31.373650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.115367, 15.413720, 31.298914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013120, -0.234312, -0.972073,
		-0.762019, -0.631792, 0.142004,
		-0.647422, 0.738875, -0.186840,
		9.921141, 15.635383, 31.242863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.021564, 14.798665, 30.901302>,  <10.374336, 15.118171, 31.373650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.021564, 14.798665, 30.901302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.936418, 15.186885, 30.856182>,  <9.885330, 15.419817, 30.829111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.936418, 15.186885, 30.856182>,  <10.021564, 14.798665, 30.901302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.936418, 15.186885, 30.856182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053818, -0.126916, -0.990452,
		-0.975599, -0.204761, 0.079249,
		-0.212864, 0.970549, -0.112800,
		9.872559, 15.478049, 30.822342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.558058, 14.779590, 30.377401>,  <10.021564, 14.798665, 30.901302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.558058, 14.779590, 30.377401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.717839, 15.146262, 30.381977>,  <9.813708, 15.366266, 30.384724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.717839, 15.146262, 30.381977>,  <9.558058, 14.779590, 30.377401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.717839, 15.146262, 30.381977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132665, -0.045453, -0.990118,
		-0.907104, 0.397024, -0.139767,
		0.399454, 0.916682, 0.011440,
		9.837675, 15.421267, 30.385408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.263588, 15.172709, 29.770477>,  <9.558058, 14.779590, 30.377401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.263588, 15.172709, 29.770477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.588430, 15.390474, 29.854473>,  <9.783336, 15.521134, 29.904871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.588430, 15.390474, 29.854473>,  <9.263588, 15.172709, 29.770477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.588430, 15.390474, 29.854473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200609, 0.077446, -0.976606,
		-0.547942, 0.835233, -0.046320,
		0.812106, 0.544415, 0.209991,
		9.832062, 15.553799, 29.917471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.293798, 15.805929, 29.265734>,  <9.263588, 15.172709, 29.770477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.293798, 15.805929, 29.265734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.660261, 15.744060, 29.413643>,  <9.880138, 15.706938, 29.502388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.660261, 15.744060, 29.413643>,  <9.293798, 15.805929, 29.265734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.660261, 15.744060, 29.413643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393472, 0.171227, -0.903250,
		0.076395, 0.973014, 0.217731,
		0.916157, -0.154675, 0.369773,
		9.935108, 15.697657, 29.524574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.779735, 16.363167, 28.956594>,  <9.293798, 15.805929, 29.265734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.779735, 16.363167, 28.956594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.994988, 16.043621, 29.064096>,  <10.124141, 15.851894, 29.128597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.994988, 16.043621, 29.064096>,  <9.779735, 16.363167, 28.956594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.994988, 16.043621, 29.064096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438678, -0.006810, -0.898618,
		0.719703, 0.601475, 0.346779,
		0.538135, -0.798863, 0.268756,
		10.156428, 15.803962, 29.144724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.415935, 16.463104, 28.642191>,  <9.779735, 16.363167, 28.956594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.415935, 16.463104, 28.642191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.440998, 16.076700, 28.742512>,  <10.456036, 15.844858, 28.802704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.440998, 16.076700, 28.742512>,  <10.415935, 16.463104, 28.642191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.440998, 16.076700, 28.742512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594864, -0.165632, -0.786577,
		0.801381, 0.198478, 0.564265,
		0.062658, -0.966008, 0.250802,
		10.459796, 15.786898, 28.817753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.959940, 17.031233, 28.614376>,  <10.415935, 16.463104, 28.642191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.959940, 17.031233, 28.614376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.848865, 17.387667, 28.470789>,  <10.782220, 17.601526, 28.384636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.848865, 17.387667, 28.470789>,  <10.959940, 17.031233, 28.614376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.848865, 17.387667, 28.470789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007195, 0.375582, 0.926761,
		0.960644, 0.254767, -0.110705,
		-0.277688, 0.891084, -0.358968,
		10.765558, 17.654991, 28.363098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.383546, 17.519039, 28.897360>,  <10.959940, 17.031233, 28.614376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.383546, 17.519039, 28.897360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.043065, 17.703909, 28.797882>,  <10.838777, 17.814831, 28.738195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.043065, 17.703909, 28.797882>,  <11.383546, 17.519039, 28.897360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.043065, 17.703909, 28.797882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023726, 0.439483, 0.897937,
		0.524301, 0.770227, -0.363124,
		-0.851202, 0.462174, -0.248696,
		10.787704, 17.842562, 28.723272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.509419, 18.217646, 29.093937>,  <11.383546, 17.519039, 28.897360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.509419, 18.217646, 29.093937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.111742, 18.218040, 29.050898>,  <10.873136, 18.218277, 29.025074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.111742, 18.218040, 29.050898>,  <11.509419, 18.217646, 29.093937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.111742, 18.218040, 29.050898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082925, 0.630166, 0.772020,
		0.068567, 0.776460, -0.626425,
		-0.994194, 0.000989, -0.107596,
		10.813484, 18.218336, 29.018620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.252533, 18.900324, 29.086454>,  <11.509419, 18.217646, 29.093937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.252533, 18.900324, 29.086454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.927213, 18.700548, 29.205854>,  <10.732020, 18.580683, 29.277494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.927213, 18.700548, 29.205854>,  <11.252533, 18.900324, 29.086454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.927213, 18.700548, 29.205854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054344, 0.575984, 0.815653,
		-0.579302, 0.647148, -0.495589,
		-0.813299, -0.499441, 0.298500,
		10.683223, 18.550716, 29.295404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.746489, 19.467922, 29.314093>,  <11.252533, 18.900324, 29.086454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.746489, 19.467922, 29.314093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.613858, 19.121458, 29.463663>,  <10.534280, 18.913580, 29.553406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.613858, 19.121458, 29.463663>,  <10.746489, 19.467922, 29.314093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.613858, 19.121458, 29.463663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326768, 0.477254, 0.815752,
		-0.885031, 0.148297, -0.441281,
		-0.331576, -0.866162, 0.373926,
		10.514385, 18.861609, 29.575840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.121615, 19.650658, 29.676596>,  <10.746489, 19.467922, 29.314093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.121615, 19.650658, 29.676596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.176085, 19.286684, 29.833298>,  <10.208766, 19.068300, 29.927319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.176085, 19.286684, 29.833298>,  <10.121615, 19.650658, 29.676596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.176085, 19.286684, 29.833298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279019, 0.344206, 0.896477,
		-0.950581, -0.231383, -0.207018,
		0.136173, -0.909936, 0.391756,
		10.216936, 19.013702, 29.950825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.484859, 19.552883, 30.171946>,  <10.121615, 19.650658, 29.676596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.484859, 19.552883, 30.171946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.789359, 19.307732, 30.256680>,  <9.972059, 19.160641, 30.307520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.789359, 19.307732, 30.256680>,  <9.484859, 19.552883, 30.171946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.789359, 19.307732, 30.256680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143878, 0.158896, 0.976755,
		-0.632293, -0.774035, 0.032780,
		0.761252, -0.612879, 0.211836,
		10.017735, 19.123867, 30.320230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.175446, 19.165073, 30.744261>,  <9.484859, 19.552883, 30.171946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.175446, 19.165073, 30.744261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.574788, 19.173059, 30.765753>,  <9.814393, 19.177851, 30.778648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.574788, 19.173059, 30.765753>,  <9.175446, 19.165073, 30.744261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.574788, 19.173059, 30.765753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056840, 0.465862, 0.883030,
		-0.007402, -0.884632, 0.466231,
		0.998356, 0.019964, 0.053731,
		9.874295, 19.179049, 30.781872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.275298, 19.212589, 31.432907>,  <9.175446, 19.165073, 30.744261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.275298, 19.212589, 31.432907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.647646, 19.279762, 31.303120>,  <9.871055, 19.320066, 31.225246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.647646, 19.279762, 31.303120>,  <9.275298, 19.212589, 31.432907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.647646, 19.279762, 31.303120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261261, 0.314831, 0.912482,
		0.255388, -0.934173, 0.249192,
		0.930870, 0.167933, -0.324467,
		9.926907, 19.330143, 31.205780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.976834, 15.256281, 16.282440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.323024, 15.433692, 16.375599>,  <15.530737, 15.540138, 16.431494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.323024, 15.433692, 16.375599>,  <14.976834, 15.256281, 16.282440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.323024, 15.433692, 16.375599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292025, 0.068934, 0.953923,
		0.407036, -0.893606, 0.189182,
		0.865472, 0.443527, 0.232897,
		15.582665, 15.566750, 16.445467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.266293, 14.847828, 16.790625>,  <14.976834, 15.256281, 16.282440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.266293, 14.847828, 16.790625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.426396, 15.212941, 16.823164>,  <15.522458, 15.432010, 16.842688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.426396, 15.212941, 16.823164>,  <15.266293, 14.847828, 16.790625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.426396, 15.212941, 16.823164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313856, 0.053141, 0.947982,
		0.860980, -0.404970, 0.307754,
		0.400259, 0.912785, 0.081349,
		15.546474, 15.486776, 16.847569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.629333, 14.880571, 17.442904>,  <15.266293, 14.847828, 16.790625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.629333, 14.880571, 17.442904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.551273, 15.258594, 17.337994>,  <15.504437, 15.485407, 17.275047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.551273, 15.258594, 17.337994>,  <15.629333, 14.880571, 17.442904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.551273, 15.258594, 17.337994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271754, 0.204843, 0.940313,
		0.942373, 0.254777, 0.216847,
		-0.195150, 0.945055, -0.262276,
		15.492728, 15.542109, 17.259312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.934079, 15.257197, 17.937994>,  <15.629333, 14.880571, 17.442904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.934079, 15.257197, 17.937994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.672293, 15.518548, 17.785797>,  <15.515221, 15.675358, 17.694479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.672293, 15.518548, 17.785797>,  <15.934079, 15.257197, 17.937994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.672293, 15.518548, 17.785797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268752, 0.269347, 0.924784,
		0.706716, 0.707497, -0.000682,
		-0.654465, 0.653376, -0.380493,
		15.475953, 15.714561, 17.671650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.001675, 15.823029, 18.294689>,  <15.934079, 15.257197, 17.937994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.001675, 15.823029, 18.294689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.632241, 15.884291, 18.154099>,  <15.410581, 15.921048, 18.069744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.632241, 15.884291, 18.154099>,  <16.001675, 15.823029, 18.294689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.632241, 15.884291, 18.154099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295506, 0.299711, 0.907111,
		0.244271, 0.941656, -0.231550,
		-0.923584, 0.153156, -0.351476,
		15.355165, 15.930238, 18.048656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.697210, 16.381151, 18.793066>,  <16.001675, 15.823029, 18.294689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.697210, 16.381151, 18.793066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.388629, 16.244242, 18.578512>,  <15.203480, 16.162096, 18.449780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.388629, 16.244242, 18.578512>,  <15.697210, 16.381151, 18.793066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.388629, 16.244242, 18.578512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600633, 0.113518, 0.791425,
		-0.209995, 0.932718, -0.293155,
		-0.771454, -0.342274, -0.536383,
		15.157192, 16.141560, 18.417597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.152053, 16.855427, 18.744793>,  <15.697210, 16.381151, 18.793066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.152053, 16.855427, 18.744793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.003830, 16.484217, 18.729527>,  <14.914896, 16.261490, 18.720366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.003830, 16.484217, 18.729527>,  <15.152053, 16.855427, 18.744793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.003830, 16.484217, 18.729527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608705, 0.211606, 0.764657,
		-0.701544, 0.306583, -0.643306,
		-0.370558, -0.928025, -0.038168,
		14.892663, 16.205809, 18.718077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.417260, 16.952990, 18.889967>,  <15.152053, 16.855427, 18.744793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.417260, 16.952990, 18.889967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.446752, 16.557467, 18.941854>,  <14.464447, 16.320152, 18.972988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.446752, 16.557467, 18.941854>,  <14.417260, 16.952990, 18.889967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.446752, 16.557467, 18.941854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625662, 0.055429, 0.778122,
		-0.776602, -0.138531, -0.614572,
		0.073729, -0.988806, 0.129720,
		14.468870, 16.260824, 18.980770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.741002, 16.708265, 19.046709>,  <14.417260, 16.952990, 18.889967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.741002, 16.708265, 19.046709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.999007, 16.435608, 19.184881>,  <14.153811, 16.272015, 19.267784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.999007, 16.435608, 19.184881>,  <13.741002, 16.708265, 19.046709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.999007, 16.435608, 19.184881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480746, -0.010588, 0.876796,
		-0.594004, -0.731609, -0.334526,
		0.645013, -0.681643, 0.345428,
		14.192512, 16.231115, 19.288509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.325300, 16.135250, 19.141998>,  <13.741002, 16.708265, 19.046709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.325300, 16.135250, 19.141998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.651726, 16.120058, 19.372684>,  <13.847581, 16.110943, 19.511095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.651726, 16.120058, 19.372684>,  <13.325300, 16.135250, 19.141998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.651726, 16.120058, 19.372684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571851, -0.197788, 0.796157,
		0.083832, -0.979509, -0.183125,
		0.816063, -0.037977, 0.576714,
		13.896544, 16.108664, 19.545698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.212598, 15.500554, 19.540821>,  <13.325300, 16.135250, 19.141998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.212598, 15.500554, 19.540821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.473522, 15.746597, 19.717968>,  <13.630077, 15.894223, 19.824257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.473522, 15.746597, 19.717968>,  <13.212598, 15.500554, 19.540821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.473522, 15.746597, 19.717968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499562, -0.090517, 0.861536,
		0.570025, -0.783230, 0.248239,
		0.652311, 0.615108, 0.442869,
		13.669215, 15.931129, 19.850828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.358872, 15.171554, 20.206430>,  <13.212598, 15.500554, 19.540821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.358872, 15.171554, 20.206430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.466019, 15.555826, 20.235655>,  <13.530307, 15.786390, 20.253189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.466019, 15.555826, 20.235655>,  <13.358872, 15.171554, 20.206430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.466019, 15.555826, 20.235655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501326, 0.074222, 0.862069,
		0.822752, -0.267547, 0.501497,
		0.267866, 0.960682, 0.073062,
		13.546378, 15.844030, 20.257574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.435926, 14.559781, 20.673998>,  <13.358872, 15.171554, 20.206430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.435926, 14.559781, 20.673998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.072376, 14.412134, 20.596334>,  <12.854246, 14.323546, 20.549736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.072376, 14.412134, 20.596334>,  <13.435926, 14.559781, 20.673998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.072376, 14.412134, 20.596334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328056, -0.345243, -0.879310,
		0.257537, -0.862879, 0.434874,
		-0.908875, -0.369117, -0.194160,
		12.799714, 14.301399, 20.538086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.531878, 13.908728, 20.495260>,  <13.435926, 14.559781, 20.673998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.531878, 13.908728, 20.495260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.160295, 13.962136, 20.357153>,  <12.937346, 13.994182, 20.274288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.160295, 13.962136, 20.357153>,  <13.531878, 13.908728, 20.495260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.160295, 13.962136, 20.357153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217494, -0.557875, -0.800919,
		-0.299556, -0.819114, 0.489203,
		-0.928958, 0.133522, -0.345267,
		12.881608, 14.002192, 20.253572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.331485, 13.254220, 20.185326>,  <13.531878, 13.908728, 20.495260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.331485, 13.254220, 20.185326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.070406, 13.518348, 20.036753>,  <12.913758, 13.676825, 19.947609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.070406, 13.518348, 20.036753>,  <13.331485, 13.254220, 20.185326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.070406, 13.518348, 20.036753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050734, -0.527260, -0.848188,
		-0.755918, -0.534766, 0.377643,
		-0.652698, 0.660320, -0.371435,
		12.874597, 13.716444, 19.925322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.563592, 12.903694, 20.047688>,  <13.331485, 13.254220, 20.185326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.563592, 12.903694, 20.047688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.589740, 13.215866, 19.798962>,  <12.605429, 13.403170, 19.649725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.589740, 13.215866, 19.798962>,  <12.563592, 12.903694, 20.047688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.589740, 13.215866, 19.798962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117781, -0.612759, -0.781444,
		-0.990886, 0.124321, 0.051863,
		0.065370, 0.780430, -0.621817,
		12.609351, 13.449995, 19.612417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.939144, 12.883355, 19.708403>,  <12.563592, 12.903694, 20.047688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.939144, 12.883355, 19.708403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.229244, 13.044044, 19.484749>,  <12.403304, 13.140458, 19.350557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.229244, 13.044044, 19.484749>,  <11.939144, 12.883355, 19.708403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.229244, 13.044044, 19.484749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141236, -0.708039, -0.691905,
		-0.673844, 0.580774, -0.456767,
		0.725250, 0.401724, -0.559134,
		12.446819, 13.164561, 19.317009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.841827, 12.606954, 19.093418>,  <11.939144, 12.883355, 19.708403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.841827, 12.606954, 19.093418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.185729, 12.795650, 19.015156>,  <12.392070, 12.908869, 18.968199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.185729, 12.795650, 19.015156>,  <11.841827, 12.606954, 19.093418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.185729, 12.795650, 19.015156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092634, -0.520798, -0.848639,
		-0.502236, 0.711496, -0.491458,
		0.859754, 0.471743, -0.195655,
		12.443655, 12.937174, 18.956459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.670499, 12.933739, 18.440659>,  <11.841827, 12.606954, 19.093418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.670499, 12.933739, 18.440659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.061757, 12.875340, 18.499876>,  <12.296512, 12.840302, 18.535406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.061757, 12.875340, 18.499876>,  <11.670499, 12.933739, 18.440659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.061757, 12.875340, 18.499876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025628, -0.621935, -0.782650,
		0.206339, 0.769339, -0.604601,
		0.978145, -0.145996, 0.148045,
		12.355201, 12.831542, 18.544291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.931375, 13.183766, 17.929142>,  <11.670499, 12.933739, 18.440659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.931375, 13.183766, 17.929142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.182196, 12.901970, 18.062105>,  <12.332688, 12.732892, 18.141884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.182196, 12.901970, 18.062105>,  <11.931375, 13.183766, 17.929142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.182196, 12.901970, 18.062105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038076, -0.398495, -0.916380,
		0.778045, 0.587276, -0.223053,
		0.627053, -0.704492, 0.332409,
		12.370312, 12.690622, 18.161827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.171527, 12.957558, 17.299692>,  <11.931375, 13.183766, 17.929142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.171527, 12.957558, 17.299692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.314538, 12.695070, 17.565489>,  <12.400345, 12.537578, 17.724966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.314538, 12.695070, 17.565489>,  <12.171527, 12.957558, 17.299692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.314538, 12.695070, 17.565489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236160, -0.624869, -0.744155,
		0.903550, 0.422983, -0.068436,
		0.357528, -0.656219, 0.664492,
		12.421797, 12.498204, 17.764837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.678227, 12.702291, 16.952177>,  <12.171527, 12.957558, 17.299692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.678227, 12.702291, 16.952177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.609200, 12.415741, 17.222591>,  <12.567782, 12.243812, 17.384840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.609200, 12.415741, 17.222591>,  <12.678227, 12.702291, 16.952177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.609200, 12.415741, 17.222591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068651, -0.675919, -0.733772,
		0.982602, -0.173038, 0.067464,
		-0.172570, -0.716374, 0.676038,
		12.557428, 12.200829, 17.425404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.114724, 12.133062, 16.824245>,  <12.678227, 12.702291, 16.952177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.114724, 12.133062, 16.824245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.786463, 12.013729, 17.019192>,  <12.589506, 11.942129, 17.136160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.786463, 12.013729, 17.019192>,  <13.114724, 12.133062, 16.824245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.786463, 12.013729, 17.019192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228333, -0.610638, -0.758278,
		0.523823, -0.733565, 0.433003,
		-0.820654, -0.298334, 0.487363,
		12.540266, 11.924229, 17.165401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.987720, 11.449783, 16.606928>,  <13.114724, 12.133062, 16.824245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.987720, 11.449783, 16.606928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.629163, 11.491835, 16.779175>,  <12.414029, 11.517065, 16.882523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.629163, 11.491835, 16.779175>,  <12.987720, 11.449783, 16.606928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.629163, 11.491835, 16.779175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397579, -0.620231, -0.676198,
		0.195995, -0.777343, 0.597766,
		-0.896391, 0.105127, 0.430617,
		12.360246, 11.523373, 16.908360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.625044, 10.798889, 16.815689>,  <12.987720, 11.449783, 16.606928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.625044, 10.798889, 16.815689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.357383, 11.074624, 16.704659>,  <12.196786, 11.240065, 16.638041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.357383, 11.074624, 16.704659>,  <12.625044, 10.798889, 16.815689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.357383, 11.074624, 16.704659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357396, -0.626016, -0.693088,
		-0.651544, -0.364572, 0.665265,
		-0.669148, 0.689341, -0.277580,
		12.156636, 11.281425, 16.621386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.254600, 10.385072, 17.123177>,  <12.625044, 10.798889, 16.815689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.254600, 10.385072, 17.123177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.291992, 10.557123, 17.482342>,  <13.314427, 10.660354, 17.697842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.291992, 10.557123, 17.482342>,  <13.254600, 10.385072, 17.123177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.291992, 10.557123, 17.482342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610693, 0.737054, -0.289492,
		-0.786330, -0.521288, 0.331578,
		0.093482, 0.430129, 0.897914,
		13.320037, 10.686162, 17.751717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.693452, 10.972699, 17.028837>,  <13.254600, 10.385072, 17.123177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.693452, 10.972699, 17.028837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.310592, 10.980564, 17.144407>,  <13.080875, 10.985283, 17.213749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.310592, 10.980564, 17.144407>,  <13.693452, 10.972699, 17.028837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.310592, 10.980564, 17.144407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216619, 0.710761, 0.669250,
		-0.192197, 0.703159, -0.684564,
		-0.957150, 0.019662, 0.288923,
		13.023447, 10.986463, 17.231085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.815287, 11.528248, 17.521162>,  <13.693452, 10.972699, 17.028837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.815287, 11.528248, 17.521162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433164, 11.416082, 17.558594>,  <13.203890, 11.348783, 17.581053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433164, 11.416082, 17.558594>,  <13.815287, 11.528248, 17.521162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.433164, 11.416082, 17.558594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085020, 0.563798, 0.821525,
		-0.283126, 0.776852, -0.562441,
		-0.955307, -0.280414, 0.093578,
		13.146571, 11.331959, 17.586668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.259650, 11.171244, 17.990234>,  <13.815287, 11.528248, 17.521162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.259650, 11.171244, 17.990234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.521524, 10.890443, 18.102362>,  <14.678649, 10.721962, 18.169638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.521524, 10.890443, 18.102362>,  <14.259650, 11.171244, 17.990234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.521524, 10.890443, 18.102362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093180, 0.293064, 0.951541,
		-0.750136, -0.649081, 0.126452,
		0.654686, -0.702003, 0.280320,
		14.717930, 10.679842, 18.186457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.068378, 10.873177, 18.632227>,  <14.259650, 11.171244, 17.990234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.068378, 10.873177, 18.632227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.463650, 10.820601, 18.600664>,  <14.700812, 10.789057, 18.581726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.463650, 10.820601, 18.600664>,  <14.068378, 10.873177, 18.632227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.463650, 10.820601, 18.600664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108594, 0.236835, 0.965462,
		-0.108210, -0.962618, 0.248309,
		0.988179, -0.131438, -0.078907,
		14.760103, 10.781170, 18.576992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.228178, 10.523960, 19.146242>,  <14.068378, 10.873177, 18.632227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.228178, 10.523960, 19.146242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.544995, 10.732010, 19.018406>,  <14.735085, 10.856840, 18.941704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.544995, 10.732010, 19.018406>,  <14.228178, 10.523960, 19.146242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.544995, 10.732010, 19.018406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100769, 0.404943, 0.908772,
		0.602091, -0.751992, 0.268320,
		0.792043, 0.520125, -0.319590,
		14.782608, 10.888047, 18.922529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.698641, 10.500055, 19.584139>,  <14.228178, 10.523960, 19.146242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.698641, 10.500055, 19.584139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.801426, 10.836710, 19.394140>,  <14.863097, 11.038703, 19.280142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.801426, 10.836710, 19.394140>,  <14.698641, 10.500055, 19.584139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.801426, 10.836710, 19.394140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101414, 0.465301, 0.879324,
		0.961086, -0.274124, 0.034211,
		0.256963, 0.841636, -0.474994,
		14.878514, 11.089201, 19.251642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.477178, 10.685570, 19.771240>,  <14.698641, 10.500055, 19.584139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.477178, 10.685570, 19.771240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.253746, 11.000113, 19.665689>,  <15.119687, 11.188839, 19.602360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.253746, 11.000113, 19.665689>,  <15.477178, 10.685570, 19.771240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.253746, 11.000113, 19.665689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280235, 0.478342, 0.832260,
		0.780678, 0.390935, -0.487557,
		-0.558578, 0.786358, -0.263877,
		15.086172, 11.236020, 19.586527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.593714, 11.214248, 20.260435>,  <15.477178, 10.685570, 19.771240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.593714, 11.214248, 20.260435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.312151, 11.431821, 20.077721>,  <15.143213, 11.562365, 19.968092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.312151, 11.431821, 20.077721>,  <15.593714, 11.214248, 20.260435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.312151, 11.431821, 20.077721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033884, 0.616647, 0.786511,
		0.709484, 0.569107, -0.415631,
		-0.703906, 0.543934, -0.456785,
		15.100979, 11.595001, 19.940685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.758206, 11.905689, 20.270590>,  <15.593714, 11.214248, 20.260435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.758206, 11.905689, 20.270590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.361793, 11.921117, 20.219419>,  <15.123944, 11.930373, 20.188717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.361793, 11.921117, 20.219419>,  <15.758206, 11.905689, 20.270590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.361793, 11.921117, 20.219419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088017, 0.531886, 0.842230,
		0.100525, 0.845937, -0.523722,
		-0.991034, 0.038569, -0.127924,
		15.064483, 11.932688, 20.181042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.604435, 12.429151, 20.689276>,  <15.758206, 11.905689, 20.270590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.604435, 12.429151, 20.689276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.244312, 12.265260, 20.630526>,  <15.028238, 12.166925, 20.595276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.244312, 12.265260, 20.630526>,  <15.604435, 12.429151, 20.689276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.244312, 12.265260, 20.630526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316261, 0.383963, 0.867497,
		-0.299043, 0.827464, -0.475265,
		-0.900307, -0.409726, -0.146873,
		14.974220, 12.142342, 20.586464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.078423, 13.048291, 20.790487>,  <15.604435, 12.429151, 20.689276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.078423, 13.048291, 20.790487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.890555, 12.700487, 20.851627>,  <14.777835, 12.491805, 20.888311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.890555, 12.700487, 20.851627>,  <15.078423, 13.048291, 20.790487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.890555, 12.700487, 20.851627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462053, 0.389628, 0.796679,
		-0.752275, 0.303550, -0.584756,
		-0.469669, -0.869510, 0.152851,
		14.749655, 12.439634, 20.897482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.355682, 13.198560, 20.851681>,  <15.078423, 13.048291, 20.790487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.355682, 13.198560, 20.851681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.447352, 12.865149, 21.052761>,  <14.502355, 12.665102, 21.173409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.447352, 12.865149, 21.052761>,  <14.355682, 13.198560, 20.851681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.447352, 12.865149, 21.052761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375529, 0.400753, 0.835688,
		-0.898030, -0.380297, -0.221172,
		0.229175, -0.833529, 0.502701,
		14.516105, 12.615089, 21.203571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.832142, 13.087019, 21.349789>,  <14.355682, 13.198560, 20.851681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.832142, 13.087019, 21.349789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.144914, 12.875105, 21.481190>,  <14.332577, 12.747956, 21.560030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.144914, 12.875105, 21.481190>,  <13.832142, 13.087019, 21.349789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.144914, 12.875105, 21.481190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300193, 0.141826, 0.943276,
		-0.546324, -0.836190, -0.048139,
		0.781930, -0.529785, 0.328501,
		14.379493, 12.716169, 21.579741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.530081, 12.722787, 21.836847>,  <13.832142, 13.087019, 21.349789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.530081, 12.722787, 21.836847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.917872, 12.688589, 21.928761>,  <14.150547, 12.668071, 21.983908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.917872, 12.688589, 21.928761>,  <13.530081, 12.722787, 21.836847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.917872, 12.688589, 21.928761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205596, 0.227095, 0.951923,
		-0.133567, -0.970113, 0.202586,
		0.969479, -0.085494, 0.229784,
		14.208716, 12.662941, 21.997696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.551927, 12.274698, 22.356791>,  <13.530081, 12.722787, 21.836847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.551927, 12.274698, 22.356791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.900095, 12.468415, 22.392181>,  <14.108995, 12.584645, 22.413416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.900095, 12.468415, 22.392181>,  <13.551927, 12.274698, 22.356791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.900095, 12.468415, 22.392181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111785, 0.019392, 0.993543,
		0.479450, -0.874691, 0.071016,
		0.870420, 0.484293, 0.088479,
		14.161222, 12.613703, 22.418726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.919935, 11.985800, 22.989851>,  <13.551927, 12.274698, 22.356791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.919935, 11.985800, 22.989851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.098293, 12.339394, 22.933643>,  <14.205308, 12.551550, 22.899918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.098293, 12.339394, 22.933643>,  <13.919935, 11.985800, 22.989851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.098293, 12.339394, 22.933643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087050, 0.199074, 0.976111,
		0.890842, -0.423012, 0.165717,
		0.445896, 0.883986, -0.140520,
		14.232062, 12.604589, 22.891487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.480677, 12.027963, 23.431137>,  <13.919935, 11.985800, 22.989851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.480677, 12.027963, 23.431137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.398941, 12.413741, 23.364096>,  <14.349899, 12.645208, 23.323872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.398941, 12.413741, 23.364096>,  <14.480677, 12.027963, 23.431137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.398941, 12.413741, 23.364096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015165, 0.168074, 0.985658,
		0.978783, 0.203950, -0.019718,
		-0.204339, 0.964446, -0.167601,
		14.337639, 12.703074, 23.313816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.929464, 12.424064, 23.790981>,  <14.480677, 12.027963, 23.431137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.929464, 12.424064, 23.790981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.636874, 12.685606, 23.713610>,  <14.461320, 12.842531, 23.667187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.636874, 12.685606, 23.713610>,  <14.929464, 12.424064, 23.790981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.636874, 12.685606, 23.713610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144607, 0.128468, 0.981114,
		0.666357, 0.745633, 0.000581,
		-0.731476, 0.653856, -0.193429,
		14.417431, 12.881763, 23.655581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.036961, 12.966072, 24.221552>,  <14.929464, 12.424064, 23.790981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.036961, 12.966072, 24.221552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.647879, 12.994202, 24.133101>,  <14.414430, 13.011079, 24.080030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.647879, 12.994202, 24.133101>,  <15.036961, 12.966072, 24.221552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.647879, 12.994202, 24.133101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228322, -0.120130, 0.966146,
		0.041379, 0.990264, 0.132907,
		-0.972706, 0.070323, -0.221129,
		14.356067, 13.015299, 24.066761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.700431, 13.563191, 24.639673>,  <15.036961, 12.966072, 24.221552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.700431, 13.563191, 24.639673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.408249, 13.311791, 24.532772>,  <14.232940, 13.160952, 24.468632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.408249, 13.311791, 24.532772>,  <14.700431, 13.563191, 24.639673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.408249, 13.311791, 24.532772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362776, 0.025521, 0.931527,
		-0.578645, 0.777390, -0.246647,
		-0.730454, -0.628501, -0.267251,
		14.189113, 13.123241, 24.452597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.044146, 13.823967, 24.901306>,  <14.700431, 13.563191, 24.639673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.044146, 13.823967, 24.901306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.967638, 13.439093, 24.823729>,  <13.921734, 13.208168, 24.777182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.967638, 13.439093, 24.823729>,  <14.044146, 13.823967, 24.901306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.967638, 13.439093, 24.823729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427358, -0.096242, 0.898945,
		-0.883618, 0.254823, -0.392790,
		-0.191269, -0.962186, -0.193942,
		13.910257, 13.150436, 24.765547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.278088, 13.751412, 25.078552>,  <14.044146, 13.823967, 24.901306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.278088, 13.751412, 25.078552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.434319, 13.383622, 25.060608>,  <13.528059, 13.162948, 25.049841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.434319, 13.383622, 25.060608>,  <13.278088, 13.751412, 25.078552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.434319, 13.383622, 25.060608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321498, -0.181907, 0.929273,
		-0.862605, -0.348532, -0.366658,
		0.390579, -0.919476, -0.044861,
		13.551494, 13.107780, 25.047150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.700584, 13.343917, 25.402769>,  <13.278088, 13.751412, 25.078552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.700584, 13.343917, 25.402769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.044256, 13.139477, 25.412449>,  <13.250460, 13.016812, 25.418257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.044256, 13.139477, 25.412449>,  <12.700584, 13.343917, 25.402769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.044256, 13.139477, 25.412449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189558, -0.274009, 0.942861,
		-0.475266, -0.814675, -0.332306,
		0.859180, -0.511101, 0.024201,
		13.302011, 12.986147, 25.419708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.578532, 12.636669, 25.731503>,  <12.700584, 13.343917, 25.402769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.578532, 12.636669, 25.731503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.968422, 12.709331, 25.783524>,  <13.202356, 12.752928, 25.814735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.968422, 12.709331, 25.783524>,  <12.578532, 12.636669, 25.731503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.968422, 12.709331, 25.783524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066571, -0.319512, 0.945241,
		0.213260, -0.930007, -0.299344,
		0.974725, 0.181654, 0.130051,
		13.260839, 12.763827, 25.822538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.777186, 12.137809, 26.104258>,  <12.578532, 12.636669, 25.731503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.777186, 12.137809, 26.104258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.071871, 12.402767, 26.158648>,  <13.248681, 12.561742, 26.191280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.071871, 12.402767, 26.158648>,  <12.777186, 12.137809, 26.104258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.071871, 12.402767, 26.158648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009417, -0.211114, 0.977416,
		0.676143, -0.718792, -0.161768,
		0.736710, 0.662396, 0.135974,
		13.292884, 12.601486, 26.199440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.182170, 11.902949, 26.606981>,  <12.777186, 12.137809, 26.104258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.182170, 11.902949, 26.606981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.256262, 12.295987, 26.612597>,  <13.300717, 12.531810, 26.615965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.256262, 12.295987, 26.612597>,  <13.182170, 11.902949, 26.606981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.256262, 12.295987, 26.612597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055167, -0.003864, 0.998470,
		0.981146, -0.185721, 0.053491,
		0.185230, 0.982595, 0.014037,
		13.311831, 12.590766, 26.616808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.808994, 12.028038, 27.047390>,  <13.182170, 11.902949, 26.606981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.808994, 12.028038, 27.047390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.603094, 12.370640, 27.032253>,  <13.479554, 12.576200, 27.023170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.603094, 12.370640, 27.032253>,  <13.808994, 12.028038, 27.047390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.603094, 12.370640, 27.032253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038685, 0.020890, 0.999033,
		0.856467, 0.515716, 0.022380,
		-0.514750, 0.856505, -0.037842,
		13.448669, 12.627591, 27.020901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.091986, 12.337797, 27.653486>,  <13.808994, 12.028038, 27.047390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.091986, 12.337797, 27.653486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.756211, 12.531653, 27.555122>,  <13.554747, 12.647967, 27.496105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.756211, 12.531653, 27.555122>,  <14.091986, 12.337797, 27.653486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.756211, 12.531653, 27.555122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183058, 0.173892, 0.967601,
		0.511701, 0.857254, -0.057254,
		-0.839436, 0.484641, -0.245908,
		13.504380, 12.677046, 27.481350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
