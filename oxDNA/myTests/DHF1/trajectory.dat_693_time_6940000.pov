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
	<5.661334, 4.124754, 5.823730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.394310, 4.405928, 5.725548>,  <5.234096, 4.574632, 5.666639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.394310, 4.405928, 5.725548>,  <5.661334, 4.124754, 5.823730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.394310, 4.405928, 5.725548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382563, -0.606647, -0.696868,
		-0.638758, -0.371297, 0.673889,
		-0.667558, 0.702935, -0.245456,
		5.194042, 4.616808, 5.651912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.959016, 3.742498, 5.652768>,  <5.661334, 4.124754, 5.823730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.959016, 3.742498, 5.652768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.002594, 4.097990, 5.474649>,  <5.028741, 4.311285, 5.367778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.002594, 4.097990, 5.474649>,  <4.959016, 3.742498, 5.652768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.002594, 4.097990, 5.474649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464945, -0.350383, -0.813055,
		-0.878611, 0.295617, 0.375038,
		0.108946, 0.888731, -0.445296,
		5.035278, 4.364609, 5.341061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.283586, 4.168186, 5.580452>,  <4.959016, 3.742498, 5.652768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.283586, 4.168186, 5.580452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.554815, 4.169493, 5.286457>,  <4.717553, 4.170277, 5.110060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.554815, 4.169493, 5.286457>,  <4.283586, 4.168186, 5.580452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.554815, 4.169493, 5.286457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676797, -0.387210, -0.626110,
		-0.286640, 0.921986, -0.260346,
		0.678073, 0.003266, -0.734987,
		4.758237, 4.170473, 5.065961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.064967, 4.510106, 4.987272>,  <4.283586, 4.168186, 5.580452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.064967, 4.510106, 4.987272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.340084, 4.244917, 4.869013>,  <4.505154, 4.085803, 4.798057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.340084, 4.244917, 4.869013>,  <4.064967, 4.510106, 4.987272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.340084, 4.244917, 4.869013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667044, -0.416567, -0.617676,
		0.286346, 0.622044, -0.728744,
		0.687792, -0.662974, -0.295648,
		4.546422, 4.046025, 4.780318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.943875, 4.507189, 4.308662>,  <4.064967, 4.510106, 4.987272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.943875, 4.507189, 4.308662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.142620, 4.168341, 4.384045>,  <4.261867, 3.965032, 4.429274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.142620, 4.168341, 4.384045>,  <3.943875, 4.507189, 4.308662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.142620, 4.168341, 4.384045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603633, -0.493373, -0.626267,
		0.623502, 0.197410, -0.756488,
		0.496862, -0.847120, 0.188456,
		4.291678, 3.914205, 4.440581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.069302, 4.258358, 3.723560>,  <3.943875, 4.507189, 4.308662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.069302, 4.258358, 3.723560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.098454, 3.945150, 3.970646>,  <4.115945, 3.757226, 4.118897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.098454, 3.945150, 3.970646>,  <4.069302, 4.258358, 3.723560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.098454, 3.945150, 3.970646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455676, -0.577079, -0.677746,
		0.887157, -0.232084, -0.398860,
		0.072880, -0.783018, 0.617715,
		4.120317, 3.710245, 4.155961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.153383, 3.660264, 3.294312>,  <4.069302, 4.258358, 3.723560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.153383, 3.660264, 3.294312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.056305, 3.481997, 3.638981>,  <3.998058, 3.375036, 3.845782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.056305, 3.481997, 3.638981>,  <4.153383, 3.660264, 3.294312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.056305, 3.481997, 3.638981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601628, -0.627640, -0.494077,
		0.761014, -0.638317, -0.115801,
		-0.242696, -0.445668, 0.861672,
		3.983496, 3.348296, 3.897482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.202891, 2.894794, 3.203932>,  <4.153383, 3.660264, 3.294312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.202891, 2.894794, 3.203932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.955332, 2.936991, 3.515274>,  <3.806796, 2.962309, 3.702079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.955332, 2.936991, 3.515274>,  <4.202891, 2.894794, 3.203932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.955332, 2.936991, 3.515274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683234, -0.561168, -0.467207,
		0.387501, -0.820952, 0.419382,
		-0.618898, 0.105493, 0.778355,
		3.769662, 2.968638, 3.748780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.859294, 2.972300, 2.947925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.712978, 2.738873, 3.237930>,  <2.625189, 2.598816, 3.411933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.712978, 2.738873, 3.237930>,  <2.859294, 2.972300, 2.947925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.712978, 2.738873, 3.237930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726892, 0.307358, 0.614133,
		-0.581228, 0.751650, 0.311764,
		-0.365790, -0.583570, 0.725013,
		2.603241, 2.563802, 3.455434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.713204, 3.417485, 3.510189>,  <2.859294, 2.972300, 2.947925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.713204, 3.417485, 3.510189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.780060, 3.040885, 3.627246>,  <2.820173, 2.814925, 3.697480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.780060, 3.040885, 3.627246>,  <2.713204, 3.417485, 3.510189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.780060, 3.040885, 3.627246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885252, 0.273978, 0.375852,
		-0.434043, 0.196242, 0.879258,
		0.167140, -0.941501, 0.292642,
		2.830202, 2.758435, 3.715039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.688363, 3.425961, 4.176051>,  <2.713204, 3.417485, 3.510189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.688363, 3.425961, 4.176051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.927605, 3.139466, 4.032232>,  <3.071150, 2.967569, 3.945941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.927605, 3.139466, 4.032232>,  <2.688363, 3.425961, 4.176051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.927605, 3.139466, 4.032232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793082, 0.464433, 0.394111,
		-0.115292, -0.520869, 0.845815,
		0.598105, -0.716238, -0.359547,
		3.107036, 2.924595, 3.924368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.023542, 3.308144, 4.798225>,  <2.688363, 3.425961, 4.176051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.023542, 3.308144, 4.798225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.243877, 3.183268, 4.488615>,  <3.376079, 3.108342, 4.302849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.243877, 3.183268, 4.488615>,  <3.023542, 3.308144, 4.798225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.243877, 3.183268, 4.488615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817584, 0.388220, 0.425256,
		0.167730, -0.867077, 0.469089,
		0.550839, -0.312191, -0.774024,
		3.409129, 3.089610, 4.256408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.579367, 2.866688, 4.989249>,  <3.023542, 3.308144, 4.798225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.579367, 2.866688, 4.989249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.702682, 3.027781, 4.644514>,  <3.776672, 3.124436, 4.437673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.702682, 3.027781, 4.644514>,  <3.579367, 2.866688, 4.989249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.702682, 3.027781, 4.644514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774516, 0.419762, 0.473206,
		0.552343, -0.813392, -0.182515,
		0.308289, 0.402732, -0.861838,
		3.795169, 3.148600, 4.385962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.277303, 2.755064, 5.032563>,  <3.579367, 2.866688, 4.989249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.277303, 2.755064, 5.032563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.207455, 3.037957, 4.758533>,  <4.165546, 3.207693, 4.594114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.207455, 3.037957, 4.758533>,  <4.277303, 2.755064, 5.032563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.207455, 3.037957, 4.758533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778332, 0.525295, 0.343895,
		0.603081, -0.473165, -0.642190,
		-0.174620, 0.707234, -0.685075,
		4.155069, 3.250127, 4.553010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.929322, 2.794945, 4.654700>,  <4.277303, 2.755064, 5.032563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.929322, 2.794945, 4.654700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.750961, 3.146527, 4.587046>,  <4.643945, 3.357477, 4.546453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.750961, 3.146527, 4.587046>,  <4.929322, 2.794945, 4.654700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.750961, 3.146527, 4.587046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504955, 0.403042, 0.763267,
		0.739048, 0.254936, -0.623551,
		-0.445902, 0.878956, -0.169136,
		4.617191, 3.410214, 4.536305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.463768, 3.211348, 4.437274>,  <4.929322, 2.794945, 4.654700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.463768, 3.211348, 4.437274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.170773, 3.459185, 4.550103>,  <4.994975, 3.607887, 4.617801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.170773, 3.459185, 4.550103>,  <5.463768, 3.211348, 4.437274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.170773, 3.459185, 4.550103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654212, 0.526019, 0.543425,
		0.188326, 0.582588, -0.790648,
		-0.732489, 0.619592, 0.282073,
		4.951026, 3.645062, 4.634725>
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
