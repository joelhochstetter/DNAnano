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
	<1.688435, 0.967133, 1.606797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.857750, 1.254648, 1.386189>,  <1.959339, 1.427157, 1.253824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.857750, 1.254648, 1.386189>,  <1.688435, 0.967133, 1.606797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.857750, 1.254648, 1.386189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546254, 0.688129, 0.477582,
		0.722799, 0.099119, 0.683914,
		0.423283, 0.718787, -0.551523,
		1.984736, 1.470284, 1.220733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.039353, 1.446720, 2.010561>,  <1.688435, 0.967133, 1.606797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.039353, 1.446720, 2.010561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.914055, 1.664724, 1.699474>,  <1.838876, 1.795526, 1.512823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.914055, 1.664724, 1.699474>,  <2.039353, 1.446720, 2.010561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.914055, 1.664724, 1.699474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472801, 0.620725, 0.625427,
		0.823612, 0.563617, 0.063241,
		-0.313246, 0.545010, -0.777715,
		1.820081, 1.828227, 1.466160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.020286, 2.240179, 2.046689>,  <2.039353, 1.446720, 2.010561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.020286, 2.240179, 2.046689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.705612, 2.181473, 1.806826>,  <1.516808, 2.146250, 1.662908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.705612, 2.181473, 1.806826>,  <2.020286, 2.240179, 2.046689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.705612, 2.181473, 1.806826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547557, 0.614520, 0.567932,
		0.285149, 0.775129, -0.563795,
		-0.786684, -0.146764, -0.599657,
		1.469607, 2.137444, 1.626929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.710886, 2.848011, 1.686883>,  <2.020286, 2.240179, 2.046689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.710886, 2.848011, 1.686883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.410248, 2.592184, 1.751450>,  <1.229865, 2.438688, 1.790189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.410248, 2.592184, 1.751450>,  <1.710886, 2.848011, 1.686883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.410248, 2.592184, 1.751450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448334, 0.674812, 0.586196,
		-0.483837, 0.368215, -0.793926,
		-0.751597, -0.639568, 0.161416,
		1.184769, 2.400314, 1.799874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.144378, 3.211040, 1.509610>,  <1.710886, 2.848011, 1.686883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.144378, 3.211040, 1.509610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.011971, 2.905402, 1.731091>,  <0.932526, 2.722019, 1.863979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.011971, 2.905402, 1.731091>,  <1.144378, 3.211040, 1.509610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.011971, 2.905402, 1.731091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576520, 0.628293, 0.522372,
		-0.747029, -0.146305, -0.648493,
		-0.331018, -0.764096, 0.553700,
		0.912665, 2.676173, 1.897201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.404950, 3.210611, 1.542214>,  <1.144378, 3.211040, 1.509610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.404950, 3.210611, 1.542214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.455475, 2.977494, 1.863312>,  <0.485790, 2.837623, 2.055970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.455475, 2.977494, 1.863312>,  <0.404950, 3.210611, 1.542214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.455475, 2.977494, 1.863312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627890, 0.579519, 0.519530,
		-0.767984, -0.569657, -0.292730,
		0.126311, -0.582793, 0.802743,
		0.493368, 2.802655, 2.104135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.223839, 2.989624, 1.732232>,  <0.404950, 3.210611, 1.542214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.223839, 2.989624, 1.732232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.002029, 2.972764, 2.061928>,  <0.137551, 2.962648, 2.259745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.002029, 2.972764, 2.061928>,  <-0.223839, 2.989624, 1.732232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.002029, 2.972764, 2.061928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725670, 0.450358, 0.520174,
		-0.393127, -0.891853, 0.223718,
		0.564671, -0.042149, 0.824239,
		0.171431, 2.960119, 2.309200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.701140, 2.827160, 2.206551>,  <-0.223839, 2.989624, 1.732232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.701140, 2.827160, 2.206551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.385689, 2.940220, 2.424973>,  <-0.196418, 3.008055, 2.556026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.385689, 2.940220, 2.424973>,  <-0.701140, 2.827160, 2.206551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.385689, 2.940220, 2.424973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607947, 0.491339, 0.623689,
		-0.092013, -0.823830, 0.559319,
		0.788628, 0.282648, 0.546054,
		-0.149100, 3.025014, 2.588789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.786707, 3.686536, 2.591290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.640862, 3.933395, 2.870197>,  <-0.553354, 4.081511, 3.037542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.640862, 3.933395, 2.870197>,  <-0.786707, 3.686536, 2.591290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.640862, 3.933395, 2.870197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754416, -0.634721, 0.167291,
		0.545815, 0.465034, -0.697015,
		0.364614, 0.617149, 0.697269,
		-0.531477, 4.118540, 3.079378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.141098, 3.998029, 2.418150>,  <-0.786707, 3.686536, 2.591290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.141098, 3.998029, 2.418150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.237633, 3.882652, 2.788784>,  <-0.295553, 3.813426, 3.011164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.237633, 3.882652, 2.788784>,  <-0.141098, 3.998029, 2.418150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.237633, 3.882652, 2.788784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675152, -0.735758, -0.053190,
		0.697084, 0.612749, 0.372307,
		-0.241336, -0.288441, 0.926584,
		-0.310034, 3.796120, 3.066759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.488686, 4.060219, 2.875199>,  <-0.141098, 3.998029, 2.418150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.488686, 4.060219, 2.875199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.235306, 3.759749, 2.949472>,  <0.083278, 3.579468, 2.994037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.235306, 3.759749, 2.949472>,  <0.488686, 4.060219, 2.875199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.235306, 3.759749, 2.949472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702294, -0.658869, -0.269582,
		0.324845, -0.040361, 0.944906,
		-0.633449, -0.751174, 0.185685,
		0.045271, 3.534397, 3.005178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.889509, 3.545536, 3.212565>,  <0.488686, 4.060219, 2.875199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.889509, 3.545536, 3.212565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.568687, 3.385376, 3.035301>,  <0.376194, 3.289280, 2.928943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.568687, 3.385376, 3.035301>,  <0.889509, 3.545536, 3.212565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.568687, 3.385376, 3.035301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593140, -0.620914, -0.512496,
		-0.069960, -0.673904, 0.735499,
		-0.802055, -0.400399, -0.443158,
		0.328071, 3.265256, 2.902354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.881076, 2.840387, 3.365620>,  <0.889509, 3.545536, 3.212565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.881076, 2.840387, 3.365620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.661682, 2.889200, 3.034737>,  <0.530046, 2.918488, 2.836207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.661682, 2.889200, 3.034737>,  <0.881076, 2.840387, 3.365620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.661682, 2.889200, 3.034737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469139, -0.773997, -0.425248,
		-0.692150, -0.621318, 0.367276,
		-0.548485, 0.122032, -0.827208,
		0.497137, 2.925810, 2.786574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.938595, 2.210081, 3.130829>,  <0.881076, 2.840387, 3.365620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.938595, 2.210081, 3.130829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.777779, 2.383198, 2.808077>,  <0.681289, 2.487068, 2.614426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.777779, 2.383198, 2.808077>,  <0.938595, 2.210081, 3.130829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.777779, 2.383198, 2.808077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346024, -0.744069, -0.571514,
		-0.847721, -0.508971, 0.149388,
		-0.402040, 0.432793, -0.806880,
		0.657167, 2.513036, 2.566013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.570568, 1.658879, 2.737092>,  <0.938595, 2.210081, 3.130829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.570568, 1.658879, 2.737092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.668777, 1.964624, 2.498608>,  <0.727703, 2.148072, 2.355517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.668777, 1.964624, 2.498608>,  <0.570568, 1.658879, 2.737092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.668777, 1.964624, 2.498608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396417, -0.640428, -0.657803,
		-0.884630, -0.074841, -0.460248,
		0.245524, 0.764363, -0.596210,
		0.742435, 2.193933, 2.319745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.272706, 1.582921, 2.044872>,  <0.570568, 1.658879, 2.737092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.272706, 1.582921, 2.044872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.597855, 1.811491, 1.999771>,  <0.792944, 1.948633, 1.972710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.597855, 1.811491, 1.999771>,  <0.272706, 1.582921, 2.044872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.597855, 1.811491, 1.999771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334471, -0.616449, -0.712825,
		-0.476832, 0.541723, -0.692219,
		0.812872, 0.571425, -0.112752,
		0.841716, 1.982919, 1.965945>
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
