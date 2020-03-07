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
	<35.964794, 53.277020, 49.685448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930386, 53.361855, 50.074829>,  <35.909740, 53.412754, 50.308460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930386, 53.361855, 50.074829>,  <35.964794, 53.277020, 49.685448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930386, 53.361855, 50.074829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993481, -0.055098, 0.099797,
		0.074801, 0.975696, -0.205966,
		-0.086023, 0.212088, 0.973457,
		35.904579, 53.425480, 50.366867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688931, 53.022453, 49.350006>,  <35.964794, 53.277020, 49.685448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688931, 53.022453, 49.350006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986656, 53.099617, 49.094261>,  <37.165291, 53.145916, 48.940815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986656, 53.099617, 49.094261>,  <36.688931, 53.022453, 49.350006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986656, 53.099617, 49.094261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596428, -0.622724, 0.506447,
		-0.300445, -0.758288, -0.578561,
		0.744316, 0.192911, -0.639358,
		37.209949, 53.157490, 48.902454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025558, 52.432144, 49.025719>,  <36.688931, 53.022453, 49.350006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025558, 52.432144, 49.025719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288822, 52.729107, 49.075790>,  <37.446781, 52.907284, 49.105835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.288822, 52.729107, 49.075790>,  <37.025558, 52.432144, 49.025719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288822, 52.729107, 49.075790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643691, -0.641109, 0.417901,
		0.390504, -0.194467, -0.899827,
		0.658155, 0.742403, 0.125179,
		37.486267, 52.951828, 49.113342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648548, 52.194248, 48.764580>,  <37.025558, 52.432144, 49.025719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648548, 52.194248, 48.764580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666637, 52.469097, 49.054634>,  <37.677490, 52.634007, 49.228668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666637, 52.469097, 49.054634>,  <37.648548, 52.194248, 48.764580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666637, 52.469097, 49.054634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309188, -0.699864, 0.643889,
		0.949925, 0.195087, -0.244097,
		0.045220, 0.687118, 0.725137,
		37.680202, 52.675232, 49.272175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323372, 52.206245, 49.169556>,  <37.648548, 52.194248, 48.764580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323372, 52.206245, 49.169556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032356, 52.335808, 49.411476>,  <37.857746, 52.413544, 49.556629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032356, 52.335808, 49.411476>,  <38.323372, 52.206245, 49.169556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032356, 52.335808, 49.411476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425378, -0.478677, 0.768064,
		0.538280, 0.816061, 0.210473,
		-0.727536, 0.323903, 0.604797,
		37.814095, 52.432980, 49.592915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187508, 52.836143, 48.832691>,  <38.323372, 52.206245, 49.169556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187508, 52.836143, 48.832691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585751, 52.827320, 48.869087>,  <38.824696, 52.822025, 48.890926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585751, 52.827320, 48.869087>,  <38.187508, 52.836143, 48.832691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585751, 52.827320, 48.869087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074553, -0.401147, -0.912975,
		0.056640, 0.915748, -0.397741,
		0.995607, -0.022058, 0.090993,
		38.884434, 52.820702, 48.896385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624294, 53.251675, 48.354656>,  <38.187508, 52.836143, 48.832691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624294, 53.251675, 48.354656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794754, 52.903912, 48.454674>,  <38.897030, 52.695251, 48.514683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794754, 52.903912, 48.454674>,  <38.624294, 53.251675, 48.354656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794754, 52.903912, 48.454674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135193, -0.212087, -0.967854,
		0.894494, 0.446254, 0.027157,
		0.426149, -0.869411, 0.250041,
		38.922600, 52.643089, 48.529686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362003, 53.237919, 48.454979>,  <38.624294, 53.251675, 48.354656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362003, 53.237919, 48.454979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229107, 52.905388, 48.276764>,  <39.149368, 52.705868, 48.169834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229107, 52.905388, 48.276764>,  <39.362003, 53.237919, 48.454979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229107, 52.905388, 48.276764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937685, -0.342105, -0.060904,
		-0.101788, -0.438008, 0.893190,
		-0.332242, -0.831332, -0.445536,
		39.129433, 52.655987, 48.143105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566811, 52.721050, 48.831512>,  <39.362003, 53.237919, 48.454979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566811, 52.721050, 48.831512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538593, 52.637154, 48.441429>,  <39.521664, 52.586815, 48.207378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538593, 52.637154, 48.441429>,  <39.566811, 52.721050, 48.831512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538593, 52.637154, 48.441429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966261, -0.257150, -0.014588,
		-0.247716, -0.943335, 0.220807,
		-0.070542, -0.209744, -0.975208,
		39.517429, 52.574230, 48.148865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845459, 51.961674, 48.688553>,  <39.566811, 52.721050, 48.831512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845459, 51.961674, 48.688553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908051, 52.161861, 48.347954>,  <39.945606, 52.281975, 48.143597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908051, 52.161861, 48.347954>,  <39.845459, 51.961674, 48.688553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908051, 52.161861, 48.347954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887046, -0.450342, -0.101685,
		-0.434355, -0.739404, -0.514410,
		0.156474, 0.500473, -0.851494,
		39.954994, 52.312004, 48.092506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000183, 51.527275, 48.313591>,  <39.845459, 51.961674, 48.688553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000183, 51.527275, 48.313591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178219, 51.870903, 48.212479>,  <40.285042, 52.077080, 48.151814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178219, 51.870903, 48.212479>,  <40.000183, 51.527275, 48.313591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178219, 51.870903, 48.212479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852815, -0.492742, -0.172948,
		-0.273129, -0.138595, -0.951941,
		0.445092, 0.859067, -0.252778,
		40.311745, 52.128624, 48.136646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294239, 51.464012, 47.614738>,  <40.000183, 51.527275, 48.313591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294239, 51.464012, 47.614738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502480, 51.667912, 47.888710>,  <40.627422, 51.790253, 48.053093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502480, 51.667912, 47.888710>,  <40.294239, 51.464012, 47.614738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502480, 51.667912, 47.888710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805643, -0.558898, -0.196398,
		0.282693, 0.654055, -0.701639,
		0.520600, 0.509750, 0.684931,
		40.658661, 51.820835, 48.094189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979759, 51.627018, 47.292225>,  <40.294239, 51.464012, 47.614738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979759, 51.627018, 47.292225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985577, 51.587803, 47.690254>,  <40.989067, 51.564274, 47.929073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985577, 51.587803, 47.690254>,  <40.979759, 51.627018, 47.292225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985577, 51.587803, 47.690254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720674, -0.688828, -0.078395,
		0.693122, 0.718266, 0.060633,
		0.014543, -0.098034, 0.995077,
		40.989941, 51.558392, 47.988777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609173, 51.394348, 47.245617>,  <40.979759, 51.627018, 47.292225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609173, 51.394348, 47.245617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486496, 51.339592, 47.622383>,  <41.412891, 51.306740, 47.848442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486496, 51.339592, 47.622383>,  <41.609173, 51.394348, 47.245617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486496, 51.339592, 47.622383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559112, -0.826778, 0.061897,
		0.770281, 0.545619, 0.330102,
		-0.306693, -0.136886, 0.941914,
		41.394489, 51.298527, 47.904957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218048, 51.335892, 47.631779>,  <41.609173, 51.394348, 47.245617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218048, 51.335892, 47.631779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909184, 51.120903, 47.767357>,  <41.723866, 50.991909, 47.848705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909184, 51.120903, 47.767357>,  <42.218048, 51.335892, 47.631779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909184, 51.120903, 47.767357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580082, -0.813977, 0.030768,
		0.259357, 0.220374, 0.940303,
		-0.772165, -0.537473, 0.338946,
		41.677532, 50.959660, 47.869041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853626, 50.919056, 47.754345>,  <42.218048, 51.335892, 47.631779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853626, 50.919056, 47.754345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211399, 50.751301, 47.816444>,  <43.426064, 50.650646, 47.853703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211399, 50.751301, 47.816444>,  <42.853626, 50.919056, 47.754345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211399, 50.751301, 47.816444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402175, 0.906163, 0.130860,
		-0.195559, -0.054609, 0.979170,
		0.894434, -0.419389, 0.155246,
		43.479729, 50.625484, 47.863018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163406, 51.126957, 48.433014>,  <42.853626, 50.919056, 47.754345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163406, 51.126957, 48.433014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442776, 51.043766, 48.159092>,  <43.610397, 50.993851, 47.994740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442776, 51.043766, 48.159092>,  <43.163406, 51.126957, 48.433014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442776, 51.043766, 48.159092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466151, 0.858240, 0.214774,
		0.543060, -0.469224, 0.696359,
		0.698420, -0.207973, -0.684805,
		43.652302, 50.981373, 47.953651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833439, 50.696461, 48.657310>,  <43.163406, 51.126957, 48.433014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833439, 50.696461, 48.657310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890553, 50.986496, 48.387833>,  <43.924820, 51.160515, 48.226147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890553, 50.986496, 48.387833>,  <43.833439, 50.696461, 48.657310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890553, 50.986496, 48.387833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170076, 0.652569, 0.738395,
		0.975031, -0.220013, -0.030141,
		0.142788, 0.725085, -0.673694,
		43.933388, 51.204021, 48.185726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.375648, 51.083313, 48.817520>,  <43.833439, 50.696461, 48.657310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.375648, 51.083313, 48.817520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.165146, 51.347435, 48.603210>,  <44.038845, 51.505909, 48.474625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.165146, 51.347435, 48.603210>,  <44.375648, 51.083313, 48.817520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.165146, 51.347435, 48.603210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292734, 0.732248, 0.614915,
		0.798350, 0.166763, -0.578643,
		-0.526255, 0.660306, -0.535773,
		44.007271, 51.545528, 48.442478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.970676, 51.522682, 48.775234>,  <44.375648, 51.083313, 48.817520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.970676, 51.522682, 48.775234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597435, 51.662216, 48.740288>,  <44.373489, 51.745934, 48.719322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597435, 51.662216, 48.740288>,  <44.970676, 51.522682, 48.775234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597435, 51.662216, 48.740288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170126, 0.642257, 0.747371,
		0.316815, 0.682513, -0.658638,
		-0.933105, 0.348830, -0.087363,
		44.317505, 51.766865, 48.714077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.880196, 52.298485, 48.660603>,  <44.970676, 51.522682, 48.775234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.880196, 52.298485, 48.660603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605694, 52.115227, 48.886578>,  <44.440994, 52.005272, 49.022163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605694, 52.115227, 48.886578>,  <44.880196, 52.298485, 48.660603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605694, 52.115227, 48.886578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216308, 0.613005, 0.759892,
		-0.694452, 0.643680, -0.321577,
		-0.686256, -0.458149, 0.564936,
		44.399818, 51.977783, 49.056057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560783, 52.117363, 48.462860>,  <44.880196, 52.298485, 48.660603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560783, 52.117363, 48.462860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778847, 52.240444, 48.150932>,  <45.909683, 52.314293, 47.963776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778847, 52.240444, 48.150932>,  <45.560783, 52.117363, 48.462860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.778847, 52.240444, 48.150932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727586, 0.288410, 0.622445,
		0.416436, -0.906718, -0.066651,
		0.545159, 0.307703, -0.779821,
		45.942394, 52.332756, 47.916985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.286739, 51.827610, 48.537739>,  <45.560783, 52.117363, 48.462860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.286739, 51.827610, 48.537739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.330971, 52.138615, 48.290108>,  <46.357510, 52.325218, 48.141529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.330971, 52.138615, 48.290108>,  <46.286739, 51.827610, 48.537739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.330971, 52.138615, 48.290108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808357, 0.292029, 0.511155,
		0.578215, -0.556956, -0.596212,
		0.110580, 0.777509, -0.619074,
		46.364143, 52.371868, 48.104385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.981773, 51.906799, 48.560398>,  <46.286739, 51.827610, 48.537739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.981773, 51.906799, 48.560398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.809296, 52.240143, 48.422073>,  <46.705811, 52.440147, 48.339077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.809296, 52.240143, 48.422073>,  <46.981773, 51.906799, 48.560398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.809296, 52.240143, 48.422073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766802, 0.540456, 0.346296,
		0.475486, -0.115851, -0.872061,
		-0.431193, 0.833358, -0.345814,
		46.679939, 52.490150, 48.318329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.430134, 52.386967, 48.090977>,  <46.981773, 51.906799, 48.560398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.430134, 52.386967, 48.090977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.152523, 52.580837, 48.303925>,  <46.985958, 52.697159, 48.431694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.152523, 52.580837, 48.303925>,  <47.430134, 52.386967, 48.090977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.152523, 52.580837, 48.303925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692918, 0.650400, 0.311197,
		-0.195424, 0.584867, -0.787235,
		-0.694027, 0.484675, 0.532369,
		46.944313, 52.726238, 48.463634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.518692, 53.090561, 47.968517>,  <47.430134, 52.386967, 48.090977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.518692, 53.090561, 47.968517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.397556, 52.989532, 48.336102>,  <47.324875, 52.928917, 48.556652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.397556, 52.989532, 48.336102>,  <47.518692, 53.090561, 47.968517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.397556, 52.989532, 48.336102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794378, 0.465841, 0.389814,
		-0.526548, 0.848056, 0.059564,
		-0.302837, -0.252572, 0.918965,
		47.306705, 52.913761, 48.611790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.490307, 53.678074, 48.401199>,  <47.518692, 53.090561, 47.968517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.490307, 53.678074, 48.401199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636433, 53.375061, 48.617603>,  <47.724110, 53.193253, 48.747444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636433, 53.375061, 48.617603>,  <47.490307, 53.678074, 48.401199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.636433, 53.375061, 48.617603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747599, 0.585036, 0.314369,
		-0.554655, 0.289614, 0.780052,
		0.365313, -0.757533, 0.541008,
		47.746025, 53.147800, 48.779907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.533405, 53.843849, 49.135490>,  <47.490307, 53.678074, 48.401199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.533405, 53.843849, 49.135490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.800213, 53.565857, 49.028091>,  <47.960297, 53.399063, 48.963650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.800213, 53.565857, 49.028091>,  <47.533405, 53.843849, 49.135490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.800213, 53.565857, 49.028091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743700, 0.642687, 0.184019,
		0.044672, -0.322427, 0.945539,
		0.667019, -0.694977, -0.268500,
		48.000320, 53.357365, 48.947540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.108231, 53.551632, 49.667908>,  <47.533405, 53.843849, 49.135490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.108231, 53.551632, 49.667908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.269436, 53.507645, 49.304482>,  <48.366158, 53.481251, 49.086426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.269436, 53.507645, 49.304482>,  <48.108231, 53.551632, 49.667908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.269436, 53.507645, 49.304482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776581, 0.566387, 0.275913,
		0.484258, -0.816770, 0.313657,
		0.403009, -0.109967, -0.908565,
		48.390339, 53.474655, 49.031914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.800728, 53.245049, 49.734753>,  <48.108231, 53.551632, 49.667908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.800728, 53.245049, 49.734753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.717907, 53.514511, 49.450974>,  <48.668213, 53.676189, 49.280704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.717907, 53.514511, 49.450974>,  <48.800728, 53.245049, 49.734753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.717907, 53.514511, 49.450974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835678, 0.498842, 0.229781,
		0.508696, -0.545292, -0.666247,
		-0.207054, 0.673656, -0.709448,
		48.655792, 53.716606, 49.238140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.480846, 53.409027, 49.415005>,  <48.800728, 53.245049, 49.734753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.480846, 53.409027, 49.415005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.265629, 53.724445, 49.295868>,  <49.136497, 53.913696, 49.224384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.265629, 53.724445, 49.295868>,  <49.480846, 53.409027, 49.415005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.265629, 53.724445, 49.295868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834898, 0.547172, -0.059569,
		0.115999, -0.280721, -0.952754,
		-0.538042, 0.788542, -0.297845,
		49.104218, 53.961006, 49.206516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.842651, 53.629189, 48.832077>,  <49.480846, 53.409027, 49.415005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.842651, 53.629189, 48.832077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.649471, 53.932827, 49.006680>,  <49.533562, 54.115009, 49.111443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.649471, 53.932827, 49.006680>,  <49.842651, 53.629189, 48.832077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.649471, 53.932827, 49.006680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826837, 0.559437, -0.058061,
		-0.288273, 0.332881, -0.897824,
		-0.482949, 0.759092, 0.436509,
		49.504585, 54.160553, 49.137630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.985992, 53.980011, 49.486908>,  <49.842651, 53.629189, 48.832077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.985992, 53.980011, 49.486908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.249405, 54.174847, 49.257446>,  <50.407452, 54.291748, 49.119770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.249405, 54.174847, 49.257446>,  <49.985992, 53.980011, 49.486908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.249405, 54.174847, 49.257446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594155, 0.131312, 0.793560,
		0.461862, -0.863424, -0.202933,
		0.658531, 0.487089, -0.573656,
		50.446964, 54.320972, 49.085350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.710720, 53.653103, 49.438282>,  <49.985992, 53.980011, 49.486908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.710720, 53.653103, 49.438282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.702877, 54.052608, 49.419987>,  <50.698174, 54.292313, 49.409008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.702877, 54.052608, 49.419987>,  <50.710720, 53.653103, 49.438282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.702877, 54.052608, 49.419987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589876, 0.048495, 0.806036,
		0.807256, -0.011179, -0.590096,
		-0.019606, 0.998761, -0.045742,
		50.696995, 54.352238, 49.406265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.374409, 53.825329, 49.556503>,  <50.710720, 53.653103, 49.438282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.374409, 53.825329, 49.556503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.153439, 54.147774, 49.641376>,  <51.020859, 54.341240, 49.692299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.153439, 54.147774, 49.641376>,  <51.374409, 53.825329, 49.556503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.153439, 54.147774, 49.641376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666223, 0.273995, 0.693595,
		0.500977, 0.524515, -0.688408,
		-0.552421, 0.806108, 0.212179,
		50.987713, 54.389606, 49.705029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.573547, 54.554092, 49.289879>,  <51.374409, 53.825329, 49.556503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.573547, 54.554092, 49.289879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.418438, 54.546009, 49.658493>,  <51.325371, 54.541161, 49.879662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.418438, 54.546009, 49.658493>,  <51.573547, 54.554092, 49.289879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.418438, 54.546009, 49.658493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865100, 0.337114, 0.371424,
		-0.318167, 0.941247, -0.113244,
		-0.387778, -0.020208, 0.921531,
		51.302105, 54.539948, 49.934952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.853619, 55.178795, 49.622414>,  <51.573547, 54.554092, 49.289879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.853619, 55.178795, 49.622414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.796528, 54.873032, 49.873909>,  <51.762276, 54.689575, 50.024807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.796528, 54.873032, 49.873909>,  <51.853619, 55.178795, 49.622414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.796528, 54.873032, 49.873909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889960, 0.178876, 0.419494,
		-0.433130, 0.619426, 0.654759,
		-0.142725, -0.764405, 0.628741,
		51.753712, 54.643711, 50.062531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.087986, 55.877331, 50.019825>,  <51.853619, 55.178795, 49.622414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.087986, 55.877331, 50.019825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.282024, 55.528324, 49.996529>,  <52.398449, 55.318920, 49.982552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.282024, 55.528324, 49.996529>,  <52.087986, 55.877331, 50.019825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.282024, 55.528324, 49.996529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547890, 0.355170, -0.757411,
		0.681538, 0.335512, 0.650336,
		0.485101, -0.872517, -0.058238,
		52.427555, 55.266567, 49.979057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.896790, 55.906933, 50.034969>,  <52.087986, 55.877331, 50.019825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.896790, 55.906933, 50.034969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.754627, 55.604660, 49.814922>,  <52.669331, 55.423298, 49.682896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.754627, 55.604660, 49.814922>,  <52.896790, 55.906933, 50.034969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.754627, 55.604660, 49.814922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486512, 0.352980, -0.799194,
		0.798118, -0.551678, 0.242197,
		-0.355407, -0.755683, -0.550117,
		52.648006, 55.377956, 49.649887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.447979, 55.605488, 49.691967>,  <52.896790, 55.906933, 50.034969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.447979, 55.605488, 49.691967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.102631, 55.558979, 49.495567>,  <52.895424, 55.531075, 49.377728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.102631, 55.558979, 49.495567>,  <53.447979, 55.605488, 49.691967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.102631, 55.558979, 49.495567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441100, 0.298572, -0.846337,
		0.245004, -0.947278, -0.206489,
		-0.863368, -0.116274, -0.490995,
		52.843620, 55.524097, 49.348270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.595261, 55.267406, 49.017715>,  <53.447979, 55.605488, 49.691967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.595261, 55.267406, 49.017715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.259338, 55.482048, 48.984764>,  <53.057785, 55.610832, 48.964993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.259338, 55.482048, 48.984764>,  <53.595261, 55.267406, 49.017715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.259338, 55.482048, 48.984764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359812, 0.436535, -0.824604,
		-0.406522, -0.722149, -0.559680,
		-0.839807, 0.536599, -0.082377,
		53.007397, 55.643028, 48.960052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.253883, 55.061768, 48.757244>,  <53.595261, 55.267406, 49.017715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.253883, 55.061768, 48.757244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.558380, 54.947182, 48.989952>,  <54.741077, 54.878429, 49.129578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.558380, 54.947182, 48.989952>,  <54.253883, 55.061768, 48.757244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.558380, 54.947182, 48.989952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647569, 0.288518, -0.705274,
		0.034185, 0.913617, 0.405136,
		0.761239, -0.286463, 0.581767,
		54.786751, 54.861244, 49.164482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.629192, 55.626446, 48.866375>,  <54.253883, 55.061768, 48.757244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.629192, 55.626446, 48.866375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.863701, 55.302406, 48.868557>,  <55.004406, 55.107983, 48.869865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.863701, 55.302406, 48.868557>,  <54.629192, 55.626446, 48.866375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.863701, 55.302406, 48.868557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473761, 0.337385, -0.813463,
		0.657142, 0.479496, 0.581592,
		0.586272, -0.810096, 0.005457,
		55.039581, 55.059376, 48.870193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.482098, 55.702980, 48.969418>,  <54.629192, 55.626446, 48.866375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.482098, 55.702980, 48.969418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.290474, 55.450077, 48.725861>,  <55.175499, 55.298336, 48.579727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.290474, 55.450077, 48.725861>,  <55.482098, 55.702980, 48.969418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.290474, 55.450077, 48.725861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396537, 0.462972, -0.792726,
		0.783111, -0.621209, 0.028924,
		-0.479058, -0.632262, -0.608891,
		55.146755, 55.260399, 48.543194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.037315, 55.600010, 48.398293>,  <55.482098, 55.702980, 48.969418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.037315, 55.600010, 48.398293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.210724, 55.423866, 48.083805>,  <56.314770, 55.318180, 47.895111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.210724, 55.423866, 48.083805>,  <56.037315, 55.600010, 48.398293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.210724, 55.423866, 48.083805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846187, 0.498953, 0.187118,
		0.309887, -0.746409, 0.588934,
		0.433517, -0.440363, -0.786221,
		56.340778, 55.291756, 47.847939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.589077, 55.288891, 48.681072>,  <56.037315, 55.600010, 48.398293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.589077, 55.288891, 48.681072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.633987, 55.398300, 48.298958>,  <56.660934, 55.463947, 48.069687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.633987, 55.398300, 48.298958>,  <56.589077, 55.288891, 48.681072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.633987, 55.398300, 48.298958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964177, 0.202519, 0.171312,
		0.240322, -0.940302, -0.240990,
		0.112280, 0.273528, -0.955288,
		56.667671, 55.480358, 48.012371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.022163, 54.755383, 48.334702>,  <56.589077, 55.288891, 48.681072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.022163, 54.755383, 48.334702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.050156, 55.132801, 48.205193>,  <57.066952, 55.359253, 48.127487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.050156, 55.132801, 48.205193>,  <57.022163, 54.755383, 48.334702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.050156, 55.132801, 48.205193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985745, -0.015633, 0.167516,
		0.152997, -0.330879, -0.931188,
		0.069985, 0.943543, -0.323771,
		57.071152, 55.415863, 48.108063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.570038, 54.833385, 47.827641>,  <57.022163, 54.755383, 48.334702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.570038, 54.833385, 47.827641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.510361, 55.188438, 48.001930>,  <57.474552, 55.401470, 48.106503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.510361, 55.188438, 48.001930>,  <57.570038, 54.833385, 47.827641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.510361, 55.188438, 48.001930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958137, 0.020878, 0.285547,
		0.244363, 0.460082, -0.853587,
		-0.149197, 0.887631, 0.435720,
		57.465603, 55.454727, 48.132645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.044037, 55.352570, 47.488510>,  <57.570038, 54.833385, 47.827641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.044037, 55.352570, 47.488510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.950294, 55.380604, 47.876358>,  <57.894051, 55.397423, 48.109066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.950294, 55.380604, 47.876358>,  <58.044037, 55.352570, 47.488510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.950294, 55.380604, 47.876358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934323, -0.259287, 0.244564,
		0.268550, 0.963254, -0.004717,
		-0.234355, 0.070085, 0.969622,
		57.879990, 55.401630, 48.167244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.628475, 55.579769, 47.739502>,  <58.044037, 55.352570, 47.488510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.628475, 55.579769, 47.739502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.447937, 55.429470, 48.063255>,  <58.339615, 55.339291, 48.257507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.447937, 55.429470, 48.063255>,  <58.628475, 55.579769, 47.739502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.447937, 55.429470, 48.063255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870053, -0.386802, 0.305602,
		0.198240, 0.842137, 0.501504,
		-0.451342, -0.375752, 0.809383,
		58.312534, 55.316746, 48.306068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.105930, 55.775845, 48.265068>,  <58.628475, 55.579769, 47.739502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.105930, 55.775845, 48.265068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.895523, 55.459213, 48.389465>,  <58.769279, 55.269234, 48.464104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.895523, 55.459213, 48.389465>,  <59.105930, 55.775845, 48.265068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.895523, 55.459213, 48.389465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829268, -0.396226, 0.394106,
		-0.188741, 0.465203, 0.864848,
		-0.526015, -0.791575, 0.310994,
		58.737717, 55.221741, 48.482765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.155678, 55.738518, 48.988811>,  <59.105930, 55.775845, 48.265068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.155678, 55.738518, 48.988811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.116615, 55.395233, 48.787243>,  <59.093178, 55.189262, 48.666302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.116615, 55.395233, 48.787243>,  <59.155678, 55.738518, 48.988811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.116615, 55.395233, 48.787243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980777, -0.168939, 0.097653,
		-0.168939, -0.484701, 0.858210,
		-0.097653, -0.858210, -0.503924,
		59.087318, 55.137772, 48.636066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.316154, 55.060429, 49.334782>,  <59.155678, 55.738518, 48.988811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.316154, 55.060429, 49.334782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.418869, 55.041893, 48.948639>,  <59.480499, 55.030769, 48.716953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.418869, 55.041893, 48.948639>,  <59.316154, 55.060429, 49.334782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.418869, 55.041893, 48.948639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936042, -0.236733, 0.260351,
		-0.240598, -0.970469, -0.017408,
		0.256784, -0.046345, -0.965357,
		59.495903, 55.027992, 48.659031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.595680, 54.420860, 49.035267>,  <59.316154, 55.060429, 49.334782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.595680, 54.420860, 49.035267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.753616, 54.756966, 48.886642>,  <59.848377, 54.958630, 48.797470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.753616, 54.756966, 48.886642>,  <59.595680, 54.420860, 49.035267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.753616, 54.756966, 48.886642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890898, -0.251351, 0.378315,
		0.224494, -0.480395, -0.847834,
		0.394845, 0.840264, -0.371556,
		59.872070, 55.009045, 48.775177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.201347, 54.280720, 48.441086>,  <59.595680, 54.420860, 49.035267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.201347, 54.280720, 48.441086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.260124, 54.583290, 48.696030>,  <60.295391, 54.764832, 48.848995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.260124, 54.583290, 48.696030>,  <60.201347, 54.280720, 48.441086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.260124, 54.583290, 48.696030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864384, -0.411457, 0.289038,
		0.480882, 0.508453, -0.714303,
		0.146943, 0.756425, 0.637361,
		60.304207, 54.810219, 48.887238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.837833, 54.631832, 48.402115>,  <60.201347, 54.280720, 48.441086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.837833, 54.631832, 48.402115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.724800, 54.622871, 48.785706>,  <60.656979, 54.617496, 49.015862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.724800, 54.622871, 48.785706>,  <60.837833, 54.631832, 48.402115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.724800, 54.622871, 48.785706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775049, -0.594380, 0.214502,
		0.565194, 0.803872, 0.185323,
		-0.282585, -0.022399, 0.958981,
		60.640026, 54.616150, 49.073399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.458996, 55.005016, 48.830040>,  <60.837833, 54.631832, 48.402115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.458996, 55.005016, 48.830040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.494675, 54.962227, 49.226143>,  <61.516083, 54.936554, 49.463802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.494675, 54.962227, 49.226143>,  <61.458996, 55.005016, 48.830040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.494675, 54.962227, 49.226143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559650, -0.827810, -0.039014,
		0.823915, -0.550715, -0.133704,
		0.089197, -0.106972, 0.990253,
		61.521435, 54.930134, 49.523220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.676064, 54.271778, 49.051533>,  <61.458996, 55.005016, 48.830040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.676064, 54.271778, 49.051533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.412041, 54.438171, 49.301743>,  <61.253628, 54.538006, 49.451870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.412041, 54.438171, 49.301743>,  <61.676064, 54.271778, 49.051533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.412041, 54.438171, 49.301743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500568, -0.864439, 0.046662,
		0.560142, -0.282320, 0.778805,
		-0.660056, 0.415982, 0.625529,
		61.214024, 54.562965, 49.489403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.705799, 53.926189, 49.800068>,  <61.676064, 54.271778, 49.051533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.705799, 53.926189, 49.800068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.359032, 54.100372, 49.703049>,  <61.150970, 54.204884, 49.644836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.359032, 54.100372, 49.703049>,  <61.705799, 53.926189, 49.800068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.359032, 54.100372, 49.703049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430077, -0.899448, -0.077632,
		-0.251969, 0.037015, 0.967027,
		-0.866917, 0.435457, -0.242553,
		61.098957, 54.231010, 49.630283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.228016, 54.296387, 50.022736>,  <61.705799, 53.926189, 49.800068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.228016, 54.296387, 50.022736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.444069, 53.971363, 50.110382>,  <62.573700, 53.776348, 50.162971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.444069, 53.971363, 50.110382>,  <62.228016, 54.296387, 50.022736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.444069, 53.971363, 50.110382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116823, 0.330232, 0.936642,
		-0.833433, -0.480311, 0.273294,
		0.540131, -0.812556, 0.219115,
		62.606110, 53.727596, 50.176117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.044132, 53.822777, 50.570930>,  <62.228016, 54.296387, 50.022736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.044132, 53.822777, 50.570930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.440529, 53.770473, 50.559311>,  <62.678368, 53.739094, 50.552341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.440529, 53.770473, 50.559311>,  <62.044132, 53.822777, 50.570930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.440529, 53.770473, 50.559311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080011, 0.403975, 0.911264,
		-0.107418, -0.905377, 0.410797,
		0.990989, -0.130755, -0.029046,
		62.737827, 53.731247, 50.550598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.424721, 53.512547, 51.152702>,  <62.044132, 53.822777, 50.570930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.424721, 53.512547, 51.152702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.679115, 53.781227, 51.000732>,  <62.831753, 53.942436, 50.909550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.679115, 53.781227, 51.000732>,  <62.424721, 53.512547, 51.152702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.679115, 53.781227, 51.000732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243925, 0.292099, 0.924759,
		0.732134, -0.680808, 0.021927,
		0.635988, 0.671698, -0.379921,
		62.869911, 53.982735, 50.886757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.147919, 53.524754, 51.535618>,  <62.424721, 53.512547, 51.152702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.147919, 53.524754, 51.535618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.079010, 53.892345, 51.393749>,  <63.037666, 54.112900, 51.308628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.079010, 53.892345, 51.393749>,  <63.147919, 53.524754, 51.535618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.079010, 53.892345, 51.393749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315553, 0.392565, 0.863898,
		0.933140, 0.036905, -0.357615,
		-0.172269, 0.918984, -0.354672,
		63.027328, 54.168041, 51.287346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.815834, 53.216187, 51.345253>,  <63.147919, 53.524754, 51.535618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.815834, 53.216187, 51.345253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.768112, 53.473892, 51.647430>,  <63.739479, 53.628517, 51.828735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.768112, 53.473892, 51.647430>,  <63.815834, 53.216187, 51.345253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.768112, 53.473892, 51.647430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895251, -0.259179, 0.362425,
		0.429292, 0.719547, -0.545857,
		-0.119307, 0.644265, 0.755439,
		63.732319, 53.667171, 51.874062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.351196, 53.724464, 51.365078>,  <63.815834, 53.216187, 51.345253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.351196, 53.724464, 51.365078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.222130, 53.617260, 51.728188>,  <64.144691, 53.552937, 51.946053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.222130, 53.617260, 51.728188>,  <64.351196, 53.724464, 51.365078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.222130, 53.617260, 51.728188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929164, 0.093072, 0.357759,
		-0.180373, 0.958908, 0.218998,
		-0.322676, -0.268015, 0.907771,
		64.125328, 53.536854, 52.000519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.416565, 54.304451, 51.923466>,  <64.351196, 53.724464, 51.365078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.416565, 54.304451, 51.923466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.453354, 53.914452, 52.004379>,  <64.475426, 53.680450, 52.052929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.453354, 53.914452, 52.004379>,  <64.416565, 54.304451, 51.923466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.453354, 53.914452, 52.004379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859138, 0.180408, 0.478890,
		-0.503410, 0.129744, 0.854251,
		0.091980, -0.974997, 0.202287,
		64.480949, 53.621952, 52.065063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.494545, 54.229950, 52.711956>,  <64.416565, 54.304451, 51.923466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.494545, 54.229950, 52.711956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.661972, 53.934654, 52.500374>,  <64.762428, 53.757477, 52.373425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.661972, 53.934654, 52.500374>,  <64.494545, 54.229950, 52.711956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.661972, 53.934654, 52.500374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818761, 0.054723, 0.571520,
		-0.392975, -0.672310, 0.627351,
		0.418570, -0.738244, -0.528957,
		64.787544, 53.713181, 52.341686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.729065, 53.728481, 53.203609>,  <64.494545, 54.229950, 52.711956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.729065, 53.728481, 53.203609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.950417, 53.664566, 52.876625>,  <65.083229, 53.626217, 52.680435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.950417, 53.664566, 52.876625>,  <64.729065, 53.728481, 53.203609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.950417, 53.664566, 52.876625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811030, -0.120226, 0.572518,
		-0.189761, -0.979803, 0.063061,
		0.553373, -0.159786, -0.817463,
		65.116432, 53.616631, 52.631386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.086334, 53.048809, 53.256020>,  <64.729065, 53.728481, 53.203609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.086334, 53.048809, 53.256020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.292747, 53.348324, 53.089630>,  <65.416595, 53.528030, 52.989796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.292747, 53.348324, 53.089630>,  <65.086334, 53.048809, 53.256020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.292747, 53.348324, 53.089630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737132, -0.140842, 0.660908,
		0.436290, -0.647678, -0.624631,
		0.516031, 0.748783, -0.415976,
		65.447556, 53.572960, 52.964836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.725677, 52.794243, 53.246033>,  <65.086334, 53.048809, 53.256020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.725677, 52.794243, 53.246033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.764801, 53.191696, 53.223686>,  <65.788277, 53.430168, 53.210278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.764801, 53.191696, 53.223686>,  <65.725677, 52.794243, 53.246033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.764801, 53.191696, 53.223686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777881, -0.041315, 0.627052,
		0.620753, -0.104793, -0.776971,
		0.097811, 0.993635, -0.055870,
		65.794144, 53.489788, 53.206924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.329659, 53.100941, 52.901722>,  <65.725677, 52.794243, 53.246033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.329659, 53.100941, 52.901722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.205025, 53.349934, 53.188896>,  <66.130241, 53.499329, 53.361202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.205025, 53.349934, 53.188896>,  <66.329659, 53.100941, 52.901722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.205025, 53.349934, 53.188896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836178, -0.179260, 0.518336,
		0.451351, 0.761830, -0.464648,
		-0.311591, 0.622480, 0.717935,
		66.111549, 53.536678, 53.404278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.870102, 53.500374, 53.087769>,  <66.329659, 53.100941, 52.901722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.870102, 53.500374, 53.087769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.617035, 53.513954, 53.397236>,  <66.465195, 53.522102, 53.582916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.617035, 53.513954, 53.397236>,  <66.870102, 53.500374, 53.087769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.617035, 53.513954, 53.397236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676689, -0.461576, 0.573620,
		0.376584, 0.886451, 0.269054,
		-0.632675, 0.033950, 0.773673,
		66.427231, 53.524139, 53.629337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.179352, 53.697025, 53.701790>,  <66.870102, 53.500374, 53.087769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.179352, 53.697025, 53.701790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.876572, 53.440060, 53.749653>,  <66.694901, 53.285881, 53.778370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.876572, 53.440060, 53.749653>,  <67.179352, 53.697025, 53.701790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.876572, 53.440060, 53.749653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637338, -0.685362, 0.352250,
		-0.144283, 0.342900, 0.928225,
		-0.756956, -0.642417, 0.119657,
		66.649483, 53.247334, 53.785549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.980324, 53.938648, 54.404427>,  <67.179352, 53.697025, 53.701790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.980324, 53.938648, 54.404427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.869019, 53.795815, 54.761093>,  <66.802238, 53.710114, 54.975094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.869019, 53.795815, 54.761093>,  <66.980324, 53.938648, 54.404427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.869019, 53.795815, 54.761093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643000, 0.620373, 0.449097,
		-0.713529, 0.698304, 0.056982,
		-0.278257, -0.357084, 0.891664,
		66.785538, 53.688690, 55.028591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.541489, 54.414028, 54.951416>,  <66.980324, 53.938648, 54.404427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.541489, 54.414028, 54.951416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.809166, 54.159985, 55.105728>,  <66.969772, 54.007561, 55.198315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.809166, 54.159985, 55.105728>,  <66.541489, 54.414028, 54.951416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.809166, 54.159985, 55.105728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435323, 0.755802, 0.489139,
		-0.602228, -0.159388, 0.782252,
		0.669190, -0.635105, 0.385780,
		67.009926, 53.969452, 55.221462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.576073, 54.544910, 55.694565>,  <66.541489, 54.414028, 54.951416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.576073, 54.544910, 55.694565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.922318, 54.394890, 55.561867>,  <67.130066, 54.304878, 55.482250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.922318, 54.394890, 55.561867>,  <66.576073, 54.544910, 55.694565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.922318, 54.394890, 55.561867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493552, 0.750784, 0.439010,
		0.084412, -0.543742, 0.834996,
		0.865610, -0.375056, -0.331740,
		67.181999, 54.282372, 55.462345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.053627, 54.410679, 56.166401>,  <66.576073, 54.544910, 55.694565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.053627, 54.410679, 56.166401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.221939, 54.508095, 55.816856>,  <67.322929, 54.566544, 55.607128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.221939, 54.508095, 55.816856>,  <67.053627, 54.410679, 56.166401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.221939, 54.508095, 55.816856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365727, 0.835997, 0.409088,
		0.830175, -0.491730, 0.262699,
		0.420776, 0.243538, -0.873863,
		67.348175, 54.581154, 55.554699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.781349, 54.484894, 56.308369>,  <67.053627, 54.410679, 56.166401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.781349, 54.484894, 56.308369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.655479, 54.736309, 56.023857>,  <67.579956, 54.887157, 55.853149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.655479, 54.736309, 56.023857>,  <67.781349, 54.484894, 56.308369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.655479, 54.736309, 56.023857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403826, 0.766800, 0.498942,
		0.859015, -0.130232, -0.495109,
		-0.314671, 0.628537, -0.711283,
		67.561081, 54.924870, 55.810471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.361008, 54.834854, 56.031075>,  <67.781349, 54.484894, 56.308369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.361008, 54.834854, 56.031075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.029282, 55.056175, 55.999825>,  <67.830246, 55.188969, 55.981075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.029282, 55.056175, 55.999825>,  <68.361008, 54.834854, 56.031075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.029282, 55.056175, 55.999825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391751, 0.675395, 0.624798,
		0.398467, 0.487545, -0.776868,
		-0.829310, 0.553301, -0.078126,
		67.780487, 55.222164, 55.976387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.456436, 54.362251, 56.659946>,  <68.361008, 54.834854, 56.031075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.456436, 54.362251, 56.659946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.818016, 54.191242, 56.664268>,  <69.034966, 54.088638, 56.666862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.818016, 54.191242, 56.664268>,  <68.456436, 54.362251, 56.659946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.818016, 54.191242, 56.664268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238517, 0.524957, 0.817025,
		-0.354967, -0.735965, 0.576501,
		0.903940, -0.427522, 0.010802,
		69.089195, 54.062984, 56.667507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.574219, 54.017773, 57.277073>,  <68.456436, 54.362251, 56.659946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.574219, 54.017773, 57.277073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.928581, 54.123310, 57.124474>,  <69.141197, 54.186634, 57.032913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.928581, 54.123310, 57.124474>,  <68.574219, 54.017773, 57.277073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.928581, 54.123310, 57.124474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152251, 0.611500, 0.776458,
		0.438150, -0.745959, 0.501566,
		0.885914, 0.263841, -0.381502,
		69.194359, 54.202461, 57.010021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.166634, 53.886234, 57.781723>,  <68.574219, 54.017773, 57.277073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.166634, 53.886234, 57.781723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.194336, 54.186211, 57.518578>,  <69.210960, 54.366196, 57.360691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.194336, 54.186211, 57.518578>,  <69.166634, 53.886234, 57.781723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.194336, 54.186211, 57.518578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236050, 0.653043, 0.719594,
		0.969270, 0.105453, 0.222251,
		0.069256, 0.749943, -0.657867,
		69.215111, 54.411194, 57.321217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.540794, 54.333073, 58.092922>,  <69.166634, 53.886234, 57.781723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.540794, 54.333073, 58.092922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.338875, 54.600864, 57.874939>,  <69.217720, 54.761539, 57.744148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.338875, 54.600864, 57.874939>,  <69.540794, 54.333073, 58.092922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.338875, 54.600864, 57.874939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136649, 0.561359, 0.816213,
		0.852354, 0.486488, -0.191888,
		-0.504796, 0.669481, -0.544955,
		69.187439, 54.801708, 57.711452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.791389, 54.872726, 58.369213>,  <69.540794, 54.333073, 58.092922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.791389, 54.872726, 58.369213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.424728, 54.938419, 58.223450>,  <69.204735, 54.977837, 58.135994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.424728, 54.938419, 58.223450>,  <69.791389, 54.872726, 58.369213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.424728, 54.938419, 58.223450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159250, 0.686146, 0.709819,
		0.366611, 0.708683, -0.602798,
		-0.916644, 0.164232, -0.364406,
		69.149734, 54.987690, 58.114128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.070732, 55.280087, 58.901409>,  <69.791389, 54.872726, 58.369213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.070732, 55.280087, 58.901409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.199852, 55.517288, 59.196472>,  <70.277328, 55.659611, 59.373508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.199852, 55.517288, 59.196472>,  <70.070732, 55.280087, 58.901409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.199852, 55.517288, 59.196472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272523, -0.688139, 0.672455,
		0.906383, -0.418099, -0.060526,
		0.322803, 0.593007, 0.737659,
		70.296692, 55.695190, 59.417770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.002930, 54.964123, 59.558372>,  <70.070732, 55.280087, 58.901409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.002930, 54.964123, 59.558372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.210815, 55.249359, 59.746582>,  <70.335548, 55.420502, 59.859509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.210815, 55.249359, 59.746582>,  <70.002930, 54.964123, 59.558372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.210815, 55.249359, 59.746582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134753, -0.475432, 0.869371,
		0.843644, -0.515232, -0.150998,
		0.519717, 0.713092, 0.470525,
		70.366730, 55.463287, 59.887741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.569191, 54.688156, 59.970928>,  <70.002930, 54.964123, 59.558372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.569191, 54.688156, 59.970928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.457832, 55.033569, 60.139122>,  <70.391022, 55.240818, 60.240036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.457832, 55.033569, 60.139122>,  <70.569191, 54.688156, 59.970928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.457832, 55.033569, 60.139122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361345, -0.499787, 0.787174,
		0.889905, 0.067201, 0.451169,
		-0.278387, 0.863537, 0.420480,
		70.374313, 55.292629, 60.265266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.952614, 55.093517, 59.528954>,  <70.569191, 54.688156, 59.970928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.952614, 55.093517, 59.528954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.898834, 55.107998, 59.925056>,  <70.866570, 55.116688, 60.162720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.898834, 55.107998, 59.925056>,  <70.952614, 55.093517, 59.528954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.898834, 55.107998, 59.925056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940122, -0.320520, -0.115921,
		0.313202, -0.946550, 0.077123,
		-0.134445, 0.036198, 0.990259,
		70.858498, 55.118858, 60.222134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.629967, 55.389267, 59.849953>,  <70.952614, 55.093517, 59.528954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.629967, 55.389267, 59.849953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.480263, 55.091690, 60.071396>,  <71.390442, 54.913143, 60.204262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.480263, 55.091690, 60.071396>,  <71.629967, 55.389267, 59.849953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.480263, 55.091690, 60.071396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640052, -0.224760, -0.734722,
		0.671020, -0.629311, -0.392045,
		-0.374253, -0.743942, 0.553611,
		71.367989, 54.868507, 60.237480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.164413, 55.107063, 59.527317>,  <71.629967, 55.389267, 59.849953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.164413, 55.107063, 59.527317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.289787, 54.790886, 59.316811>,  <72.365013, 54.601177, 59.190506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.289787, 54.790886, 59.316811>,  <72.164413, 55.107063, 59.527317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.289787, 54.790886, 59.316811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806336, 0.514258, -0.292167,
		0.501578, -0.332769, 0.798552,
		0.313437, -0.790445, -0.526264,
		72.383820, 54.553753, 59.158932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.849365, 55.253075, 59.526981>,  <72.164413, 55.107063, 59.527317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.849365, 55.253075, 59.526981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.787163, 54.984261, 59.237381>,  <72.749840, 54.822971, 59.063622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.787163, 54.984261, 59.237381>,  <72.849365, 55.253075, 59.526981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.787163, 54.984261, 59.237381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780560, 0.365600, -0.507013,
		0.605428, -0.643975, 0.467711,
		-0.155508, -0.672037, -0.724005,
		72.740509, 54.782650, 59.020180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.266319, 54.937302, 60.198502>,  <72.849365, 55.253075, 59.526981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.266319, 54.937302, 60.198502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.605217, 54.853111, 60.003418>,  <73.808556, 54.802597, 59.886368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.605217, 54.853111, 60.003418>,  <73.266319, 54.937302, 60.198502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.605217, 54.853111, 60.003418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389278, 0.870732, 0.300480,
		0.361422, -0.444437, 0.819664,
		0.847253, -0.210477, -0.487711,
		73.859390, 54.789967, 59.857105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.975334, 55.174236, 60.421364>,  <73.266319, 54.937302, 60.198502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.975334, 55.174236, 60.421364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.016983, 55.156887, 60.023918>,  <74.041969, 55.146477, 59.785450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.016983, 55.156887, 60.023918>,  <73.975334, 55.174236, 60.421364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<74.016983, 55.156887, 60.023918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375580, 0.926789, -0.001097,
		0.920923, -0.373069, 0.112785,
		0.104119, -0.043370, -0.993619,
		74.048218, 55.143875, 59.725834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<74.716957, 55.169842, 60.170605>,  <73.975334, 55.174236, 60.421364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<74.716957, 55.169842, 60.170605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.379890, 55.340244, 60.038887>,  <74.177650, 55.442486, 59.959854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.379890, 55.340244, 60.038887>,  <74.716957, 55.169842, 60.170605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<74.379890, 55.340244, 60.038887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292481, 0.875637, 0.384335,
		0.452073, 0.227553, -0.862467,
		-0.842665, 0.426003, -0.329297,
		74.127090, 55.468044, 59.940098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<74.852310, 55.797634, 59.822010>,  <74.716957, 55.169842, 60.170605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<74.852310, 55.797634, 59.822010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.476662, 55.812286, 59.958664>,  <74.251274, 55.821079, 60.040657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.476662, 55.812286, 59.958664>,  <74.852310, 55.797634, 59.822010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<74.476662, 55.812286, 59.958664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162002, 0.924051, 0.346244,
		-0.303008, 0.380510, -0.873726,
		-0.939117, 0.036630, 0.341638,
		74.194923, 55.823277, 60.061157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<74.732277, 56.555573, 59.605877>,  <74.852310, 55.797634, 59.822010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<74.732277, 56.555573, 59.605877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.439575, 56.405609, 59.833557>,  <74.263954, 56.315632, 59.970165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.439575, 56.405609, 59.833557>,  <74.732277, 56.555573, 59.605877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<74.439575, 56.405609, 59.833557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231670, 0.922214, 0.309597,
		-0.640994, 0.094680, -0.761684,
		-0.731749, -0.374909, 0.569199,
		74.220047, 56.293137, 60.004318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<74.121552, 57.037540, 59.521896>,  <74.732277, 56.555573, 59.605877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<74.121552, 57.037540, 59.521896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.077652, 56.821228, 59.855484>,  <74.051308, 56.691441, 60.055637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.077652, 56.821228, 59.855484>,  <74.121552, 57.037540, 59.521896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<74.077652, 56.821228, 59.855484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227462, 0.830442, 0.508554,
		-0.967582, -0.133880, -0.214153,
		-0.109757, -0.540779, 0.833973,
		74.044724, 56.658993, 60.105675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.474915, 57.163891, 59.911564>,  <74.121552, 57.037540, 59.521896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.474915, 57.163891, 59.911564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.729660, 57.058586, 60.201416>,  <73.882507, 56.995403, 60.375328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.729660, 57.058586, 60.201416>,  <73.474915, 57.163891, 59.911564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.729660, 57.058586, 60.201416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256412, 0.814059, 0.521115,
		-0.727081, -0.517687, 0.450948,
		0.636873, -0.263264, 0.724628,
		73.920723, 56.979607, 60.418804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.388054, 57.764393, 60.337769>,  <73.474915, 57.163891, 59.911564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.388054, 57.764393, 60.337769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.644798, 57.583858, 60.585739>,  <73.798843, 57.475540, 60.734524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.644798, 57.583858, 60.585739>,  <73.388054, 57.764393, 60.337769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.644798, 57.583858, 60.585739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099431, 0.752631, 0.650892,
		-0.760346, -0.479423, 0.438209,
		0.641862, -0.451332, 0.619930,
		73.837357, 57.448460, 60.771717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.994011, 57.651966, 60.949875>,  <73.388054, 57.764393, 60.337769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.994011, 57.651966, 60.949875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.389397, 57.687618, 60.998856>,  <73.626625, 57.709007, 61.028244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.389397, 57.687618, 60.998856>,  <72.994011, 57.651966, 60.949875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.389397, 57.687618, 60.998856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144125, 0.801987, 0.579694,
		-0.046538, -0.590655, 0.805582,
		0.988465, 0.089127, 0.122451,
		73.685936, 57.714355, 61.035591>
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
