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
	<1.941106, 4.802713, 5.915728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.102690, 5.127552, 5.747293>,  <2.199640, 5.322455, 5.646233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.102690, 5.127552, 5.747293>,  <1.941106, 4.802713, 5.915728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.102690, 5.127552, 5.747293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310308, -0.554672, -0.772042,
		-0.860538, 0.181207, -0.476065,
		0.403959, 0.812098, -0.421087,
		2.223877, 5.371181, 5.620967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.676902, 4.867582, 5.245032>,  <1.941106, 4.802713, 5.915728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.676902, 4.867582, 5.245032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.034876, 5.040958, 5.287403>,  <2.249660, 5.144984, 5.312826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.034876, 5.040958, 5.287403>,  <1.676902, 4.867582, 5.245032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.034876, 5.040958, 5.287403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309995, -0.433227, -0.846296,
		-0.320928, 0.790218, -0.522074,
		0.894935, 0.433440, 0.105929,
		2.303356, 5.170990, 5.319182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.802789, 5.340025, 4.725654>,  <1.676902, 4.867582, 5.245032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.802789, 5.340025, 4.725654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.170938, 5.231926, 4.838705>,  <2.391828, 5.167067, 4.906536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.170938, 5.231926, 4.838705>,  <1.802789, 5.340025, 4.725654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.170938, 5.231926, 4.838705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238450, -0.184974, -0.953376,
		0.309927, 0.944855, -0.105805,
		0.920373, -0.270248, 0.282629,
		2.447051, 5.150852, 4.923494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.210162, 5.649910, 4.262662>,  <1.802789, 5.340025, 4.725654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.210162, 5.649910, 4.262662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.381676, 5.317747, 4.404968>,  <2.484584, 5.118450, 4.490352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.381676, 5.317747, 4.404968>,  <2.210162, 5.649910, 4.262662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.381676, 5.317747, 4.404968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213505, -0.289502, -0.933062,
		0.877816, 0.476039, 0.053162,
		0.428784, -0.830407, 0.355766,
		2.510311, 5.068625, 4.511698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.879980, 5.589114, 3.955340>,  <2.210162, 5.649910, 4.262662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.879980, 5.589114, 3.955340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.778009, 5.214708, 4.052408>,  <2.716827, 4.990065, 4.110649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.778009, 5.214708, 4.052408>,  <2.879980, 5.589114, 3.955340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.778009, 5.214708, 4.052408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251309, -0.306471, -0.918106,
		0.933733, -0.173064, 0.313356,
		-0.254926, -0.936015, 0.242670,
		2.701532, 4.933904, 4.125209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.502071, 5.240593, 3.819063>,  <2.879980, 5.589114, 3.955340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.502071, 5.240593, 3.819063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.211834, 4.965574, 3.830330>,  <3.037691, 4.800563, 3.837090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.211834, 4.965574, 3.830330>,  <3.502071, 5.240593, 3.819063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.211834, 4.965574, 3.830330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232434, -0.283411, -0.930404,
		0.647679, -0.668549, 0.365451,
		-0.725594, -0.687547, 0.028166,
		2.994156, 4.759310, 3.838780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.749187, 4.725391, 3.546281>,  <3.502071, 5.240593, 3.819063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.749187, 4.725391, 3.546281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.368290, 4.609011, 3.509230>,  <3.139751, 4.539182, 3.486999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.368290, 4.609011, 3.509230>,  <3.749187, 4.725391, 3.546281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.368290, 4.609011, 3.509230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174728, -0.270449, -0.946746,
		0.250406, -0.917717, 0.308371,
		-0.952243, -0.290952, -0.092628,
		3.082617, 4.521725, 3.481441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.669507, 3.970227, 3.300973>,  <3.749187, 4.725391, 3.546281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.669507, 3.970227, 3.300973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.351265, 4.185755, 3.190203>,  <3.160320, 4.315072, 3.123741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.351265, 4.185755, 3.190203>,  <3.669507, 3.970227, 3.300973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.351265, 4.185755, 3.190203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187600, -0.215518, -0.958310,
		-0.576039, -0.814386, 0.070384,
		-0.795604, 0.538820, -0.276925,
		3.112584, 4.347401, 3.107125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.578731, 4.151792, 2.218166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.240543, 4.235925, 2.021822>,  <3.037631, 4.286406, 1.904016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.240543, 4.235925, 2.021822>,  <3.578731, 4.151792, 2.218166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.240543, 4.235925, 2.021822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464379, 0.164307, 0.870262,
		0.263697, 0.963723, -0.041241,
		-0.845468, 0.210334, -0.490860,
		2.986903, 4.299026, 1.874564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.276917, 4.815193, 2.399774>,  <3.578731, 4.151792, 2.218166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.276917, 4.815193, 2.399774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.995922, 4.546426, 2.305933>,  <2.827325, 4.385166, 2.249628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.995922, 4.546426, 2.305933>,  <3.276917, 4.815193, 2.399774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.995922, 4.546426, 2.305933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403809, 0.104864, 0.908813,
		-0.586046, 0.733165, -0.344991,
		-0.702488, -0.671917, -0.234604,
		2.785176, 4.344851, 2.235552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.617035, 5.082451, 2.504910>,  <3.276917, 4.815193, 2.399774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.617035, 5.082451, 2.504910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.639397, 4.687521, 2.564327>,  <2.652814, 4.450563, 2.599978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.639397, 4.687521, 2.564327>,  <2.617035, 5.082451, 2.504910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.639397, 4.687521, 2.564327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495709, 0.101698, 0.862514,
		-0.866688, -0.121853, -0.483740,
		0.055904, -0.987324, 0.148544,
		2.656168, 4.391324, 2.608890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.013380, 4.712116, 2.718777>,  <2.617035, 5.082451, 2.504910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.013380, 4.712116, 2.718777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.324306, 4.508964, 2.867281>,  <2.510863, 4.387072, 2.956383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.324306, 4.508964, 2.867281>,  <2.013380, 4.712116, 2.718777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.324306, 4.508964, 2.867281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346069, 0.147622, 0.926522,
		-0.525371, -0.848683, -0.061013,
		0.777317, -0.507882, 0.371260,
		2.557502, 4.356599, 2.978659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.833310, 4.149262, 3.329830>,  <2.013380, 4.712116, 2.718777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.833310, 4.149262, 3.329830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.206039, 4.289303, 3.368057>,  <2.429677, 4.373328, 3.390993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.206039, 4.289303, 3.368057>,  <1.833310, 4.149262, 3.329830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.206039, 4.289303, 3.368057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101690, -0.000899, 0.994816,
		0.348374, -0.936711, 0.034765,
		0.931824, 0.350103, 0.095567,
		2.485586, 4.394334, 3.396728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.985874, 3.874493, 3.945848>,  <1.833310, 4.149262, 3.329830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.985874, 3.874493, 3.945848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.247490, 4.171943, 3.890347>,  <2.404459, 4.350413, 3.857046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.247490, 4.171943, 3.890347>,  <1.985874, 3.874493, 3.945848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.247490, 4.171943, 3.890347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048811, 0.141555, 0.988726,
		0.754884, -0.653438, 0.056285,
		0.654039, 0.743627, -0.138752,
		2.443702, 4.395031, 3.848721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.419521, 3.748867, 4.492547>,  <1.985874, 3.874493, 3.945848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.419521, 3.748867, 4.492547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.487064, 4.125120, 4.374767>,  <2.527590, 4.350871, 4.304100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.487064, 4.125120, 4.374767>,  <2.419521, 3.748867, 4.492547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.487064, 4.125120, 4.374767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116742, 0.277549, 0.953592,
		0.978702, -0.195396, -0.062945,
		0.168858, 0.940631, -0.294448,
		2.537722, 4.407309, 4.286433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.117380, 3.933463, 4.622409>,  <2.419521, 3.748867, 4.492547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.117380, 3.933463, 4.622409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.888325, 4.261269, 4.631172>,  <2.750891, 4.457953, 4.636430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.888325, 4.261269, 4.631172>,  <3.117380, 3.933463, 4.622409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.888325, 4.261269, 4.631172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219878, 0.127788, 0.967121,
		0.789771, 0.558628, -0.253369,
		-0.572638, 0.819515, 0.021907,
		2.716533, 4.507124, 4.637744>
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
