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
	<4.041777, 15.149180, 15.214940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.383493, 15.010102, 15.060387>,  <4.588523, 14.926655, 14.967654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.383493, 15.010102, 15.060387>,  <4.041777, 15.149180, 15.214940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.383493, 15.010102, 15.060387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148611, 0.548934, -0.822549,
		0.498096, 0.760118, 0.417279,
		0.854292, -0.347696, -0.386384,
		4.639781, 14.905793, 14.944471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.336556, 15.449483, 14.537816>,  <4.041777, 15.149180, 15.214940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.336556, 15.449483, 14.537816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.039598, 15.656521, 14.367664>,  <3.861424, 15.780744, 14.265574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.039598, 15.656521, 14.367664>,  <4.336556, 15.449483, 14.537816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.039598, 15.656521, 14.367664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103009, 0.715563, 0.690911,
		0.661997, 0.469110, -0.584547,
		-0.742394, 0.517595, -0.425378,
		3.816880, 15.811799, 14.240051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.538975, 16.171309, 14.270340>,  <4.336556, 15.449483, 14.537816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.538975, 16.171309, 14.270340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.174496, 16.124487, 14.428337>,  <3.955809, 16.096394, 14.523135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.174496, 16.124487, 14.428337>,  <4.538975, 16.171309, 14.270340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.174496, 16.124487, 14.428337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242724, 0.622164, 0.744310,
		-0.332876, 0.774087, -0.538501,
		-0.911196, -0.117055, 0.394993,
		3.901137, 16.089371, 14.546835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.516565, 16.697243, 14.864138>,  <4.538975, 16.171309, 14.270340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.516565, 16.697243, 14.864138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.892551, 16.561277, 14.876324>,  <5.118142, 16.479698, 14.883636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.892551, 16.561277, 14.876324>,  <4.516565, 16.697243, 14.864138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.892551, 16.561277, 14.876324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170964, 0.546264, 0.819980,
		-0.295364, -0.765543, 0.571581,
		0.939963, -0.339912, 0.030466,
		5.174540, 16.459303, 14.885464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.663566, 16.361950, 15.558586>,  <4.516565, 16.697243, 14.864138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.663566, 16.361950, 15.558586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.998947, 16.508640, 15.397336>,  <5.200175, 16.596655, 15.300586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.998947, 16.508640, 15.397336>,  <4.663566, 16.361950, 15.558586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.998947, 16.508640, 15.397336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188821, 0.498407, 0.846130,
		0.511223, -0.785557, 0.348643,
		0.838450, 0.366730, -0.403127,
		5.250482, 16.618658, 15.276399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.127767, 16.383902, 16.153934>,  <4.663566, 16.361950, 15.558586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.127767, 16.383902, 16.153934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.296263, 16.616741, 15.875735>,  <5.397360, 16.756445, 15.708816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.296263, 16.616741, 15.875735>,  <5.127767, 16.383902, 16.153934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.296263, 16.616741, 15.875735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278372, 0.646857, 0.709990,
		0.863172, -0.492683, 0.110441,
		0.421239, 0.582100, -0.695498,
		5.422635, 16.791370, 15.667086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.842599, 16.515587, 16.366619>,  <5.127767, 16.383902, 16.153934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.842599, 16.515587, 16.366619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.734675, 16.811890, 16.120537>,  <5.669920, 16.989672, 15.972887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.734675, 16.811890, 16.120537>,  <5.842599, 16.515587, 16.366619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.734675, 16.811890, 16.120537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352419, 0.670539, 0.652823,
		0.896104, -0.040672, -0.441977,
		-0.269811, 0.740759, -0.615206,
		5.653732, 17.034117, 15.935975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.343448, 17.035355, 16.255634>,  <5.842599, 16.515587, 16.366619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.343448, 17.035355, 16.255634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.997480, 17.232082, 16.215572>,  <5.789900, 17.350119, 16.191536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.997480, 17.232082, 16.215572>,  <6.343448, 17.035355, 16.255634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.997480, 17.232082, 16.215572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353279, 0.738286, 0.574568,
		0.356524, 0.461572, -0.812306,
		-0.864919, 0.491818, -0.100153,
		5.738005, 17.379627, 16.185526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.553935, 17.649134, 16.523550>,  <6.343448, 17.035355, 16.255634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.553935, 17.649134, 16.523550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.163929, 17.714764, 16.463652>,  <5.929925, 17.754143, 16.427711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.163929, 17.714764, 16.463652>,  <6.553935, 17.649134, 16.523550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.163929, 17.714764, 16.463652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035842, 0.781485, 0.622894,
		0.219227, 0.601964, -0.767840,
		-0.975015, 0.164076, -0.149747,
		5.871424, 17.763987, 16.418728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.467093, 18.326084, 16.378105>,  <6.553935, 17.649134, 16.523550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.467093, 18.326084, 16.378105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.093809, 18.250431, 16.500317>,  <5.869838, 18.205040, 16.573643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.093809, 18.250431, 16.500317>,  <6.467093, 18.326084, 16.378105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.093809, 18.250431, 16.500317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074261, 0.730402, 0.678969,
		-0.351571, 0.656310, -0.667574,
		-0.933211, -0.189131, 0.305526,
		5.813845, 18.193691, 16.591974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.197700, 18.988457, 16.390079>,  <6.467093, 18.326084, 16.378105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.197700, 18.988457, 16.390079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.020512, 18.740910, 16.649549>,  <5.914199, 18.592381, 16.805231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.020512, 18.740910, 16.649549>,  <6.197700, 18.988457, 16.390079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.020512, 18.740910, 16.649549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084084, 0.691667, 0.717306,
		-0.892585, 0.372288, -0.254351,
		-0.442970, -0.618869, 0.648674,
		5.887621, 18.555248, 16.844152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.991121, 19.437628, 16.902338>,  <6.197700, 18.988457, 16.390079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.991121, 19.437628, 16.902338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.876282, 19.107170, 17.096270>,  <5.807378, 18.908895, 17.212629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.876282, 19.107170, 17.096270>,  <5.991121, 19.437628, 16.902338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.876282, 19.107170, 17.096270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142058, 0.537261, 0.831367,
		-0.947309, 0.169810, -0.271608,
		-0.287099, -0.826145, 0.484829,
		5.790152, 18.859327, 17.241718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.311873, 19.586752, 17.290121>,  <5.991121, 19.437628, 16.902338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.311873, 19.586752, 17.290121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.508687, 19.286610, 17.466696>,  <5.626775, 19.106524, 17.572641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.508687, 19.286610, 17.466696>,  <5.311873, 19.586752, 17.290121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.508687, 19.286610, 17.466696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178712, 0.409210, 0.894768,
		-0.852036, -0.519146, 0.067248,
		0.492033, -0.750356, 0.441439,
		5.656297, 19.061502, 17.599127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.887677, 19.422060, 17.793591>,  <5.311873, 19.586752, 17.290121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.887677, 19.422060, 17.793591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.255824, 19.306767, 17.899303>,  <5.476713, 19.237591, 17.962730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.255824, 19.306767, 17.899303>,  <4.887677, 19.422060, 17.793591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.255824, 19.306767, 17.899303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152381, 0.358059, 0.921181,
		-0.360143, -0.888097, 0.285625,
		0.920368, -0.288233, 0.264281,
		5.531935, 19.220297, 17.978588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.824199, 19.085314, 18.464369>,  <4.887677, 19.422060, 17.793591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.824199, 19.085314, 18.464369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.208925, 19.186674, 18.422987>,  <5.439760, 19.247490, 18.398157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.208925, 19.186674, 18.422987>,  <4.824199, 19.085314, 18.464369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.208925, 19.186674, 18.422987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008498, 0.350152, 0.936655,
		0.273574, -0.901766, 0.334627,
		0.961814, 0.253401, -0.103456,
		5.497469, 19.262693, 18.391951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.160492, 18.765442, 18.987799>,  <4.824199, 19.085314, 18.464369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.160492, 18.765442, 18.987799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.408929, 19.063375, 18.890257>,  <5.557992, 19.242136, 18.831732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.408929, 19.063375, 18.890257>,  <5.160492, 18.765442, 18.987799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.408929, 19.063375, 18.890257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123337, 0.214376, 0.968933,
		0.773971, -0.631874, 0.041282,
		0.621093, 0.744835, -0.243854,
		5.595257, 19.286825, 18.817101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.709785, 18.815046, 19.538353>,  <5.160492, 18.765442, 18.987799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.709785, 18.815046, 19.538353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.756079, 19.171274, 19.362404>,  <5.783855, 19.385012, 19.256834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.756079, 19.171274, 19.362404>,  <5.709785, 18.815046, 19.538353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.756079, 19.171274, 19.362404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066554, 0.434900, 0.898016,
		0.991048, -0.133206, -0.008938,
		0.115733, 0.890572, -0.439872,
		5.790799, 19.438446, 19.230442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.315192, 19.088079, 19.896402>,  <5.709785, 18.815046, 19.538353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.315192, 19.088079, 19.896402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.155885, 19.417965, 19.735786>,  <6.060301, 19.615896, 19.639418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.155885, 19.417965, 19.735786>,  <6.315192, 19.088079, 19.896402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.155885, 19.417965, 19.735786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248544, 0.518402, 0.818221,
		0.882955, 0.226070, -0.411440,
		-0.398266, 0.824713, -0.401538,
		6.036406, 19.665379, 19.615326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.773649, 19.763023, 20.072016>,  <6.315192, 19.088079, 19.896402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.773649, 19.763023, 20.072016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.434154, 19.919035, 19.929174>,  <6.230457, 20.012642, 19.843470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.434154, 19.919035, 19.929174>,  <6.773649, 19.763023, 20.072016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.434154, 19.919035, 19.929174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056253, 0.738045, 0.672402,
		0.525814, 0.550605, -0.648347,
		-0.848738, 0.390030, -0.357101,
		6.179533, 20.036043, 19.822044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.860015, 20.433304, 19.838406>,  <6.773649, 19.763023, 20.072016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.860015, 20.433304, 19.838406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.478945, 20.378258, 19.946829>,  <6.250303, 20.345230, 20.011883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.478945, 20.378258, 19.946829>,  <6.860015, 20.433304, 19.838406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.478945, 20.378258, 19.946829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106670, 0.683636, 0.721986,
		-0.284665, 0.716731, -0.636603,
		-0.952674, -0.137618, 0.271060,
		6.193143, 20.336973, 20.028147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.515373, 21.028763, 19.819065>,  <6.860015, 20.433304, 19.838406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.515373, 21.028763, 19.819065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.296063, 20.819235, 20.079834>,  <6.164477, 20.693518, 20.236296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.296063, 20.819235, 20.079834>,  <6.515373, 21.028763, 19.819065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.296063, 20.819235, 20.079834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189647, 0.681352, 0.706961,
		-0.814511, 0.511245, -0.274228,
		-0.548276, -0.523821, 0.651924,
		6.131580, 20.662088, 20.275412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.217221, 21.572128, 20.256868>,  <6.515373, 21.028763, 19.819065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.217221, 21.572128, 20.256868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.183824, 21.226974, 20.456249>,  <6.163785, 21.019882, 20.575878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.183824, 21.226974, 20.456249>,  <6.217221, 21.572128, 20.256868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.183824, 21.226974, 20.456249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071717, 0.493701, 0.866670,
		-0.993924, 0.108109, 0.020662,
		-0.083494, -0.862886, 0.498454,
		6.158775, 20.968109, 20.605785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.628416, 21.610958, 20.826397>,  <6.217221, 21.572128, 20.256868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.628416, 21.610958, 20.826397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.865099, 21.305998, 20.931181>,  <6.007109, 21.123022, 20.994051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.865099, 21.305998, 20.931181>,  <5.628416, 21.610958, 20.826397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.865099, 21.305998, 20.931181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024239, 0.307979, 0.951084,
		-0.805788, -0.569114, 0.163754,
		0.591708, -0.762403, 0.261961,
		6.042612, 21.077276, 21.009769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.348227, 21.334023, 21.382103>,  <5.628416, 21.610958, 20.826397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.348227, 21.334023, 21.382103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.732785, 21.224100, 21.376453>,  <5.963520, 21.158146, 21.373064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.732785, 21.224100, 21.376453>,  <5.348227, 21.334023, 21.382103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.732785, 21.224100, 21.376453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074299, 0.209818, 0.974913,
		-0.264949, -0.938327, 0.222136,
		0.961396, -0.274806, -0.014126,
		6.021204, 21.141659, 21.372215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.411877, 20.892065, 22.002977>,  <5.348227, 21.334023, 21.382103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.411877, 20.892065, 22.002977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.787434, 21.008152, 21.928942>,  <6.012767, 21.077805, 21.884520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.787434, 21.008152, 21.928942>,  <5.411877, 20.892065, 22.002977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.787434, 21.008152, 21.928942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115661, 0.240458, 0.963744,
		0.324202, -0.926258, 0.192197,
		0.938891, 0.290218, -0.185089,
		6.069101, 21.095217, 21.873415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.759526, 20.728777, 22.666059>,  <5.411877, 20.892065, 22.002977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.759526, 20.728777, 22.666059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.976897, 21.000523, 22.468819>,  <6.107319, 21.163570, 22.350473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.976897, 21.000523, 22.468819>,  <5.759526, 20.728777, 22.666059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.976897, 21.000523, 22.468819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310804, 0.382833, 0.869965,
		0.779800, -0.626020, -0.003107,
		0.543427, 0.679365, -0.493103,
		6.139925, 21.204332, 22.320889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.083288, 20.895601, 23.259575>,  <5.759526, 20.728777, 22.666059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.083288, 20.895601, 23.259575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.248223, 21.066576, 22.937761>,  <6.347185, 21.169161, 22.744673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.248223, 21.066576, 22.937761>,  <6.083288, 20.895601, 23.259575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.248223, 21.066576, 22.937761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772305, 0.304425, 0.557557,
		0.483240, -0.851249, -0.204584,
		0.412339, 0.427435, -0.804535,
		6.371925, 21.194807, 22.696402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.657334, 20.556404, 23.508383>,  <6.083288, 20.895601, 23.259575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.657334, 20.556404, 23.508383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.633290, 20.861593, 23.250931>,  <6.618864, 21.044706, 23.096460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.633290, 20.861593, 23.250931>,  <6.657334, 20.556404, 23.508383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.633290, 20.861593, 23.250931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904596, 0.314240, 0.288027,
		0.422011, -0.564911, -0.709072,
		-0.060109, 0.762974, -0.643629,
		6.615258, 21.090485, 23.057842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.331579, 20.742828, 23.264673>,  <6.657334, 20.556404, 23.508383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.331579, 20.742828, 23.264673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.091719, 21.058870, 23.213831>,  <6.947803, 21.248495, 23.183325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.091719, 21.058870, 23.213831>,  <7.331579, 20.742828, 23.264673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.091719, 21.058870, 23.213831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759398, 0.611912, 0.221084,
		0.252457, 0.036048, -0.966936,
		-0.599650, 0.790104, -0.127106,
		6.911824, 21.295902, 23.175699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.627562, 21.288166, 22.842743>,  <7.331579, 20.742828, 23.264673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.627562, 21.288166, 22.842743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.341002, 21.501467, 23.022705>,  <7.169067, 21.629448, 23.130684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.341002, 21.501467, 23.022705>,  <7.627562, 21.288166, 22.842743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.341002, 21.501467, 23.022705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629914, 0.771609, 0.088477,
		-0.299972, 0.346788, -0.888681,
		-0.716397, 0.533252, 0.449908,
		7.126083, 21.661442, 23.157677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.827390, 21.995710, 22.624741>,  <7.627562, 21.288166, 22.842743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.827390, 21.995710, 22.624741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.570680, 22.051003, 22.926474>,  <7.416654, 22.084179, 23.107513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.570680, 22.051003, 22.926474>,  <7.827390, 21.995710, 22.624741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.570680, 22.051003, 22.926474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403150, 0.897554, 0.178516,
		-0.652377, 0.418676, -0.631755,
		-0.641774, 0.138232, 0.754333,
		7.378148, 22.092472, 23.152773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.552982, 22.193665, 22.072498>,  <7.827390, 21.995710, 22.624741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.552982, 22.193665, 22.072498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.943418, 22.265699, 22.023808>,  <8.177679, 22.308920, 21.994593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.943418, 22.265699, 22.023808>,  <7.552982, 22.193665, 22.072498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.943418, 22.265699, 22.023808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119479, -0.912325, -0.391648,
		-0.181587, 0.367739, -0.912027,
		0.976090, 0.180087, -0.121729,
		8.236244, 22.319725, 21.987289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.782793, 22.299883, 21.360970>,  <7.552982, 22.193665, 22.072498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.782793, 22.299883, 21.360970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.072929, 22.134346, 21.581011>,  <8.247011, 22.035025, 21.713036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.072929, 22.134346, 21.581011>,  <7.782793, 22.299883, 21.360970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.072929, 22.134346, 21.581011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126689, -0.705218, -0.697579,
		0.676630, 0.575676, -0.459096,
		0.725342, -0.413841, 0.550104,
		8.290532, 22.010193, 21.746042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.406551, 22.224771, 20.943634>,  <7.782793, 22.299883, 21.360970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.406551, 22.224771, 20.943634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.368876, 21.957455, 21.238798>,  <8.346272, 21.797064, 21.415897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.368876, 21.957455, 21.238798>,  <8.406551, 22.224771, 20.943634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.368876, 21.957455, 21.238798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000236, -0.741191, -0.671294,
		0.995554, -0.063401, 0.069653,
		-0.094187, -0.668293, 0.737911,
		8.340620, 21.756968, 21.460171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.991285, 21.639187, 20.941978>,  <8.406551, 22.224771, 20.943634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.991285, 21.639187, 20.941978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.634168, 21.556095, 21.101862>,  <8.419897, 21.506241, 21.197792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.634168, 21.556095, 21.101862>,  <8.991285, 21.639187, 20.941978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.634168, 21.556095, 21.101862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169904, -0.666502, -0.725884,
		0.417194, -0.715977, 0.559755,
		-0.892794, -0.207730, 0.399708,
		8.366329, 21.493776, 21.221775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.007398, 20.941238, 21.213324>,  <8.991285, 21.639187, 20.941978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.007398, 20.941238, 21.213324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.649941, 21.077694, 21.096684>,  <8.435468, 21.159567, 21.026699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.649941, 21.077694, 21.096684>,  <9.007398, 20.941238, 21.213324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.649941, 21.077694, 21.096684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069864, -0.747586, -0.660480,
		-0.443312, -0.569860, 0.691906,
		-0.893640, 0.341138, -0.291601,
		8.381849, 21.180035, 21.009203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.541011, 20.305458, 21.079700>,  <9.007398, 20.941238, 21.213324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.541011, 20.305458, 21.079700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.318099, 20.565628, 20.873249>,  <8.184352, 20.721729, 20.749378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.318099, 20.565628, 20.873249>,  <8.541011, 20.305458, 21.079700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.318099, 20.565628, 20.873249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045451, -0.644563, -0.763199,
		-0.829080, -0.401857, 0.388764,
		-0.557280, 0.650423, -0.516129,
		8.150915, 20.760756, 20.718410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.031466, 19.954531, 20.758499>,  <8.541011, 20.305458, 21.079700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.031466, 19.954531, 20.758499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.048632, 20.293282, 20.546476>,  <8.058931, 20.496532, 20.419262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.048632, 20.293282, 20.546476>,  <8.031466, 19.954531, 20.758499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.048632, 20.293282, 20.546476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082933, -0.525696, -0.846620,
		-0.995631, 0.080293, 0.047674,
		0.042916, 0.846875, -0.530058,
		8.061506, 20.547344, 20.387459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.487289, 19.950998, 20.293882>,  <8.031466, 19.954531, 20.758499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.487289, 19.950998, 20.293882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.765676, 20.191216, 20.136412>,  <7.932708, 20.335346, 20.041929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.765676, 20.191216, 20.136412>,  <7.487289, 19.950998, 20.293882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.765676, 20.191216, 20.136412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095326, -0.620656, -0.778267,
		-0.711718, 0.504120, -0.489203,
		0.695967, 0.600541, -0.393676,
		7.974465, 20.371378, 20.018309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.336156, 19.798132, 19.638268>,  <7.487289, 19.950998, 20.293882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.336156, 19.798132, 19.638268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.664141, 20.024858, 19.606316>,  <7.860932, 20.160894, 19.587145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.664141, 20.024858, 19.606316>,  <7.336156, 19.798132, 19.638268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.664141, 20.024858, 19.606316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269295, -0.505117, -0.819962,
		-0.505117, 0.650827, -0.566817,
		0.819962, 0.566817, -0.079878,
		7.910130, 20.194904, 19.582352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.296345, 20.108181, 18.917166>,  <7.336156, 19.798132, 19.638268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.296345, 20.108181, 18.917166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.675002, 20.153547, 19.037834>,  <7.902196, 20.180767, 19.110235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.675002, 20.153547, 19.037834>,  <7.296345, 20.108181, 18.917166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.675002, 20.153547, 19.037834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318722, -0.190616, -0.928483,
		-0.047800, 0.975091, -0.216593,
		0.946642, 0.113414, 0.301672,
		7.958995, 20.187572, 19.128336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.590040, 20.555758, 18.458963>,  <7.296345, 20.108181, 18.917166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.590040, 20.555758, 18.458963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.874779, 20.328585, 18.624237>,  <8.045623, 20.192280, 18.723402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.874779, 20.328585, 18.624237>,  <7.590040, 20.555758, 18.458963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.874779, 20.328585, 18.624237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345458, -0.229083, -0.910044,
		0.611499, 0.790552, 0.033125,
		0.711848, -0.567934, 0.413187,
		8.088334, 20.158205, 18.748194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.173552, 20.632324, 17.989260>,  <7.590040, 20.555758, 18.458963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.173552, 20.632324, 17.989260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.250668, 20.303854, 18.204109>,  <8.296937, 20.106771, 18.333019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.250668, 20.303854, 18.204109>,  <8.173552, 20.632324, 17.989260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.250668, 20.303854, 18.204109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404371, -0.432263, -0.805998,
		0.894045, 0.372587, 0.248723,
		0.192791, -0.821174, 0.537126,
		8.308505, 20.057501, 18.365248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.913591, 20.381628, 17.787666>,  <8.173552, 20.632324, 17.989260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.913591, 20.381628, 17.787666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.724790, 20.064907, 17.942720>,  <8.611508, 19.874874, 18.035753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.724790, 20.064907, 17.942720>,  <8.913591, 20.381628, 17.787666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.724790, 20.064907, 17.942720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333283, -0.567331, -0.753033,
		0.816171, -0.226241, 0.531676,
		-0.472004, -0.791802, 0.387636,
		8.583188, 19.827366, 18.059011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.359579, 19.791939, 17.682854>,  <8.913591, 20.381628, 17.787666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.359579, 19.791939, 17.682854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.008696, 19.606136, 17.731415>,  <8.798165, 19.494656, 17.760551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.008696, 19.606136, 17.731415>,  <9.359579, 19.791939, 17.682854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.008696, 19.606136, 17.731415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208018, -0.595620, -0.775864,
		0.432704, -0.655341, 0.619108,
		-0.877209, -0.464505, 0.121404,
		8.745533, 19.466785, 17.767836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.512316, 19.163237, 17.496275>,  <9.359579, 19.791939, 17.682854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.512316, 19.163237, 17.496275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.112456, 19.172022, 17.490316>,  <8.872540, 19.177294, 17.486740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.112456, 19.172022, 17.490316>,  <9.512316, 19.163237, 17.496275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.112456, 19.172022, 17.490316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000741, -0.538045, -0.842916,
		-0.026529, -0.842630, 0.537839,
		-0.999648, 0.021963, -0.014898,
		8.812562, 19.178612, 17.485847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.351260, 18.512424, 17.347462>,  <9.512316, 19.163237, 17.496275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.351260, 18.512424, 17.347462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.999297, 18.685411, 17.268740>,  <8.788119, 18.789204, 17.221506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.999297, 18.685411, 17.268740>,  <9.351260, 18.512424, 17.347462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.999297, 18.685411, 17.268740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090714, -0.559488, -0.823859,
		-0.466402, -0.707068, 0.531530,
		-0.879909, 0.432466, -0.196805,
		8.735325, 18.815151, 17.209698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.808671, 17.985367, 17.205629>,  <9.351260, 18.512424, 17.347462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.808671, 17.985367, 17.205629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.664030, 18.306751, 17.016445>,  <8.577246, 18.499582, 16.902935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.664030, 18.306751, 17.016445>,  <8.808671, 17.985367, 17.205629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.664030, 18.306751, 17.016445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174619, -0.556674, -0.812172,
		-0.915834, -0.211096, 0.341595,
		-0.361603, 0.803463, -0.472959,
		8.555550, 18.547791, 16.874557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.206074, 17.771065, 16.921324>,  <8.808671, 17.985367, 17.205629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.206074, 17.771065, 16.921324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.285403, 18.099539, 16.707289>,  <8.333001, 18.296623, 16.578867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.285403, 18.099539, 16.707289>,  <8.206074, 17.771065, 16.921324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.285403, 18.099539, 16.707289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201117, -0.500221, -0.842218,
		-0.959281, 0.274647, 0.065949,
		0.198324, 0.821187, -0.535089,
		8.344900, 18.345896, 16.546762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.649225, 17.828287, 16.506969>,  <8.206074, 17.771065, 16.921324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.649225, 17.828287, 16.506969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.938568, 18.052479, 16.345667>,  <8.112174, 18.186995, 16.248884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.938568, 18.052479, 16.345667>,  <7.649225, 17.828287, 16.506969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.938568, 18.052479, 16.345667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160839, -0.431189, -0.887810,
		-0.671481, 0.707063, -0.221757,
		0.723357, 0.560480, -0.403258,
		8.155575, 18.220623, 16.224689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.350482, 18.202671, 16.060358>,  <7.649225, 17.828287, 16.506969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.350482, 18.202671, 16.060358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.730257, 18.179607, 15.936911>,  <7.958122, 18.165770, 15.862843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.730257, 18.179607, 15.936911>,  <7.350482, 18.202671, 16.060358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.730257, 18.179607, 15.936911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293996, -0.508203, -0.809504,
		-0.110166, 0.859305, -0.499458,
		0.949437, -0.057659, -0.308619,
		8.015088, 18.162310, 15.844325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.385902, 18.423672, 15.280315>,  <7.350482, 18.202671, 16.060358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.385902, 18.423672, 15.280315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.720982, 18.209702, 15.324343>,  <7.922029, 18.081320, 15.350759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.720982, 18.209702, 15.324343>,  <7.385902, 18.423672, 15.280315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.720982, 18.209702, 15.324343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340340, -0.668947, -0.660816,
		0.427117, 0.516105, -0.742433,
		0.837699, -0.534926, 0.110067,
		7.972291, 18.049223, 15.357363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.489163, 18.172861, 14.594846>,  <7.385902, 18.423672, 15.280315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.489163, 18.172861, 14.594846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.750760, 17.963175, 14.813018>,  <7.907718, 17.837362, 14.943921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.750760, 17.963175, 14.813018>,  <7.489163, 18.172861, 14.594846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.750760, 17.963175, 14.813018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087424, -0.768530, -0.633813,
		0.751433, 0.366824, -0.548441,
		0.653991, -0.524215, 0.545430,
		7.946958, 17.805910, 14.976646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.890006, 17.836454, 14.187867>,  <7.489163, 18.172861, 14.594846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.890006, 17.836454, 14.187867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.954639, 17.612482, 14.512918>,  <7.993420, 17.478098, 14.707950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.954639, 17.612482, 14.512918>,  <7.890006, 17.836454, 14.187867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.954639, 17.612482, 14.512918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077446, -0.828106, -0.555196,
		0.983815, 0.026777, -0.177174,
		0.161585, -0.559932, 0.812629,
		8.003115, 17.444502, 14.756707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.382934, 17.369144, 13.920198>,  <7.890006, 17.836454, 14.187867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.382934, 17.369144, 13.920198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.207315, 17.210028, 14.242440>,  <8.101944, 17.114557, 14.435785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.207315, 17.210028, 14.242440>,  <8.382934, 17.369144, 13.920198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.207315, 17.210028, 14.242440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003929, -0.895789, -0.444463,
		0.898456, -0.198305, 0.391730,
		-0.439046, -0.397791, 0.805606,
		8.075602, 17.090691, 14.484122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.717881, 16.719723, 14.242422>,  <8.382934, 17.369144, 13.920198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.717881, 16.719723, 14.242422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.332353, 16.692535, 14.345516>,  <8.101035, 16.676222, 14.407372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.332353, 16.692535, 14.345516>,  <8.717881, 16.719723, 14.242422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.332353, 16.692535, 14.345516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063644, -0.880287, -0.470154,
		0.258836, -0.469548, 0.844114,
		-0.963822, -0.067970, 0.257734,
		8.043206, 16.672144, 14.422836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.578803, 16.028507, 14.302894>,  <8.717881, 16.719723, 14.242422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.578803, 16.028507, 14.302894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.227233, 16.189741, 14.200905>,  <8.016291, 16.286482, 14.139711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.227233, 16.189741, 14.200905>,  <8.578803, 16.028507, 14.302894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.227233, 16.189741, 14.200905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185085, -0.780934, -0.596562,
		-0.439582, -0.477142, 0.760988,
		-0.878926, 0.403085, -0.254973,
		7.963555, 16.310667, 14.124413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.259333, 16.148664, 14.579057>,  <8.578803, 16.028507, 14.302894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.259333, 16.148664, 14.579057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.321617, 16.008093, 14.209786>,  <9.358988, 15.923750, 13.988224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.321617, 16.008093, 14.209786>,  <9.259333, 16.148664, 14.579057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.321617, 16.008093, 14.209786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288610, -0.877609, 0.382762,
		-0.944700, -0.326038, -0.035227,
		0.155710, -0.351428, -0.923175,
		9.368330, 15.902664, 13.932834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.652536, 16.510990, 15.027779>,  <9.259333, 16.148664, 14.579057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.652536, 16.510990, 15.027779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.881707, 16.222551, 14.871944>,  <10.019210, 16.049488, 14.778443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.881707, 16.222551, 14.871944>,  <9.652536, 16.510990, 15.027779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.881707, 16.222551, 14.871944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741864, 0.254187, 0.620505,
		-0.348415, -0.644524, 0.680585,
		0.572926, -0.721095, -0.389586,
		10.053585, 16.006224, 14.755069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.848827, 16.026531, 15.584400>,  <9.652536, 16.510990, 15.027779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.848827, 16.026531, 15.584400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.090486, 16.120384, 15.279780>,  <10.235480, 16.176697, 15.097009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.090486, 16.120384, 15.279780>,  <9.848827, 16.026531, 15.584400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.090486, 16.120384, 15.279780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761691, 0.110803, 0.638396,
		0.234170, -0.965749, -0.111777,
		0.604145, 0.234632, -0.761549,
		10.271729, 16.190773, 15.051315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.338073, 15.489412, 15.220039>,  <9.848827, 16.026531, 15.584400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.338073, 15.489412, 15.220039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.324538, 15.237849, 15.530737>,  <10.316418, 15.086911, 15.717155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.324538, 15.237849, 15.530737>,  <10.338073, 15.489412, 15.220039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.324538, 15.237849, 15.530737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992623, 0.069389, 0.099422,
		-0.116425, 0.774378, 0.621919,
		-0.033836, -0.628907, 0.776744,
		10.314387, 15.049177, 15.763761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.500312, 15.824035, 15.917736>,  <10.338073, 15.489412, 15.220039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.500312, 15.824035, 15.917736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.616399, 15.448465, 15.843764>,  <10.686051, 15.223124, 15.799381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.616399, 15.448465, 15.843764>,  <10.500312, 15.824035, 15.917736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.616399, 15.448465, 15.843764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949878, 0.259172, 0.174817,
		-0.116211, -0.226394, 0.967078,
		0.290217, -0.938923, -0.184928,
		10.703464, 15.166789, 15.788286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.134926, 15.864853, 16.179012>,  <10.500312, 15.824035, 15.917736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.134926, 15.864853, 16.179012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.178593, 15.496186, 16.030090>,  <11.204793, 15.274986, 15.940737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.178593, 15.496186, 16.030090>,  <11.134926, 15.864853, 16.179012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.178593, 15.496186, 16.030090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958901, 0.196328, -0.204852,
		0.261899, -0.334641, 0.905221,
		0.109168, -0.921667, -0.372305,
		11.211343, 15.219686, 15.918399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.546297, 15.292171, 16.498575>,  <11.134926, 15.864853, 16.179012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.546297, 15.292171, 16.498575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.817498, 14.999437, 16.526081>,  <11.980219, 14.823797, 16.542585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.817498, 14.999437, 16.526081>,  <11.546297, 15.292171, 16.498575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.817498, 14.999437, 16.526081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311248, 0.370580, 0.875097,
		-0.665909, -0.571916, 0.479037,
		0.678004, -0.731835, 0.068765,
		12.020900, 14.779887, 16.546711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.438846, 14.943994, 17.164824>,  <11.546297, 15.292171, 16.498575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.438846, 14.943994, 17.164824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.820381, 14.911713, 17.049114>,  <12.049302, 14.892344, 16.979689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.820381, 14.911713, 17.049114>,  <11.438846, 14.943994, 17.164824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.820381, 14.911713, 17.049114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299743, 0.196229, 0.933621,
		-0.018582, -0.977232, 0.211360,
		0.953839, -0.080702, -0.289272,
		12.106533, 14.887503, 16.962332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.705677, 14.619596, 17.692112>,  <11.438846, 14.943994, 17.164824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.705677, 14.619596, 17.692112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.007565, 14.790575, 17.493040>,  <12.188699, 14.893162, 17.373596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.007565, 14.790575, 17.493040>,  <11.705677, 14.619596, 17.692112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.007565, 14.790575, 17.493040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442193, 0.228939, 0.867209,
		0.484623, -0.874572, -0.016228,
		0.754722, 0.427446, -0.497679,
		12.233982, 14.918809, 17.343737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.300980, 14.284040, 17.957870>,  <11.705677, 14.619596, 17.692112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.300980, 14.284040, 17.957870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431351, 14.635731, 17.818884>,  <12.509573, 14.846745, 17.735491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431351, 14.635731, 17.818884>,  <12.300980, 14.284040, 17.957870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.431351, 14.635731, 17.818884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617547, 0.080289, 0.782425,
		0.715826, -0.469592, -0.516794,
		0.325928, 0.879225, -0.347468,
		12.529129, 14.899498, 17.714643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.040374, 14.201727, 18.028023>,  <12.300980, 14.284040, 17.957870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.040374, 14.201727, 18.028023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.971231, 14.594454, 17.996639>,  <12.929747, 14.830090, 17.977810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.971231, 14.594454, 17.996639>,  <13.040374, 14.201727, 18.028023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.971231, 14.594454, 17.996639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798156, 0.186302, 0.572920,
		0.577120, 0.036412, -0.815847,
		-0.172855, 0.981817, -0.078456,
		12.919375, 14.888999, 17.973103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.704040, 14.505404, 17.966829>,  <13.040374, 14.201727, 18.028023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.704040, 14.505404, 17.966829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.452912, 14.785965, 18.101812>,  <13.302236, 14.954302, 18.182802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.452912, 14.785965, 18.101812>,  <13.704040, 14.505404, 17.966829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.452912, 14.785965, 18.101812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681726, 0.286284, 0.673269,
		0.375624, 0.652744, -0.657899,
		-0.627819, 0.701403, 0.337457,
		13.264566, 14.996386, 18.203049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.185811, 14.876738, 18.122002>,  <13.704040, 14.505404, 17.966829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.185811, 14.876738, 18.122002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.855981, 15.023314, 18.294416>,  <13.658083, 15.111260, 18.397865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.855981, 15.023314, 18.294416>,  <14.185811, 14.876738, 18.122002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.855981, 15.023314, 18.294416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520477, 0.192707, 0.831846,
		0.221760, 0.910266, -0.349627,
		-0.824576, 0.366443, 0.431038,
		13.608608, 15.133247, 18.423727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.426928, 15.368090, 18.563705>,  <14.185811, 14.876738, 18.122002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.426928, 15.368090, 18.563705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.069519, 15.247787, 18.697071>,  <13.855074, 15.175605, 18.777090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.069519, 15.247787, 18.697071>,  <14.426928, 15.368090, 18.563705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.069519, 15.247787, 18.697071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379048, -0.107161, 0.919151,
		-0.240712, 0.947661, 0.209752,
		-0.893521, -0.300757, 0.333414,
		13.801463, 15.157559, 18.797096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.193913, 15.894880, 19.061409>,  <14.426928, 15.368090, 18.563705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.193913, 15.894880, 19.061409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.030805, 15.537664, 19.137518>,  <13.932940, 15.323335, 19.183184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.030805, 15.537664, 19.137518>,  <14.193913, 15.894880, 19.061409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.030805, 15.537664, 19.137518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262804, 0.084777, 0.961118,
		-0.874446, 0.441921, 0.200124,
		-0.407772, -0.893039, 0.190272,
		13.908473, 15.269753, 19.194599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.930825, 15.987458, 19.741966>,  <14.193913, 15.894880, 19.061409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.930825, 15.987458, 19.741966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.972058, 15.593760, 19.684513>,  <13.996799, 15.357540, 19.650042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.972058, 15.593760, 19.684513>,  <13.930825, 15.987458, 19.741966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.972058, 15.593760, 19.684513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121111, -0.130908, 0.983969,
		-0.987272, -0.118827, 0.105708,
		0.103084, -0.984248, -0.143633,
		14.002983, 15.298485, 19.641422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.776785, 15.628482, 20.373552>,  <13.930825, 15.987458, 19.741966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.776785, 15.628482, 20.373552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.905386, 15.301048, 20.183161>,  <13.982547, 15.104589, 20.068926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.905386, 15.301048, 20.183161>,  <13.776785, 15.628482, 20.373552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.905386, 15.301048, 20.183161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094271, -0.472500, 0.876274,
		-0.942204, -0.326595, -0.074741,
		0.321502, -0.818583, -0.475980,
		14.001837, 15.055473, 20.040367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.424166, 15.140621, 20.710825>,  <13.776785, 15.628482, 20.373552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.424166, 15.140621, 20.710825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.711618, 14.926263, 20.533564>,  <13.884089, 14.797648, 20.427206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.711618, 14.926263, 20.533564>,  <13.424166, 15.140621, 20.710825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.711618, 14.926263, 20.533564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284654, -0.354739, 0.890580,
		-0.634462, -0.766144, -0.102382,
		0.718631, -0.535895, -0.443154,
		13.927208, 14.765494, 20.400618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.308447, 14.491632, 20.870811>,  <13.424166, 15.140621, 20.710825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.308447, 14.491632, 20.870811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.692470, 14.457657, 20.764172>,  <13.922883, 14.437271, 20.700188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.692470, 14.457657, 20.764172>,  <13.308447, 14.491632, 20.870811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.692470, 14.457657, 20.764172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219979, -0.359690, 0.906770,
		-0.172914, -0.929198, -0.326638,
		0.960058, -0.084940, -0.266599,
		13.980487, 14.432175, 20.684193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.543826, 13.830683, 20.976219>,  <13.308447, 14.491632, 20.870811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.543826, 13.830683, 20.976219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.860168, 14.075384, 20.983244>,  <14.049973, 14.222205, 20.987459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.860168, 14.075384, 20.983244>,  <13.543826, 13.830683, 20.976219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.860168, 14.075384, 20.983244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167704, -0.244220, 0.955108,
		0.588580, -0.752406, -0.295736,
		0.790853, 0.611754, 0.017562,
		14.097424, 14.258910, 20.988512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.131371, 13.471107, 21.013233>,  <13.543826, 13.830683, 20.976219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.131371, 13.471107, 21.013233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.240044, 13.821353, 21.172977>,  <14.305246, 14.031501, 21.268824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.240044, 13.821353, 21.172977>,  <14.131371, 13.471107, 21.013233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.240044, 13.821353, 21.172977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133419, -0.445229, 0.885421,
		0.953095, -0.187268, -0.237783,
		0.271679, 0.875615, 0.399361,
		14.321548, 14.084038, 21.292786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.738040, 13.261363, 21.525126>,  <14.131371, 13.471107, 21.013233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.738040, 13.261363, 21.525126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.615007, 13.632999, 21.607279>,  <14.541188, 13.855982, 21.656570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.615007, 13.632999, 21.607279>,  <14.738040, 13.261363, 21.525126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.615007, 13.632999, 21.607279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008549, -0.218537, 0.975791,
		0.951483, 0.298380, 0.075160,
		-0.307582, 0.929092, 0.205383,
		14.522733, 13.911727, 21.668894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.245519, 13.454923, 21.933510>,  <14.738040, 13.261363, 21.525126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.245519, 13.454923, 21.933510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.914312, 13.667425, 22.005239>,  <14.715589, 13.794927, 22.048277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.914312, 13.667425, 22.005239>,  <15.245519, 13.454923, 21.933510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.914312, 13.667425, 22.005239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119968, -0.144558, 0.982197,
		0.547720, 0.834788, 0.055963,
		-0.828016, 0.531255, 0.179325,
		14.665908, 13.826802, 22.059036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.337317, 13.836784, 22.603024>,  <15.245519, 13.454923, 21.933510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.337317, 13.836784, 22.603024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945154, 13.814404, 22.527475>,  <14.709857, 13.800975, 22.482147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945154, 13.814404, 22.527475>,  <15.337317, 13.836784, 22.603024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.945154, 13.814404, 22.527475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177522, -0.164583, 0.970257,
		-0.085372, 0.984775, 0.151426,
		-0.980407, -0.055951, -0.188870,
		14.651032, 13.797618, 22.470814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.062241, 13.814662, 23.297213>,  <15.337317, 13.836784, 22.603024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.062241, 13.814662, 23.297213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.748766, 13.714612, 23.069784>,  <14.560681, 13.654582, 22.933327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.748766, 13.714612, 23.069784>,  <15.062241, 13.814662, 23.297213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.748766, 13.714612, 23.069784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518045, -0.241866, 0.820445,
		-0.342732, 0.937517, 0.059971,
		-0.783686, -0.250125, -0.568571,
		14.513660, 13.639574, 22.899212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.427155, 14.075790, 23.657221>,  <15.062241, 13.814662, 23.297213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.427155, 14.075790, 23.657221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.336719, 13.779568, 23.404095>,  <14.282456, 13.601833, 23.252218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.336719, 13.779568, 23.404095>,  <14.427155, 14.075790, 23.657221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.336719, 13.779568, 23.404095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465245, -0.488658, 0.738079,
		-0.855821, 0.461289, -0.234059,
		-0.226093, -0.740558, -0.632816,
		14.268890, 13.557401, 23.214251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.671616, 13.955709, 23.739819>,  <14.427155, 14.075790, 23.657221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.671616, 13.955709, 23.739819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.877983, 13.640084, 23.606426>,  <14.001803, 13.450709, 23.526390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.877983, 13.640084, 23.606426>,  <13.671616, 13.955709, 23.739819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.877983, 13.640084, 23.606426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239961, -0.506823, 0.827979,
		-0.822343, -0.347147, -0.450823,
		0.515918, -0.789063, -0.333481,
		14.032759, 13.403365, 23.506382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.329877, 13.488295, 24.163366>,  <13.671616, 13.955709, 23.739819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.329877, 13.488295, 24.163366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.654696, 13.290590, 24.039246>,  <13.849586, 13.171968, 23.964773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.654696, 13.290590, 24.039246>,  <13.329877, 13.488295, 24.163366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.654696, 13.290590, 24.039246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058926, -0.459553, 0.886194,
		-0.580612, -0.737914, -0.344053,
		0.812045, -0.494261, -0.310304,
		13.898310, 13.142312, 23.946154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.060555, 12.753826, 24.167444>,  <13.329877, 13.488295, 24.163366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.060555, 12.753826, 24.167444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.458744, 12.730625, 24.197567>,  <13.697658, 12.716704, 24.215641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.458744, 12.730625, 24.197567>,  <13.060555, 12.753826, 24.167444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.458744, 12.730625, 24.197567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094456, -0.692307, 0.715394,
		0.010640, -0.719268, -0.694651,
		0.995472, -0.058002, 0.075305,
		13.757385, 12.713224, 24.220158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.213353, 12.067430, 24.234922>,  <13.060555, 12.753826, 24.167444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.213353, 12.067430, 24.234922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.519585, 12.268739, 24.395224>,  <13.703323, 12.389524, 24.491405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.519585, 12.268739, 24.395224>,  <13.213353, 12.067430, 24.234922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.519585, 12.268739, 24.395224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002725, -0.620386, 0.784292,
		0.643336, -0.601529, -0.473583,
		0.765579, 0.503273, 0.400755,
		13.749258, 12.419721, 24.515450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.675472, 11.581596, 24.464256>,  <13.213353, 12.067430, 24.234922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.675472, 11.581596, 24.464256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.800459, 11.887534, 24.689602>,  <13.875451, 12.071097, 24.824808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.800459, 11.887534, 24.689602>,  <13.675472, 11.581596, 24.464256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.800459, 11.887534, 24.689602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172485, -0.628881, 0.758128,
		0.934138, -0.139717, -0.328428,
		0.312465, 0.764845, 0.563363,
		13.894198, 12.116987, 24.858610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.317811, 11.358891, 24.829807>,  <13.675472, 11.581596, 24.464256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.317811, 11.358891, 24.829807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.197733, 11.674319, 25.044485>,  <14.125686, 11.863576, 25.173292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.197733, 11.674319, 25.044485>,  <14.317811, 11.358891, 24.829807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.197733, 11.674319, 25.044485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188642, -0.502453, 0.843774,
		0.935038, 0.354540, 0.002077,
		-0.300196, 0.788570, 0.536694,
		14.107675, 11.910891, 25.205494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.691067, 11.380033, 25.364990>,  <14.317811, 11.358891, 24.829807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.691067, 11.380033, 25.364990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.391825, 11.611139, 25.495543>,  <14.212279, 11.749803, 25.573874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.391825, 11.611139, 25.495543>,  <14.691067, 11.380033, 25.364990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.391825, 11.611139, 25.495543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150731, -0.331039, 0.931501,
		0.646234, 0.746056, 0.160565,
		-0.748105, 0.577765, 0.326383,
		14.167393, 11.784469, 25.593458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.954703, 11.787397, 25.933191>,  <14.691067, 11.380033, 25.364990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.954703, 11.787397, 25.933191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.557407, 11.759848, 25.970572>,  <14.319030, 11.743318, 25.993000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.557407, 11.759848, 25.970572>,  <14.954703, 11.787397, 25.933191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.557407, 11.759848, 25.970572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112370, -0.368282, 0.922898,
		-0.029149, 0.927159, 0.373531,
		-0.993239, -0.068875, 0.093450,
		14.259436, 11.739185, 25.998606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.891924, 12.030853, 26.576941>,  <14.954703, 11.787397, 25.933191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.891924, 12.030853, 26.576941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.562696, 11.819103, 26.494656>,  <14.365158, 11.692054, 26.445286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.562696, 11.819103, 26.494656>,  <14.891924, 12.030853, 26.576941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.562696, 11.819103, 26.494656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056218, -0.436368, 0.898010,
		-0.565149, 0.727562, 0.388922,
		-0.823071, -0.529374, -0.205711,
		14.315774, 11.660291, 26.432943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.497967, 12.070868, 27.159548>,  <14.891924, 12.030853, 26.576941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.497967, 12.070868, 27.159548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.344162, 11.744842, 26.986197>,  <14.251880, 11.549225, 26.882187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.344162, 11.744842, 26.986197>,  <14.497967, 12.070868, 27.159548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.344162, 11.744842, 26.986197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176314, -0.525670, 0.832216,
		-0.906126, 0.243586, 0.345834,
		-0.384511, -0.815068, -0.433376,
		14.228808, 11.500321, 26.856184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.985371, 11.742685, 27.558239>,  <14.497967, 12.070868, 27.159548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.985371, 11.742685, 27.558239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074533, 11.432544, 27.321888>,  <14.128031, 11.246459, 27.180077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074533, 11.432544, 27.321888>,  <13.985371, 11.742685, 27.558239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.074533, 11.432544, 27.321888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037859, -0.598787, 0.800013,
		-0.974104, -0.200698, -0.104120,
		0.222906, -0.775354, -0.590880,
		14.141405, 11.199938, 27.144625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.511832, 11.173506, 27.732540>,  <13.985371, 11.742685, 27.558239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.511832, 11.173506, 27.732540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.838976, 11.010835, 27.569706>,  <14.035262, 10.913232, 27.472006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.838976, 11.010835, 27.569706>,  <13.511832, 11.173506, 27.732540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.838976, 11.010835, 27.569706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115499, -0.577043, 0.808506,
		-0.563698, -0.708266, -0.424974,
		0.817866, -0.406669, -0.407082,
		14.084333, 10.888831, 27.447580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.530223, 10.416833, 27.753302>,  <13.511832, 11.173506, 27.732540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.530223, 10.416833, 27.753302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.913495, 10.527719, 27.724899>,  <14.143458, 10.594250, 27.707857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.913495, 10.527719, 27.724899>,  <13.530223, 10.416833, 27.753302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.913495, 10.527719, 27.724899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243493, -0.659453, 0.711220,
		0.150334, -0.698767, -0.699375,
		0.958181, 0.277214, -0.071007,
		14.200950, 10.610883, 27.703598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.944419, 9.801203, 27.708929>,  <13.530223, 10.416833, 27.753302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.944419, 9.801203, 27.708929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.188936, 10.097559, 27.820215>,  <14.335647, 10.275373, 27.886986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.188936, 10.097559, 27.820215>,  <13.944419, 9.801203, 27.708929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.188936, 10.097559, 27.820215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344907, -0.565810, 0.748932,
		0.712292, -0.361859, -0.601413,
		0.611293, 0.740890, 0.278214,
		14.372324, 10.319826, 27.903679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.378874, 9.526759, 28.142239>,  <13.944419, 9.801203, 27.708929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.378874, 9.526759, 28.142239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.498318, 9.899062, 28.226639>,  <14.569984, 10.122444, 28.277279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.498318, 9.899062, 28.226639>,  <14.378874, 9.526759, 28.142239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.498318, 9.899062, 28.226639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367481, -0.316175, 0.874638,
		0.880790, -0.183637, -0.436448,
		0.298609, 0.930758, 0.211000,
		14.587900, 10.178289, 28.289940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.075061, 9.407400, 28.405954>,  <14.378874, 9.526759, 28.142239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.075061, 9.407400, 28.405954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.951504, 9.755857, 28.558636>,  <14.877369, 9.964931, 28.650244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.951504, 9.755857, 28.558636>,  <15.075061, 9.407400, 28.405954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.951504, 9.755857, 28.558636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138544, -0.355834, 0.924223,
		0.940952, 0.338369, -0.010777,
		-0.308893, 0.871142, 0.381702,
		14.858836, 10.017200, 28.673147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.484480, 9.524447, 28.888632>,  <15.075061, 9.407400, 28.405954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.484480, 9.524447, 28.888632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.180010, 9.763769, 28.988747>,  <14.997328, 9.907362, 29.048815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.180010, 9.763769, 28.988747>,  <15.484480, 9.524447, 28.888632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.180010, 9.763769, 28.988747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135190, -0.231064, 0.963500,
		0.634299, 0.767229, 0.094996,
		-0.761176, 0.598305, 0.250285,
		14.951657, 9.943260, 29.063831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.721505, 9.969646, 29.446009>,  <15.484480, 9.524447, 28.888632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.721505, 9.969646, 29.446009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.328789, 9.906805, 29.488729>,  <15.093159, 9.869101, 29.514362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.328789, 9.906805, 29.488729>,  <15.721505, 9.969646, 29.446009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.328789, 9.906805, 29.488729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153027, -0.320927, 0.934660,
		-0.112560, 0.933984, 0.339124,
		-0.981791, -0.157100, 0.106801,
		15.034251, 9.859675, 29.520769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.715441, 9.909275, 30.185049>,  <15.721505, 9.969646, 29.446009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.715441, 9.909275, 30.185049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.340790, 9.830433, 30.069202>,  <15.115999, 9.783128, 29.999695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.340790, 9.830433, 30.069202>,  <15.715441, 9.909275, 30.185049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.340790, 9.830433, 30.069202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198559, -0.382413, 0.902405,
		-0.288621, 0.902724, 0.319041,
		-0.936628, -0.197105, -0.289616,
		15.059801, 9.771301, 29.982317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254375, 10.178234, 30.674017>,  <15.715441, 9.909275, 30.185049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.254375, 10.178234, 30.674017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.061077, 9.874132, 30.500357>,  <14.945099, 9.691670, 30.396160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.061077, 9.874132, 30.500357>,  <15.254375, 10.178234, 30.674017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.061077, 9.874132, 30.500357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311789, -0.313938, 0.896789,
		-0.818085, 0.568731, -0.085331,
		-0.483243, -0.760255, -0.434152,
		14.916104, 9.646055, 30.370111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.756924, 10.080447, 31.055910>,  <15.254375, 10.178234, 30.674017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.756924, 10.080447, 31.055910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.694765, 9.747484, 30.843138>,  <14.657470, 9.547707, 30.715475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.694765, 9.747484, 30.843138>,  <14.756924, 10.080447, 31.055910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.694765, 9.747484, 30.843138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502955, -0.396784, 0.767853,
		-0.850228, 0.386858, -0.357005,
		-0.155396, -0.832408, -0.531929,
		14.648147, 9.497762, 30.683559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.060466, 10.009418, 31.161787>,  <14.756924, 10.080447, 31.055910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.060466, 10.009418, 31.161787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.223792, 9.656901, 31.066624>,  <14.321788, 9.445391, 31.009525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.223792, 9.656901, 31.066624>,  <14.060466, 10.009418, 31.161787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.223792, 9.656901, 31.066624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446714, -0.420196, 0.789862,
		-0.796069, -0.216234, -0.565259,
		0.408315, -0.881293, -0.237910,
		14.346287, 9.392513, 30.995251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.522074, 9.442255, 31.045805>,  <14.060466, 10.009418, 31.161787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.522074, 9.442255, 31.045805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.867321, 9.292287, 31.181133>,  <14.074470, 9.202306, 31.262331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.867321, 9.292287, 31.181133>,  <13.522074, 9.442255, 31.045805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.867321, 9.292287, 31.181133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488411, -0.449432, 0.747974,
		-0.128378, -0.810830, -0.571028,
		0.863119, -0.374920, 0.338321,
		14.126257, 9.179811, 31.282629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.478051, 8.713477, 31.123188>,  <13.522074, 9.442255, 31.045805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.478051, 8.713477, 31.123188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.740937, 8.838714, 31.397427>,  <13.898669, 8.913856, 31.561970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.740937, 8.838714, 31.397427>,  <13.478051, 8.713477, 31.123188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.740937, 8.838714, 31.397427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476724, -0.531881, 0.699884,
		0.583783, -0.786814, -0.200303,
		0.657216, 0.313091, 0.685596,
		13.938102, 8.932641, 31.603106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.882314, 8.123786, 31.412565>,  <13.478051, 8.713477, 31.123188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.882314, 8.123786, 31.412565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.780392, 8.434190, 31.643349>,  <13.719238, 8.620432, 31.781818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.780392, 8.434190, 31.643349>,  <13.882314, 8.123786, 31.412565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.780392, 8.434190, 31.643349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621317, -0.588579, 0.517243,
		0.740973, -0.226680, 0.632120,
		-0.254804, 0.776010, 0.576961,
		13.703951, 8.666993, 31.816437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.060122, 7.857122, 32.028610>,  <13.882314, 8.123786, 31.412565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.060122, 7.857122, 32.028610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.742476, 8.100194, 32.032703>,  <13.551888, 8.246037, 32.035160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.742476, 8.100194, 32.032703>,  <14.060122, 7.857122, 32.028610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.742476, 8.100194, 32.032703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537462, -0.710017, 0.454984,
		0.283747, 0.355812, 0.890441,
		-0.794117, 0.607679, 0.010230,
		13.504240, 8.282497, 32.035770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.733811, 7.913629, 32.789135>,  <14.060122, 7.857122, 32.028610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.733811, 7.913629, 32.789135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.513504, 7.933269, 32.455849>,  <13.381320, 7.945052, 32.255878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.513504, 7.933269, 32.455849>,  <13.733811, 7.913629, 32.789135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.513504, 7.933269, 32.455849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516031, -0.804648, 0.293690,
		-0.656023, 0.591719, 0.468511,
		-0.550768, 0.049099, -0.833213,
		13.348273, 7.947998, 32.205883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.213130, 7.818306, 33.441063>,  <13.733811, 7.913629, 32.789135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.213130, 7.818306, 33.441063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.057067, 8.169200, 33.329178>,  <13.963429, 8.379736, 33.262047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.057067, 8.169200, 33.329178>,  <14.213130, 7.818306, 33.441063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.057067, 8.169200, 33.329178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920357, 0.380422, -0.090682,
		0.026859, -0.292814, -0.955792,
		-0.390157, 0.877234, -0.279711,
		13.940020, 8.432370, 33.245266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.666258, 8.134881, 32.972576>,  <14.213130, 7.818306, 33.441063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.666258, 8.134881, 32.972576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.444543, 8.422962, 33.139465>,  <14.311514, 8.595811, 33.239597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.444543, 8.422962, 33.139465>,  <14.666258, 8.134881, 32.972576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.444543, 8.422962, 33.139465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830751, 0.509522, 0.224143,
		-0.051155, 0.470847, -0.880731,
		-0.554288, 0.720202, 0.417221,
		14.278256, 8.639023, 33.264633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.059704, 7.594921, 32.566010>,  <14.666258, 8.134881, 32.972576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.059704, 7.594921, 32.566010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.868879, 7.243493, 32.575191>,  <14.754384, 7.032636, 32.580700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.868879, 7.243493, 32.575191>,  <15.059704, 7.594921, 32.566010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.868879, 7.243493, 32.575191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477129, -0.280839, -0.832753,
		0.738079, -0.386322, 0.553168,
		-0.477062, -0.878570, 0.022955,
		14.725760, 6.979922, 32.582077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.562237, 6.981993, 32.588791>,  <15.059704, 7.594921, 32.566010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.562237, 6.981993, 32.588791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.200964, 6.908163, 32.433769>,  <14.984200, 6.863865, 32.340755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.200964, 6.908163, 32.433769>,  <15.562237, 6.981993, 32.588791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.200964, 6.908163, 32.433769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423684, -0.238299, -0.873902,
		0.068947, -0.953491, 0.293429,
		-0.903182, -0.184574, -0.387549,
		14.930009, 6.852791, 32.317505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.455953, 6.342802, 32.201794>,  <15.562237, 6.981993, 32.588791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.455953, 6.342802, 32.201794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.194391, 6.594615, 32.033936>,  <15.037455, 6.745703, 31.933222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.194391, 6.594615, 32.033936>,  <15.455953, 6.342802, 32.201794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.194391, 6.594615, 32.033936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242780, -0.350729, -0.904460,
		-0.716568, -0.693309, 0.076505,
		-0.653902, 0.629533, -0.419642,
		14.998220, 6.783475, 31.908043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.996614, 5.965122, 31.709040>,  <15.455953, 6.342802, 32.201794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.996614, 5.965122, 31.709040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.058431, 6.348073, 31.611433>,  <15.095521, 6.577844, 31.552870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.058431, 6.348073, 31.611433>,  <14.996614, 5.965122, 31.709040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.058431, 6.348073, 31.611433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383359, -0.285740, -0.878287,
		-0.910578, 0.042186, -0.411179,
		0.154542, 0.957378, -0.244016,
		15.104794, 6.635287, 31.538229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.774624, 6.137427, 30.960556>,  <14.996614, 5.965122, 31.709040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.774624, 6.137427, 30.960556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.014395, 6.455358, 30.998369>,  <15.158257, 6.646116, 31.021057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.014395, 6.455358, 30.998369>,  <14.774624, 6.137427, 30.960556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.014395, 6.455358, 30.998369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375530, -0.174959, -0.910146,
		-0.706869, 0.581067, -0.403357,
		0.599427, 0.794827, 0.094535,
		15.194222, 6.693806, 31.026730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.701722, 6.397037, 30.256989>,  <14.774624, 6.137427, 30.960556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.701722, 6.397037, 30.256989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.036076, 6.556936, 30.407455>,  <15.236688, 6.652875, 30.497736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.036076, 6.556936, 30.407455>,  <14.701722, 6.397037, 30.256989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.036076, 6.556936, 30.407455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334993, 0.171374, -0.926504,
		-0.434833, 0.900463, 0.009336,
		0.835883, 0.399747, 0.376168,
		15.286840, 6.676860, 30.520306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.857740, 6.837488, 29.816202>,  <14.701722, 6.397037, 30.256989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.857740, 6.837488, 29.816202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.190454, 6.845003, 30.038113>,  <15.390083, 6.849512, 30.171259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.190454, 6.845003, 30.038113>,  <14.857740, 6.837488, 29.816202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.190454, 6.845003, 30.038113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513775, 0.352328, -0.782241,
		-0.210160, 0.935688, 0.283409,
		0.831786, 0.018787, 0.554778,
		15.439990, 6.850639, 30.204546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.183476, 7.521411, 29.833786>,  <14.857740, 6.837488, 29.816202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.183476, 7.521411, 29.833786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.467996, 7.248570, 29.901657>,  <15.638707, 7.084866, 29.942381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.467996, 7.248570, 29.901657>,  <15.183476, 7.521411, 29.833786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.467996, 7.248570, 29.901657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555323, 0.397358, -0.730564,
		0.430896, 0.613876, 0.661427,
		0.711298, -0.682103, 0.169680,
		15.681385, 7.043939, 29.952560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.902864, 7.812878, 30.012726>,  <15.183476, 7.521411, 29.833786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.902864, 7.812878, 30.012726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.955420, 7.465077, 29.822271>,  <15.986955, 7.256397, 29.707998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.955420, 7.465077, 29.822271>,  <15.902864, 7.812878, 30.012726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.955420, 7.465077, 29.822271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545042, 0.464551, -0.697941,
		0.828049, -0.167811, 0.534952,
		0.131391, -0.869501, -0.476135,
		15.994838, 7.204227, 29.679430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.639343, 7.766580, 29.809504>,  <15.902864, 7.812878, 30.012726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.639343, 7.766580, 29.809504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.474653, 7.482992, 29.580473>,  <16.375839, 7.312839, 29.443054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.474653, 7.482992, 29.580473>,  <16.639343, 7.766580, 29.809504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.474653, 7.482992, 29.580473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443487, 0.393005, -0.805522,
		0.796117, -0.585584, 0.152610,
		-0.411724, -0.708970, -0.572577,
		16.351135, 7.270300, 29.408699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.184258, 7.456304, 29.353218>,  <16.639343, 7.766580, 29.809504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.184258, 7.456304, 29.353218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.832188, 7.397244, 29.172775>,  <16.620947, 7.361809, 29.064510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.832188, 7.397244, 29.172775>,  <17.184258, 7.456304, 29.353218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.832188, 7.397244, 29.172775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381211, 0.346347, -0.857159,
		0.282797, -0.926414, -0.248560,
		-0.880173, -0.147649, -0.451105,
		16.568136, 7.352950, 29.037443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.298155, 7.119593, 28.720770>,  <17.184258, 7.456304, 29.353218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.298155, 7.119593, 28.720770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.916096, 7.212874, 28.647762>,  <16.686861, 7.268843, 28.603958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.916096, 7.212874, 28.647762>,  <17.298155, 7.119593, 28.720770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.916096, 7.212874, 28.647762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185019, -0.011308, -0.982670,
		-0.231226, -0.972362, -0.032346,
		-0.955145, 0.233204, -0.182520,
		16.629553, 7.282835, 28.593006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.092646, 6.679729, 28.129335>,  <17.298155, 7.119593, 28.720770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.092646, 6.679729, 28.129335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.857817, 7.001361, 28.166864>,  <16.716919, 7.194340, 28.189381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.857817, 7.001361, 28.166864>,  <17.092646, 6.679729, 28.129335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.857817, 7.001361, 28.166864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103974, 0.189828, -0.976296,
		-0.802831, -0.563400, -0.195045,
		-0.587070, 0.804081, 0.093821,
		16.681696, 7.242585, 28.195011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650707, 6.675149, 27.619452>,  <17.092646, 6.679729, 28.129335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.650707, 6.675149, 27.619452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.656309, 7.059244, 27.730984>,  <16.659670, 7.289701, 27.797903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.656309, 7.059244, 27.730984>,  <16.650707, 6.675149, 27.619452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.656309, 7.059244, 27.730984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036227, 0.278189, -0.959843,
		-0.999245, 0.023543, -0.030891,
		0.014004, 0.960238, 0.278832,
		16.660511, 7.347315, 27.814634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.332466, 6.996622, 26.928171>,  <16.650707, 6.675149, 27.619452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.332466, 6.996622, 26.928171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.518734, 7.279391, 27.141117>,  <16.630495, 7.449052, 27.268885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.518734, 7.279391, 27.141117>,  <16.332466, 6.996622, 26.928171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.518734, 7.279391, 27.141117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249415, 0.472343, -0.845390,
		-0.849083, 0.526454, 0.043640,
		0.465672, 0.706922, 0.532364,
		16.658436, 7.491467, 27.300827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.965621, 7.651217, 26.820215>,  <16.332466, 6.996622, 26.928171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.965621, 7.651217, 26.820215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.332542, 7.766818, 26.929781>,  <16.552696, 7.836178, 26.995522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.332542, 7.766818, 26.929781>,  <15.965621, 7.651217, 26.820215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.332542, 7.766818, 26.929781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101557, 0.495351, -0.862736,
		-0.385018, 0.819210, 0.425037,
		0.917305, 0.289003, 0.273916,
		16.607735, 7.853518, 27.011955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.014799, 8.422376, 26.755072>,  <15.965621, 7.651217, 26.820215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.014799, 8.422376, 26.755072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.387257, 8.277029, 26.742855>,  <16.610731, 8.189821, 26.735525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.387257, 8.277029, 26.742855>,  <16.014799, 8.422376, 26.755072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.387257, 8.277029, 26.742855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210536, 0.604109, -0.768588,
		0.297728, 0.709238, 0.639015,
		0.931146, -0.363366, -0.030540,
		16.666601, 8.168019, 26.733694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.398880, 9.087855, 26.658783>,  <16.014799, 8.422376, 26.755072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.398880, 9.087855, 26.658783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.606155, 8.763824, 26.549053>,  <16.730520, 8.569405, 26.483215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.606155, 8.763824, 26.549053>,  <16.398880, 9.087855, 26.658783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.606155, 8.763824, 26.549053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130007, 0.391624, -0.910894,
		0.845329, 0.436350, 0.308251,
		0.518187, -0.810080, -0.274323,
		16.761612, 8.520800, 26.466757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.976843, 9.278229, 26.294027>,  <16.398880, 9.087855, 26.658783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.976843, 9.278229, 26.294027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.948921, 8.895266, 26.181955>,  <16.932169, 8.665488, 26.114712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.948921, 8.895266, 26.181955>,  <16.976843, 9.278229, 26.294027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.948921, 8.895266, 26.181955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146422, 0.267987, -0.952230,
		0.986756, -0.107493, 0.121479,
		-0.069804, -0.957407, -0.280178,
		16.927980, 8.608044, 26.097902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.309576, 9.271870, 25.678040>,  <16.976843, 9.278229, 26.294027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.309576, 9.271870, 25.678040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.111143, 8.925248, 25.656170>,  <16.992085, 8.717276, 25.643047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.111143, 8.925248, 25.656170>,  <17.309576, 9.271870, 25.678040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.111143, 8.925248, 25.656170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216765, 0.184576, -0.958616,
		0.840783, -0.463700, -0.279403,
		-0.496081, -0.866553, -0.054675,
		16.962318, 8.665282, 25.639767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.631239, 8.892697, 25.120459>,  <17.309576, 9.271870, 25.678040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.631239, 8.892697, 25.120459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.263760, 8.740846, 25.164042>,  <17.043272, 8.649734, 25.190191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.263760, 8.740846, 25.164042>,  <17.631239, 8.892697, 25.120459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.263760, 8.740846, 25.164042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238916, 0.314499, -0.918700,
		0.314499, -0.870041, -0.379630,
		0.918700, 0.379630, -0.108957,
		16.988150, 8.626957, 25.196728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.394875, 8.891612, 24.466984>,  <17.631239, 8.892697, 25.120459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.394875, 8.891612, 24.466984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.050346, 8.831244, 24.661036>,  <16.843630, 8.795024, 24.777468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.050346, 8.831244, 24.661036>,  <17.394875, 8.891612, 24.466984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.050346, 8.831244, 24.661036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507784, 0.287380, -0.812138,
		-0.016849, -0.945852, -0.324161,
		-0.861320, -0.150920, 0.485131,
		16.791950, 8.785969, 24.806576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.144991, 8.386371, 24.130825>,  <17.394875, 8.891612, 24.466984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.144991, 8.386371, 24.130825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.890783, 8.639658, 24.307529>,  <16.738258, 8.791631, 24.413551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.890783, 8.639658, 24.307529>,  <17.144991, 8.386371, 24.130825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.890783, 8.639658, 24.307529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253298, 0.369503, -0.894040,
		-0.729355, -0.680074, -0.074432,
		-0.635517, 0.633219, 0.441760,
		16.700129, 8.829624, 24.440058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.675589, 8.406773, 23.670845>,  <17.144991, 8.386371, 24.130825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.675589, 8.406773, 23.670845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.579908, 8.732643, 23.882160>,  <16.522501, 8.928165, 24.008949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.579908, 8.732643, 23.882160>,  <16.675589, 8.406773, 23.670845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.579908, 8.732643, 23.882160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300800, 0.455140, -0.838074,
		-0.923203, -0.359375, 0.136185,
		-0.239200, 0.814676, 0.528286,
		16.508148, 8.977046, 24.040646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.012396, 8.586525, 23.410931>,  <16.675589, 8.406773, 23.670845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.012396, 8.586525, 23.410931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.112955, 8.918152, 23.610710>,  <16.173290, 9.117127, 23.730577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.112955, 8.918152, 23.610710>,  <16.012396, 8.586525, 23.410931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.112955, 8.918152, 23.610710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412766, 0.558578, -0.719455,
		-0.875456, -0.025286, 0.482636,
		0.251397, 0.829067, 0.499448,
		16.188374, 9.166872, 23.760544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.386071, 9.049963, 23.482302>,  <16.012396, 8.586525, 23.410931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.386071, 9.049963, 23.482302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.710903, 9.279223, 23.526165>,  <15.905803, 9.416780, 23.552483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.710903, 9.279223, 23.526165>,  <15.386071, 9.049963, 23.482302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.710903, 9.279223, 23.526165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361732, 0.641885, -0.676117,
		-0.457904, 0.509394, 0.728589,
		0.812080, 0.573150, 0.109657,
		15.954527, 9.451169, 23.559063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.179711, 9.815919, 23.575176>,  <15.386071, 9.049963, 23.482302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.179711, 9.815919, 23.575176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.561776, 9.842889, 23.459854>,  <15.791015, 9.859071, 23.390661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.561776, 9.842889, 23.459854>,  <15.179711, 9.815919, 23.575176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.561776, 9.842889, 23.459854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259723, 0.658325, -0.706507,
		0.142163, 0.749708, 0.646318,
		0.955162, 0.067424, -0.288305,
		15.848325, 9.863116, 23.373362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.267970, 10.437734, 23.331255>,  <15.179711, 9.815919, 23.575176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.267970, 10.437734, 23.331255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.600925, 10.282768, 23.172743>,  <15.800699, 10.189789, 23.077635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.600925, 10.282768, 23.172743>,  <15.267970, 10.437734, 23.331255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.600925, 10.282768, 23.172743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062902, 0.644395, -0.762102,
		0.550610, 0.659292, 0.512018,
		0.832389, -0.387414, -0.396281,
		15.850642, 10.166544, 23.053858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.748661, 11.010588, 23.165312>,  <15.267970, 10.437734, 23.331255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.748661, 11.010588, 23.165312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.868738, 10.692578, 22.954477>,  <15.940784, 10.501773, 22.827976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.868738, 10.692578, 22.954477>,  <15.748661, 11.010588, 23.165312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.868738, 10.692578, 22.954477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041976, 0.563048, -0.825357,
		0.952955, 0.225641, 0.202394,
		0.300192, -0.795024, -0.527088,
		15.958796, 10.454071, 22.796350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.328333, 11.310635, 22.727993>,  <15.748661, 11.010588, 23.165312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.328333, 11.310635, 22.727993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.187778, 10.980146, 22.551861>,  <16.103447, 10.781854, 22.446182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.187778, 10.980146, 22.551861>,  <16.328333, 11.310635, 22.727993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.187778, 10.980146, 22.551861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005335, 0.468547, -0.883422,
		0.936216, -0.312770, -0.160233,
		-0.351385, -0.826220, -0.440329,
		16.082363, 10.732281, 22.419762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.794735, 11.205068, 22.240551>,  <16.328333, 11.310635, 22.727993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.794735, 11.205068, 22.240551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.452013, 11.028374, 22.134150>,  <16.246380, 10.922358, 22.070309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.452013, 11.028374, 22.134150>,  <16.794735, 11.205068, 22.240551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.452013, 11.028374, 22.134150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041096, 0.455727, -0.889170,
		0.514002, -0.772776, -0.372315,
		-0.856804, -0.441735, -0.266003,
		16.194971, 10.895854, 22.054348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.938778, 10.948052, 21.549337>,  <16.794735, 11.205068, 22.240551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.938778, 10.948052, 21.549337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.539724, 10.961699, 21.573215>,  <16.300293, 10.969888, 21.587542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.539724, 10.961699, 21.573215>,  <16.938778, 10.948052, 21.549337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.539724, 10.961699, 21.573215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044494, 0.341542, -0.938813,
		-0.052419, -0.939247, -0.339216,
		-0.997634, 0.034118, 0.059694,
		16.240435, 10.971934, 21.591124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.639654, 10.690582, 20.921379>,  <16.938778, 10.948052, 21.549337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.639654, 10.690582, 20.921379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.337908, 10.897946, 21.082468>,  <16.156860, 11.022365, 21.179121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.337908, 10.897946, 21.082468>,  <16.639654, 10.690582, 20.921379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.337908, 10.897946, 21.082468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180772, 0.425709, -0.886619,
		-0.631074, -0.741635, -0.227426,
		-0.754365, 0.518410, 0.402721,
		16.111599, 11.053470, 21.203285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.090723, 10.657785, 20.455475>,  <16.639654, 10.690582, 20.921379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.090723, 10.657785, 20.455475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.001633, 10.989239, 20.660906>,  <15.948178, 11.188110, 20.784164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.001633, 10.989239, 20.660906>,  <16.090723, 10.657785, 20.455475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.001633, 10.989239, 20.660906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218869, 0.470857, -0.854629,
		-0.949994, -0.302755, 0.076489,
		-0.222727, 0.828633, 0.513575,
		15.934814, 11.237828, 20.814978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.450727, 10.969545, 20.159584>,  <16.090723, 10.657785, 20.455475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.450727, 10.969545, 20.159584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.630369, 11.272499, 20.349184>,  <15.738154, 11.454271, 20.462944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.630369, 11.272499, 20.349184>,  <15.450727, 10.969545, 20.159584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.630369, 11.272499, 20.349184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107302, 0.572391, -0.812930,
		-0.887013, 0.314228, 0.338331,
		0.449103, 0.757383, 0.474001,
		15.765100, 11.499714, 20.491385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.153730, 11.516926, 19.867653>,  <15.450727, 10.969545, 20.159584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.153730, 11.516926, 19.867653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.455319, 11.698301, 20.057777>,  <15.636272, 11.807126, 20.171852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.455319, 11.698301, 20.057777>,  <15.153730, 11.516926, 19.867653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.455319, 11.698301, 20.057777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001309, 0.724594, -0.689175,
		-0.656905, 0.518997, 0.546917,
		0.753973, 0.453438, 0.475310,
		15.681511, 11.834332, 20.200371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.949791, 12.168530, 19.899734>,  <15.153730, 11.516926, 19.867653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.949791, 12.168530, 19.899734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347262, 12.182072, 19.942551>,  <15.585745, 12.190197, 19.968241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347262, 12.182072, 19.942551>,  <14.949791, 12.168530, 19.899734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.347262, 12.182072, 19.942551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059768, 0.647589, -0.759642,
		-0.095037, 0.761237, 0.641471,
		0.993678, 0.033855, 0.107042,
		15.645366, 12.192228, 19.974663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.203893, 12.972876, 19.945591>,  <14.949791, 12.168530, 19.899734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.203893, 12.972876, 19.945591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.508860, 12.736106, 19.841019>,  <15.691839, 12.594044, 19.778275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.508860, 12.736106, 19.841019>,  <15.203893, 12.972876, 19.945591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.508860, 12.736106, 19.841019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320099, 0.696117, -0.642619,
		0.562368, 0.406259, 0.720205,
		0.762416, -0.591925, -0.261431,
		15.737584, 12.558529, 19.762589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.795494, 13.409493, 19.860096>,  <15.203893, 12.972876, 19.945591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.795494, 13.409493, 19.860096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.877945, 13.081890, 19.645905>,  <15.927416, 12.885328, 19.517389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.877945, 13.081890, 19.645905>,  <15.795494, 13.409493, 19.860096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.877945, 13.081890, 19.645905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017340, 0.544087, -0.838850,
		0.978372, 0.182195, 0.097950,
		0.206127, -0.819008, -0.535478,
		15.939783, 12.836187, 19.485262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330618, 13.672159, 19.450520>,  <15.795494, 13.409493, 19.860096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.330618, 13.672159, 19.450520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.209148, 13.334208, 19.274353>,  <16.136267, 13.131438, 19.168653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.209148, 13.334208, 19.274353>,  <16.330618, 13.672159, 19.450520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.209148, 13.334208, 19.274353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188041, 0.400007, -0.897014,
		0.934035, -0.355218, 0.037399,
		-0.303676, -0.844876, -0.440416,
		16.118046, 13.080746, 19.142229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.825848, 13.342411, 18.925016>,  <16.330618, 13.672159, 19.450520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.825848, 13.342411, 18.925016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.467028, 13.197132, 18.824306>,  <16.251736, 13.109964, 18.763880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.467028, 13.197132, 18.824306>,  <16.825848, 13.342411, 18.925016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.467028, 13.197132, 18.824306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154818, 0.275346, -0.948797,
		0.413927, -0.890096, -0.190769,
		-0.897049, -0.363199, -0.251776,
		16.197912, 13.088173, 18.748774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.032763, 13.040019, 18.358982>,  <16.825848, 13.342411, 18.925016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.032763, 13.040019, 18.358982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.640646, 13.118161, 18.347231>,  <16.405376, 13.165047, 18.340179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.640646, 13.118161, 18.347231>,  <17.032763, 13.040019, 18.358982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.640646, 13.118161, 18.347231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120481, 0.473349, -0.872597,
		-0.156561, -0.858939, -0.487557,
		-0.980292, 0.195356, -0.029377,
		16.346558, 13.176768, 18.338417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.922985, 12.284787, 17.964211>,  <17.032763, 13.040019, 18.358982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.922985, 12.284787, 17.964211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.194094, 12.094000, 17.740379>,  <17.356758, 11.979527, 17.606081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.194094, 12.094000, 17.740379>,  <16.922985, 12.284787, 17.964211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.194094, 12.094000, 17.740379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251271, -0.564979, 0.785915,
		-0.691007, -0.673275, -0.263077,
		0.677770, -0.476969, -0.559579,
		17.397425, 11.950910, 17.572506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.863363, 11.560667, 18.013569>,  <16.922985, 12.284787, 17.964211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.863363, 11.560667, 18.013569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.243759, 11.625818, 17.908428>,  <17.471996, 11.664908, 17.845343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.243759, 11.625818, 17.908428>,  <16.863363, 11.560667, 18.013569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.243759, 11.625818, 17.908428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309222, -0.505042, 0.805801,
		-0.001505, -0.847587, -0.530654,
		0.950988, 0.162877, -0.262853,
		17.529057, 11.674682, 17.829573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.256729, 10.947403, 18.255516>,  <16.863363, 11.560667, 18.013569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.256729, 10.947403, 18.255516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.540358, 11.218477, 18.177584>,  <17.710535, 11.381122, 18.130825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.540358, 11.218477, 18.177584>,  <17.256729, 10.947403, 18.255516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.540358, 11.218477, 18.177584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600812, -0.436014, 0.670012,
		0.369110, -0.592142, -0.716328,
		0.709072, 0.677687, -0.194829,
		17.753078, 11.421783, 18.119135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.907072, 10.537951, 18.177170>,  <17.256729, 10.947403, 18.255516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.907072, 10.537951, 18.177170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.968760, 10.910852, 18.308088>,  <18.005772, 11.134593, 18.386641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.968760, 10.910852, 18.308088>,  <17.907072, 10.537951, 18.177170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.968760, 10.910852, 18.308088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479903, -0.360238, 0.799951,
		0.863660, 0.033702, -0.502946,
		0.154221, 0.932251, 0.327297,
		18.015026, 11.190528, 18.406277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.640594, 10.504301, 18.436266>,  <17.907072, 10.537951, 18.177170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.640594, 10.504301, 18.436266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.476297, 10.831441, 18.597467>,  <18.377718, 11.027725, 18.694187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.476297, 10.831441, 18.597467>,  <18.640594, 10.504301, 18.436266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.476297, 10.831441, 18.597467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319204, -0.285044, 0.903803,
		0.854048, 0.499872, -0.143981,
		-0.410745, 0.817850, 0.403002,
		18.353073, 11.076796, 18.718369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.146177, 10.868751, 18.749802>,  <18.640594, 10.504301, 18.436266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.146177, 10.868751, 18.749802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.795935, 10.972396, 18.912859>,  <18.585789, 11.034583, 19.010695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.795935, 10.972396, 18.912859>,  <19.146177, 10.868751, 18.749802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.795935, 10.972396, 18.912859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394332, -0.103928, 0.913072,
		0.278956, 0.960239, -0.011177,
		-0.875606, 0.259114, 0.407644,
		18.533253, 11.050130, 19.035152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.389885, 11.305527, 19.182571>,  <19.146177, 10.868751, 18.749802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.389885, 11.305527, 19.182571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.022472, 11.241543, 19.327188>,  <18.802025, 11.203153, 19.413960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.022472, 11.241543, 19.327188>,  <19.389885, 11.305527, 19.182571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.022472, 11.241543, 19.327188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393045, -0.270900, 0.878708,
		-0.042615, 0.949224, 0.311701,
		-0.918531, -0.159959, 0.361544,
		18.746914, 11.193555, 19.435652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.261913, 11.628343, 19.803579>,  <19.389885, 11.305527, 19.182571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.261913, 11.628343, 19.803579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.981825, 11.344221, 19.832308>,  <18.813772, 11.173748, 19.849545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.981825, 11.344221, 19.832308>,  <19.261913, 11.628343, 19.803579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.981825, 11.344221, 19.832308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285385, -0.186273, 0.940137,
		-0.654404, 0.678802, 0.333143,
		-0.700222, -0.710303, 0.071822,
		18.771759, 11.131130, 19.853855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.014416, 11.727489, 20.399691>,  <19.261913, 11.628343, 19.803579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.014416, 11.727489, 20.399691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.879984, 11.360084, 20.316380>,  <18.799324, 11.139640, 20.266392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.879984, 11.360084, 20.316380>,  <19.014416, 11.727489, 20.399691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.879984, 11.360084, 20.316380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219592, -0.291465, 0.931036,
		-0.915876, 0.267166, 0.299654,
		-0.336080, -0.918515, -0.208279,
		18.779160, 11.084529, 20.253897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.409069, 11.544392, 20.743517>,  <19.014416, 11.727489, 20.399691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.409069, 11.544392, 20.743517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.586777, 11.195496, 20.661715>,  <18.693401, 10.986158, 20.612633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.586777, 11.195496, 20.661715>,  <18.409069, 11.544392, 20.743517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.586777, 11.195496, 20.661715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072149, -0.192695, 0.978603,
		-0.892983, -0.449519, -0.022677,
		0.444270, -0.872239, -0.204506,
		18.720058, 10.933824, 20.600363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.027668, 11.076365, 21.159100>,  <18.409069, 11.544392, 20.743517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.027668, 11.076365, 21.159100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337484, 10.856112, 21.034590>,  <18.523375, 10.723961, 20.959883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337484, 10.856112, 21.034590>,  <18.027668, 11.076365, 21.159100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.337484, 10.856112, 21.034590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025679, -0.519083, 0.854338,
		-0.632006, -0.653724, -0.416189,
		0.774538, -0.550634, -0.311276,
		18.569845, 10.690923, 20.941208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.877441, 10.315063, 21.212826>,  <18.027668, 11.076365, 21.159100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.877441, 10.315063, 21.212826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.268967, 10.392112, 21.240606>,  <18.503881, 10.438341, 21.257275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.268967, 10.392112, 21.240606>,  <17.877441, 10.315063, 21.212826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.268967, 10.392112, 21.240606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019563, -0.249650, 0.968138,
		0.203823, -0.948984, -0.240593,
		0.978812, 0.192622, 0.069450,
		18.562611, 10.449899, 21.261440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.198555, 9.711666, 21.430042>,  <17.877441, 10.315063, 21.212826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.198555, 9.711666, 21.430042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.506712, 9.958759, 21.493168>,  <18.691607, 10.107015, 21.531042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.506712, 9.958759, 21.493168>,  <18.198555, 9.711666, 21.430042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.506712, 9.958759, 21.493168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186242, -0.454762, 0.870922,
		0.609764, -0.641559, -0.465392,
		0.770391, 0.617732, 0.157812,
		18.737829, 10.144079, 21.540512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.780443, 9.306922, 21.617271>,  <18.198555, 9.711666, 21.430042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.780443, 9.306922, 21.617271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.827909, 9.678810, 21.756721>,  <18.856390, 9.901943, 21.840391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.827909, 9.678810, 21.756721>,  <18.780443, 9.306922, 21.617271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.827909, 9.678810, 21.756721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197802, -0.366203, 0.909269,
		0.973033, -0.038941, -0.227356,
		0.118666, 0.929720, 0.348625,
		18.863510, 9.957726, 21.861309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.325117, 9.168832, 22.040361>,  <18.780443, 9.306922, 21.617271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.325117, 9.168832, 22.040361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.214895, 9.536337, 22.153458>,  <19.148762, 9.756840, 22.221315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.214895, 9.536337, 22.153458>,  <19.325117, 9.168832, 22.040361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.214895, 9.536337, 22.153458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109395, -0.262245, 0.958780,
		0.955040, 0.295129, -0.028245,
		-0.275557, 0.918763, 0.282740,
		19.132229, 9.811966, 22.238279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.875088, 9.438388, 22.455826>,  <19.325117, 9.168832, 22.040361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.875088, 9.438388, 22.455826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.560543, 9.670700, 22.540043>,  <19.371817, 9.810087, 22.590574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.560543, 9.670700, 22.540043>,  <19.875088, 9.438388, 22.455826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.560543, 9.670700, 22.540043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126391, -0.182354, 0.975076,
		0.604698, 0.793373, 0.069991,
		-0.786362, 0.580780, 0.210545,
		19.324635, 9.844934, 22.603207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.119051, 9.975412, 22.937572>,  <19.875088, 9.438388, 22.455826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.119051, 9.975412, 22.937572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.724464, 9.925437, 22.980040>,  <19.487713, 9.895452, 23.005520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.724464, 9.925437, 22.980040>,  <20.119051, 9.975412, 22.937572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.724464, 9.925437, 22.980040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129923, -0.200698, 0.971000,
		-0.100007, 0.971654, 0.214215,
		-0.986468, -0.124939, 0.106169,
		19.428524, 9.887956, 23.011890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.938950, 10.265510, 23.634956>,  <20.119051, 9.975412, 22.937572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.938950, 10.265510, 23.634956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.611881, 10.055553, 23.540382>,  <19.415640, 9.929580, 23.483637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.611881, 10.055553, 23.540382>,  <19.938950, 10.265510, 23.634956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.611881, 10.055553, 23.540382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039537, -0.358534, 0.932679,
		-0.574324, 0.771975, 0.272411,
		-0.817673, -0.524889, -0.236436,
		19.366579, 9.898087, 23.469452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.475031, 10.365498, 24.213175>,  <19.938950, 10.265510, 23.634956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.475031, 10.365498, 24.213175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.330061, 10.042104, 24.027702>,  <19.243080, 9.848067, 23.916418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.330061, 10.042104, 24.027702>,  <19.475031, 10.365498, 24.213175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.330061, 10.042104, 24.027702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096190, -0.462402, 0.881437,
		-0.927037, 0.364055, 0.089817,
		-0.362423, -0.808486, -0.463682,
		19.221334, 9.799558, 23.888597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.769768, 10.154791, 24.508942>,  <19.475031, 10.365498, 24.213175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.769768, 10.154791, 24.508942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.884165, 9.811784, 24.337887>,  <18.952803, 9.605980, 24.235254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.884165, 9.811784, 24.337887>,  <18.769768, 10.154791, 24.508942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.884165, 9.811784, 24.337887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069742, -0.463719, 0.883233,
		-0.955691, -0.222773, -0.192425,
		0.285991, -0.857518, -0.427635,
		18.969963, 9.554528, 24.209597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.400652, 9.535737, 24.878918>,  <18.769768, 10.154791, 24.508942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.400652, 9.535737, 24.878918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.719095, 9.371732, 24.700882>,  <18.910160, 9.273329, 24.594061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.719095, 9.371732, 24.700882>,  <18.400652, 9.535737, 24.878918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.719095, 9.371732, 24.700882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220505, -0.488387, 0.844308,
		-0.563556, -0.770302, -0.298396,
		0.796105, -0.410017, -0.445089,
		18.957928, 9.248728, 24.567356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.373228, 8.845964, 25.067850>,  <18.400652, 9.535737, 24.878918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.373228, 8.845964, 25.067850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.753996, 8.887829, 24.952686>,  <18.982456, 8.912948, 24.883589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.753996, 8.887829, 24.952686>,  <18.373228, 8.845964, 25.067850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.753996, 8.887829, 24.952686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303884, -0.441436, 0.844268,
		-0.038730, -0.891168, -0.452018,
		0.951921, 0.104662, -0.287909,
		19.039572, 8.919228, 24.866314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.686571, 8.211285, 25.184387>,  <18.373228, 8.845964, 25.067850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.686571, 8.211285, 25.184387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.005831, 8.452065, 25.174469>,  <19.197386, 8.596533, 25.168518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.005831, 8.452065, 25.174469>,  <18.686571, 8.211285, 25.184387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.005831, 8.452065, 25.174469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361442, -0.445511, 0.819073,
		0.481995, -0.662703, -0.573154,
		0.798148, 0.601951, -0.024794,
		19.245275, 8.632649, 25.167030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.243359, 7.780219, 25.282408>,  <18.686571, 8.211285, 25.184387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.243359, 7.780219, 25.282408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.365234, 8.144179, 25.395010>,  <19.438360, 8.362556, 25.462572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.365234, 8.144179, 25.395010>,  <19.243359, 7.780219, 25.282408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.365234, 8.144179, 25.395010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301363, -0.372473, 0.877749,
		0.903518, -0.182604, -0.387699,
		0.304688, 0.909901, 0.281506,
		19.456640, 8.417150, 25.479462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.862419, 7.693616, 25.736795>,  <19.243359, 7.780219, 25.282408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.862419, 7.693616, 25.736795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.693447, 8.048778, 25.809662>,  <19.592064, 8.261874, 25.853382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.693447, 8.048778, 25.809662>,  <19.862419, 7.693616, 25.736795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.693447, 8.048778, 25.809662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280260, -0.063177, 0.957843,
		0.861980, 0.455673, -0.222156,
		-0.422428, 0.887902, 0.182165,
		19.566719, 8.315148, 25.864311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.218597, 7.847327, 26.319082>,  <19.862419, 7.693616, 25.736795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.218597, 7.847327, 26.319082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.897455, 8.084229, 26.291788>,  <19.704769, 8.226369, 26.275412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.897455, 8.084229, 26.291788>,  <20.218597, 7.847327, 26.319082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.897455, 8.084229, 26.291788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146177, -0.084600, 0.985634,
		0.577972, 0.801298, 0.154495,
		-0.802858, 0.592253, -0.068235,
		19.656597, 8.261905, 26.271318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.291431, 8.463592, 26.927040>,  <20.218597, 7.847327, 26.319082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.291431, 8.463592, 26.927040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.917042, 8.380277, 26.813501>,  <19.692408, 8.330288, 26.745378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.917042, 8.380277, 26.813501>,  <20.291431, 8.463592, 26.927040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.917042, 8.380277, 26.813501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288132, -0.010125, 0.957537,
		-0.202317, 0.978015, -0.050538,
		-0.935974, -0.208288, -0.283846,
		19.636250, 8.317790, 26.728348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.937057, 8.960711, 27.362974>,  <20.291431, 8.463592, 26.927040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.937057, 8.960711, 27.362974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.659742, 8.692392, 27.257610>,  <19.493353, 8.531401, 27.194391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.659742, 8.692392, 27.257610>,  <19.937057, 8.960711, 27.362974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.659742, 8.692392, 27.257610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392731, 0.045203, 0.918542,
		-0.604248, 0.740263, -0.294781,
		-0.693287, -0.670797, -0.263410,
		19.451756, 8.491154, 27.178587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.353624, 9.197644, 27.575197>,  <19.937057, 8.960711, 27.362974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.353624, 9.197644, 27.575197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.313658, 8.799922, 27.560389>,  <19.289677, 8.561289, 27.551502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.313658, 8.799922, 27.560389>,  <19.353624, 9.197644, 27.575197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.313658, 8.799922, 27.560389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384636, 0.004282, 0.923058,
		-0.917645, 0.106470, -0.382874,
		-0.099918, -0.994307, -0.037023,
		19.283682, 8.501630, 27.549282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.608612, 9.049489, 27.800755>,  <19.353624, 9.197644, 27.575197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.608612, 9.049489, 27.800755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.774326, 8.687929, 27.843334>,  <18.873755, 8.470993, 27.868881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.774326, 8.687929, 27.843334>,  <18.608612, 9.049489, 27.800755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.774326, 8.687929, 27.843334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369198, -0.059997, 0.927412,
		-0.831901, -0.423515, -0.358573,
		0.414287, -0.903900, 0.106449,
		18.898613, 8.416759, 27.875269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.170235, 8.697340, 28.238594>,  <18.608612, 9.049489, 27.800755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.170235, 8.697340, 28.238594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.486708, 8.454173, 28.265333>,  <18.676592, 8.308273, 28.281378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.486708, 8.454173, 28.265333>,  <18.170235, 8.697340, 28.238594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.486708, 8.454173, 28.265333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288422, -0.274500, 0.917313,
		-0.539301, -0.745041, -0.392516,
		0.791181, -0.607918, 0.066848,
		18.724062, 8.271798, 28.285387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.924402, 7.988162, 28.489849>,  <18.170235, 8.697340, 28.238594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.924402, 7.988162, 28.489849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.307690, 8.043900, 28.589769>,  <18.537663, 8.077342, 28.649721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.307690, 8.043900, 28.589769>,  <17.924402, 7.988162, 28.489849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.307690, 8.043900, 28.589769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208323, -0.258472, 0.943289,
		0.196008, -0.955916, -0.218644,
		0.958218, 0.139343, 0.249801,
		18.595156, 8.085703, 28.664709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.169996, 7.408137, 28.795393>,  <17.924402, 7.988162, 28.489849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.169996, 7.408137, 28.795393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.400484, 7.704329, 28.933764>,  <18.538776, 7.882043, 29.016787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.400484, 7.704329, 28.933764>,  <18.169996, 7.408137, 28.795393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.400484, 7.704329, 28.933764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158417, -0.314038, 0.936100,
		0.801796, -0.594199, -0.063650,
		0.576218, 0.740478, 0.345926,
		18.573349, 7.926472, 29.037540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.188959, 7.287752, 29.492916>,  <18.169996, 7.408137, 28.795393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.188959, 7.287752, 29.492916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.371056, 7.643694, 29.505005>,  <18.480314, 7.857260, 29.512259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.371056, 7.643694, 29.505005>,  <18.188959, 7.287752, 29.492916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.371056, 7.643694, 29.505005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216719, 0.077823, 0.973127,
		0.863591, -0.449556, 0.228276,
		0.455241, 0.889855, 0.030220,
		18.507627, 7.910651, 29.514071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.704967, 7.307680, 30.129881>,  <18.188959, 7.287752, 29.492916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.704967, 7.307680, 30.129881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623287, 7.692125, 30.055513>,  <18.574280, 7.922792, 30.010893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623287, 7.692125, 30.055513>,  <18.704967, 7.307680, 30.129881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.623287, 7.692125, 30.055513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195216, 0.146125, 0.969813,
		0.959267, 0.234329, 0.157786,
		-0.204199, 0.961113, -0.185918,
		18.562027, 7.980459, 29.999739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.085138, 7.677717, 30.661436>,  <18.704967, 7.307680, 30.129881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.085138, 7.677717, 30.661436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.819988, 7.928221, 30.497292>,  <18.660898, 8.078524, 30.398804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.819988, 7.928221, 30.497292>,  <19.085138, 7.677717, 30.661436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.819988, 7.928221, 30.497292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289844, 0.290712, 0.911853,
		0.690355, 0.723384, -0.011188,
		-0.662873, 0.626260, -0.410363,
		18.621126, 8.116099, 30.374182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.058680, 8.170175, 31.195551>,  <19.085138, 7.677717, 30.661436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.058680, 8.170175, 31.195551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.743427, 8.242533, 30.960220>,  <18.554276, 8.285948, 30.819021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.743427, 8.242533, 30.960220>,  <19.058680, 8.170175, 31.195551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.743427, 8.242533, 30.960220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478195, 0.421855, 0.770304,
		0.387533, 0.888434, -0.245973,
		-0.788129, 0.180895, -0.588328,
		18.506989, 8.296802, 30.783722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.978779, 8.877440, 31.234003>,  <19.058680, 8.170175, 31.195551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.978779, 8.877440, 31.234003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.630713, 8.704004, 31.140358>,  <18.421873, 8.599942, 31.084171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.630713, 8.704004, 31.140358>,  <18.978779, 8.877440, 31.234003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.630713, 8.704004, 31.140358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372921, 0.268917, 0.888039,
		-0.322089, 0.860048, -0.395698,
		-0.870166, -0.433591, -0.234115,
		18.369663, 8.573927, 31.070124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.809534, 9.429505, 31.699482>,  <18.978779, 8.877440, 31.234003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.809534, 9.429505, 31.699482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.509861, 9.555146, 31.932743>,  <18.330057, 9.630531, 32.072701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.509861, 9.555146, 31.932743>,  <18.809534, 9.429505, 31.699482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.509861, 9.555146, 31.932743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358521, 0.547991, -0.755758,
		-0.556948, -0.775271, -0.297931,
		-0.749181, 0.314103, 0.583153,
		18.285107, 9.649377, 32.107689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.093382, 9.197596, 31.313465>,  <18.809534, 9.429505, 31.699482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.093382, 9.197596, 31.313465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.099726, 9.522370, 31.546877>,  <18.103533, 9.717236, 31.686924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.099726, 9.522370, 31.546877>,  <18.093382, 9.197596, 31.313465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.099726, 9.522370, 31.546877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241981, 0.569372, -0.785660,
		-0.970151, -0.128741, 0.205505,
		0.015862, 0.811937, 0.583530,
		18.104485, 9.765951, 31.721935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.572758, 9.513110, 31.171852>,  <18.093382, 9.197596, 31.313465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.572758, 9.513110, 31.171852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.792109, 9.798653, 31.346066>,  <17.923719, 9.969978, 31.450594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.792109, 9.798653, 31.346066>,  <17.572758, 9.513110, 31.171852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.792109, 9.798653, 31.346066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053892, 0.549915, -0.833480,
		-0.834492, 0.433591, 0.340033,
		0.548378, 0.713857, 0.435533,
		17.956621, 10.012810, 31.476725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.224976, 10.092130, 31.029922>,  <17.572758, 9.513110, 31.171852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.224976, 10.092130, 31.029922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.589663, 10.229413, 31.120237>,  <17.808475, 10.311783, 31.174427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.589663, 10.229413, 31.120237>,  <17.224976, 10.092130, 31.029922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.589663, 10.229413, 31.120237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058270, 0.652084, -0.755904,
		-0.406666, 0.676014, 0.614515,
		0.911717, 0.343208, 0.225789,
		17.863178, 10.332376, 31.187973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251772, 10.903751, 30.996996>,  <17.224976, 10.092130, 31.029922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.251772, 10.903751, 30.996996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.628584, 10.773161, 30.966022>,  <17.854671, 10.694807, 30.947439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.628584, 10.773161, 30.966022>,  <17.251772, 10.903751, 30.996996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.628584, 10.773161, 30.966022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190241, 0.709792, -0.678236,
		0.276388, 0.624187, 0.730753,
		0.942029, -0.326476, -0.077432,
		17.911192, 10.675219, 30.942793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666878, 11.572629, 30.851248>,  <17.251772, 10.903751, 30.996996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.666878, 11.572629, 30.851248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.864412, 11.244132, 30.736923>,  <17.982933, 11.047034, 30.668329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.864412, 11.244132, 30.736923>,  <17.666878, 11.572629, 30.851248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.864412, 11.244132, 30.736923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335430, 0.483160, -0.808730,
		0.802254, 0.303511, 0.514071,
		0.493837, -0.821242, -0.285810,
		18.012564, 10.997760, 30.651180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265820, 11.869594, 30.563196>,  <17.666878, 11.572629, 30.851248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.265820, 11.869594, 30.563196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.275887, 11.492378, 30.430504>,  <18.281927, 11.266049, 30.350889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.275887, 11.492378, 30.430504>,  <18.265820, 11.869594, 30.563196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.275887, 11.492378, 30.430504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372008, 0.316839, -0.872481,
		0.927888, -0.101450, 0.358791,
		0.025166, -0.943038, -0.331731,
		18.283436, 11.209467, 30.330984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.912415, 11.834827, 30.228653>,  <18.265820, 11.869594, 30.563196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.912415, 11.834827, 30.228653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.671991, 11.546689, 30.090185>,  <18.527739, 11.373806, 30.007105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.671991, 11.546689, 30.090185>,  <18.912415, 11.834827, 30.228653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.671991, 11.546689, 30.090185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304414, 0.194143, -0.932545,
		0.738962, -0.665891, 0.102593,
		-0.601055, -0.720346, -0.346171,
		18.491674, 11.330585, 29.986334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.371500, 11.630155, 29.886127>,  <18.912415, 11.834827, 30.228653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.371500, 11.630155, 29.886127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.033066, 11.475143, 29.739725>,  <18.830006, 11.382136, 29.651884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.033066, 11.475143, 29.739725>,  <19.371500, 11.630155, 29.886127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.033066, 11.475143, 29.739725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357760, 0.096165, -0.928849,
		0.395152, -0.916828, 0.057279,
		-0.846086, -0.387529, -0.366004,
		18.779240, 11.358885, 29.629923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.584856, 11.053543, 29.451859>,  <19.371500, 11.630155, 29.886127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.584856, 11.053543, 29.451859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.226755, 11.182561, 29.328905>,  <19.011894, 11.259972, 29.255133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.226755, 11.182561, 29.328905>,  <19.584856, 11.053543, 29.451859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.226755, 11.182561, 29.328905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331248, 0.020433, -0.943322,
		-0.297984, -0.946333, -0.125135,
		-0.895254, 0.322546, -0.307383,
		18.958179, 11.279325, 29.236691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.323351, 10.662912, 28.871639>,  <19.584856, 11.053543, 29.451859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.323351, 10.662912, 28.871639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.077618, 10.977427, 28.845264>,  <18.930178, 11.166135, 28.829439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.077618, 10.977427, 28.845264>,  <19.323351, 10.662912, 28.871639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.077618, 10.977427, 28.845264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245180, 0.110796, -0.963126,
		-0.749986, -0.607848, -0.260847,
		-0.614335, 0.786286, -0.065936,
		18.893316, 11.213312, 28.825483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.800022, 10.535962, 28.345074>,  <19.323351, 10.662912, 28.871639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.800022, 10.535962, 28.345074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.790098, 10.935839, 28.345348>,  <18.784143, 11.175765, 28.345512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.790098, 10.935839, 28.345348>,  <18.800022, 10.535962, 28.345074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.790098, 10.935839, 28.345348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164326, 0.004756, -0.986395,
		-0.986094, -0.024358, -0.164394,
		-0.024808, 0.999692, 0.000687,
		18.782656, 11.235746, 28.345554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.304462, 10.700215, 27.903505>,  <18.800022, 10.535962, 28.345074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.304462, 10.700215, 27.903505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.551720, 11.014449, 27.914494>,  <18.700075, 11.202990, 27.921087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.551720, 11.014449, 27.914494>,  <18.304462, 10.700215, 27.903505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.551720, 11.014449, 27.914494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091418, -0.037133, -0.995120,
		-0.780730, 0.617640, -0.094770,
		0.618145, 0.785583, 0.027472,
		18.737164, 11.250124, 27.922735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.012447, 11.241919, 27.402874>,  <18.304462, 10.700215, 27.903505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.012447, 11.241919, 27.402874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.399204, 11.327865, 27.457947>,  <18.631258, 11.379432, 27.490990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.399204, 11.327865, 27.457947>,  <18.012447, 11.241919, 27.402874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.399204, 11.327865, 27.457947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094184, 0.200967, -0.975060,
		-0.237174, 0.955743, 0.174076,
		0.966891, 0.214864, 0.137680,
		18.689272, 11.392323, 27.499250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.015133, 11.798919, 26.914299>,  <18.012447, 11.241919, 27.402874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.015133, 11.798919, 26.914299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.400347, 11.728849, 26.996155>,  <18.631475, 11.686808, 27.045269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.400347, 11.728849, 26.996155>,  <18.015133, 11.798919, 26.914299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.400347, 11.728849, 26.996155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251967, 0.317114, -0.914304,
		0.095267, 0.932069, 0.349529,
		0.963035, -0.175173, 0.204640,
		18.689257, 11.676297, 27.057547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.375326, 12.488306, 26.858458>,  <18.015133, 11.798919, 26.914299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.375326, 12.488306, 26.858458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.617466, 12.174427, 26.805090>,  <18.762751, 11.986099, 26.773069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.617466, 12.174427, 26.805090>,  <18.375326, 12.488306, 26.858458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.617466, 12.174427, 26.805090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201526, 0.313257, -0.928040,
		0.770026, 0.534900, 0.347767,
		0.605349, -0.784698, -0.133420,
		18.799070, 11.939017, 26.765064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.077404, 12.661308, 26.558928>,  <18.375326, 12.488306, 26.858458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.077404, 12.661308, 26.558928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.036476, 12.272949, 26.472311>,  <19.011919, 12.039934, 26.420341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.036476, 12.272949, 26.472311>,  <19.077404, 12.661308, 26.558928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.036476, 12.272949, 26.472311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380997, 0.162836, -0.910124,
		0.918897, -0.175624, 0.353248,
		-0.102318, -0.970897, -0.216542,
		19.005781, 11.981680, 26.407349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.763912, 12.491204, 26.195364>,  <19.077404, 12.661308, 26.558928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.763912, 12.491204, 26.195364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.496330, 12.208808, 26.102346>,  <19.335781, 12.039371, 26.046535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.496330, 12.208808, 26.102346>,  <19.763912, 12.491204, 26.195364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.496330, 12.208808, 26.102346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227605, 0.103265, -0.968262,
		0.707597, -0.700652, 0.091607,
		-0.668956, -0.705990, -0.232542,
		19.295643, 11.997011, 26.032583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.151798, 12.091545, 25.785379>,  <19.763912, 12.491204, 26.195364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.151798, 12.091545, 25.785379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.773319, 11.989679, 25.705526>,  <19.546232, 11.928560, 25.657614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.773319, 11.989679, 25.705526>,  <20.151798, 12.091545, 25.785379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.773319, 11.989679, 25.705526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179321, 0.100878, -0.978605,
		0.269355, -0.961753, -0.049784,
		-0.946199, -0.254665, -0.199634,
		19.489460, 11.913280, 25.645636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.088888, 11.582900, 25.156906>,  <20.151798, 12.091545, 25.785379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.088888, 11.582900, 25.156906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.722143, 11.739827, 25.186438>,  <19.502096, 11.833983, 25.204157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.722143, 11.739827, 25.186438>,  <20.088888, 11.582900, 25.156906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.722143, 11.739827, 25.186438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035472, 0.104147, -0.993929,
		-0.397626, -0.913914, -0.081572,
		-0.916861, 0.392319, 0.073830,
		19.447084, 11.857523, 25.208586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.756723, 11.151632, 24.766058>,  <20.088888, 11.582900, 25.156906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.756723, 11.151632, 24.766058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.536619, 11.483136, 24.806787>,  <19.404556, 11.682038, 24.831224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.536619, 11.483136, 24.806787>,  <19.756723, 11.151632, 24.766058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.536619, 11.483136, 24.806787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060286, 0.082194, -0.994791,
		-0.832813, -0.553535, 0.004734,
		-0.550263, 0.828760, 0.101822,
		19.371540, 11.731764, 24.837334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.299772, 11.145299, 24.214298>,  <19.756723, 11.151632, 24.766058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.299772, 11.145299, 24.214298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.304102, 11.537590, 24.292332>,  <19.306700, 11.772964, 24.339151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.304102, 11.537590, 24.292332>,  <19.299772, 11.145299, 24.214298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.304102, 11.537590, 24.292332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067012, 0.193943, -0.978721,
		-0.997693, 0.023669, -0.063621,
		0.010826, 0.980727, 0.195081,
		19.307350, 11.831808, 24.350857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.791124, 11.414311, 23.845119>,  <19.299772, 11.145299, 24.214298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.791124, 11.414311, 23.845119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.025297, 11.726176, 23.934021>,  <19.165802, 11.913295, 23.987362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.025297, 11.726176, 23.934021>,  <18.791124, 11.414311, 23.845119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.025297, 11.726176, 23.934021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070770, 0.322240, -0.944009,
		-0.807626, 0.536925, 0.243827,
		0.585433, 0.779662, 0.222251,
		19.200928, 11.960074, 24.000696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.453924, 11.936721, 23.536175>,  <18.791124, 11.414311, 23.845119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.453924, 11.936721, 23.536175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.816116, 12.097979, 23.589212>,  <19.033432, 12.194734, 23.621035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.816116, 12.097979, 23.589212>,  <18.453924, 11.936721, 23.536175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.816116, 12.097979, 23.589212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018394, 0.349419, -0.936786,
		-0.423991, 0.845801, 0.323807,
		0.905479, 0.403145, 0.132593,
		19.087761, 12.218923, 23.628990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.442610, 12.605066, 23.217793>,  <18.453924, 11.936721, 23.536175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.442610, 12.605066, 23.217793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.828709, 12.503559, 23.242781>,  <19.060368, 12.442655, 23.257774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.828709, 12.503559, 23.242781>,  <18.442610, 12.605066, 23.217793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.828709, 12.503559, 23.242781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147400, 0.331226, -0.931967,
		0.215811, 0.908786, 0.357119,
		0.965246, -0.253768, 0.062473,
		19.118282, 12.427428, 23.261522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.722610, 13.022669, 22.798365>,  <18.442610, 12.605066, 23.217793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.722610, 13.022669, 22.798365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.030760, 12.773434, 22.852451>,  <19.215651, 12.623893, 22.884903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.030760, 12.773434, 22.852451>,  <18.722610, 13.022669, 22.798365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.030760, 12.773434, 22.852451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363751, 0.255336, -0.895817,
		0.523648, 0.739300, 0.423354,
		0.770375, -0.623088, 0.135215,
		19.261873, 12.586507, 22.893015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.344034, 13.388852, 22.718254>,  <18.722610, 13.022669, 22.798365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.344034, 13.388852, 22.718254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.441181, 13.008786, 22.640072>,  <19.499470, 12.780746, 22.593163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.441181, 13.008786, 22.640072>,  <19.344034, 13.388852, 22.718254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.441181, 13.008786, 22.640072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427682, 0.285728, -0.857583,
		0.870691, 0.124686, 0.475762,
		0.242867, -0.950165, -0.195455,
		19.514042, 12.723737, 22.581436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.044491, 13.435652, 22.641718>,  <19.344034, 13.388852, 22.718254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.044491, 13.435652, 22.641718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.875761, 13.122742, 22.458366>,  <19.774523, 12.934996, 22.348356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.875761, 13.122742, 22.458366>,  <20.044491, 13.435652, 22.641718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.875761, 13.122742, 22.458366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436810, 0.267681, -0.858804,
		0.794520, -0.562487, 0.228792,
		-0.421823, -0.782276, -0.458378,
		19.749214, 12.888059, 22.320852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.521074, 13.129787, 22.244362>,  <20.044491, 13.435652, 22.641718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.521074, 13.129787, 22.244362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195656, 12.993998, 22.055513>,  <20.000404, 12.912523, 21.942204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195656, 12.993998, 22.055513>,  <20.521074, 13.129787, 22.244362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.195656, 12.993998, 22.055513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433378, 0.187377, -0.881517,
		0.387718, -0.921763, -0.005319,
		-0.813546, -0.339475, -0.472121,
		19.951591, 12.892155, 21.913877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.735422, 12.665486, 21.689768>,  <20.521074, 13.129787, 22.244362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.735422, 12.665486, 21.689768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.370842, 12.786052, 21.577763>,  <20.152094, 12.858391, 21.510559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.370842, 12.786052, 21.577763>,  <20.735422, 12.665486, 21.689768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.370842, 12.786052, 21.577763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360182, 0.255717, -0.897150,
		-0.198810, -0.918563, -0.341637,
		-0.911451, 0.301414, -0.280011,
		20.097406, 12.876476, 21.493759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.747549, 12.457306, 21.011803>,  <20.735422, 12.665486, 21.689768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.747549, 12.457306, 21.011803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.432518, 12.703437, 21.025045>,  <20.243500, 12.851115, 21.032991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.432518, 12.703437, 21.025045>,  <20.747549, 12.457306, 21.011803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.432518, 12.703437, 21.025045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303177, 0.433700, -0.848521,
		-0.536477, -0.658238, -0.528125,
		-0.787576, 0.615327, 0.033108,
		20.196245, 12.888035, 21.034977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.580770, 12.478567, 20.425558>,  <20.747549, 12.457306, 21.011803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.580770, 12.478567, 20.425558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.376974, 12.799093, 20.550978>,  <20.254696, 12.991409, 20.626230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.376974, 12.799093, 20.550978>,  <20.580770, 12.478567, 20.425558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.376974, 12.799093, 20.550978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390963, 0.540182, -0.745219,
		-0.766530, -0.257094, -0.588502,
		-0.509489, 0.801315, 0.313551,
		20.224127, 13.039488, 20.645042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.311823, 12.834383, 19.811514>,  <20.580770, 12.478567, 20.425558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.311823, 12.834383, 19.811514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.325382, 13.111475, 20.099674>,  <20.333517, 13.277730, 20.272570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.325382, 13.111475, 20.099674>,  <20.311823, 12.834383, 19.811514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.325382, 13.111475, 20.099674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422411, 0.643337, -0.638503,
		-0.905770, 0.325947, -0.270810,
		0.033896, 0.692731, 0.720399,
		20.335550, 13.319294, 20.315794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.136351, 13.388889, 19.517487>,  <20.311823, 12.834383, 19.811514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.136351, 13.388889, 19.517487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.307434, 13.541810, 19.845123>,  <20.410084, 13.633562, 20.041706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.307434, 13.541810, 19.845123>,  <20.136351, 13.388889, 19.517487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.307434, 13.541810, 19.845123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394866, 0.736104, -0.549756,
		-0.813110, 0.558566, 0.163879,
		0.427707, 0.382301, 0.819093,
		20.435745, 13.656501, 20.090851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.989569, 14.100437, 19.483078>,  <20.136351, 13.388889, 19.517487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.989569, 14.100437, 19.483078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.302525, 14.035903, 19.723688>,  <20.490299, 13.997183, 19.868055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.302525, 14.035903, 19.723688>,  <19.989569, 14.100437, 19.483078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.302525, 14.035903, 19.723688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418020, 0.852005, -0.315192,
		-0.461652, 0.498054, 0.734043,
		0.782391, -0.161336, 0.601527,
		20.537243, 13.987502, 19.904146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.193329, 14.773117, 19.684795>,  <19.989569, 14.100437, 19.483078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.193329, 14.773117, 19.684795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.510557, 14.535701, 19.739559>,  <20.700895, 14.393250, 19.772417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.510557, 14.535701, 19.739559>,  <20.193329, 14.773117, 19.684795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.510557, 14.535701, 19.739559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600170, 0.723011, -0.342127,
		0.104079, 0.353501, 0.929626,
		0.793072, -0.593542, 0.136911,
		20.748478, 14.357638, 19.780632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.731970, 15.175091, 19.996490>,  <20.193329, 14.773117, 19.684795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.731970, 15.175091, 19.996490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.926762, 14.861833, 19.841812>,  <21.043636, 14.673878, 19.749004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.926762, 14.861833, 19.841812>,  <20.731970, 15.175091, 19.996490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.926762, 14.861833, 19.841812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665177, 0.619473, -0.416884,
		0.566028, -0.054206, 0.822602,
		0.486982, -0.783144, -0.386696,
		21.072857, 14.626889, 19.725803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.384550, 15.244263, 20.168930>,  <20.731970, 15.175091, 19.996490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.384550, 15.244263, 20.168930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.421104, 15.000469, 19.853924>,  <21.443037, 14.854194, 19.664921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.421104, 15.000469, 19.853924>,  <21.384550, 15.244263, 20.168930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.421104, 15.000469, 19.853924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604632, 0.662325, -0.442431,
		0.791245, -0.435725, 0.429040,
		0.091385, -0.609483, -0.787515,
		21.448521, 14.817624, 19.617670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.114855, 15.194777, 19.977055>,  <21.384550, 15.244263, 20.168930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.114855, 15.194777, 19.977055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.930000, 15.074629, 19.643299>,  <21.819088, 15.002541, 19.443045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.930000, 15.074629, 19.643299>,  <22.114855, 15.194777, 19.977055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.930000, 15.074629, 19.643299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543108, 0.647935, -0.534054,
		0.701044, -0.699970, -0.136302,
		-0.462136, -0.300369, -0.834391,
		21.791359, 14.984518, 19.392982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.674080, 15.145082, 19.403950>,  <22.114855, 15.194777, 19.977055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.674080, 15.145082, 19.403950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.329592, 15.157845, 19.201057>,  <22.122898, 15.165504, 19.079323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.329592, 15.157845, 19.201057>,  <22.674080, 15.145082, 19.403950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.329592, 15.157845, 19.201057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406186, 0.643075, -0.649205,
		0.305469, -0.765138, -0.566792,
		-0.861221, 0.031911, -0.507228,
		22.071226, 15.167418, 19.048889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.811253, 14.855386, 18.728865>,  <22.674080, 15.145082, 19.403950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.811253, 14.855386, 18.728865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.507992, 15.114792, 18.701635>,  <22.326035, 15.270435, 18.685297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.507992, 15.114792, 18.701635>,  <22.811253, 14.855386, 18.728865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.507992, 15.114792, 18.701635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458735, 0.456250, -0.762495,
		-0.463430, -0.609315, -0.643403,
		-0.758152, 0.648514, -0.068074,
		22.280546, 15.309346, 18.681213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.662689, 14.952655, 18.077110>,  <22.811253, 14.855386, 18.728865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.662689, 14.952655, 18.077110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.541973, 15.297939, 18.238993>,  <22.469543, 15.505110, 18.336123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.541973, 15.297939, 18.238993>,  <22.662689, 14.952655, 18.077110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.541973, 15.297939, 18.238993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623582, 0.499829, -0.601095,
		-0.721158, 0.070965, -0.689127,
		-0.301789, 0.863212, 0.404708,
		22.451437, 15.556903, 18.360405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.291063, 15.485051, 17.620064>,  <22.662689, 14.952655, 18.077110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.291063, 15.485051, 17.620064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.481157, 15.664241, 17.922976>,  <22.595215, 15.771754, 18.104723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.481157, 15.664241, 17.922976>,  <22.291063, 15.485051, 17.620064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.481157, 15.664241, 17.922976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519766, 0.551516, -0.652437,
		-0.709926, 0.703669, 0.029259,
		0.475236, 0.447974, 0.757278,
		22.623728, 15.798633, 18.150160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.321785, 16.217972, 17.435192>,  <22.291063, 15.485051, 17.620064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.321785, 16.217972, 17.435192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.622034, 16.100958, 17.672171>,  <22.802183, 16.030748, 17.814358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.622034, 16.100958, 17.672171>,  <22.321785, 16.217972, 17.435192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.622034, 16.100958, 17.672171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644847, 0.519781, -0.560357,
		-0.144016, 0.802652, 0.578800,
		0.750621, -0.292537, 0.592445,
		22.847219, 16.013197, 17.849903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.786949, 16.830303, 17.534815>,  <22.321785, 16.217972, 17.435192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.786949, 16.830303, 17.534815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.952698, 16.469090, 17.580122>,  <23.052147, 16.252361, 17.607306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.952698, 16.469090, 17.580122>,  <22.786949, 16.830303, 17.534815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.952698, 16.469090, 17.580122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773782, 0.284046, -0.566198,
		0.479122, 0.322260, 0.816450,
		0.414372, -0.903032, 0.113266,
		23.077009, 16.198179, 17.614101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.426607, 16.885538, 17.857389>,  <22.786949, 16.830303, 17.534815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.426607, 16.885538, 17.857389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.437326, 16.560404, 17.624640>,  <23.443758, 16.365322, 17.484989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.437326, 16.560404, 17.624640>,  <23.426607, 16.885538, 17.857389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.437326, 16.560404, 17.624640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800593, 0.366018, -0.474427,
		0.598609, -0.453130, 0.660560,
		0.026799, -0.812837, -0.581875,
		23.445366, 16.316553, 17.450077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.077448, 16.487015, 17.953541>,  <23.426607, 16.885538, 17.857389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.077448, 16.487015, 17.953541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.926273, 16.510984, 17.583984>,  <23.835567, 16.525366, 17.362251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.926273, 16.510984, 17.583984>,  <24.077448, 16.487015, 17.953541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.926273, 16.510984, 17.583984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807875, 0.508768, -0.297479,
		0.452218, -0.858816, -0.240696,
		-0.377938, 0.059927, -0.923890,
		23.812893, 16.528963, 17.306818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.653183, 16.682816, 17.653864>,  <24.077448, 16.487015, 17.953541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.653183, 16.682816, 17.653864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.405993, 16.693865, 17.339581>,  <24.257677, 16.700495, 17.151011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.405993, 16.693865, 17.339581>,  <24.653183, 16.682816, 17.653864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.405993, 16.693865, 17.339581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600335, 0.661878, -0.448905,
		0.507644, -0.749102, -0.425610,
		-0.617977, 0.027625, -0.785710,
		24.220600, 16.702152, 17.103867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.990046, 16.609928, 16.901018>,  <24.653183, 16.682816, 17.653864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.990046, 16.609928, 16.901018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677496, 16.857029, 16.865606>,  <24.489965, 17.005289, 16.844358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677496, 16.857029, 16.865606>,  <24.990046, 16.609928, 16.901018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.677496, 16.857029, 16.865606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592322, 0.689466, -0.416884,
		-0.196492, -0.378180, -0.904638,
		-0.781374, 0.617751, -0.088530,
		24.443083, 17.042355, 16.839046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.871502, 16.907225, 16.208843>,  <24.990046, 16.609928, 16.901018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.871502, 16.907225, 16.208843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.744757, 17.197269, 16.453403>,  <24.668711, 17.371296, 16.600140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.744757, 17.197269, 16.453403>,  <24.871502, 16.907225, 16.208843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.744757, 17.197269, 16.453403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496891, 0.675986, -0.544189,
		-0.807898, 0.131368, -0.574495,
		-0.316861, 0.725111, 0.611403,
		24.649698, 17.414803, 16.636824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.831940, 17.463701, 15.808054>,  <24.871502, 16.907225, 16.208843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.831940, 17.463701, 15.808054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810898, 17.653076, 16.159756>,  <24.798273, 17.766701, 16.370777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810898, 17.653076, 16.159756>,  <24.831940, 17.463701, 15.808054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810898, 17.653076, 16.159756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502580, 0.773391, -0.386368,
		-0.862929, 0.421572, -0.278623,
		-0.052603, 0.473438, 0.879255,
		24.795116, 17.795107, 16.423532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.715004, 18.227875, 15.651646>,  <24.831940, 17.463701, 15.808054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.715004, 18.227875, 15.651646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.876627, 18.194969, 16.016056>,  <24.973600, 18.175226, 16.234703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.876627, 18.194969, 16.016056>,  <24.715004, 18.227875, 15.651646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.876627, 18.194969, 16.016056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666949, 0.708108, -0.231864,
		-0.626031, 0.701295, 0.340983,
		0.404059, -0.082264, 0.911026,
		24.997845, 18.170290, 16.289364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.716499, 18.974358, 16.018223>,  <24.715004, 18.227875, 15.651646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.716499, 18.974358, 16.018223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.987738, 18.741234, 16.197340>,  <25.150480, 18.601358, 16.304811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.987738, 18.741234, 16.197340>,  <24.716499, 18.974358, 16.018223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.987738, 18.741234, 16.197340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727360, 0.619610, -0.295010,
		-0.105524, 0.525753, 0.844067,
		0.678094, -0.582810, 0.447795,
		25.191166, 18.566391, 16.331678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.143162, 19.465048, 16.465544>,  <24.716499, 18.974358, 16.018223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.143162, 19.465048, 16.465544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354237, 19.127048, 16.430847>,  <25.480881, 18.924250, 16.410028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354237, 19.127048, 16.430847>,  <25.143162, 19.465048, 16.465544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354237, 19.127048, 16.430847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789978, 0.525716, -0.315526,
		0.312221, 0.097976, 0.944944,
		0.527687, -0.844999, -0.086741,
		25.512543, 18.873549, 16.404825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.751020, 19.607306, 16.740786>,  <25.143162, 19.465048, 16.465544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.751020, 19.607306, 16.740786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851774, 19.280993, 16.532536>,  <25.912228, 19.085205, 16.407585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.851774, 19.280993, 16.532536>,  <25.751020, 19.607306, 16.740786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851774, 19.280993, 16.532536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814409, 0.469293, -0.341323,
		0.522772, -0.338029, 0.782589,
		0.251887, -0.815782, -0.520627,
		25.927340, 19.036259, 16.376347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551729, 19.445488, 16.977226>,  <25.751020, 19.607306, 16.740786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551729, 19.445488, 16.977226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465309, 19.279287, 16.623802>,  <26.413458, 19.179567, 16.411747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465309, 19.279287, 16.623802>,  <26.551729, 19.445488, 16.977226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465309, 19.279287, 16.623802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860295, 0.346955, -0.373518,
		0.461753, -0.840822, 0.282493,
		-0.216050, -0.415500, -0.883562,
		26.400494, 19.154638, 16.358734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206934, 19.129807, 16.726231>,  <26.551729, 19.445488, 16.977226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206934, 19.129807, 16.726231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013685, 19.130512, 16.376011>,  <26.897736, 19.130936, 16.165878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013685, 19.130512, 16.376011>,  <27.206934, 19.129807, 16.726231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013685, 19.130512, 16.376011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777183, 0.461384, -0.427916,
		0.403210, -0.887198, -0.224277,
		-0.483124, 0.001765, -0.875550,
		26.868748, 19.131041, 16.113346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650995, 18.928780, 16.139254>,  <27.206934, 19.129807, 16.726231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650995, 18.928780, 16.139254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345751, 19.125608, 15.971671>,  <27.162603, 19.243706, 15.871122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345751, 19.125608, 15.971671>,  <27.650995, 18.928780, 16.139254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345751, 19.125608, 15.971671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601885, 0.305053, -0.738023,
		-0.235357, -0.815357, -0.528960,
		-0.763113, 0.492072, -0.418955,
		27.116817, 19.273230, 15.845984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718689, 18.787813, 15.367021>,  <27.650995, 18.928780, 16.139254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718689, 18.787813, 15.367021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504005, 19.120735, 15.422472>,  <27.375196, 19.320488, 15.455743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504005, 19.120735, 15.422472>,  <27.718689, 18.787813, 15.367021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504005, 19.120735, 15.422472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563592, 0.475891, -0.675198,
		-0.627942, -0.284253, -0.724493,
		-0.536707, 0.832303, 0.138629,
		27.342993, 19.370426, 15.464061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784388, 19.068239, 14.724910>,  <27.718689, 18.787813, 15.367021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784388, 19.068239, 14.724910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663111, 19.376804, 14.948693>,  <27.590343, 19.561943, 15.082964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663111, 19.376804, 14.948693>,  <27.784388, 19.068239, 14.724910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663111, 19.376804, 14.948693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659812, 0.593539, -0.460825,
		-0.687548, 0.229419, -0.688945,
		-0.303194, 0.771414, 0.559459,
		27.572153, 19.608229, 15.116531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568937, 19.560184, 14.286312>,  <27.784388, 19.068239, 14.724910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568937, 19.560184, 14.286312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583340, 19.798553, 14.607206>,  <27.591982, 19.941574, 14.799743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583340, 19.798553, 14.607206>,  <27.568937, 19.560184, 14.286312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583340, 19.798553, 14.607206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353052, 0.743407, -0.568067,
		-0.934911, 0.303686, -0.183622,
		0.036008, 0.595920, 0.802236,
		27.594143, 19.977329, 14.847878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388083, 20.206017, 14.072064>,  <27.568937, 19.560184, 14.286312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388083, 20.206017, 14.072064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620089, 20.297523, 14.384794>,  <27.759293, 20.352427, 14.572433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620089, 20.297523, 14.384794>,  <27.388083, 20.206017, 14.072064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620089, 20.297523, 14.384794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282034, 0.844005, -0.456193,
		-0.764226, 0.485099, 0.425014,
		0.580013, 0.228767, 0.781825,
		27.794092, 20.366154, 14.619342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382355, 20.840525, 14.053550>,  <27.388083, 20.206017, 14.072064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382355, 20.840525, 14.053550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683825, 20.774433, 14.308005>,  <27.864706, 20.734777, 14.460679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683825, 20.774433, 14.308005>,  <27.382355, 20.840525, 14.053550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683825, 20.774433, 14.308005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527499, 0.729443, -0.435498,
		-0.392070, 0.663787, 0.636921,
		0.753675, -0.165229, 0.636140,
		27.909927, 20.724865, 14.498847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468311, 21.527470, 14.314604>,  <27.382355, 20.840525, 14.053550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468311, 21.527470, 14.314604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803505, 21.310957, 14.342305>,  <28.004622, 21.181049, 14.358926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803505, 21.310957, 14.342305>,  <27.468311, 21.527470, 14.314604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803505, 21.310957, 14.342305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515667, 0.743958, -0.424987,
		0.178515, 0.391845, 0.902547,
		0.837986, -0.541280, 0.069254,
		28.054901, 21.148573, 14.363081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972242, 22.059124, 14.322295>,  <27.468311, 21.527470, 14.314604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972242, 22.059124, 14.322295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204006, 21.736183, 14.277631>,  <28.343065, 21.542419, 14.250832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204006, 21.736183, 14.277631>,  <27.972242, 22.059124, 14.322295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204006, 21.736183, 14.277631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710688, 0.567535, -0.415724,
		0.399007, 0.161518, 0.902610,
		0.579410, -0.807351, -0.111662,
		28.377829, 21.493979, 14.244132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595329, 22.107609, 14.765179>,  <27.972242, 22.059124, 14.322295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595329, 22.107609, 14.765179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669392, 21.841522, 14.475847>,  <28.713829, 21.681870, 14.302248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669392, 21.841522, 14.475847>,  <28.595329, 22.107609, 14.765179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669392, 21.841522, 14.475847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728124, 0.587182, -0.353628,
		0.659965, -0.461197, 0.593079,
		0.185154, -0.665217, -0.723328,
		28.724937, 21.641956, 14.258849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378401, 22.122242, 14.735968>,  <28.595329, 22.107609, 14.765179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378401, 22.122242, 14.735968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269606, 21.947908, 14.392790>,  <29.204329, 21.843307, 14.186883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269606, 21.947908, 14.392790>,  <29.378401, 22.122242, 14.735968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269606, 21.947908, 14.392790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648842, 0.575348, -0.497974,
		0.710652, -0.692113, 0.126302,
		-0.271987, -0.435836, -0.857945,
		29.188009, 21.817158, 14.135406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993034, 21.900366, 14.297204>,  <29.378401, 22.122242, 14.735968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993034, 21.900366, 14.297204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685205, 21.937675, 14.044520>,  <29.500507, 21.960062, 13.892910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685205, 21.937675, 14.044520>,  <29.993034, 21.900366, 14.297204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685205, 21.937675, 14.044520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552842, 0.592406, -0.586022,
		0.319567, -0.800222, -0.507466,
		-0.769573, 0.093276, -0.631710,
		29.454334, 21.965658, 13.855007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273849, 21.684994, 13.687930>,  <29.993034, 21.900366, 14.297204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273849, 21.684994, 13.687930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953978, 21.898460, 13.577865>,  <29.762054, 22.026541, 13.511826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953978, 21.898460, 13.577865>,  <30.273849, 21.684994, 13.687930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953978, 21.898460, 13.577865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536399, 0.429040, -0.726774,
		-0.269799, -0.728783, -0.629352,
		-0.799678, 0.533666, -0.275164,
		29.714075, 22.058559, 13.495316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203548, 21.627378, 12.883327>,  <30.273849, 21.684994, 13.687930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203548, 21.627378, 12.883327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975012, 21.936331, 12.994318>,  <29.837891, 22.121702, 13.060913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975012, 21.936331, 12.994318>,  <30.203548, 21.627378, 12.883327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975012, 21.936331, 12.994318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316488, 0.519295, -0.793832,
		-0.757235, -0.365730, -0.541144,
		-0.571341, 0.772383, 0.277479,
		29.803610, 22.168045, 13.077561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900047, 21.877777, 12.328509>,  <30.203548, 21.627378, 12.883327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900047, 21.877777, 12.328509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912601, 22.186312, 12.582770>,  <29.920134, 22.371433, 12.735327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912601, 22.186312, 12.582770>,  <29.900047, 21.877777, 12.328509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912601, 22.186312, 12.582770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426721, 0.564752, -0.706374,
		-0.903839, 0.293415, -0.311421,
		0.031385, 0.771338, 0.635652,
		29.922016, 22.417713, 12.773466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387197, 22.452705, 12.146299>,  <29.900047, 21.877777, 12.328509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387197, 22.452705, 12.146299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731211, 22.559446, 12.320258>,  <29.937618, 22.623491, 12.424633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731211, 22.559446, 12.320258>,  <29.387197, 22.452705, 12.146299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731211, 22.559446, 12.320258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222198, 0.571400, -0.790019,
		-0.459318, 0.776075, 0.432129,
		0.860032, 0.266851, 0.434897,
		29.989220, 22.639502, 12.450727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717249, 22.841867, 11.672214>,  <29.387197, 22.452705, 12.146299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717249, 22.841867, 11.672214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089922, 22.858566, 11.816560>,  <30.313526, 22.868586, 11.903168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089922, 22.858566, 11.816560>,  <29.717249, 22.841867, 11.672214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089922, 22.858566, 11.816560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324692, 0.349800, -0.878758,
		-0.162914, 0.935894, 0.312349,
		0.931683, 0.041745, 0.360865,
		30.369427, 22.871090, 11.924819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187151, 23.297375, 11.222318>,  <29.717249, 22.841867, 11.672214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187151, 23.297375, 11.222318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228907, 22.951485, 11.025806>,  <29.253960, 22.743952, 10.907900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228907, 22.951485, 11.025806>,  <29.187151, 23.297375, 11.222318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228907, 22.951485, 11.025806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809949, -0.360576, 0.462567,
		-0.577136, 0.349624, -0.738022,
		0.104388, -0.864724, -0.491279,
		29.260223, 22.692068, 10.878423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586060, 23.151665, 10.985392>,  <29.187151, 23.297375, 11.222318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586060, 23.151665, 10.985392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773485, 22.802629, 11.040583>,  <28.885941, 22.593208, 11.073697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773485, 22.802629, 11.040583>,  <28.586060, 23.151665, 10.985392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773485, 22.802629, 11.040583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791879, -0.345616, 0.503465,
		-0.391633, -0.345163, -0.852928,
		0.468563, -0.872589, 0.137972,
		28.914055, 22.540854, 11.081976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268969, 22.527283, 10.693898>,  <28.586060, 23.151665, 10.985392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268969, 22.527283, 10.693898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442966, 22.387558, 11.025865>,  <28.547365, 22.303724, 11.225044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442966, 22.387558, 11.025865>,  <28.268969, 22.527283, 10.693898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442966, 22.387558, 11.025865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776603, -0.612004, 0.149460,
		0.455704, -0.709530, -0.537494,
		0.434995, -0.349311, 0.829917,
		28.573465, 22.282764, 11.274839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430552, 21.798491, 10.741302>,  <28.268969, 22.527283, 10.693898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430552, 21.798491, 10.741302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371614, 21.922407, 11.117030>,  <28.336252, 21.996758, 11.342466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371614, 21.922407, 11.117030>,  <28.430552, 21.798491, 10.741302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371614, 21.922407, 11.117030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531481, -0.825725, 0.188962,
		0.834158, -0.471388, 0.286312,
		-0.147341, 0.309793, 0.939318,
		28.327412, 22.015345, 11.398826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549818, 21.241871, 11.136958>,  <28.430552, 21.798491, 10.741302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549818, 21.241871, 11.136958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297146, 21.483761, 11.330983>,  <28.145542, 21.628895, 11.447398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297146, 21.483761, 11.330983>,  <28.549818, 21.241871, 11.136958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297146, 21.483761, 11.330983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602396, -0.776731, 0.183866,
		0.487952, -0.176055, 0.854931,
		-0.631681, 0.604725, 0.485063,
		28.107641, 21.665178, 11.476502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281420, 20.851618, 11.650273>,  <28.549818, 21.241871, 11.136958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281420, 20.851618, 11.650273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026821, 21.155270, 11.704815>,  <27.874062, 21.337461, 11.737539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026821, 21.155270, 11.704815>,  <28.281420, 20.851618, 11.650273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026821, 21.155270, 11.704815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716413, -0.647393, 0.260067,
		0.285699, 0.067847, 0.955915,
		-0.636497, 0.759131, 0.136353,
		27.835873, 21.383009, 11.745721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014126, 20.859690, 12.369513>,  <28.281420, 20.851618, 11.650273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014126, 20.859690, 12.369513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752333, 21.024296, 12.115803>,  <27.595257, 21.123060, 11.963576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752333, 21.024296, 12.115803>,  <28.014126, 20.859690, 12.369513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752333, 21.024296, 12.115803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723590, -0.584180, 0.367629,
		-0.219245, 0.699563, 0.680106,
		-0.654484, 0.411517, -0.634275,
		27.555988, 21.147751, 11.925520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463564, 20.940878, 12.731591>,  <28.014126, 20.859690, 12.369513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463564, 20.940878, 12.731591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325264, 20.936745, 12.356283>,  <27.242285, 20.934265, 12.131099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325264, 20.936745, 12.356283>,  <27.463564, 20.940878, 12.731591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325264, 20.936745, 12.356283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789498, -0.537195, 0.296841,
		-0.507101, 0.843395, 0.177578,
		-0.345748, -0.010331, -0.938270,
		27.221539, 20.933645, 12.074802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635633, 21.190950, 12.750745>,  <27.463564, 20.940878, 12.731591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635633, 21.190950, 12.750745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682734, 20.992353, 12.406738>,  <26.710995, 20.873196, 12.200335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682734, 20.992353, 12.406738>,  <26.635633, 21.190950, 12.750745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682734, 20.992353, 12.406738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753676, -0.608598, 0.248157,
		-0.646613, 0.618953, -0.445858,
		0.117751, -0.496494, -0.860016,
		26.718060, 20.843405, 12.148733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019663, 21.204853, 12.281609>,  <26.635633, 21.190950, 12.750745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019663, 21.204853, 12.281609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200865, 20.864616, 12.174813>,  <26.309586, 20.660475, 12.110736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200865, 20.864616, 12.174813>,  <26.019663, 21.204853, 12.281609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200865, 20.864616, 12.174813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858240, -0.497133, 0.127600,
		-0.241264, 0.171337, -0.955215,
		0.453006, -0.850589, -0.266989,
		26.336767, 20.609440, 12.094717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462767, 20.804224, 11.979921>,  <26.019663, 21.204853, 12.281609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462767, 20.804224, 11.979921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767391, 20.554342, 12.048935>,  <25.950167, 20.404413, 12.090343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767391, 20.554342, 12.048935>,  <25.462767, 20.804224, 11.979921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767391, 20.554342, 12.048935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647022, -0.717566, 0.257802,
		-0.037246, -0.307965, -0.950668,
		0.761561, -0.624706, 0.172534,
		25.995859, 20.366930, 12.100695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.321024, 20.149836, 11.520592>,  <25.462767, 20.804224, 11.979921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.321024, 20.149836, 11.520592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581675, 20.000959, 11.784973>,  <25.738064, 19.911634, 11.943602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581675, 20.000959, 11.784973>,  <25.321024, 20.149836, 11.520592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581675, 20.000959, 11.784973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620239, -0.763055, 0.181800,
		0.436679, -0.528414, -0.728073,
		0.651625, -0.372191, 0.660953,
		25.777163, 19.889301, 11.983259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.319923, 19.393232, 11.435253>,  <25.321024, 20.149836, 11.520592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.319923, 19.393232, 11.435253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467827, 19.456282, 11.801517>,  <25.556568, 19.494112, 12.021276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467827, 19.456282, 11.801517>,  <25.319923, 19.393232, 11.435253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467827, 19.456282, 11.801517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508623, -0.790389, 0.341449,
		0.777549, -0.591979, -0.212081,
		0.369757, 0.157624, 0.915660,
		25.578754, 19.503569, 12.076216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.458204, 18.719049, 11.744429>,  <25.319923, 19.393232, 11.435253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.458204, 18.719049, 11.744429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.445499, 18.966537, 12.058416>,  <25.437876, 19.115030, 12.246809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.445499, 18.966537, 12.058416>,  <25.458204, 18.719049, 11.744429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.445499, 18.966537, 12.058416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259479, -0.763543, 0.591332,
		0.965226, -0.184899, 0.184798,
		-0.031764, 0.618720, 0.784969,
		25.435970, 19.152153, 12.293907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861109, 18.351820, 12.209125>,  <25.458204, 18.719049, 11.744429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861109, 18.351820, 12.209125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.628572, 18.621916, 12.390716>,  <25.489050, 18.783974, 12.499670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.628572, 18.621916, 12.390716>,  <25.861109, 18.351820, 12.209125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.628572, 18.621916, 12.390716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381285, -0.718967, 0.581126,
		0.718794, 0.164737, 0.675424,
		-0.581341, 0.675239, 0.453977,
		25.454170, 18.824488, 12.526909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.014534, 18.394831, 12.932129>,  <25.861109, 18.351820, 12.209125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.014534, 18.394831, 12.932129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646326, 18.549816, 12.912066>,  <25.425402, 18.642807, 12.900029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646326, 18.549816, 12.912066>,  <26.014534, 18.394831, 12.932129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646326, 18.549816, 12.912066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324190, -0.685863, 0.651532,
		0.218044, 0.616008, 0.756962,
		-0.920520, 0.387462, -0.050156,
		25.370171, 18.666054, 12.897019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827827, 18.244766, 13.556404>,  <26.014534, 18.394831, 12.932129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827827, 18.244766, 13.556404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483274, 18.318459, 13.367058>,  <25.276543, 18.362675, 13.253449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483274, 18.318459, 13.367058>,  <25.827827, 18.244766, 13.556404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483274, 18.318459, 13.367058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478550, -0.606801, 0.634652,
		-0.170317, 0.773209, 0.610853,
		-0.861384, 0.184232, -0.473367,
		25.224859, 18.373728, 13.225048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.349730, 18.468704, 14.047173>,  <25.827827, 18.244766, 13.556404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.349730, 18.468704, 14.047173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.136703, 18.355427, 13.728129>,  <25.008888, 18.287460, 13.536703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.136703, 18.355427, 13.728129>,  <25.349730, 18.468704, 14.047173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.136703, 18.355427, 13.728129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663280, -0.445751, 0.601137,
		-0.525772, 0.849181, 0.049556,
		-0.532563, -0.283192, -0.797608,
		24.976934, 18.270470, 13.488847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.776306, 18.389088, 14.380807>,  <25.349730, 18.468704, 14.047173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.776306, 18.389088, 14.380807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.700485, 18.221937, 14.025403>,  <24.654993, 18.121647, 13.812160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.700485, 18.221937, 14.025403>,  <24.776306, 18.389088, 14.380807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.700485, 18.221937, 14.025403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755977, -0.515333, 0.403647,
		-0.626552, 0.748205, -0.218223,
		-0.189553, -0.417877, -0.888509,
		24.643620, 18.096575, 13.758850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.059311, 18.430281, 14.176054>,  <24.776306, 18.389088, 14.380807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.059311, 18.430281, 14.176054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.214975, 18.131714, 13.960124>,  <24.308374, 17.952574, 13.830565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.214975, 18.131714, 13.960124>,  <24.059311, 18.430281, 14.176054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.214975, 18.131714, 13.960124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721802, -0.611184, 0.324738,
		-0.572324, 0.263272, -0.776616,
		0.389161, -0.746419, -0.539826,
		24.331724, 17.907787, 13.798176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.508217, 17.981012, 13.911387>,  <24.059311, 18.430281, 14.176054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.508217, 17.981012, 13.911387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.823904, 17.737318, 13.880491>,  <24.013315, 17.591101, 13.861954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.823904, 17.737318, 13.880491>,  <23.508217, 17.981012, 13.911387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.823904, 17.737318, 13.880491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551710, -0.758631, 0.346547,
		-0.269726, -0.230887, -0.934847,
		0.789217, -0.609238, -0.077240,
		24.060669, 17.554546, 13.857319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.094055, 17.375549, 13.855430>,  <23.508217, 17.981012, 13.911387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.094055, 17.375549, 13.855430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.472757, 17.268345, 13.926782>,  <23.699980, 17.204021, 13.969593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.472757, 17.268345, 13.926782>,  <23.094055, 17.375549, 13.855430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.472757, 17.268345, 13.926782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321035, -0.744196, 0.585755,
		-0.024239, -0.611834, -0.790615,
		0.946757, -0.268013, 0.178381,
		23.756784, 17.187941, 13.980296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.187082, 16.675026, 13.535485>,  <23.094055, 17.375549, 13.855430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.187082, 16.675026, 13.535485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.434124, 16.745289, 13.842134>,  <23.582350, 16.787447, 14.026124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.434124, 16.745289, 13.842134>,  <23.187082, 16.675026, 13.535485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.434124, 16.745289, 13.842134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397630, -0.771252, 0.497052,
		0.678570, -0.611813, -0.406482,
		0.617603, 0.175655, 0.766623,
		23.619406, 16.797985, 14.072122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.490637, 16.167267, 13.677897>,  <23.187082, 16.675026, 13.535485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.490637, 16.167267, 13.677897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.508900, 16.326887, 14.044214>,  <23.519857, 16.422659, 14.264005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.508900, 16.326887, 14.044214>,  <23.490637, 16.167267, 13.677897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.508900, 16.326887, 14.044214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488456, -0.790763, 0.368922,
		0.871393, -0.464169, 0.158813,
		0.045658, 0.399050, 0.915792,
		23.522596, 16.446602, 14.318952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.639051, 15.627337, 14.146169>,  <23.490637, 16.167267, 13.677897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.639051, 15.627337, 14.146169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.518642, 15.914964, 14.396713>,  <23.446396, 16.087540, 14.547040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.518642, 15.914964, 14.396713>,  <23.639051, 15.627337, 14.146169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.518642, 15.914964, 14.396713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668720, -0.627437, 0.398918,
		0.679851, -0.298777, 0.669728,
		-0.301025, 0.719065, 0.626362,
		23.428335, 16.130684, 14.584621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.284706, 15.389222, 13.811519>,  <23.639051, 15.627337, 14.146169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.284706, 15.389222, 13.811519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.619986, 15.225243, 13.667647>,  <24.821154, 15.126855, 13.581325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.619986, 15.225243, 13.667647>,  <24.284706, 15.389222, 13.811519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.619986, 15.225243, 13.667647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481735, 0.247392, 0.840672,
		-0.255651, -0.877917, 0.404850,
		0.838197, -0.409949, -0.359677,
		24.871445, 15.102258, 13.559744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.538618, 14.996835, 14.341733>,  <24.284706, 15.389222, 13.811519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.538618, 14.996835, 14.341733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.850500, 15.048774, 14.096720>,  <25.037630, 15.079937, 13.949712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.850500, 15.048774, 14.096720>,  <24.538618, 14.996835, 14.341733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.850500, 15.048774, 14.096720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616965, 0.007585, 0.786954,
		0.106832, -0.991504, -0.074199,
		0.779706, 0.129850, -0.612534,
		25.084412, 15.087729, 13.912959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.893276, 14.345994, 14.264429>,  <24.538618, 14.996835, 14.341733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.893276, 14.345994, 14.264429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095242, 14.691205, 14.258162>,  <25.216421, 14.898332, 14.254402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095242, 14.691205, 14.258162>,  <24.893276, 14.345994, 14.264429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.095242, 14.691205, 14.258162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472720, -0.261286, 0.841585,
		0.722217, -0.432334, -0.539898,
		0.504913, 0.863028, -0.015668,
		25.246716, 14.950113, 14.253462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630888, 14.296643, 14.444493>,  <24.893276, 14.345994, 14.264429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630888, 14.296643, 14.444493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478836, 14.641688, 14.577999>,  <25.387604, 14.848716, 14.658103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478836, 14.641688, 14.577999>,  <25.630888, 14.296643, 14.444493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478836, 14.641688, 14.577999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388207, -0.178734, 0.904074,
		0.839521, 0.473237, -0.266929,
		-0.380132, 0.862613, 0.333765,
		25.364796, 14.900473, 14.678128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350248, 14.697974, 14.474631>,  <25.630888, 14.296643, 14.444493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350248, 14.697974, 14.474631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518244, 14.464528, 14.752625>,  <26.619041, 14.324460, 14.919422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518244, 14.464528, 14.752625>,  <26.350248, 14.697974, 14.474631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518244, 14.464528, 14.752625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847774, 0.525590, -0.070954,
		-0.323867, 0.618990, 0.715514,
		0.419987, -0.583615, 0.694985,
		26.644239, 14.289444, 14.961121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.648779, 15.110429, 15.167404>,  <26.350248, 14.697974, 14.474631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.648779, 15.110429, 15.167404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850260, 14.812862, 14.991735>,  <26.971149, 14.634323, 14.886333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850260, 14.812862, 14.991735>,  <26.648779, 15.110429, 15.167404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850260, 14.812862, 14.991735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764257, 0.620739, -0.174915,
		0.402734, -0.247536, 0.881210,
		0.503704, -0.743915, -0.439173,
		27.001371, 14.589687, 14.859982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<16.831036, 14.897021, 25.690981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.444515, 14.819230, 25.623518>,  <16.212603, 14.772555, 25.583040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.444515, 14.819230, 25.623518>,  <16.831036, 14.897021, 25.690981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.444515, 14.819230, 25.623518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146123, 0.125008, -0.981336,
		0.211934, -0.972908, -0.092377,
		-0.966298, -0.194480, -0.168658,
		16.154625, 14.760887, 25.572920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.836786, 14.455257, 25.179358>,  <16.831036, 14.897021, 25.690981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.836786, 14.455257, 25.179358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.461128, 14.591484, 25.161369>,  <16.235733, 14.673220, 25.150576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.461128, 14.591484, 25.161369>,  <16.836786, 14.455257, 25.179358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.461128, 14.591484, 25.161369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055301, 0.020675, -0.998256,
		-0.339042, -0.939993, -0.038251,
		-0.939145, 0.340566, -0.044972,
		16.179384, 14.693654, 25.147877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.652868, 14.212480, 24.541758>,  <16.836786, 14.455257, 25.179358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.652868, 14.212480, 24.541758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.370573, 14.488068, 24.607794>,  <16.201197, 14.653420, 24.647415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.370573, 14.488068, 24.607794>,  <16.652868, 14.212480, 24.541758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.370573, 14.488068, 24.607794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120012, 0.113401, -0.986274,
		-0.698236, -0.715862, 0.002654,
		-0.705736, 0.688971, 0.165093,
		16.158852, 14.694759, 24.657322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.151218, 14.050038, 24.008829>,  <16.652868, 14.212480, 24.541758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.151218, 14.050038, 24.008829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.079226, 14.426314, 24.123867>,  <16.036030, 14.652080, 24.192890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.079226, 14.426314, 24.123867>,  <16.151218, 14.050038, 24.008829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.079226, 14.426314, 24.123867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238717, 0.241858, -0.940489,
		-0.954264, -0.237926, 0.181028,
		-0.179984, 0.940689, 0.287593,
		16.025230, 14.708521, 24.210144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.410802, 14.154102, 23.842003>,  <16.151218, 14.050038, 24.008829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.410802, 14.154102, 23.842003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.600320, 14.504314, 23.879883>,  <15.714030, 14.714441, 23.902611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.600320, 14.504314, 23.879883>,  <15.410802, 14.154102, 23.842003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.600320, 14.504314, 23.879883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257486, 0.240563, -0.935858,
		-0.842152, 0.419021, 0.339413,
		0.473794, 0.875529, 0.094699,
		15.742458, 14.766973, 23.908293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.950880, 14.644538, 23.487703>,  <15.410802, 14.154102, 23.842003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.950880, 14.644538, 23.487703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.301776, 14.831300, 23.532331>,  <15.512314, 14.943357, 23.559109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.301776, 14.831300, 23.532331>,  <14.950880, 14.644538, 23.487703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.301776, 14.831300, 23.532331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033852, 0.171672, -0.984572,
		-0.478856, 0.867484, 0.134792,
		0.877240, 0.466905, 0.111573,
		15.564948, 14.971372, 23.565804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.869188, 15.307954, 23.199017>,  <14.950880, 14.644538, 23.487703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.869188, 15.307954, 23.199017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.264946, 15.249889, 23.196924>,  <15.502400, 15.215051, 23.195669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.264946, 15.249889, 23.196924>,  <14.869188, 15.307954, 23.199017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.264946, 15.249889, 23.196924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070504, 0.511398, -0.856447,
		0.126998, 0.846995, 0.516209,
		0.989394, -0.145162, -0.005230,
		15.561764, 15.206341, 23.195354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.140779, 15.967966, 23.065699>,  <14.869188, 15.307954, 23.199017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.140779, 15.967966, 23.065699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.420449, 15.690866, 22.994986>,  <15.588251, 15.524607, 22.952557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.420449, 15.690866, 22.994986>,  <15.140779, 15.967966, 23.065699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.420449, 15.690866, 22.994986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174000, 0.404709, -0.897738,
		0.693454, 0.596915, 0.403501,
		0.699175, -0.692750, -0.176784,
		15.630201, 15.483042, 22.941950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.774126, 16.300003, 23.037388>,  <15.140779, 15.967966, 23.065699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.774126, 16.300003, 23.037388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.841063, 15.968689, 22.823496>,  <15.881226, 15.769900, 22.695160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.841063, 15.968689, 22.823496>,  <15.774126, 16.300003, 23.037388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.841063, 15.968689, 22.823496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446229, 0.547277, -0.708073,
		0.879133, -0.120121, 0.461189,
		0.167344, -0.828287, -0.534731,
		15.891267, 15.720203, 22.663076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.483503, 16.376444, 22.764940>,  <15.774126, 16.300003, 23.037388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.483503, 16.376444, 22.764940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.294275, 16.105244, 22.539902>,  <16.180738, 15.942523, 22.404879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.294275, 16.105244, 22.539902>,  <16.483503, 16.376444, 22.764940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.294275, 16.105244, 22.539902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373410, 0.424079, -0.825059,
		0.797978, -0.600391, 0.052553,
		-0.473071, -0.678002, -0.562598,
		16.152353, 15.901843, 22.371122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.884827, 15.936054, 22.395147>,  <16.483503, 16.376444, 22.764940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.884827, 15.936054, 22.395147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.550074, 15.934047, 22.176205>,  <16.349222, 15.932842, 22.044838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.550074, 15.934047, 22.176205>,  <16.884827, 15.936054, 22.395147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.550074, 15.934047, 22.176205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491042, 0.434979, -0.754766,
		0.241877, -0.900427, -0.361563,
		-0.836883, -0.005018, -0.547359,
		16.299009, 15.932542, 22.011997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121143, 15.643881, 21.853327>,  <16.884827, 15.936054, 22.395147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.121143, 15.643881, 21.853327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.791412, 15.826131, 21.718927>,  <16.593575, 15.935481, 21.638288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.791412, 15.826131, 21.718927>,  <17.121143, 15.643881, 21.853327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.791412, 15.826131, 21.718927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476690, 0.238486, -0.846103,
		-0.305375, -0.857631, -0.413782,
		-0.824325, 0.455625, -0.335996,
		16.544115, 15.962818, 21.618128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059208, 15.573644, 21.184364>,  <17.121143, 15.643881, 21.853327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.059208, 15.573644, 21.184364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.759048, 15.835997, 21.151567>,  <16.578953, 15.993408, 21.131889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.759048, 15.835997, 21.151567>,  <17.059208, 15.573644, 21.184364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.759048, 15.835997, 21.151567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423308, 0.381589, -0.821705,
		-0.507655, -0.651313, -0.563983,
		-0.750397, 0.655882, -0.081991,
		16.533930, 16.032761, 21.126970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.729382, 15.602840, 20.452070>,  <17.059208, 15.573644, 21.184364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.729382, 15.602840, 20.452070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.643030, 15.941913, 20.645908>,  <16.591219, 16.145355, 20.762211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.643030, 15.941913, 20.645908>,  <16.729382, 15.602840, 20.452070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.643030, 15.941913, 20.645908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292720, 0.529658, -0.796102,
		-0.931510, -0.030010, -0.362475,
		-0.215879, 0.847680, 0.484597,
		16.578266, 16.196217, 20.791288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.387476, 15.968892, 20.051037>,  <16.729382, 15.602840, 20.452070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.387476, 15.968892, 20.051037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.528915, 16.246651, 20.301725>,  <16.613779, 16.413305, 20.452139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.528915, 16.246651, 20.301725>,  <16.387476, 15.968892, 20.051037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.528915, 16.246651, 20.301725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440808, 0.467242, -0.766403,
		-0.825018, 0.547265, -0.140878,
		0.353601, 0.694397, 0.626722,
		16.634996, 16.454969, 20.489742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.425343, 16.570917, 19.698030>,  <16.387476, 15.968892, 20.051037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.425343, 16.570917, 19.698030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.671614, 16.714067, 19.978848>,  <16.819376, 16.799957, 20.147337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.671614, 16.714067, 19.978848>,  <16.425343, 16.570917, 19.698030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.671614, 16.714067, 19.978848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393589, 0.632163, -0.667426,
		-0.682662, 0.687236, 0.248352,
		0.615679, 0.357878, 0.702042,
		16.856318, 16.821430, 20.189461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.418694, 17.342503, 19.732157>,  <16.425343, 16.570917, 19.698030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.418694, 17.342503, 19.732157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.770849, 17.187538, 19.841576>,  <16.982143, 17.094561, 19.907227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.770849, 17.187538, 19.841576>,  <16.418694, 17.342503, 19.732157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.770849, 17.187538, 19.841576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450763, 0.504281, -0.736555,
		0.147402, 0.771761, 0.618593,
		0.880389, -0.387409, 0.273549,
		17.034966, 17.071316, 19.923641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.751564, 17.828875, 19.576805>,  <16.418694, 17.342503, 19.732157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.751564, 17.828875, 19.576805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.030764, 17.551586, 19.648632>,  <17.198282, 17.385212, 19.691729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.030764, 17.551586, 19.648632>,  <16.751564, 17.828875, 19.576805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.030764, 17.551586, 19.648632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645893, 0.501168, -0.575893,
		0.309229, 0.517952, 0.797561,
		0.697997, -0.693222, 0.179566,
		17.240162, 17.343620, 19.702501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.384089, 18.251392, 19.458447>,  <16.751564, 17.828875, 19.576805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.384089, 18.251392, 19.458447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.494780, 17.867054, 19.464024>,  <17.561195, 17.636452, 19.467369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.494780, 17.867054, 19.464024>,  <17.384089, 18.251392, 19.458447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.494780, 17.867054, 19.464024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792261, 0.219917, -0.569174,
		0.543823, 0.168552, 0.822099,
		0.276730, -0.960847, 0.013941,
		17.577799, 17.578800, 19.468206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.100037, 18.215572, 19.678844>,  <17.384089, 18.251392, 19.458447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.100037, 18.215572, 19.678844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.010387, 17.898104, 19.452621>,  <17.956598, 17.707623, 19.316887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.010387, 17.898104, 19.452621>,  <18.100037, 18.215572, 19.678844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.010387, 17.898104, 19.452621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782239, 0.199625, -0.590130,
		0.581268, -0.574662, 0.576100,
		-0.224121, -0.793671, -0.565558,
		17.943151, 17.660002, 19.282953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.751396, 17.844629, 19.574820>,  <18.100037, 18.215572, 19.678844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.751396, 17.844629, 19.574820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.485220, 17.739832, 19.295235>,  <18.325514, 17.676954, 19.127483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.485220, 17.739832, 19.295235>,  <18.751396, 17.844629, 19.574820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.485220, 17.739832, 19.295235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691327, 0.136852, -0.709463,
		0.281530, -0.955317, 0.090057,
		-0.665438, -0.261994, -0.698965,
		18.285589, 17.661234, 19.085545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.989832, 17.225567, 19.213882>,  <18.751396, 17.844629, 19.574820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.989832, 17.225567, 19.213882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.762169, 17.453203, 18.976498>,  <18.625570, 17.589785, 18.834066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.762169, 17.453203, 18.976498>,  <18.989832, 17.225567, 19.213882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.762169, 17.453203, 18.976498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802558, 0.227572, -0.551464,
		-0.178778, -0.790156, -0.586252,
		-0.569157, 0.569091, -0.593461,
		18.591421, 17.623930, 18.798460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.627993, 16.798033, 18.988918>,  <18.989832, 17.225567, 19.213882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.627993, 16.798033, 18.988918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.989012, 16.951834, 19.066446>,  <20.205624, 17.044113, 19.112963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.989012, 16.951834, 19.066446>,  <19.627993, 16.798033, 18.988918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.989012, 16.951834, 19.066446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077046, -0.298657, 0.951245,
		0.423641, -0.873478, -0.239928,
		0.902548, 0.384501, 0.193821,
		20.259777, 17.067184, 19.124592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.952015, 16.333946, 19.514574>,  <19.627993, 16.798033, 18.988918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.952015, 16.333946, 19.514574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.131969, 16.690363, 19.538733>,  <20.239943, 16.904213, 19.553226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.131969, 16.690363, 19.538733>,  <19.952015, 16.333946, 19.514574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.131969, 16.690363, 19.538733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020901, -0.057102, 0.998149,
		0.892841, -0.450315, -0.007065,
		0.449885, 0.891042, 0.060395,
		20.266935, 16.957676, 19.556850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.410028, 16.264408, 20.068644>,  <19.952015, 16.333946, 19.514574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.410028, 16.264408, 20.068644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.371931, 16.658386, 20.010937>,  <20.349072, 16.894773, 19.976313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.371931, 16.658386, 20.010937>,  <20.410028, 16.264408, 20.068644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.371931, 16.658386, 20.010937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069608, 0.151162, 0.986055,
		0.993017, 0.083875, -0.082957,
		-0.095245, 0.984944, -0.144268,
		20.343357, 16.953869, 19.967657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.934048, 16.609695, 20.437571>,  <20.410028, 16.264408, 20.068644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.934048, 16.609695, 20.437571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.657537, 16.895906, 20.397266>,  <20.491631, 17.067633, 20.373085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.657537, 16.895906, 20.397266>,  <20.934048, 16.609695, 20.437571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.657537, 16.895906, 20.397266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077627, 0.212172, 0.974144,
		0.718408, 0.665582, -0.202214,
		-0.691278, 0.715530, -0.100759,
		20.450153, 17.110565, 20.367039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.195393, 17.183937, 20.861223>,  <20.934048, 16.609695, 20.437571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.195393, 17.183937, 20.861223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.799458, 17.200424, 20.806786>,  <20.561897, 17.210318, 20.774122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.799458, 17.200424, 20.806786>,  <21.195393, 17.183937, 20.861223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.799458, 17.200424, 20.806786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130528, 0.116395, 0.984589,
		0.056425, 0.992347, -0.109832,
		-0.989838, 0.041219, -0.136096,
		20.502506, 17.212790, 20.765957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.976730, 17.629175, 21.380644>,  <21.195393, 17.183937, 20.861223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.976730, 17.629175, 21.380644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.644920, 17.456490, 21.238934>,  <20.445833, 17.352879, 21.153908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.644920, 17.456490, 21.238934>,  <20.976730, 17.629175, 21.380644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.644920, 17.456490, 21.238934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271399, -0.242792, 0.931340,
		-0.488086, 0.868721, 0.084236,
		-0.829526, -0.431713, -0.354273,
		20.396063, 17.326975, 21.132652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.455557, 18.009388, 21.678616>,  <20.976730, 17.629175, 21.380644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.455557, 18.009388, 21.678616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.318869, 17.646936, 21.578890>,  <20.236856, 17.429466, 21.519054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.318869, 17.646936, 21.578890>,  <20.455557, 18.009388, 21.678616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.318869, 17.646936, 21.578890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367045, -0.115535, 0.923000,
		-0.865162, 0.406917, -0.293110,
		-0.341720, -0.906129, -0.249313,
		20.216352, 17.375097, 21.504095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.914526, 17.846022, 22.075850>,  <20.455557, 18.009388, 21.678616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.914526, 17.846022, 22.075850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.945309, 17.470028, 21.942877>,  <19.963778, 17.244432, 21.863094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.945309, 17.470028, 21.942877>,  <19.914526, 17.846022, 22.075850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.945309, 17.470028, 21.942877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260998, -0.340786, 0.903186,
		-0.962267, 0.017258, -0.271559,
		0.076956, -0.939983, -0.332431,
		19.968395, 17.188034, 21.843147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.413912, 17.537849, 22.478626>,  <19.914526, 17.846022, 22.075850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.413912, 17.537849, 22.478626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.649923, 17.251081, 22.330091>,  <19.791531, 17.079020, 22.240971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.649923, 17.251081, 22.330091>,  <19.413912, 17.537849, 22.478626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.649923, 17.251081, 22.330091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213167, -0.581933, 0.784801,
		-0.778735, -0.383897, -0.496180,
		0.590027, -0.716921, -0.371338,
		19.826931, 17.036005, 22.218691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.049170, 16.870209, 22.513699>,  <19.413912, 17.537849, 22.478626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.049170, 16.870209, 22.513699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.433525, 16.763601, 22.483604>,  <19.664139, 16.699636, 22.465548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.433525, 16.763601, 22.483604>,  <19.049170, 16.870209, 22.513699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.433525, 16.763601, 22.483604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086221, -0.546077, 0.833286,
		-0.263169, -0.794209, -0.547699,
		0.960889, -0.266519, -0.075233,
		19.721792, 16.683645, 22.461035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.068447, 16.222351, 22.659494>,  <19.049170, 16.870209, 22.513699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.068447, 16.222351, 22.659494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.461281, 16.277922, 22.710415>,  <19.696981, 16.311264, 22.740967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.461281, 16.277922, 22.710415>,  <19.068447, 16.222351, 22.659494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.461281, 16.277922, 22.710415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024001, -0.577848, 0.815792,
		0.186897, -0.804233, -0.564162,
		0.982086, 0.138929, 0.127300,
		19.755907, 16.319601, 22.748606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.525461, 15.528181, 22.783182>,  <19.068447, 16.222351, 22.659494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.525461, 15.528181, 22.783182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.717628, 15.834463, 22.954247>,  <19.832930, 16.018232, 23.056885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.717628, 15.834463, 22.954247>,  <19.525461, 15.528181, 22.783182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.717628, 15.834463, 22.954247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100367, -0.436415, 0.894130,
		0.871277, -0.472481, -0.132811,
		0.480420, 0.765705, 0.427660,
		19.861755, 16.064175, 23.082544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.920811, 15.190452, 23.296062>,  <19.525461, 15.528181, 22.783182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.920811, 15.190452, 23.296062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.933367, 15.577545, 23.396069>,  <19.940901, 15.809801, 23.456072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.933367, 15.577545, 23.396069>,  <19.920811, 15.190452, 23.296062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.933367, 15.577545, 23.396069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029851, -0.249119, 0.968013,
		0.999061, -0.037848, 0.021068,
		0.031389, 0.967733, 0.250015,
		19.942783, 15.867865, 23.471073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.518990, 15.317204, 23.838703>,  <19.920811, 15.190452, 23.296062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.518990, 15.317204, 23.838703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.250214, 15.609919, 23.884291>,  <20.088949, 15.785547, 23.911644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.250214, 15.609919, 23.884291>,  <20.518990, 15.317204, 23.838703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.250214, 15.609919, 23.884291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010376, -0.144567, 0.989441,
		0.740535, 0.666025, 0.089547,
		-0.671938, 0.731786, 0.113968,
		20.048632, 15.829454, 23.918482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.731220, 15.639277, 24.442434>,  <20.518990, 15.317204, 23.838703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.731220, 15.639277, 24.442434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.353834, 15.758812, 24.385061>,  <20.127403, 15.830533, 24.350637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.353834, 15.758812, 24.385061>,  <20.731220, 15.639277, 24.442434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.353834, 15.758812, 24.385061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204289, -0.183435, 0.961570,
		0.261042, 0.936508, 0.234114,
		-0.943463, 0.298837, -0.143434,
		20.070795, 15.848463, 24.342031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.605421, 16.029484, 24.978359>,  <20.731220, 15.639277, 24.442434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.605421, 16.029484, 24.978359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.233032, 15.930502, 24.870983>,  <20.009600, 15.871112, 24.806557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.233032, 15.930502, 24.870983>,  <20.605421, 16.029484, 24.978359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.233032, 15.930502, 24.870983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212564, -0.230416, 0.949592,
		-0.296836, 0.941102, 0.161910,
		-0.930970, -0.247457, -0.268440,
		19.953741, 15.856265, 24.790451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.164541, 16.332867, 25.504261>,  <20.605421, 16.029484, 24.978359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.164541, 16.332867, 25.504261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.955080, 16.044783, 25.322235>,  <19.829403, 15.871933, 25.213018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.955080, 16.044783, 25.322235>,  <20.164541, 16.332867, 25.504261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.955080, 16.044783, 25.322235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335381, -0.316753, 0.887236,
		-0.783138, 0.617226, -0.075675,
		-0.523655, -0.720208, -0.455067,
		19.797983, 15.828720, 25.185715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.514442, 16.389481, 25.800100>,  <20.164541, 16.332867, 25.504261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.514442, 16.389481, 25.800100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.491152, 16.017210, 25.655628>,  <19.477179, 15.793848, 25.568945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.491152, 16.017210, 25.655628>,  <19.514442, 16.389481, 25.800100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.491152, 16.017210, 25.655628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491433, -0.288202, 0.821847,
		-0.868967, 0.225349, -0.440585,
		-0.058225, -0.930676, -0.361182,
		19.473684, 15.738008, 25.547274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<18.814350, 16.081505, 25.886385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.051451, 15.759988, 25.866137>,  <19.193712, 15.567078, 25.853989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.051451, 15.759988, 25.866137>,  <18.814350, 16.081505, 25.886385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.051451, 15.759988, 25.866137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473941, -0.398942, 0.785000,
		-0.651171, -0.441320, -0.617424,
		0.592753, -0.803792, -0.050620,
		19.229277, 15.518850, 25.850950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.370409, 15.617206, 26.132450>,  <18.814350, 16.081505, 25.886385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.370409, 15.617206, 26.132450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.710819, 15.407167, 26.134644>,  <18.915066, 15.281145, 26.135960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.710819, 15.407167, 26.134644>,  <18.370409, 15.617206, 26.132450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.710819, 15.407167, 26.134644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429106, -0.689363, 0.583650,
		-0.302691, -0.499055, -0.811987,
		0.851027, -0.525094, 0.005484,
		18.966127, 15.249640, 26.136288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.192549, 14.962609, 25.884178>,  <18.370409, 15.617206, 26.132450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.192549, 14.962609, 25.884178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.538324, 14.944972, 26.084497>,  <18.745790, 14.934389, 26.204689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.538324, 14.944972, 26.084497>,  <18.192549, 14.962609, 25.884178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.538324, 14.944972, 26.084497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385977, -0.696485, 0.604922,
		0.322125, -0.716215, -0.619089,
		0.864440, -0.044094, 0.500798,
		18.797657, 14.931744, 26.234737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.194826, 14.288314, 26.032028>,  <18.192549, 14.962609, 25.884178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.194826, 14.288314, 26.032028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.442947, 14.474614, 26.284472>,  <18.591820, 14.586394, 26.435938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.442947, 14.474614, 26.284472>,  <18.194826, 14.288314, 26.032028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.442947, 14.474614, 26.284472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377094, -0.528443, 0.760624,
		0.687766, -0.709806, -0.152163,
		0.620305, 0.465751, 0.631109,
		18.629040, 14.614340, 26.473804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.169731, 13.774047, 26.620070>,  <18.194826, 14.288314, 26.032028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.169731, 13.774047, 26.620070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.300219, 14.102988, 26.806538>,  <18.378511, 14.300353, 26.918419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.300219, 14.102988, 26.806538>,  <18.169731, 13.774047, 26.620070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.300219, 14.102988, 26.806538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453033, -0.296819, 0.840631,
		0.829665, -0.485419, 0.275726,
		0.326218, 0.822354, 0.466171,
		18.398085, 14.349694, 26.946388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.416956, 13.578410, 27.257744>,  <18.169731, 13.774047, 26.620070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.416956, 13.578410, 27.257744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.347548, 13.971409, 27.284843>,  <18.305902, 14.207209, 27.301104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.347548, 13.971409, 27.284843>,  <18.416956, 13.578410, 27.257744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.347548, 13.971409, 27.284843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369352, -0.128696, 0.920335,
		0.912946, 0.134673, 0.385218,
		-0.173520, 0.982497, 0.067751,
		18.295492, 14.266158, 27.305168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.678062, 13.753214, 27.865637>,  <18.416956, 13.578410, 27.257744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.678062, 13.753214, 27.865637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.425600, 14.057111, 27.803112>,  <18.274122, 14.239449, 27.765596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.425600, 14.057111, 27.803112>,  <18.678062, 13.753214, 27.865637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.425600, 14.057111, 27.803112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285111, -0.039822, 0.957667,
		0.721356, 0.649003, 0.241745,
		-0.631156, 0.759742, -0.156312,
		18.236254, 14.285033, 27.756218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.854288, 14.244792, 28.427250>,  <18.678062, 13.753214, 27.865637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.854288, 14.244792, 28.427250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.486130, 14.348909, 28.310549>,  <18.265234, 14.411380, 28.240528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.486130, 14.348909, 28.310549>,  <18.854288, 14.244792, 28.427250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.486130, 14.348909, 28.310549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262752, 0.140810, 0.954534,
		0.289539, 0.955207, -0.061208,
		-0.920396, 0.260293, -0.291752,
		18.210011, 14.426997, 28.223022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.694979, 14.772960, 28.816048>,  <18.854288, 14.244792, 28.427250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.694979, 14.772960, 28.816048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.342066, 14.631860, 28.691378>,  <18.130318, 14.547199, 28.616575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.342066, 14.631860, 28.691378>,  <18.694979, 14.772960, 28.816048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.342066, 14.631860, 28.691378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338794, 0.016194, 0.940721,
		-0.326793, 0.935577, -0.133798,
		-0.882284, -0.352751, -0.311676,
		18.077381, 14.526034, 28.597876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.279751, 15.130037, 29.232857>,  <18.694979, 14.772960, 28.816048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.279751, 15.130037, 29.232857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.014894, 14.853143, 29.118050>,  <17.855980, 14.687006, 29.049166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.014894, 14.853143, 29.118050>,  <18.279751, 15.130037, 29.232857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.014894, 14.853143, 29.118050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390362, -0.008325, 0.920624,
		-0.639678, 0.721624, -0.264710,
		-0.662140, -0.692235, -0.287020,
		17.816252, 14.645473, 29.031944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.658319, 15.368905, 29.471731>,  <18.279751, 15.130037, 29.232857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.658319, 15.368905, 29.471731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.624704, 14.977626, 29.395769>,  <17.604536, 14.742858, 29.350191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.624704, 14.977626, 29.395769>,  <17.658319, 15.368905, 29.471731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.624704, 14.977626, 29.395769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532337, -0.117033, 0.838403,
		-0.842351, 0.171552, -0.510897,
		-0.084038, -0.978199, -0.189906,
		17.599493, 14.684166, 29.338797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.930485, 15.166161, 29.495344>,  <17.658319, 15.368905, 29.471731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.930485, 15.166161, 29.495344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.147875, 14.836486, 29.559029>,  <17.278309, 14.638680, 29.597239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.147875, 14.836486, 29.559029>,  <16.930485, 15.166161, 29.495344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.147875, 14.836486, 29.559029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486162, -0.154429, 0.860115,
		-0.684310, -0.544854, -0.484617,
		0.543476, -0.824188, 0.159210,
		17.310917, 14.589230, 29.606792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.370665, 14.723020, 29.681423>,  <16.930485, 15.166161, 29.495344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.370665, 14.723020, 29.681423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.722612, 14.570785, 29.795254>,  <16.933781, 14.479444, 29.863552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.722612, 14.570785, 29.795254>,  <16.370665, 14.723020, 29.681423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.722612, 14.570785, 29.795254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437404, -0.414512, 0.798033,
		-0.185761, -0.826640, -0.531187,
		0.879870, -0.380587, 0.284575,
		16.986572, 14.456609, 29.880627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.266209, 14.056098, 30.052656>,  <16.370665, 14.723020, 29.681423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.266209, 14.056098, 30.052656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.644865, 14.138092, 30.152138>,  <16.872059, 14.187288, 30.211826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.644865, 14.138092, 30.152138>,  <16.266209, 14.056098, 30.052656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.644865, 14.138092, 30.152138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140194, -0.432941, 0.890454,
		0.290203, -0.877806, -0.381102,
		0.946640, 0.204984, 0.248704,
		16.928858, 14.199587, 30.226749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.547235, 13.357896, 30.260368>,  <16.266209, 14.056098, 30.052656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.547235, 13.357896, 30.260368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.754486, 13.661241, 30.418573>,  <16.878838, 13.843247, 30.513496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.754486, 13.661241, 30.418573>,  <16.547235, 13.357896, 30.260368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.754486, 13.661241, 30.418573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180798, -0.354862, 0.917270,
		0.835976, -0.546771, -0.046754,
		0.518128, 0.758363, 0.395511,
		16.909925, 13.888749, 30.537228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.975281, 13.058815, 30.765453>,  <16.547235, 13.357896, 30.260368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.975281, 13.058815, 30.765453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.960917, 13.446136, 30.864325>,  <16.952297, 13.678530, 30.923647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.960917, 13.446136, 30.864325>,  <16.975281, 13.058815, 30.765453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.960917, 13.446136, 30.864325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276376, -0.247312, 0.928683,
		0.960378, -0.034962, 0.276498,
		-0.035913, 0.968305, 0.247176,
		16.950142, 13.736628, 30.938477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.258091, 13.086567, 31.411680>,  <16.975281, 13.058815, 30.765453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.258091, 13.086567, 31.411680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.079563, 13.443932, 31.391224>,  <16.972446, 13.658350, 31.378950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.079563, 13.443932, 31.391224>,  <17.258091, 13.086567, 31.411680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.079563, 13.443932, 31.391224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425429, -0.161558, 0.890454,
		0.787280, 0.419185, 0.452189,
		-0.446320, 0.893411, -0.051142,
		16.945667, 13.711955, 31.375881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.397444, 13.452257, 32.055176>,  <17.258091, 13.086567, 31.411680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.397444, 13.452257, 32.055176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.067101, 13.620305, 31.904734>,  <16.868895, 13.721134, 31.814468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.067101, 13.620305, 31.904734>,  <17.397444, 13.452257, 32.055176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.067101, 13.620305, 31.904734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473540, -0.154613, 0.867095,
		0.306133, 0.894200, 0.326633,
		-0.825859, 0.420120, -0.376107,
		16.819344, 13.746341, 31.791901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.250788, 13.915118, 32.639263>,  <17.397444, 13.452257, 32.055176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.250788, 13.915118, 32.639263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.949839, 13.819643, 32.393673>,  <16.769268, 13.762358, 32.246319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.949839, 13.819643, 32.393673>,  <17.250788, 13.915118, 32.639263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.949839, 13.819643, 32.393673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551653, -0.281083, 0.785284,
		-0.360015, 0.929527, 0.079807,
		-0.752375, -0.238688, -0.613971,
		16.724127, 13.748036, 32.209480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.741800, 14.134442, 33.044319>,  <17.250788, 13.915118, 32.639263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.741800, 14.134442, 33.044319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.612635, 13.879830, 32.764160>,  <16.535135, 13.727063, 32.596066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.612635, 13.879830, 32.764160>,  <16.741800, 14.134442, 33.044319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.612635, 13.879830, 32.764160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668269, -0.370687, 0.644986,
		-0.670181, 0.676329, -0.305673,
		-0.322914, -0.636530, -0.700397,
		16.515760, 13.688871, 32.554043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.083960, 14.178352, 33.160641>,  <16.741800, 14.134442, 33.044319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.083960, 14.178352, 33.160641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.122564, 13.829226, 32.969276>,  <16.145727, 13.619749, 32.854458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.122564, 13.829226, 32.969276>,  <16.083960, 14.178352, 33.160641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.122564, 13.829226, 32.969276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622117, -0.428094, 0.655520,
		-0.776953, 0.234359, -0.584312,
		0.096513, -0.872818, -0.478408,
		16.151518, 13.567380, 32.825756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.369385, 13.859452, 32.993484>,  <16.083960, 14.178352, 33.160641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.369385, 13.859452, 32.993484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.629026, 13.555537, 32.978596>,  <15.784812, 13.373188, 32.969662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.629026, 13.555537, 32.978596>,  <15.369385, 13.859452, 32.993484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.629026, 13.555537, 32.978596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690816, -0.609252, 0.389341,
		-0.318492, -0.227012, -0.920342,
		0.649105, -0.759788, -0.037218,
		15.823758, 13.327600, 32.967430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.059723, 13.215438, 32.743652>,  <15.369385, 13.859452, 32.993484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.059723, 13.215438, 32.743652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.360011, 13.124685, 32.991829>,  <15.540184, 13.070234, 33.140736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.360011, 13.124685, 32.991829>,  <15.059723, 13.215438, 32.743652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.360011, 13.124685, 32.991829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659928, -0.300544, 0.688598,
		0.030240, -0.926390, -0.375349,
		0.750720, -0.226880, 0.620440,
		15.585227, 13.056621, 33.177959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.344828, 12.386935, 32.894299>,  <15.059723, 13.215438, 32.743652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.344828, 12.386935, 32.894299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.180932, 12.026875, 32.953419>,  <15.082595, 11.810840, 32.988892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.180932, 12.026875, 32.953419>,  <15.344828, 12.386935, 32.894299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.180932, 12.026875, 32.953419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100197, -0.116638, -0.988107,
		0.906683, -0.419676, -0.042400,
		-0.409740, -0.900149, 0.147804,
		15.058010, 11.756831, 32.997761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.668409, 11.905767, 32.464096>,  <15.344828, 12.386935, 32.894299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.668409, 11.905767, 32.464096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.296095, 11.780431, 32.539417>,  <15.072706, 11.705229, 32.584610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.296095, 11.780431, 32.539417>,  <15.668409, 11.905767, 32.464096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.296095, 11.780431, 32.539417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146626, -0.151849, -0.977468,
		0.334873, -0.937422, 0.095395,
		-0.930785, -0.313340, 0.188300,
		15.016859, 11.686429, 32.595909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.554371, 11.322083, 32.019787>,  <15.668409, 11.905767, 32.464096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.554371, 11.322083, 32.019787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.182954, 11.436687, 32.114204>,  <14.960103, 11.505450, 32.170856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.182954, 11.436687, 32.114204>,  <15.554371, 11.322083, 32.019787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.182954, 11.436687, 32.114204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250635, -0.014795, -0.967968,
		-0.273841, -0.957963, 0.085548,
		-0.928543, 0.286511, 0.236048,
		14.904390, 11.522640, 32.185020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.069870, 10.879306, 31.700747>,  <15.554371, 11.322083, 32.019787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.069870, 10.879306, 31.700747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.853235, 11.205376, 31.782894>,  <14.723254, 11.401017, 31.832184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.853235, 11.205376, 31.782894>,  <15.069870, 10.879306, 31.700747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.853235, 11.205376, 31.782894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213271, 0.103071, -0.971541,
		-0.813142, -0.569972, 0.118031,
		-0.541586, 0.815174, 0.205370,
		14.690760, 11.449927, 31.844505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.593281, 10.948119, 31.173723>,  <15.069870, 10.879306, 31.700747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.593281, 10.948119, 31.173723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.568952, 11.318240, 31.323450>,  <14.554354, 11.540313, 31.413286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.568952, 11.318240, 31.323450>,  <14.593281, 10.948119, 31.173723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.568952, 11.318240, 31.323450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073342, 0.369856, -0.926190,
		-0.995450, -0.083787, 0.045368,
		-0.060823, 0.925303, 0.374318,
		14.550705, 11.595831, 31.435745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.106564, 11.281941, 30.830870>,  <14.593281, 10.948119, 31.173723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.106564, 11.281941, 30.830870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.306173, 11.588993, 30.991726>,  <14.425940, 11.773224, 31.088240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.306173, 11.588993, 30.991726>,  <14.106564, 11.281941, 30.830870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.306173, 11.588993, 30.991726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192420, 0.550621, -0.812275,
		-0.844955, 0.327966, 0.422481,
		0.499025, 0.767629, 0.402143,
		14.455881, 11.819282, 31.112370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.725214, 11.787501, 30.645950>,  <14.106564, 11.281941, 30.830870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.725214, 11.787501, 30.645950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.080784, 11.954610, 30.721081>,  <14.294126, 12.054875, 30.766159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.080784, 11.954610, 30.721081>,  <13.725214, 11.787501, 30.645950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.080784, 11.954610, 30.721081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120350, 0.608669, -0.784243,
		-0.441960, 0.674528, 0.591340,
		0.888925, 0.417772, 0.187828,
		14.347462, 12.079942, 30.777430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.536459, 12.446844, 30.402199>,  <13.725214, 11.787501, 30.645950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.536459, 12.446844, 30.402199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.934373, 12.410837, 30.421391>,  <14.173121, 12.389234, 30.432905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.934373, 12.410837, 30.421391>,  <13.536459, 12.446844, 30.402199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.934373, 12.410837, 30.421391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096279, 0.673223, -0.733145,
		0.033694, 0.733940, 0.678378,
		0.994784, -0.090016, 0.047979,
		14.232808, 12.383832, 30.435783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.853626, 13.126966, 30.250942>,  <13.536459, 12.446844, 30.402199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.853626, 13.126966, 30.250942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.131343, 12.850529, 30.170597>,  <14.297974, 12.684666, 30.122391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.131343, 12.850529, 30.170597>,  <13.853626, 13.126966, 30.250942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.131343, 12.850529, 30.170597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245066, 0.489436, -0.836896,
		0.676683, 0.531827, 0.509176,
		0.694293, -0.691095, -0.200861,
		14.339631, 12.643200, 30.110338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.476895, 13.534993, 30.107100>,  <13.853626, 13.126966, 30.250942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.476895, 13.534993, 30.107100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.553454, 13.185700, 29.927841>,  <14.599390, 12.976125, 29.820286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.553454, 13.185700, 29.927841>,  <14.476895, 13.534993, 30.107100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.553454, 13.185700, 29.927841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507021, 0.478912, -0.716641,
		0.840415, -0.090055, 0.534409,
		0.191398, -0.873232, -0.448144,
		14.610873, 12.923731, 29.793398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.102527, 13.734221, 29.703661>,  <14.476895, 13.534993, 30.107100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.102527, 13.734221, 29.703661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.041611, 13.359498, 29.577675>,  <15.005061, 13.134665, 29.502083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.041611, 13.359498, 29.577675>,  <15.102527, 13.734221, 29.703661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.041611, 13.359498, 29.577675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372448, 0.240789, -0.896272,
		0.915473, -0.253801, 0.312242,
		-0.152290, -0.936806, -0.314964,
		14.995924, 13.078456, 29.483185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.781891, 13.507171, 29.435368>,  <15.102527, 13.734221, 29.703661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.781891, 13.507171, 29.435368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.463697, 13.345564, 29.254713>,  <15.272781, 13.248600, 29.146320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.463697, 13.345564, 29.254713>,  <15.781891, 13.507171, 29.435368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.463697, 13.345564, 29.254713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395133, 0.219235, -0.892079,
		0.459429, -0.888092, -0.014758,
		-0.795484, -0.404016, -0.451638,
		15.225052, 13.224360, 29.119221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.018105, 13.226048, 28.878193>,  <15.781891, 13.507171, 29.435368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.018105, 13.226048, 28.878193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.631047, 13.289186, 28.799456>,  <15.398812, 13.327069, 28.752213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.631047, 13.289186, 28.799456>,  <16.018105, 13.226048, 28.878193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.631047, 13.289186, 28.799456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248921, 0.469661, -0.847028,
		-0.041249, -0.868621, -0.493757,
		-0.967645, 0.157845, -0.196845,
		15.340754, 13.336540, 28.740402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.939406, 12.992522, 28.214876>,  <16.018105, 13.226048, 28.878193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.939406, 12.992522, 28.214876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.617681, 13.220668, 28.281528>,  <15.424645, 13.357555, 28.321520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.617681, 13.220668, 28.281528>,  <15.939406, 12.992522, 28.214876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.617681, 13.220668, 28.281528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112582, 0.421621, -0.899756,
		-0.583443, -0.704926, -0.403328,
		-0.804313, 0.570364, 0.166629,
		15.376387, 13.391777, 28.331518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.477242, 12.929431, 27.588760>,  <15.939406, 12.992522, 28.214876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.477242, 12.929431, 27.588760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.411101, 13.264357, 27.797207>,  <15.371416, 13.465312, 27.922276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.411101, 13.264357, 27.797207>,  <15.477242, 12.929431, 27.588760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.411101, 13.264357, 27.797207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055247, 0.535427, -0.842773,
		-0.984686, -0.110565, -0.134794,
		-0.165354, 0.837313, 0.521118,
		15.361495, 13.515551, 27.953543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.990893, 13.228537, 27.231054>,  <15.477242, 12.929431, 27.588760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.990893, 13.228537, 27.231054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.165755, 13.526758, 27.432268>,  <15.270673, 13.705691, 27.552996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.165755, 13.526758, 27.432268>,  <14.990893, 13.228537, 27.231054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.165755, 13.526758, 27.432268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079374, 0.589108, -0.804146,
		-0.895877, 0.311609, 0.316710,
		0.437155, 0.745555, 0.503034,
		15.296902, 13.750424, 27.583178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.674272, 13.807984, 27.007895>,  <14.990893, 13.228537, 27.231054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.674272, 13.807984, 27.007895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.986531, 13.967206, 27.200619>,  <15.173887, 14.062739, 27.316254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.986531, 13.967206, 27.200619>,  <14.674272, 13.807984, 27.007895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.986531, 13.967206, 27.200619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180957, 0.593944, -0.783891,
		-0.598199, 0.699131, 0.391631,
		0.780649, 0.398054, 0.481809,
		15.220726, 14.086622, 27.345161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.621962, 14.531833, 26.941093>,  <14.674272, 13.807984, 27.007895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.621962, 14.531833, 26.941093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.008418, 14.454820, 27.009800>,  <15.240292, 14.408611, 27.051023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.008418, 14.454820, 27.009800>,  <14.621962, 14.531833, 26.941093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.008418, 14.454820, 27.009800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244796, 0.473622, -0.846024,
		0.081535, 0.859426, 0.504716,
		0.966140, -0.192533, 0.171767,
		15.298260, 14.397059, 27.061331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.022973, 15.135608, 26.728090>,  <14.621962, 14.531833, 26.941093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.022973, 15.135608, 26.728090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.302102, 14.849317, 26.739260>,  <15.469580, 14.677542, 26.745962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.302102, 14.849317, 26.739260>,  <15.022973, 15.135608, 26.728090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.302102, 14.849317, 26.739260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449872, 0.407614, -0.794648,
		0.557369, 0.567085, 0.606427,
		0.697821, -0.715727, 0.027924,
		15.511449, 14.634599, 26.747637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.646377, 15.552279, 26.461233>,  <15.022973, 15.135608, 26.728090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.646377, 15.552279, 26.461233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.728680, 15.163314, 26.417269>,  <15.778062, 14.929935, 26.390890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.728680, 15.163314, 26.417269>,  <15.646377, 15.552279, 26.461233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.728680, 15.163314, 26.417269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314103, 0.171995, -0.933679,
		0.926824, 0.157589, 0.340826,
		0.205758, -0.972411, -0.109910,
		15.790407, 14.871591, 26.384296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433073, 15.370399, 26.232380>,  <15.646377, 15.552279, 26.461233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.433073, 15.370399, 26.232380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.215166, 15.067621, 26.088013>,  <16.084421, 14.885954, 26.001392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.215166, 15.067621, 26.088013>,  <16.433073, 15.370399, 26.232380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.215166, 15.067621, 26.088013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292837, 0.231578, -0.927695,
		0.785795, -0.611069, 0.095505,
		-0.544769, -0.756945, -0.360917,
		16.051735, 14.840538, 25.979738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.209715, 21.252127, 16.311554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.026642, 21.348391, 15.969183>,  <30.916798, 21.406149, 15.763761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.026642, 21.348391, 15.969183>,  <31.209715, 21.252127, 16.311554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026642, 21.348391, 15.969183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541361, 0.688224, 0.482986,
		0.705304, 0.684420, -0.184705,
		-0.457684, 0.240660, -0.855925,
		30.889338, 21.420589, 15.712405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256273, 21.942911, 16.059385>,  <31.209715, 21.252127, 16.311554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256273, 21.942911, 16.059385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.887791, 21.834507, 15.947721>,  <30.666700, 21.769464, 15.880721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.887791, 21.834507, 15.947721>,  <31.256273, 21.942911, 16.059385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887791, 21.834507, 15.947721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359606, 0.866986, 0.344991,
		0.148535, 0.418197, -0.896130,
		-0.921206, -0.271010, -0.279163,
		30.611429, 21.753204, 15.863972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970760, 22.478466, 15.600272>,  <31.256273, 21.942911, 16.059385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970760, 22.478466, 15.600272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.697025, 22.274467, 15.808727>,  <30.532784, 22.152067, 15.933800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.697025, 22.274467, 15.808727>,  <30.970760, 22.478466, 15.600272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697025, 22.274467, 15.808727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513485, 0.844500, 0.152159,
		-0.517701, -0.163468, -0.839800,
		-0.684338, -0.509998, 0.521137,
		30.491724, 22.121468, 15.965069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483318, 22.834555, 15.089265>,  <30.970760, 22.478466, 15.600272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483318, 22.834555, 15.089265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.392843, 23.160770, 15.302332>,  <30.338558, 23.356501, 15.430172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.392843, 23.160770, 15.302332>,  <30.483318, 22.834555, 15.089265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392843, 23.160770, 15.302332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949522, -0.062568, -0.307398,
		-0.217368, -0.575308, 0.788525,
		-0.226186, 0.815540, 0.532667,
		30.324987, 23.405432, 15.462132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122902, 22.876667, 15.727741>,  <30.483318, 22.834555, 15.089265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122902, 22.876667, 15.727741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.042223, 23.237698, 15.575595>,  <29.993814, 23.454315, 15.484307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.042223, 23.237698, 15.575595>,  <30.122902, 22.876667, 15.727741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042223, 23.237698, 15.575595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909426, -0.316777, -0.269438,
		-0.363678, 0.291569, 0.884718,
		-0.201698, 0.902574, -0.380365,
		29.981714, 23.508471, 15.461486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382666, 23.044220, 15.865042>,  <30.122902, 22.876667, 15.727741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382666, 23.044220, 15.865042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.523605, 23.217691, 15.533314>,  <29.608170, 23.321774, 15.334277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.523605, 23.217691, 15.533314>,  <29.382666, 23.044220, 15.865042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523605, 23.217691, 15.533314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821878, -0.280452, -0.495847,
		-0.447622, 0.856312, 0.257613,
		0.352351, 0.433678, -0.829320,
		29.629311, 23.347795, 15.284517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872877, 23.560030, 15.437996>,  <29.382666, 23.044220, 15.865042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872877, 23.560030, 15.437996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.160732, 23.423553, 15.196100>,  <29.333445, 23.341667, 15.050962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.160732, 23.423553, 15.196100>,  <28.872877, 23.560030, 15.437996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160732, 23.423553, 15.196100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693329, -0.305876, -0.652483,
		0.037648, 0.888835, -0.456679,
		0.719637, -0.341193, -0.604740,
		29.376623, 23.321196, 15.014678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770136, 23.866035, 14.733876>,  <28.872877, 23.560030, 15.437996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770136, 23.866035, 14.733876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.970579, 23.520174, 14.719633>,  <29.090845, 23.312658, 14.711087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.970579, 23.520174, 14.719633>,  <28.770136, 23.866035, 14.733876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970579, 23.520174, 14.719633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731175, -0.401024, -0.551871,
		0.462897, 0.302583, -0.833169,
		0.501108, -0.864652, -0.035608,
		29.120911, 23.260778, 14.708951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922731, 23.594885, 14.051240>,  <28.770136, 23.866035, 14.733876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922731, 23.594885, 14.051240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.846811, 23.333212, 14.344093>,  <28.801258, 23.176208, 14.519806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.846811, 23.333212, 14.344093>,  <28.922731, 23.594885, 14.051240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846811, 23.333212, 14.344093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841075, -0.276368, -0.464988,
		0.506526, -0.704035, -0.497762,
		-0.189802, -0.654183, 0.732134,
		28.789871, 23.136957, 14.563733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059435, 23.117020, 13.520564>,  <28.922731, 23.594885, 14.051240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059435, 23.117020, 13.520564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.265720, 22.823112, 13.344314>,  <29.389492, 22.646769, 13.238564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.265720, 22.823112, 13.344314>,  <29.059435, 23.117020, 13.520564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265720, 22.823112, 13.344314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561989, -0.678307, 0.473358,
		-0.646687, 0.003508, -0.762747,
		0.515716, -0.734770, -0.440624,
		29.420435, 22.602682, 13.212126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550676, 22.625046, 13.215342>,  <29.059435, 23.117020, 13.520564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550676, 22.625046, 13.215342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.900753, 22.441130, 13.275517>,  <29.110800, 22.330780, 13.311623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.900753, 22.441130, 13.275517>,  <28.550676, 22.625046, 13.215342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900753, 22.441130, 13.275517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457022, -0.683829, 0.568779,
		-0.158643, -0.566545, -0.808616,
		0.875193, -0.459788, 0.150439,
		29.163311, 22.303194, 13.320649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535782, 21.973429, 12.964688>,  <28.550676, 22.625046, 13.215342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535782, 21.973429, 12.964688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.823078, 21.967325, 13.242940>,  <28.995455, 21.963663, 13.409891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.823078, 21.967325, 13.242940>,  <28.535782, 21.973429, 12.964688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823078, 21.967325, 13.242940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505119, -0.699008, 0.506204,
		0.478526, -0.714951, -0.509762,
		0.718239, -0.015258, 0.695629,
		29.038549, 21.962748, 13.451629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694733, 21.294418, 13.047077>,  <28.535782, 21.973429, 12.964688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694733, 21.294418, 13.047077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.853161, 21.443445, 13.382772>,  <28.948217, 21.532862, 13.584189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.853161, 21.443445, 13.382772>,  <28.694733, 21.294418, 13.047077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853161, 21.443445, 13.382772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490905, -0.686480, 0.536431,
		0.775976, -0.624452, -0.089001,
		0.396073, 0.372567, 0.839238,
		28.971983, 21.555216, 13.634543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046452, 20.728781, 13.321281>,  <28.694733, 21.294418, 13.047077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046452, 20.728781, 13.321281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.929766, 20.996075, 13.595029>,  <28.859755, 21.156452, 13.759277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.929766, 20.996075, 13.595029>,  <29.046452, 20.728781, 13.321281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929766, 20.996075, 13.595029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395612, -0.735715, 0.549741,
		0.870858, -0.110377, 0.478982,
		-0.291716, 0.668237, 0.684369,
		28.842251, 21.196547, 13.800340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913712, 20.344387, 13.956599>,  <29.046452, 20.728781, 13.321281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913712, 20.344387, 13.956599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.759632, 20.706123, 14.030123>,  <28.667185, 20.923166, 14.074237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.759632, 20.706123, 14.030123>,  <28.913712, 20.344387, 13.956599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759632, 20.706123, 14.030123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446991, -0.357095, 0.820172,
		0.807354, 0.233769, 0.541786,
		-0.385199, 0.904343, 0.183810,
		28.644072, 20.977427, 14.085266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168728, 20.651020, 14.610329>,  <28.913712, 20.344387, 13.956599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168728, 20.651020, 14.610329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.799330, 20.790628, 14.546655>,  <28.577690, 20.874393, 14.508451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.799330, 20.790628, 14.546655>,  <29.168728, 20.651020, 14.610329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799330, 20.790628, 14.546655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330479, -0.513156, 0.792120,
		0.194781, 0.784127, 0.589242,
		-0.923496, 0.349022, -0.159184,
		28.522282, 20.895334, 14.498899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958549, 20.771370, 15.282155>,  <29.168728, 20.651020, 14.610329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958549, 20.771370, 15.282155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.647913, 20.726456, 15.034187>,  <28.461531, 20.699507, 14.885406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.647913, 20.726456, 15.034187>,  <28.958549, 20.771370, 15.282155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647913, 20.726456, 15.034187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493907, -0.502349, 0.709720,
		-0.391109, 0.857343, 0.334659,
		-0.776589, -0.112287, -0.619920,
		28.414936, 20.692770, 14.848211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429283, 20.643175, 15.740520>,  <28.958549, 20.771370, 15.282155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429283, 20.643175, 15.740520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.232914, 20.565786, 15.400740>,  <28.115093, 20.519352, 15.196872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.232914, 20.565786, 15.400740>,  <28.429283, 20.643175, 15.740520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232914, 20.565786, 15.400740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621913, -0.604980, 0.497215,
		-0.610098, 0.772377, 0.176675,
		-0.490922, -0.193473, -0.849449,
		28.085638, 20.507744, 15.145905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812893, 20.614225, 15.968596>,  <28.429283, 20.643175, 15.740520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812893, 20.614225, 15.968596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.761654, 20.426266, 15.619245>,  <27.730911, 20.313490, 15.409635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.761654, 20.426266, 15.619245>,  <27.812893, 20.614225, 15.968596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761654, 20.426266, 15.619245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711931, -0.569530, 0.410840,
		-0.690467, 0.674412, -0.261580,
		-0.128098, -0.469898, -0.873377,
		27.723225, 20.285295, 15.357231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108978, 20.692698, 15.754082>,  <27.812893, 20.614225, 15.968596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108978, 20.692698, 15.754082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.252016, 20.361147, 15.581993>,  <27.337839, 20.162216, 15.478740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.252016, 20.361147, 15.581993>,  <27.108978, 20.692698, 15.754082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252016, 20.361147, 15.581993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798218, -0.510407, 0.319894,
		-0.484740, 0.229018, -0.844143,
		0.357595, -0.828876, -0.430221,
		27.359295, 20.112484, 15.452927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.558863, 20.420828, 15.511915>,  <27.108978, 20.692698, 15.754082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.558863, 20.420828, 15.511915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.803392, 20.104443, 15.501668>,  <26.950111, 19.914612, 15.495520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.803392, 20.104443, 15.501668>,  <26.558863, 20.420828, 15.511915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803392, 20.104443, 15.501668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726895, -0.574019, 0.376996,
		-0.312896, -0.211846, -0.925860,
		0.611327, -0.790964, -0.025619,
		26.986790, 19.867153, 15.493982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166759, 19.914850, 15.262293>,  <26.558863, 20.420828, 15.511915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166759, 19.914850, 15.262293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.472668, 19.722219, 15.433502>,  <26.656214, 19.606640, 15.536228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.472668, 19.722219, 15.433502>,  <26.166759, 19.914850, 15.262293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472668, 19.722219, 15.433502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624545, -0.717342, 0.308810,
		0.158324, -0.503490, -0.849371,
		0.764773, -0.481579, 0.428024,
		26.702099, 19.577745, 15.561910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198576, 19.226612, 14.998299>,  <26.166759, 19.914850, 15.262293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198576, 19.226612, 14.998299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.389536, 19.209814, 15.349371>,  <26.504112, 19.199736, 15.560015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.389536, 19.209814, 15.349371>,  <26.198576, 19.226612, 14.998299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389536, 19.209814, 15.349371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687276, -0.640206, 0.343202,
		0.547484, -0.767055, -0.334497,
		0.477401, -0.041994, 0.877681,
		26.532757, 19.197216, 15.612676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125143, 18.522743, 15.178617>,  <26.198576, 19.226612, 14.998299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125143, 18.522743, 15.178617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.213852, 18.722261, 15.513762>,  <26.267076, 18.841972, 15.714850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.213852, 18.722261, 15.513762>,  <26.125143, 18.522743, 15.178617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213852, 18.722261, 15.513762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602774, -0.605293, 0.519888,
		0.766474, -0.620339, 0.166426,
		0.221770, 0.498798, 0.837865,
		26.280382, 18.871901, 15.765122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303629, 18.026474, 15.623594>,  <26.125143, 18.522743, 15.178617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303629, 18.026474, 15.623594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.197222, 18.339931, 15.848143>,  <26.133377, 18.528006, 15.982871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.197222, 18.339931, 15.848143>,  <26.303629, 18.026474, 15.623594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197222, 18.339931, 15.848143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603439, -0.589510, 0.536972,
		0.751728, -0.195908, 0.629702,
		-0.266018, 0.783644, 0.561370,
		26.117416, 18.575026, 16.016554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182877, 17.770479, 16.194500>,  <26.303629, 18.026474, 15.623594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182877, 17.770479, 16.194500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.991282, 18.118130, 16.243803>,  <25.876324, 18.326719, 16.273384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.991282, 18.118130, 16.243803>,  <26.182877, 17.770479, 16.194500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991282, 18.118130, 16.243803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722762, -0.470160, 0.506522,
		0.498182, 0.153532, 0.853372,
		-0.478989, 0.869125, 0.123258,
		25.847586, 18.378866, 16.280781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072298, 17.849087, 16.921907>,  <26.182877, 17.770479, 16.194500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072298, 17.849087, 16.921907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.793978, 18.066010, 16.733540>,  <25.626986, 18.196163, 16.620518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.793978, 18.066010, 16.733540>,  <26.072298, 17.849087, 16.921907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.793978, 18.066010, 16.733540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709342, -0.415997, 0.569017,
		0.112679, 0.729967, 0.674131,
		-0.695800, 0.542305, -0.470922,
		25.585238, 18.228701, 16.592262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620108, 18.059599, 17.462486>,  <26.072298, 17.849087, 16.921907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620108, 18.059599, 17.462486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.416212, 18.099308, 17.120653>,  <25.293875, 18.123133, 16.915554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.416212, 18.099308, 17.120653>,  <25.620108, 18.059599, 17.462486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416212, 18.099308, 17.120653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816257, -0.369651, 0.443940,
		-0.271826, 0.923852, 0.269457,
		-0.509740, 0.099272, -0.854582,
		25.263290, 18.129089, 16.864279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.947493, 18.283686, 17.607441>,  <25.620108, 18.059599, 17.462486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.947493, 18.283686, 17.607441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.907515, 18.114227, 17.247322>,  <24.883528, 18.012552, 17.031250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.907515, 18.114227, 17.247322>,  <24.947493, 18.283686, 17.607441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.907515, 18.114227, 17.247322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873465, -0.395981, 0.283298,
		-0.476519, 0.814693, -0.330463,
		-0.099944, -0.423644, -0.900298,
		24.877531, 17.987133, 16.977232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.138071, 18.278440, 17.436296>,  <24.947493, 18.283686, 17.607441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.138071, 18.278440, 17.436296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.299007, 18.021393, 17.175478>,  <24.395569, 17.867165, 17.018988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.299007, 18.021393, 17.175478>,  <24.138071, 18.278440, 17.436296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.299007, 18.021393, 17.175478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806972, -0.585296, 0.078902,
		-0.432343, 0.494435, -0.754065,
		0.402339, -0.642622, -0.652044,
		24.419708, 17.828606, 16.979864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.594028, 18.073757, 16.923761>,  <24.138071, 18.278440, 17.436296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.594028, 18.073757, 16.923761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.833967, 17.760231, 16.859484>,  <23.977930, 17.572115, 16.820917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.833967, 17.760231, 16.859484>,  <23.594028, 18.073757, 16.923761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.833967, 17.760231, 16.859484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793408, -0.608649, 0.007125,
		-0.103391, 0.123223, -0.986978,
		0.599845, -0.783813, -0.160695,
		24.013920, 17.525087, 16.811275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.552097, 17.593063, 16.276831>,  <23.594028, 18.073757, 16.923761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.552097, 17.593063, 16.276831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.634987, 17.428568, 16.631895>,  <23.684721, 17.329870, 16.844934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.634987, 17.428568, 16.631895>,  <23.552097, 17.593063, 16.276831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.634987, 17.428568, 16.631895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864773, -0.501246, -0.030338,
		0.457413, -0.761338, -0.459498,
		0.207224, -0.411238, 0.887660,
		23.697155, 17.305197, 16.898193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.728083, 16.785669, 16.117752>,  <23.552097, 17.593063, 16.276831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.728083, 16.785669, 16.117752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.556263, 16.896563, 16.461527>,  <23.453171, 16.963099, 16.667791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.556263, 16.896563, 16.461527>,  <23.728083, 16.785669, 16.117752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.556263, 16.896563, 16.461527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857362, -0.424066, -0.291717,
		0.283583, -0.862154, 0.419847,
		-0.429548, 0.277235, 0.859435,
		23.427399, 16.979733, 16.719358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.173742, 16.998400, 15.508649>,  <23.728083, 16.785669, 16.117752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.173742, 16.998400, 15.508649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.262756, 16.736242, 15.219944>,  <23.316164, 16.578949, 15.046721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.262756, 16.736242, 15.219944>,  <23.173742, 16.998400, 15.508649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.262756, 16.736242, 15.219944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568389, 0.688706, -0.450130,
		0.792094, -0.310072, 0.525779,
		0.222534, -0.655392, -0.721761,
		23.329517, 16.539625, 15.003415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.898960, 17.045485, 15.475965>,  <23.173742, 16.998400, 15.508649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.898960, 17.045485, 15.475965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.789442, 16.890802, 15.123716>,  <23.723732, 16.797993, 14.912367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.789442, 16.890802, 15.123716>,  <23.898960, 17.045485, 15.475965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.789442, 16.890802, 15.123716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670663, 0.579520, -0.462999,
		0.689383, -0.717367, 0.100680,
		-0.273794, -0.386706, -0.880622,
		23.707304, 16.774790, 14.859529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.559843, 17.035009, 15.025621>,  <23.898960, 17.045485, 15.475965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.559843, 17.035009, 15.025621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.279472, 16.959702, 14.750447>,  <24.111250, 16.914516, 14.585342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.279472, 16.959702, 14.750447>,  <24.559843, 17.035009, 15.025621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.279472, 16.959702, 14.750447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532765, 0.503069, -0.680502,
		0.474199, -0.843490, -0.252310,
		-0.700926, -0.188271, -0.687936,
		24.069195, 16.903221, 14.544066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.889935, 16.837307, 14.429988>,  <24.559843, 17.035009, 15.025621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.889935, 16.837307, 14.429988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.548882, 16.982006, 14.279175>,  <24.344250, 17.068827, 14.188687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.548882, 16.982006, 14.279175>,  <24.889935, 16.837307, 14.429988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.548882, 16.982006, 14.279175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512030, 0.434673, -0.740868,
		-0.104123, -0.824740, -0.555844,
		-0.852633, 0.361750, -0.377032,
		24.293091, 17.090530, 14.166065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132410, 16.897490, 13.717907>,  <24.889935, 16.837307, 14.429988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132410, 16.897490, 13.717907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.782343, 17.088629, 13.748212>,  <24.572302, 17.203312, 13.766395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.782343, 17.088629, 13.748212>,  <25.132410, 16.897490, 13.717907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.782343, 17.088629, 13.748212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319166, 0.687896, -0.651868,
		-0.363611, -0.546314, -0.754538,
		-0.875169, 0.477849, 0.075762,
		24.519793, 17.231983, 13.770941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.972191, 17.076025, 13.044218>,  <25.132410, 16.897490, 13.717907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.972191, 17.076025, 13.044218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.766441, 17.312801, 13.292420>,  <24.642992, 17.454866, 13.441341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.766441, 17.312801, 13.292420>,  <24.972191, 17.076025, 13.044218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.766441, 17.312801, 13.292420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319686, 0.803767, -0.501756,
		-0.795751, -0.059724, -0.602672,
		-0.514375, 0.591939, 0.620505,
		24.612129, 17.490383, 13.478572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.573498, 17.485699, 12.632617>,  <24.972191, 17.076025, 13.044218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.573498, 17.485699, 12.632617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.598988, 17.681042, 12.980742>,  <24.614283, 17.798246, 13.189618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.598988, 17.681042, 12.980742>,  <24.573498, 17.485699, 12.632617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.598988, 17.681042, 12.980742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372176, 0.797543, -0.474774,
		-0.925972, 0.354165, -0.130930,
		0.063726, 0.488356, 0.870314,
		24.618105, 17.827549, 13.241837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.244373, 18.039066, 12.441881>,  <24.573498, 17.485699, 12.632617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.244373, 18.039066, 12.441881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.458023, 18.114511, 12.771520>,  <24.586214, 18.159779, 12.969303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.458023, 18.114511, 12.771520>,  <24.244373, 18.039066, 12.441881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.458023, 18.114511, 12.771520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408643, 0.795751, -0.446980,
		-0.740080, 0.575505, 0.347957,
		0.534127, 0.188611, 0.824096,
		24.618261, 18.171095, 13.018748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.048750, 18.689363, 12.614150>,  <24.244373, 18.039066, 12.441881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.048750, 18.689363, 12.614150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.406199, 18.638119, 12.786210>,  <24.620668, 18.607372, 12.889446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.406199, 18.638119, 12.786210>,  <24.048750, 18.689363, 12.614150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.406199, 18.638119, 12.786210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313851, 0.863480, -0.394842,
		-0.320841, 0.487842, 0.811832,
		0.893621, -0.128113, 0.430149,
		24.674284, 18.599686, 12.915255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.291346, 19.304346, 12.733951>,  <24.048750, 18.689363, 12.614150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.291346, 19.304346, 12.733951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.625330, 19.093790, 12.798145>,  <24.825720, 18.967457, 12.836662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.625330, 19.093790, 12.798145>,  <24.291346, 19.304346, 12.733951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.625330, 19.093790, 12.798145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540176, 0.728246, -0.421745,
		0.105128, 0.438831, 0.892399,
		0.834960, -0.526389, 0.160487,
		24.875818, 18.935873, 12.846292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.719912, 19.815975, 12.982057>,  <24.291346, 19.304346, 12.733951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.719912, 19.815975, 12.982057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.935812, 19.502314, 12.859567>,  <25.065351, 19.314117, 12.786073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.935812, 19.502314, 12.859567>,  <24.719912, 19.815975, 12.982057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.935812, 19.502314, 12.859567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743754, 0.614596, -0.262871,
		0.394336, -0.085872, 0.914945,
		0.539749, -0.784154, -0.306225,
		25.097736, 19.267067, 12.767699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449158, 19.914726, 13.306642>,  <24.719912, 19.815975, 12.982057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449158, 19.914726, 13.306642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.447811, 19.671253, 12.989279>,  <25.447002, 19.525169, 12.798861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.447811, 19.671253, 12.989279>,  <25.449158, 19.914726, 13.306642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447811, 19.671253, 12.989279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709061, 0.558016, -0.431104,
		0.705139, -0.564025, 0.429714,
		-0.003367, -0.608682, -0.793407,
		25.446800, 19.488649, 12.751257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131910, 19.747126, 13.224547>,  <25.449158, 19.914726, 13.306642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131910, 19.747126, 13.224547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.954035, 19.682281, 12.872190>,  <25.847309, 19.643375, 12.660776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.954035, 19.682281, 12.872190>,  <26.131910, 19.747126, 13.224547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954035, 19.682281, 12.872190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759701, 0.452697, -0.466818,
		0.474455, -0.876804, -0.078151,
		-0.444686, -0.162113, -0.880893,
		25.820629, 19.633648, 12.607923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640989, 19.477776, 12.878314>,  <26.131910, 19.747126, 13.224547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640989, 19.477776, 12.878314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.383871, 19.606436, 12.600219>,  <26.229601, 19.683632, 12.433362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.383871, 19.606436, 12.600219>,  <26.640989, 19.477776, 12.878314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383871, 19.606436, 12.600219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693699, 0.629409, -0.350179,
		0.324953, -0.707379, -0.627710,
		-0.642796, 0.321650, -0.695237,
		26.191032, 19.702930, 12.391647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918962, 19.429420, 12.183056>,  <26.640989, 19.477776, 12.878314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.918962, 19.429420, 12.183056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.641302, 19.715475, 12.150227>,  <26.474707, 19.887108, 12.130529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.641302, 19.715475, 12.150227>,  <26.918962, 19.429420, 12.183056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641302, 19.715475, 12.150227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624849, 0.542021, -0.561941,
		-0.357379, -0.441355, -0.823095,
		-0.694150, 0.715136, -0.082073,
		26.433058, 19.930016, 12.125605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203209, 19.762569, 11.718936>,  <26.918962, 19.429420, 12.183056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203209, 19.762569, 11.718936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.909439, 20.016981, 11.813664>,  <26.733177, 20.169628, 11.870502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.909439, 20.016981, 11.813664>,  <27.203209, 19.762569, 11.718936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909439, 20.016981, 11.813664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533561, 0.756738, -0.377704,
		-0.419443, -0.151036, -0.895129,
		-0.734425, 0.636031, 0.236822,
		26.689112, 20.207790, 11.884711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038750, 20.126465, 11.153836>,  <27.203209, 19.762569, 11.718936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038750, 20.126465, 11.153836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.912275, 20.372074, 11.443110>,  <26.836390, 20.519440, 11.616675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.912275, 20.372074, 11.443110>,  <27.038750, 20.126465, 11.153836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912275, 20.372074, 11.443110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577919, 0.729193, -0.366452,
		-0.752353, 0.302076, -0.585419,
		-0.316187, 0.614026, 0.723186,
		26.817419, 20.556282, 11.660067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789677, 20.863682, 10.848023>,  <27.038750, 20.126465, 11.153836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789677, 20.863682, 10.848023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.916630, 20.879341, 11.227019>,  <26.992802, 20.888737, 11.454416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.916630, 20.879341, 11.227019>,  <26.789677, 20.863682, 10.848023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916630, 20.879341, 11.227019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491935, 0.847397, -0.199797,
		-0.810721, 0.529515, 0.249691,
		0.317382, 0.039148, 0.947489,
		27.011845, 20.891085, 11.511266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.632868, 21.518288, 11.007786>,  <26.789677, 20.863682, 10.848023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.632868, 21.518288, 11.007786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.918919, 21.418114, 11.268823>,  <27.090549, 21.358009, 11.425445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.918919, 21.418114, 11.268823>,  <26.632868, 21.518288, 11.007786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918919, 21.418114, 11.268823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425206, 0.896867, -0.121776,
		-0.554791, 0.364571, 0.747860,
		0.715127, -0.250435, 0.652592,
		27.133457, 21.342983, 11.464601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<20.596870, 17.013409, 23.485657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.379587, 16.703379, 23.356544>,  <20.249218, 16.517361, 23.279078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.379587, 16.703379, 23.356544>,  <20.596870, 17.013409, 23.485657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.379587, 16.703379, 23.356544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198294, 0.255135, -0.946354,
		0.815847, -0.578070, 0.015102,
		-0.543206, -0.775075, -0.322779,
		20.216625, 16.470856, 23.259710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.993092, 16.716827, 22.957329>,  <20.596870, 17.013409, 23.485657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.993092, 16.716827, 22.957329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.622135, 16.578951, 22.899178>,  <20.399561, 16.496225, 22.864286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.622135, 16.578951, 22.899178>,  <20.993092, 16.716827, 22.957329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.622135, 16.578951, 22.899178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104240, 0.135112, -0.985332,
		0.359277, -0.928942, -0.089371,
		-0.927391, -0.344692, -0.145376,
		20.343918, 16.475544, 22.855564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.994244, 16.313896, 22.341124>,  <20.993092, 16.716827, 22.957329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.994244, 16.313896, 22.341124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.619156, 16.444767, 22.387836>,  <20.394104, 16.523291, 22.415863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.619156, 16.444767, 22.387836>,  <20.994244, 16.313896, 22.341124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.619156, 16.444767, 22.387836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026414, 0.268039, -0.963046,
		-0.346390, -0.906151, -0.242703,
		-0.937719, 0.327178, 0.116781,
		20.337841, 16.542921, 22.422871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.673260, 16.159529, 21.776752>,  <20.994244, 16.313896, 22.341124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.673260, 16.159529, 21.776752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.407627, 16.413189, 21.935169>,  <20.248247, 16.565384, 22.030218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.407627, 16.413189, 21.935169>,  <20.673260, 16.159529, 21.776752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.407627, 16.413189, 21.935169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254234, 0.306611, -0.917254,
		-0.703107, -0.709820, -0.042393,
		-0.664083, 0.634149, 0.396041,
		20.208403, 16.603434, 22.053982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.131838, 16.038092, 21.322130>,  <20.673260, 16.159529, 21.776752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.131838, 16.038092, 21.322130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.103170, 16.402138, 21.485373>,  <20.085970, 16.620565, 21.583319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.103170, 16.402138, 21.485373>,  <20.131838, 16.038092, 21.322130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.103170, 16.402138, 21.485373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119505, 0.398376, -0.909404,
		-0.990243, -0.113947, 0.080212,
		-0.071670, 0.910117, 0.408106,
		20.081669, 16.675173, 21.607805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.607212, 16.333960, 20.929501>,  <20.131838, 16.038092, 21.322130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.607212, 16.333960, 20.929501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.799643, 16.632265, 21.113850>,  <19.915100, 16.811249, 21.224459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.799643, 16.632265, 21.113850>,  <19.607212, 16.333960, 20.929501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.799643, 16.632265, 21.113850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064678, 0.554462, -0.829692,
		-0.874289, 0.369337, 0.314973,
		0.481077, 0.745763, 0.460872,
		19.943966, 16.855993, 21.252111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.300388, 16.895687, 20.689651>,  <19.607212, 16.333960, 20.929501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.300388, 16.895687, 20.689651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.662642, 17.010210, 20.814783>,  <19.879993, 17.078924, 20.889862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.662642, 17.010210, 20.814783>,  <19.300388, 16.895687, 20.689651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.662642, 17.010210, 20.814783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093416, 0.584875, -0.805726,
		-0.413649, 0.758914, 0.502935,
		0.905631, 0.286306, 0.312827,
		19.934330, 17.096102, 20.908630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.276432, 17.579044, 20.465059>,  <19.300388, 16.895687, 20.689651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.276432, 17.579044, 20.465059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.656437, 17.475687, 20.535152>,  <19.884439, 17.413673, 20.577209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.656437, 17.475687, 20.535152>,  <19.276432, 17.579044, 20.465059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.656437, 17.475687, 20.535152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239719, 0.244110, -0.939652,
		0.200023, 0.934689, 0.293849,
		0.950014, -0.258393, 0.175235,
		19.941441, 17.398169, 20.587723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.693039, 18.121284, 20.205654>,  <19.276432, 17.579044, 20.465059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.693039, 18.121284, 20.205654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.905550, 17.785040, 20.247828>,  <20.033056, 17.583294, 20.273132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.905550, 17.785040, 20.247828>,  <19.693039, 18.121284, 20.205654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.905550, 17.785040, 20.247828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325656, 0.087743, -0.941408,
		0.782106, 0.534486, 0.320366,
		0.531279, -0.840611, 0.105434,
		20.064934, 17.532856, 20.279457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.387972, 18.259186, 20.000380>,  <19.693039, 18.121284, 20.205654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.387972, 18.259186, 20.000380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.373934, 17.859583, 19.989405>,  <20.365511, 17.619822, 19.982819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.373934, 17.859583, 19.989405>,  <20.387972, 18.259186, 20.000380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.373934, 17.859583, 19.989405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505390, 0.005945, -0.862870,
		0.862177, -0.044149, 0.504680,
		-0.035094, -0.999007, -0.027438,
		20.363405, 17.559881, 19.981173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.038935, 17.879230, 19.926893>,  <20.387972, 18.259186, 20.000380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.038935, 17.879230, 19.926893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.761017, 17.637877, 19.770338>,  <20.594267, 17.493065, 19.676405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.761017, 17.637877, 19.770338>,  <21.038935, 17.879230, 19.926893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.761017, 17.637877, 19.770338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522527, -0.049563, -0.851181,
		0.494192, -0.795908, 0.349722,
		-0.694795, -0.603386, -0.391389,
		20.552578, 17.456861, 19.652922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.424570, 17.481155, 19.473890>,  <21.038935, 17.879230, 19.926893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.424570, 17.481155, 19.473890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.060013, 17.394316, 19.334044>,  <20.841278, 17.342211, 19.250135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.060013, 17.394316, 19.334044>,  <21.424570, 17.481155, 19.473890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.060013, 17.394316, 19.334044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377041, -0.099992, -0.920783,
		0.164944, -0.971014, 0.172988,
		-0.911391, -0.217101, -0.349619,
		20.786596, 17.329185, 19.229158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.586233, 17.056793, 18.833467>,  <21.424570, 17.481155, 19.473890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.586233, 17.056793, 18.833467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.206587, 17.182762, 18.834364>,  <20.978800, 17.258343, 18.834902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.206587, 17.182762, 18.834364>,  <21.586233, 17.056793, 18.833467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.206587, 17.182762, 18.834364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077371, 0.240066, -0.967668,
		-0.305277, -0.918255, -0.252216,
		-0.949115, 0.314921, 0.002240,
		20.921852, 17.277239, 18.835035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.092154, 16.677641, 18.275387>,  <21.586233, 17.056793, 18.833467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.092154, 16.677641, 18.275387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.004930, 17.056253, 18.370491>,  <20.952597, 17.283421, 18.427553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.004930, 17.056253, 18.370491>,  <21.092154, 16.677641, 18.275387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.004930, 17.056253, 18.370491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072072, 0.258575, -0.963299,
		-0.973271, -0.192920, -0.124603,
		-0.218059, 0.946531, 0.237759,
		20.939512, 17.340212, 18.441818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.120100, 15.975399, 18.582590>,  <21.092154, 16.677641, 18.275387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.120100, 15.975399, 18.582590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.465149, 15.774768, 18.608835>,  <21.672178, 15.654389, 18.624582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.465149, 15.774768, 18.608835>,  <21.120100, 15.975399, 18.582590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.465149, 15.774768, 18.608835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488567, -0.792497, 0.365035,
		-0.131097, -0.346942, -0.928679,
		0.862622, -0.501577, 0.065611,
		21.723936, 15.624295, 18.628519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.962736, 15.316388, 18.438364>,  <21.120100, 15.975399, 18.582590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.962736, 15.316388, 18.438364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.309174, 15.259652, 18.630098>,  <21.517036, 15.225611, 18.745140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.309174, 15.259652, 18.630098>,  <20.962736, 15.316388, 18.438364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.309174, 15.259652, 18.630098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355638, -0.848699, 0.391449,
		0.351291, -0.509502, -0.785495,
		0.866093, -0.141840, 0.479338,
		21.569002, 15.217100, 18.773899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.199360, 14.614102, 18.334196>,  <20.962736, 15.316388, 18.438364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.199360, 14.614102, 18.334196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.368275, 14.746350, 18.671803>,  <21.469624, 14.825699, 18.874367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.368275, 14.746350, 18.671803>,  <21.199360, 14.614102, 18.334196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.368275, 14.746350, 18.671803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262749, -0.846492, 0.463049,
		0.867546, -0.417305, -0.270593,
		0.422287, 0.330619, 0.844017,
		21.494961, 14.845536, 18.925007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.423903, 13.920634, 18.599527>,  <21.199360, 14.614102, 18.334196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.423903, 13.920634, 18.599527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.446476, 14.173889, 18.908319>,  <21.460020, 14.325842, 19.093596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.446476, 14.173889, 18.908319>,  <21.423903, 13.920634, 18.599527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.446476, 14.173889, 18.908319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388733, -0.698263, 0.601095,
		0.919620, -0.334016, 0.206717,
		0.056433, 0.633137, 0.771979,
		21.463406, 14.363831, 19.139914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.693138, 13.567614, 19.221161>,  <21.423903, 13.920634, 18.599527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.693138, 13.567614, 19.221161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.523247, 13.906114, 19.349825>,  <21.421312, 14.109214, 19.427023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.523247, 13.906114, 19.349825>,  <21.693138, 13.567614, 19.221161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.523247, 13.906114, 19.349825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578109, -0.526948, 0.622990,
		0.696703, 0.078648, 0.713036,
		-0.424729, 0.846251, 0.321659,
		21.395828, 14.159989, 19.446323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.762859, 13.603083, 19.949512>,  <21.693138, 13.567614, 19.221161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.762859, 13.603083, 19.949512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.448015, 13.844326, 19.897793>,  <21.259109, 13.989072, 19.866760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.448015, 13.844326, 19.897793>,  <21.762859, 13.603083, 19.949512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.448015, 13.844326, 19.897793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424599, -0.377739, 0.822818,
		0.447406, 0.702549, 0.553401,
		-0.787111, 0.603107, -0.129299,
		21.211882, 14.025258, 19.859003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.641459, 13.978137, 20.652143>,  <21.762859, 13.603083, 19.949512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.641459, 13.978137, 20.652143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.314259, 13.984653, 20.422148>,  <21.117939, 13.988562, 20.284151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.314259, 13.984653, 20.422148>,  <21.641459, 13.978137, 20.652143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.314259, 13.984653, 20.422148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535849, -0.385039, 0.751406,
		-0.209153, 0.922757, 0.323690,
		-0.817998, 0.016290, -0.574990,
		21.068859, 13.989539, 20.249651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.082121, 14.054095, 21.139692>,  <21.641459, 13.978137, 20.652143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.082121, 14.054095, 21.139692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.871044, 13.939432, 20.819851>,  <20.744398, 13.870634, 20.627947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.871044, 13.939432, 20.819851>,  <21.082121, 14.054095, 21.139692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.871044, 13.939432, 20.819851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606010, -0.532574, 0.590861,
		-0.595224, 0.796362, 0.107318,
		-0.527694, -0.286659, -0.799604,
		20.712736, 13.853435, 20.579969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.376902, 14.180514, 21.292105>,  <21.082121, 14.054095, 21.139692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.376902, 14.180514, 21.292105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.359957, 13.928039, 20.982317>,  <20.349791, 13.776553, 20.796444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.359957, 13.928039, 20.982317>,  <20.376902, 14.180514, 21.292105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.359957, 13.928039, 20.982317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684976, -0.545963, 0.482422,
		-0.727333, 0.550931, -0.409222,
		-0.042361, -0.631189, -0.774471,
		20.347248, 13.738682, 20.749975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.666573, 14.154709, 21.105467>,  <20.376902, 14.180514, 21.292105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.666573, 14.154709, 21.105467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.843517, 13.822891, 20.969131>,  <19.949684, 13.623800, 20.887329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.843517, 13.822891, 20.969131>,  <19.666573, 14.154709, 21.105467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.843517, 13.822891, 20.969131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693512, -0.557378, 0.456476,
		-0.568645, 0.034452, -0.821861,
		0.442361, -0.829544, -0.340843,
		19.976225, 13.574028, 20.866879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.142670, 13.677729, 21.085318>,  <19.666573, 14.154709, 21.105467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.142670, 13.677729, 21.085318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.467699, 13.444624, 21.081030>,  <19.662716, 13.304761, 21.078457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.467699, 13.444624, 21.081030>,  <19.142670, 13.677729, 21.085318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.467699, 13.444624, 21.081030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453534, -0.643721, 0.616384,
		-0.366106, -0.495995, -0.787372,
		0.812572, -0.582762, -0.010719,
		19.711472, 13.269795, 21.077814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.886608, 13.069883, 21.108843>,  <19.142670, 13.677729, 21.085318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.886608, 13.069883, 21.108843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.262989, 12.993735, 21.220818>,  <19.488819, 12.948047, 21.288002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.262989, 12.993735, 21.220818>,  <18.886608, 13.069883, 21.108843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.262989, 12.993735, 21.220818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338348, -0.556154, 0.759088,
		0.011180, -0.808983, -0.587726,
		0.940955, -0.190370, 0.279935,
		19.545275, 12.936625, 21.304798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.887081, 12.311456, 21.507349>,  <18.886608, 13.069883, 21.108843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.887081, 12.311456, 21.507349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.220154, 12.501307, 21.621450>,  <19.419998, 12.615218, 21.689911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.220154, 12.501307, 21.621450>,  <18.887081, 12.311456, 21.507349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.220154, 12.501307, 21.621450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036425, -0.467064, 0.883473,
		0.552552, -0.746042, -0.371628,
		0.832682, 0.474629, 0.285252,
		19.469959, 12.643696, 21.707026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.384462, 11.759633, 21.788912>,  <18.887081, 12.311456, 21.507349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.384462, 11.759633, 21.788912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.472467, 12.118099, 21.943047>,  <19.525270, 12.333179, 22.035528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.472467, 12.118099, 21.943047>,  <19.384462, 11.759633, 21.788912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.472467, 12.118099, 21.943047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117661, -0.367752, 0.922450,
		0.968376, -0.248288, 0.024534,
		0.220011, 0.896165, 0.385336,
		19.538471, 12.386949, 22.058647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.580263, 11.080818, 21.645908>,  <19.384462, 11.759633, 21.788912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.580263, 11.080818, 21.645908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.331383, 10.767802, 21.636993>,  <19.182055, 10.579992, 21.631645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.331383, 10.767802, 21.636993>,  <19.580263, 11.080818, 21.645908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.331383, 10.767802, 21.636993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221005, 0.202892, -0.953935,
		0.751014, -0.588614, -0.299185,
		-0.622202, -0.782540, -0.022288,
		19.144722, 10.533040, 21.630306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.840403, 10.507131, 21.235193>,  <19.580263, 11.080818, 21.645908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.840403, 10.507131, 21.235193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.440866, 10.487861, 21.234877>,  <19.201145, 10.476299, 21.234686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.440866, 10.487861, 21.234877>,  <19.840403, 10.507131, 21.235193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.440866, 10.487861, 21.234877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005792, 0.136356, -0.990643,
		0.047831, -0.989488, -0.136476,
		-0.998839, -0.048174, -0.000791,
		19.141214, 10.473409, 21.234640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.649433, 10.013464, 20.705170>,  <19.840403, 10.507131, 21.235193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.649433, 10.013464, 20.705170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.316545, 10.225071, 20.771559>,  <19.116812, 10.352036, 20.811392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.316545, 10.225071, 20.771559>,  <19.649433, 10.013464, 20.705170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.316545, 10.225071, 20.771559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195018, 0.000924, -0.980799,
		-0.519014, -0.848610, 0.102399,
		-0.832221, 0.529019, 0.165974,
		19.066879, 10.383777, 20.821350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.120680, 9.802543, 20.172945>,  <19.649433, 10.013464, 20.705170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.120680, 9.802543, 20.172945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.995998, 10.154753, 20.315783>,  <18.921188, 10.366078, 20.401485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.995998, 10.154753, 20.315783>,  <19.120680, 9.802543, 20.172945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.995998, 10.154753, 20.315783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345807, 0.244921, -0.905776,
		-0.885018, -0.405821, 0.228149,
		-0.311705, 0.880524, 0.357095,
		18.902487, 10.418910, 20.422911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.372057, 9.876434, 20.026598>,  <19.120680, 9.802543, 20.172945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.372057, 9.876434, 20.026598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.502415, 10.248595, 20.093702>,  <18.580629, 10.471892, 20.133965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.502415, 10.248595, 20.093702>,  <18.372057, 9.876434, 20.026598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.502415, 10.248595, 20.093702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516373, 0.323816, -0.792781,
		-0.791930, 0.171735, 0.585964,
		0.325893, 0.930403, 0.167760,
		18.600183, 10.527717, 20.144030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.814569, 10.241578, 19.875391>,  <18.372057, 9.876434, 20.026598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.814569, 10.241578, 19.875391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.114075, 10.506707, 19.873600>,  <18.293777, 10.665785, 19.872526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.114075, 10.506707, 19.873600>,  <17.814569, 10.241578, 19.875391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.114075, 10.506707, 19.873600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482108, 0.539958, -0.689940,
		-0.454889, 0.518761, 0.723853,
		0.748764, 0.662822, -0.004478,
		18.338703, 10.705554, 19.872257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.501034, 10.926934, 19.874567>,  <17.814569, 10.241578, 19.875391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.501034, 10.926934, 19.874567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.869394, 11.004156, 19.739117>,  <18.090410, 11.050489, 19.657846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.869394, 11.004156, 19.739117>,  <17.501034, 10.926934, 19.874567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.869394, 11.004156, 19.739117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389456, 0.419558, -0.819936,
		-0.016219, 0.886961, 0.461559,
		0.920902, 0.193055, -0.338628,
		18.145664, 11.062073, 19.637527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.557213, 11.638946, 19.627615>,  <17.501034, 10.926934, 19.874567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.557213, 11.638946, 19.627615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.833200, 11.430082, 19.427099>,  <17.998793, 11.304765, 19.306789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.833200, 11.430082, 19.427099>,  <17.557213, 11.638946, 19.627615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.833200, 11.430082, 19.427099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272738, 0.453963, -0.848252,
		0.670489, 0.721990, 0.170809,
		0.689970, -0.522157, -0.501291,
		18.040192, 11.273435, 19.276712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.922844, 12.167397, 19.283621>,  <17.557213, 11.638946, 19.627615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.922844, 12.167397, 19.283621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.023823, 11.830217, 19.093588>,  <18.084410, 11.627910, 18.979568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.023823, 11.830217, 19.093588>,  <17.922844, 12.167397, 19.283621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.023823, 11.830217, 19.093588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362390, 0.372886, -0.854184,
		0.897186, 0.387804, -0.211342,
		0.252449, -0.842950, -0.475085,
		18.099558, 11.577332, 18.951063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.435690, 12.295812, 18.838730>,  <17.922844, 12.167397, 19.283621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.435690, 12.295812, 18.838730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.295797, 11.956079, 18.680578>,  <18.211861, 11.752240, 18.585688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.295797, 11.956079, 18.680578>,  <18.435690, 12.295812, 18.838730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.295797, 11.956079, 18.680578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243652, 0.489968, -0.836997,
		0.904611, -0.196391, -0.378299,
		-0.349733, -0.849330, -0.395379,
		18.190878, 11.701281, 18.561964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.731031, 12.363702, 18.162224>,  <18.435690, 12.295812, 18.838730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.731031, 12.363702, 18.162224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.450388, 12.078698, 18.158689>,  <18.282001, 11.907696, 18.156569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.450388, 12.078698, 18.158689>,  <18.731031, 12.363702, 18.162224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.450388, 12.078698, 18.158689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208330, 0.216970, -0.953689,
		0.681431, -0.667273, -0.300665,
		-0.701606, -0.712511, -0.008837,
		18.239906, 11.864945, 18.156038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.734858, 12.043192, 17.508966>,  <18.731031, 12.363702, 18.162224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.734858, 12.043192, 17.508966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.364864, 11.938302, 17.618980>,  <18.142868, 11.875368, 17.684990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.364864, 11.938302, 17.618980>,  <18.734858, 12.043192, 17.508966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.364864, 11.938302, 17.618980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310161, 0.102785, -0.945112,
		0.219563, -0.959517, -0.176406,
		-0.924983, -0.262225, 0.275037,
		18.087370, 11.859634, 17.701492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<18.367832, 8.344335, 26.432560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.757431, 8.363478, 26.521137>,  <18.991190, 8.374964, 26.574284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.757431, 8.363478, 26.521137>,  <18.367832, 8.344335, 26.432560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.757431, 8.363478, 26.521137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170289, 0.490045, -0.854902,
		-0.149431, 0.870383, 0.469153,
		0.973998, 0.047857, 0.221444,
		19.049631, 8.377835, 26.587570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.607018, 9.037282, 26.242546>,  <18.367832, 8.344335, 26.432560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.607018, 9.037282, 26.242546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.933374, 8.806675, 26.260189>,  <19.129189, 8.668310, 26.270775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.933374, 8.806675, 26.260189>,  <18.607018, 9.037282, 26.242546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.933374, 8.806675, 26.260189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226150, 0.247982, -0.941998,
		0.532142, 0.778544, 0.332707,
		0.815893, -0.576518, 0.044106,
		19.178143, 8.633719, 26.273420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.151676, 9.530007, 26.115435>,  <18.607018, 9.037282, 26.242546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.151676, 9.530007, 26.115435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.286493, 9.162009, 26.035423>,  <19.367384, 8.941211, 25.987417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.286493, 9.162009, 26.035423>,  <19.151676, 9.530007, 26.115435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.286493, 9.162009, 26.035423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261488, 0.295573, -0.918836,
		0.904448, 0.257383, 0.340189,
		0.337044, -0.919995, -0.200028,
		19.387606, 8.886011, 25.975414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.785439, 9.667922, 25.804907>,  <19.151676, 9.530007, 26.115435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.785439, 9.667922, 25.804907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.700315, 9.290350, 25.703943>,  <19.649242, 9.063807, 25.643366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.700315, 9.290350, 25.703943>,  <19.785439, 9.667922, 25.804907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.700315, 9.290350, 25.703943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013282, 0.261096, -0.965222,
		0.977004, -0.202053, -0.068100,
		-0.212807, -0.943930, -0.252408,
		19.636473, 9.007171, 25.628222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.156054, 9.497902, 25.206675>,  <19.785439, 9.667922, 25.804907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.156054, 9.497902, 25.206675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.862368, 9.226457, 25.198507>,  <19.686157, 9.063590, 25.193607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.862368, 9.226457, 25.198507>,  <20.156054, 9.497902, 25.206675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.862368, 9.226457, 25.198507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217146, 0.263220, -0.939980,
		0.643257, -0.685711, -0.340618,
		-0.734213, -0.678612, -0.020419,
		19.642103, 9.022873, 25.192381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.246359, 9.136097, 24.488771>,  <20.156054, 9.497902, 25.206675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.246359, 9.136097, 24.488771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.869635, 9.064040, 24.602287>,  <19.643600, 9.020806, 24.670397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.869635, 9.064040, 24.602287>,  <20.246359, 9.136097, 24.488771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.869635, 9.064040, 24.602287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319579, 0.218148, -0.922107,
		0.104201, -0.959146, -0.263024,
		-0.941813, -0.180141, 0.283792,
		19.587091, 9.009998, 24.687426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.940300, 8.694607, 23.960211>,  <20.246359, 9.136097, 24.488771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.940300, 8.694607, 23.960211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.643568, 8.885520, 24.148630>,  <19.465528, 9.000068, 24.261683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.643568, 8.885520, 24.148630>,  <19.940300, 8.694607, 23.960211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.643568, 8.885520, 24.148630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370173, 0.294261, -0.881126,
		-0.559157, -0.828016, -0.041615,
		-0.741832, 0.477283, 0.471047,
		19.421019, 9.028705, 24.289944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.293650, 8.454739, 23.737783>,  <19.940300, 8.694607, 23.960211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.293650, 8.454739, 23.737783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.261713, 8.837501, 23.849466>,  <19.242552, 9.067158, 23.916475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.261713, 8.837501, 23.849466>,  <19.293650, 8.454739, 23.737783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.261713, 8.837501, 23.849466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399341, 0.225936, -0.888527,
		-0.913319, -0.182438, 0.364093,
		-0.079840, 0.956906, 0.279207,
		19.237761, 9.124573, 23.933228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.930387, 8.682493, 23.244455>,  <19.293650, 8.454739, 23.737783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.930387, 8.682493, 23.244455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.003668, 9.030467, 23.427607>,  <19.047636, 9.239251, 23.537497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.003668, 9.030467, 23.427607>,  <18.930387, 8.682493, 23.244455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.003668, 9.030467, 23.427607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240291, 0.491258, -0.837213,
		-0.953256, 0.043354, 0.299036,
		0.183201, 0.869934, 0.457877,
		19.058628, 9.291448, 23.564970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.378012, 9.099383, 23.091320>,  <18.930387, 8.682493, 23.244455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.378012, 9.099383, 23.091320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.663301, 9.351521, 23.213943>,  <18.834475, 9.502804, 23.287518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.663301, 9.351521, 23.213943>,  <18.378012, 9.099383, 23.091320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.663301, 9.351521, 23.213943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196927, 0.599936, -0.775433,
		-0.672704, 0.492689, 0.552021,
		0.713224, 0.630345, 0.306556,
		18.877268, 9.540625, 23.305910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.095314, 9.793288, 23.102688>,  <18.378012, 9.099383, 23.091320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.095314, 9.793288, 23.102688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.493061, 9.825072, 23.074627>,  <18.731709, 9.844143, 23.057791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.493061, 9.825072, 23.074627>,  <18.095314, 9.793288, 23.102688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.493061, 9.825072, 23.074627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104082, 0.606755, -0.788045,
		-0.020053, 0.790907, 0.611608,
		0.994367, 0.079460, -0.070152,
		18.791370, 9.848910, 23.053581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.263597, 10.506051, 22.883657>,  <18.095314, 9.793288, 23.102688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.263597, 10.506051, 22.883657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.605556, 10.311753, 22.810772>,  <18.810732, 10.195174, 22.767040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.605556, 10.311753, 22.810772>,  <18.263597, 10.506051, 22.883657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.605556, 10.311753, 22.810772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112662, 0.516666, -0.848742,
		0.506415, 0.705060, 0.496422,
		0.854898, -0.485744, -0.182214,
		18.862026, 10.166030, 22.756107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.725836, 10.956579, 22.709860>,  <18.263597, 10.506051, 22.883657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.725836, 10.956579, 22.709860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.838097, 10.609940, 22.544819>,  <18.905453, 10.401956, 22.445795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.838097, 10.609940, 22.544819>,  <18.725836, 10.956579, 22.709860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.838097, 10.609940, 22.544819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007784, 0.427809, -0.903836,
		0.959778, 0.256874, 0.113319,
		0.280651, -0.866600, -0.412601,
		18.922293, 10.349959, 22.421038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.176695, 11.199814, 22.229078>,  <18.725836, 10.956579, 22.709860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.176695, 11.199814, 22.229078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.074785, 10.828995, 22.119041>,  <19.013639, 10.606503, 22.053020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.074785, 10.828995, 22.119041>,  <19.176695, 11.199814, 22.229078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.074785, 10.828995, 22.119041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108957, 0.310187, -0.944411,
		0.960843, -0.210636, -0.180035,
		-0.254772, -0.927047, -0.275091,
		18.998354, 10.550880, 22.036514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.855795, 11.472832, 22.372381>,  <19.176695, 11.199814, 22.229078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.855795, 11.472832, 22.372381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.750410, 11.855256, 22.423819>,  <19.687180, 12.084711, 22.454681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.750410, 11.855256, 22.423819>,  <19.855795, 11.472832, 22.372381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.750410, 11.855256, 22.423819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120920, -0.164983, 0.978856,
		0.957062, 0.242340, 0.159073,
		-0.263460, 0.956061, 0.128596,
		19.671371, 12.142075, 22.462397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.207527, 11.756290, 22.886290>,  <19.855795, 11.472832, 22.372381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.207527, 11.756290, 22.886290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.907684, 12.020695, 22.872684>,  <19.727779, 12.179338, 22.864521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.907684, 12.020695, 22.872684>,  <20.207527, 11.756290, 22.886290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.907684, 12.020695, 22.872684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002713, 0.048321, 0.998828,
		0.661880, 0.748819, -0.034429,
		-0.749605, 0.661011, -0.034014,
		19.682802, 12.218998, 22.862480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.417936, 12.232688, 23.321848>,  <20.207527, 11.756290, 22.886290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.417936, 12.232688, 23.321848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.025417, 12.306103, 23.298618>,  <19.789906, 12.350151, 23.284679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.025417, 12.306103, 23.298618>,  <20.417936, 12.232688, 23.321848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.025417, 12.306103, 23.298618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038354, 0.109232, 0.993276,
		0.188646, 0.976925, -0.100149,
		-0.981296, 0.183536, -0.058075,
		19.731028, 12.361163, 23.281197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.248711, 12.737875, 23.818594>,  <20.417936, 12.232688, 23.321848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.248711, 12.737875, 23.818594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.881618, 12.587125, 23.768421>,  <19.661364, 12.496675, 23.738317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.881618, 12.587125, 23.768421>,  <20.248711, 12.737875, 23.818594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.881618, 12.587125, 23.768421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129000, -0.015866, 0.991518,
		-0.375670, 0.926128, -0.034057,
		-0.917732, -0.376876, -0.125431,
		19.606298, 12.474062, 23.730791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.864586, 13.044826, 24.326639>,  <20.248711, 12.737875, 23.818594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.864586, 13.044826, 24.326639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.656153, 12.717855, 24.228426>,  <19.531094, 12.521673, 24.169498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.656153, 12.717855, 24.228426>,  <19.864586, 13.044826, 24.326639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.656153, 12.717855, 24.228426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214149, -0.153260, 0.964703,
		-0.826203, 0.555272, -0.095190,
		-0.521084, -0.817425, -0.245535,
		19.499828, 12.472628, 24.154766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.166994, 13.142902, 24.536253>,  <19.864586, 13.044826, 24.326639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.166994, 13.142902, 24.536253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.233288, 12.750229, 24.498661>,  <19.273064, 12.514625, 24.476107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.233288, 12.750229, 24.498661>,  <19.166994, 13.142902, 24.536253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.233288, 12.750229, 24.498661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436575, -0.158485, 0.885599,
		-0.884271, -0.105744, -0.454844,
		0.165732, -0.981683, -0.093978,
		19.283007, 12.455724, 24.470467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.585558, 12.767406, 24.889999>,  <19.166994, 13.142902, 24.536253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.585558, 12.767406, 24.889999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.865320, 12.482805, 24.862890>,  <19.033178, 12.312044, 24.846624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.865320, 12.482805, 24.862890>,  <18.585558, 12.767406, 24.889999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.865320, 12.482805, 24.862890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240197, -0.323300, 0.915305,
		-0.673154, -0.623891, -0.397019,
		0.699406, -0.711504, -0.067774,
		19.075142, 12.269354, 24.842558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.350145, 12.396666, 25.408251>,  <18.585558, 12.767406, 24.889999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.350145, 12.396666, 25.408251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.688786, 12.197437, 25.333212>,  <18.891970, 12.077900, 25.288189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.688786, 12.197437, 25.333212>,  <18.350145, 12.396666, 25.408251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.688786, 12.197437, 25.333212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035877, -0.405076, 0.913579,
		-0.531019, -0.766706, -0.360807,
		0.846601, -0.498072, -0.187596,
		18.942766, 12.048016, 25.276934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.190042, 11.679557, 25.563656>,  <18.350145, 12.396666, 25.408251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.190042, 11.679557, 25.563656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.588575, 11.713244, 25.557646>,  <18.827696, 11.733458, 25.554041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.588575, 11.713244, 25.557646>,  <18.190042, 11.679557, 25.563656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.588575, 11.713244, 25.557646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056248, -0.512587, 0.856791,
		0.064458, -0.854495, -0.515445,
		0.996334, 0.084220, -0.015023,
		18.887476, 11.738510, 25.553139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.546249, 10.958143, 25.727312>,  <18.190042, 11.679557, 25.563656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.546249, 10.958143, 25.727312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.767374, 11.274446, 25.832462>,  <18.900049, 11.464228, 25.895552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.767374, 11.274446, 25.832462>,  <18.546249, 10.958143, 25.727312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.767374, 11.274446, 25.832462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074121, -0.360871, 0.929665,
		0.830004, -0.494444, -0.258105,
		0.552810, 0.790757, 0.262876,
		18.933218, 11.511673, 25.911325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.080524, 10.757448, 26.237877>,  <18.546249, 10.958143, 25.727312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.080524, 10.757448, 26.237877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.061329, 11.154336, 26.283829>,  <19.049812, 11.392468, 26.311399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.061329, 11.154336, 26.283829>,  <19.080524, 10.757448, 26.237877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.061329, 11.154336, 26.283829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032907, -0.116520, 0.992643,
		0.998306, 0.043855, 0.038243,
		-0.047989, 0.992220, 0.114879,
		19.046932, 11.452002, 26.318293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.549351, 10.832666, 26.766674>,  <19.080524, 10.757448, 26.237877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.549351, 10.832666, 26.766674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.324106, 11.162232, 26.741150>,  <19.188959, 11.359972, 26.725836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.324106, 11.162232, 26.741150>,  <19.549351, 10.832666, 26.766674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.324106, 11.162232, 26.741150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078119, 0.023796, 0.996660,
		0.822680, 0.566215, 0.050964,
		-0.563111, 0.823914, -0.063808,
		19.155172, 11.409407, 26.722008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.895327, 11.289926, 27.140142>,  <19.549351, 10.832666, 26.766674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.895327, 11.289926, 27.140142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.519665, 11.426993, 27.130651>,  <19.294268, 11.509233, 27.124958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.519665, 11.426993, 27.130651>,  <19.895327, 11.289926, 27.140142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.519665, 11.426993, 27.130651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061360, -0.099405, 0.993153,
		0.337964, 0.934183, 0.114383,
		-0.939157, 0.342669, -0.023727,
		19.237917, 11.529794, 27.123533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.927622, 11.770877, 27.622013>,  <19.895327, 11.289926, 27.140142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.927622, 11.770877, 27.622013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.549503, 11.647117, 27.580667>,  <19.322632, 11.572861, 27.555861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.549503, 11.647117, 27.580667>,  <19.927622, 11.770877, 27.622013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.549503, 11.647117, 27.580667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109816, 0.003463, 0.993946,
		-0.307169, 0.950926, -0.037251,
		-0.945298, -0.309400, -0.103363,
		19.265915, 11.554296, 27.549658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<12.999696, 11.863157, 26.187929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.390145, 11.806175, 26.122339>,  <13.624415, 11.771986, 26.082985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.390145, 11.806175, 26.122339>,  <12.999696, 11.863157, 26.187929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.390145, 11.806175, 26.122339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025565, 0.674318, -0.737998,
		0.215703, 0.724570, 0.654576,
		0.976124, -0.142454, -0.163976,
		13.682982, 11.763439, 26.073147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.154625, 12.528628, 25.949200>,  <12.999696, 11.863157, 26.187929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.154625, 12.528628, 25.949200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.479035, 12.308196, 25.870665>,  <13.673681, 12.175937, 25.823544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.479035, 12.308196, 25.870665>,  <13.154625, 12.528628, 25.949200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.479035, 12.308196, 25.870665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177639, 0.551750, -0.814872,
		0.557389, 0.626005, 0.545377,
		0.811025, -0.551081, -0.196336,
		13.722343, 12.142872, 25.811764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.806870, 12.944830, 25.946400>,  <13.154625, 12.528628, 25.949200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.806870, 12.944830, 25.946400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.864507, 12.615567, 25.726709>,  <13.899089, 12.418010, 25.594894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.864507, 12.615567, 25.726709>,  <13.806870, 12.944830, 25.946400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.864507, 12.615567, 25.726709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226749, 0.567716, -0.791381,
		0.963235, -0.010506, 0.268453,
		0.144091, -0.823158, -0.549226,
		13.907734, 12.368620, 25.561941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.334652, 13.164748, 25.468925>,  <13.806870, 12.944830, 25.946400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.334652, 13.164748, 25.468925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.245484, 12.828808, 25.270954>,  <14.191983, 12.627243, 25.152170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.245484, 12.828808, 25.270954>,  <14.334652, 13.164748, 25.468925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.245484, 12.828808, 25.270954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170783, 0.466207, -0.868034,
		0.959760, -0.278027, 0.039506,
		-0.222920, -0.839852, -0.494930,
		14.178608, 12.576852, 25.122475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.882101, 13.041147, 24.855497>,  <14.334652, 13.164748, 25.468925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.882101, 13.041147, 24.855497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.563660, 12.823905, 24.748720>,  <14.372595, 12.693560, 24.684654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.563660, 12.823905, 24.748720>,  <14.882101, 13.041147, 24.855497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.563660, 12.823905, 24.748720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136665, 0.268362, -0.953575,
		0.589529, -0.795624, -0.139420,
		-0.796102, -0.543106, -0.266941,
		14.324829, 12.660974, 24.668638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.056174, 12.631925, 24.214523>,  <14.882101, 13.041147, 24.855497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.056174, 12.631925, 24.214523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.658459, 12.673120, 24.225725>,  <14.419829, 12.697837, 24.232447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.658459, 12.673120, 24.225725>,  <15.056174, 12.631925, 24.214523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.658459, 12.673120, 24.225725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012141, 0.369829, -0.929021,
		-0.106035, -0.923374, -0.368967,
		-0.994289, 0.102989, 0.028004,
		14.360172, 12.704016, 24.234127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.813072, 12.320573, 23.617104>,  <15.056174, 12.631925, 24.214523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.813072, 12.320573, 23.617104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.542088, 12.603944, 23.696278>,  <14.379497, 12.773966, 23.743782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.542088, 12.603944, 23.696278>,  <14.813072, 12.320573, 23.617104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.542088, 12.603944, 23.696278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119573, 0.371582, -0.920668,
		-0.725775, -0.600049, -0.336441,
		-0.677461, 0.708427, 0.197935,
		14.338849, 12.816472, 23.755657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.508288, 12.295518, 22.903442>,  <14.813072, 12.320573, 23.617104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.508288, 12.295518, 22.903442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.348026, 12.606788, 23.096903>,  <14.251869, 12.793550, 23.212980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.348026, 12.606788, 23.096903>,  <14.508288, 12.295518, 22.903442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.348026, 12.606788, 23.096903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266705, 0.405960, -0.874108,
		-0.876552, -0.479208, 0.044893,
		-0.400655, 0.778175, 0.483653,
		14.227830, 12.840240, 23.241999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.837249, 12.511884, 22.552322>,  <14.508288, 12.295518, 22.903442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.837249, 12.511884, 22.552322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.002708, 12.822932, 22.741720>,  <14.101984, 13.009562, 22.855358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.002708, 12.822932, 22.741720>,  <13.837249, 12.511884, 22.552322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.002708, 12.822932, 22.741720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027835, 0.530633, -0.847144,
		-0.910010, 0.337242, 0.241142,
		0.413650, 0.777622, 0.473495,
		14.126803, 13.056219, 22.883768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.523297, 13.108833, 22.224678>,  <13.837249, 12.511884, 22.552322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.523297, 13.108833, 22.224678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.811360, 13.293072, 22.432224>,  <13.984199, 13.403615, 22.556753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.811360, 13.293072, 22.432224>,  <13.523297, 13.108833, 22.224678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.811360, 13.293072, 22.432224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189454, 0.588883, -0.785700,
		-0.667443, 0.664129, 0.336827,
		0.720158, 0.460597, 0.518868,
		14.027408, 13.431251, 22.587885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.390626, 13.883947, 22.338234>,  <13.523297, 13.108833, 22.224678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.390626, 13.883947, 22.338234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.787885, 13.839229, 22.351868>,  <14.026239, 13.812397, 22.360048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.787885, 13.839229, 22.351868>,  <13.390626, 13.883947, 22.338234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.787885, 13.839229, 22.351868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100426, 0.667069, -0.738196,
		0.059792, 0.736560, 0.673725,
		0.993146, -0.111798, 0.034085,
		14.085829, 13.805689, 22.362093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.631985, 14.635952, 22.313936>,  <13.390626, 13.883947, 22.338234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.631985, 14.635952, 22.313936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.923573, 14.376421, 22.226645>,  <14.098527, 14.220702, 22.174269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.923573, 14.376421, 22.226645>,  <13.631985, 14.635952, 22.313936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.923573, 14.376421, 22.226645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255647, 0.553765, -0.792458,
		0.635016, 0.521889, 0.569549,
		0.728971, -0.648827, -0.218230,
		14.142265, 14.181773, 22.161175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.252036, 15.067189, 22.081594>,  <13.631985, 14.635952, 22.313936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.252036, 15.067189, 22.081594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.349010, 14.706100, 21.939430>,  <14.407194, 14.489446, 21.854132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.349010, 14.706100, 21.939430>,  <14.252036, 15.067189, 22.081594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.349010, 14.706100, 21.939430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254076, 0.412629, -0.874748,
		0.936307, 0.121768, 0.329395,
		0.242434, -0.902724, -0.355409,
		14.421740, 14.435283, 21.832808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.858223, 15.147536, 21.679079>,  <14.252036, 15.067189, 22.081594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.858223, 15.147536, 21.679079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.689317, 14.808657, 21.550117>,  <14.587973, 14.605329, 21.472740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.689317, 14.808657, 21.550117>,  <14.858223, 15.147536, 21.679079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.689317, 14.808657, 21.550117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019888, 0.346925, -0.937682,
		0.906254, -0.402363, -0.129645,
		-0.422266, -0.847199, -0.322405,
		14.562637, 14.554497, 21.453396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.531543, 14.958905, 21.725353>,  <14.858223, 15.147536, 21.679079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.531543, 14.958905, 21.725353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.725035, 15.251443, 21.917662>,  <15.841130, 15.426966, 22.033047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.725035, 15.251443, 21.917662>,  <15.531543, 14.958905, 21.725353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.725035, 15.251443, 21.917662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146792, -0.473739, 0.868345,
		0.862819, -0.490618, -0.121806,
		0.483730, 0.731345, 0.480770,
		15.870153, 15.470846, 22.061893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.051363, 14.550150, 22.095512>,  <15.531543, 14.958905, 21.725353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.051363, 14.550150, 22.095512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.998348, 14.914194, 22.252550>,  <15.966539, 15.132621, 22.346773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.998348, 14.914194, 22.252550>,  <16.051363, 14.550150, 22.095512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.998348, 14.914194, 22.252550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030128, -0.392208, 0.919383,
		0.990720, 0.133681, 0.024563,
		-0.132538, 0.910111, 0.392596,
		15.958587, 15.187227, 22.370329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.531765, 14.604091, 22.647381>,  <16.051363, 14.550150, 22.095512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.531765, 14.604091, 22.647381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.266930, 14.891477, 22.732655>,  <16.108028, 15.063909, 22.783819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.266930, 14.891477, 22.732655>,  <16.531765, 14.604091, 22.647381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.266930, 14.891477, 22.732655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108839, -0.189266, 0.975875,
		0.741481, 0.669317, 0.047114,
		-0.662087, 0.718465, 0.213185,
		16.068304, 15.107017, 22.796610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822760, 15.004430, 23.193098>,  <16.531765, 14.604091, 22.647381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.822760, 15.004430, 23.193098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.430334, 15.081451, 23.201424>,  <16.194878, 15.127665, 23.206419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.430334, 15.081451, 23.201424>,  <16.822760, 15.004430, 23.193098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.430334, 15.081451, 23.201424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023056, -0.222825, 0.974586,
		0.192299, 0.955652, 0.223045,
		-0.981065, 0.192554, 0.020815,
		16.136015, 15.139217, 23.207668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.707331, 15.575629, 23.597418>,  <16.822760, 15.004430, 23.193098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.707331, 15.575629, 23.597418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.349165, 15.397536, 23.597033>,  <16.134266, 15.290680, 23.596802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.349165, 15.397536, 23.597033>,  <16.707331, 15.575629, 23.597418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.349165, 15.397536, 23.597033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027028, -0.056518, 0.998036,
		-0.444413, 0.893629, 0.062641,
		-0.895414, -0.445233, -0.000964,
		16.080542, 15.263967, 23.596743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.148129, 15.986757, 23.994703>,  <16.707331, 15.575629, 23.597418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.148129, 15.986757, 23.994703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.012844, 15.610367, 23.989365>,  <15.931673, 15.384533, 23.986160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.012844, 15.610367, 23.989365>,  <16.148129, 15.986757, 23.994703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.012844, 15.610367, 23.989365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060101, 0.007442, 0.998165,
		-0.939149, 0.338392, -0.059071,
		-0.338211, -0.940976, -0.013348,
		15.911381, 15.328074, 23.985359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.729953, 15.958714, 24.501940>,  <16.148129, 15.986757, 23.994703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.729953, 15.958714, 24.501940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.784624, 15.570751, 24.421339>,  <15.817427, 15.337974, 24.372978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.784624, 15.570751, 24.421339>,  <15.729953, 15.958714, 24.501940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.784624, 15.570751, 24.421339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041302, -0.208813, 0.977083,
		-0.989754, -0.125223, -0.068599,
		0.136678, -0.969905, -0.201502,
		15.825627, 15.279779, 24.360889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196461, 15.582875, 24.885672>,  <15.729953, 15.958714, 24.501940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.196461, 15.582875, 24.885672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.480394, 15.308535, 24.821493>,  <15.650755, 15.143930, 24.782986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.480394, 15.308535, 24.821493>,  <15.196461, 15.582875, 24.885672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.480394, 15.308535, 24.821493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102475, -0.325919, 0.939827,
		-0.696874, -0.650681, -0.301631,
		0.709835, -0.685851, -0.160446,
		15.693345, 15.102779, 24.773359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.948258, 15.026690, 25.211269>,  <15.196461, 15.582875, 24.885672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.948258, 15.026690, 25.211269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.337937, 14.946669, 25.169472>,  <15.571745, 14.898656, 25.144394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.337937, 14.946669, 25.169472>,  <14.948258, 15.026690, 25.211269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.337937, 14.946669, 25.169472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022757, -0.373544, 0.927333,
		-0.224548, -0.905783, -0.359353,
		0.974197, -0.200053, -0.104492,
		15.630197, 14.886652, 25.138124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.970540, 14.371940, 25.406326>,  <14.948258, 15.026690, 25.211269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.970540, 14.371940, 25.406326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.342774, 14.511477, 25.450722>,  <15.566115, 14.595199, 25.477358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.342774, 14.511477, 25.450722>,  <14.970540, 14.371940, 25.406326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.342774, 14.511477, 25.450722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089106, -0.509918, 0.855596,
		0.355062, -0.786316, -0.505606,
		0.930586, 0.348842, 0.110987,
		15.621950, 14.616129, 25.484018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.368336, 13.839911, 25.704754>,  <14.970540, 14.371940, 25.406326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.368336, 13.839911, 25.704754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.578678, 14.168851, 25.791672>,  <15.704884, 14.366215, 25.843822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.578678, 14.168851, 25.791672>,  <15.368336, 13.839911, 25.704754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.578678, 14.168851, 25.791672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067565, -0.295045, 0.953091,
		0.847886, -0.486508, -0.210713,
		0.525856, 0.822349, 0.217293,
		15.736435, 14.415556, 25.856859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906644, 13.563389, 26.095421>,  <15.368336, 13.839911, 25.704754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.906644, 13.563389, 26.095421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.888965, 13.949467, 26.198530>,  <15.878357, 14.181113, 26.260395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.888965, 13.949467, 26.198530>,  <15.906644, 13.563389, 26.095421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.888965, 13.949467, 26.198530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013752, -0.258588, 0.965890,
		0.998928, 0.039146, 0.024703,
		-0.044198, 0.965194, 0.257773,
		15.875705, 14.239025, 26.275862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.387636, 13.709006, 26.703178>,  <15.906644, 13.563389, 26.095421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.387636, 13.709006, 26.703178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.115316, 14.001609, 26.718204>,  <15.951924, 14.177171, 26.727221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.115316, 14.001609, 26.718204>,  <16.387636, 13.709006, 26.703178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.115316, 14.001609, 26.718204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116956, -0.159189, 0.980296,
		0.723073, 0.662991, 0.193930,
		-0.680799, 0.731506, 0.037565,
		15.911077, 14.221061, 26.729473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.570528, 14.164584, 27.273403>,  <16.387636, 13.709006, 26.703178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.570528, 14.164584, 27.273403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.181238, 14.234921, 27.214193>,  <15.947664, 14.277124, 27.178667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.181238, 14.234921, 27.214193>,  <16.570528, 14.164584, 27.273403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.181238, 14.234921, 27.214193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165935, -0.091854, 0.981849,
		0.159056, 0.980123, 0.118573,
		-0.973225, 0.175844, -0.148027,
		15.889271, 14.287675, 27.169785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.049721, 14.678173, 27.758709>,  <16.570528, 14.164584, 27.273403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.049721, 14.678173, 27.758709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.408375, 14.612703, 27.923271>,  <17.623568, 14.573421, 28.022009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.408375, 14.612703, 27.923271>,  <17.049721, 14.678173, 27.758709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.408375, 14.612703, 27.923271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439962, 0.224862, -0.869409,
		0.049791, 0.960545, 0.273630,
		0.896635, -0.163676, 0.411407,
		17.677366, 14.563601, 28.046694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.461349, 15.340056, 27.679840>,  <17.049721, 14.678173, 27.758709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.461349, 15.340056, 27.679840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.721052, 15.036325, 27.697231>,  <17.876873, 14.854087, 27.707666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.721052, 15.036325, 27.697231>,  <17.461349, 15.340056, 27.679840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.721052, 15.036325, 27.697231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416657, 0.307270, -0.855560,
		0.636290, 0.573592, 0.515875,
		0.649255, -0.759327, 0.043478,
		17.915829, 14.808527, 27.710274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.179939, 15.570117, 27.443594>,  <17.461349, 15.340056, 27.679840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.179939, 15.570117, 27.443594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.218931, 15.172722, 27.419992>,  <18.242327, 14.934285, 27.405832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.218931, 15.172722, 27.419992>,  <18.179939, 15.570117, 27.443594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.218931, 15.172722, 27.419992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612166, 0.106596, -0.783511,
		0.784698, 0.040255, 0.618570,
		0.097478, -0.993487, -0.059003,
		18.248175, 14.874676, 27.402292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842199, 15.475456, 27.387413>,  <18.179939, 15.570117, 27.443594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.842199, 15.475456, 27.387413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.720907, 15.124606, 27.238440>,  <18.648132, 14.914096, 27.149055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.720907, 15.124606, 27.238440>,  <18.842199, 15.475456, 27.387413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.720907, 15.124606, 27.238440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742709, 0.027326, -0.669056,
		0.597023, -0.479486, 0.643162,
		-0.303228, -0.877124, -0.372432,
		18.629938, 14.861469, 27.126709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.348656, 15.004205, 27.456232>,  <18.842199, 15.475456, 27.387413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.348656, 15.004205, 27.456232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.148470, 14.910540, 27.122837>,  <19.028358, 14.854341, 26.922800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.148470, 14.910540, 27.122837>,  <19.348656, 15.004205, 27.456232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.148470, 14.910540, 27.122837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772084, 0.314848, -0.552047,
		0.391692, -0.919803, 0.023225,
		-0.500463, -0.234164, -0.833489,
		18.998331, 14.840291, 26.872789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.832577, 14.929195, 26.951986>,  <19.348656, 15.004205, 27.456232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.832577, 14.929195, 26.951986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.495411, 14.966817, 26.740080>,  <19.293112, 14.989389, 26.612936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.495411, 14.966817, 26.740080>,  <19.832577, 14.929195, 26.951986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.495411, 14.966817, 26.740080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521697, 0.383769, -0.761940,
		0.131643, -0.918626, -0.372553,
		-0.842913, 0.094055, -0.529765,
		19.242537, 14.995033, 26.581150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.096256, 14.694067, 26.304031>,  <19.832577, 14.929195, 26.951986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.096256, 14.694067, 26.304031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.734875, 14.858465, 26.255281>,  <19.518045, 14.957104, 26.226032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.734875, 14.858465, 26.255281>,  <20.096256, 14.694067, 26.304031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.734875, 14.858465, 26.255281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252551, 0.280567, -0.926013,
		-0.346394, -0.867389, -0.357277,
		-0.903454, 0.410996, -0.121873,
		19.463839, 14.981764, 26.218719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.918648, 14.443583, 25.718758>,  <20.096256, 14.694067, 26.304031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.918648, 14.443583, 25.718758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.708643, 14.780358, 25.768566>,  <19.582640, 14.982423, 25.798450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.708643, 14.780358, 25.768566>,  <19.918648, 14.443583, 25.718758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.708643, 14.780358, 25.768566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259372, 0.297623, -0.918775,
		-0.810609, -0.450072, -0.374631,
		-0.525013, 0.841936, 0.124519,
		19.551140, 15.032939, 25.805922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.492897, 14.523617, 25.129354>,  <19.918648, 14.443583, 25.718758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.492897, 14.523617, 25.129354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.490540, 14.900905, 25.262201>,  <19.489126, 15.127277, 25.341909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.490540, 14.900905, 25.262201>,  <19.492897, 14.523617, 25.129354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.490540, 14.900905, 25.262201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098241, 0.331062, -0.938481,
		-0.995145, 0.027097, -0.094614,
		-0.005893, 0.943220, 0.332117,
		19.488771, 15.183870, 25.361835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.047871, 14.935392, 24.662510>,  <19.492897, 14.523617, 25.129354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.047871, 14.935392, 24.662510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.276039, 15.220236, 24.826229>,  <19.412939, 15.391142, 24.924459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.276039, 15.220236, 24.826229>,  <19.047871, 14.935392, 24.662510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.276039, 15.220236, 24.826229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222771, 0.345506, -0.911591,
		-0.790565, 0.611169, 0.038447,
		0.570420, 0.712108, 0.409296,
		19.447165, 15.433868, 24.949018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.767807, 15.571665, 24.364466>,  <19.047871, 14.935392, 24.662510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.767807, 15.571665, 24.364466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.129616, 15.683274, 24.493452>,  <19.346701, 15.750240, 24.570845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.129616, 15.683274, 24.493452>,  <18.767807, 15.571665, 24.364466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.129616, 15.683274, 24.493452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206690, 0.374565, -0.903870,
		-0.372986, 0.884221, 0.281132,
		0.904523, 0.279023, 0.322467,
		19.400972, 15.766981, 24.590193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.782318, 16.294809, 24.192392>,  <18.767807, 15.571665, 24.364466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.782318, 16.294809, 24.192392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.143702, 16.127029, 24.227774>,  <19.360531, 16.026361, 24.249002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.143702, 16.127029, 24.227774>,  <18.782318, 16.294809, 24.192392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.143702, 16.127029, 24.227774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271831, 0.401020, -0.874809,
		0.331467, 0.814398, 0.476324,
		0.903458, -0.419450, 0.088454,
		19.414740, 16.001194, 24.254311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.269863, 16.838793, 23.883514>,  <18.782318, 16.294809, 24.192392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.269863, 16.838793, 23.883514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.500496, 16.513229, 23.912090>,  <19.638876, 16.317892, 23.929235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.500496, 16.513229, 23.912090>,  <19.269863, 16.838793, 23.883514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.500496, 16.513229, 23.912090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399257, 0.204390, -0.893766,
		0.712843, 0.543854, 0.442807,
		0.576583, -0.813909, 0.071439,
		19.673471, 16.269056, 23.933521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.850527, 17.104471, 23.796328>,  <19.269863, 16.838793, 23.883514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.850527, 17.104471, 23.796328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.849440, 16.722860, 23.676447>,  <19.848787, 16.493893, 23.604519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.849440, 16.722860, 23.676447>,  <19.850527, 17.104471, 23.796328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.849440, 16.722860, 23.676447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297298, 0.285380, -0.911138,
		0.954781, -0.091575, 0.282856,
		-0.002716, -0.954030, -0.299700,
		19.848625, 16.436651, 23.586536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<5.998590, 22.628027, 25.494034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.921353, 22.525087, 25.115301>,  <5.875011, 22.463324, 24.888062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.921353, 22.525087, 25.115301>,  <5.998590, 22.628027, 25.494034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.921353, 22.525087, 25.115301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978444, -0.122527, -0.166237,
		-0.073231, -0.958519, 0.275460,
		-0.193093, -0.257348, -0.946830,
		5.863425, 22.447884, 24.831253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.300407, 22.354921, 25.400290>,  <5.998590, 22.628027, 25.494034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.300407, 22.354921, 25.400290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.936103, 22.330936, 25.236866>,  <4.717521, 22.316545, 25.138811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.936103, 22.330936, 25.236866>,  <5.300407, 22.354921, 25.400290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.936103, 22.330936, 25.236866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365941, 0.341206, -0.865832,
		0.191321, -0.938074, -0.288813,
		-0.910760, -0.059963, -0.408560,
		4.662875, 22.312946, 25.114298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.191026, 21.899412, 24.819054>,  <5.300407, 22.354921, 25.400290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.191026, 21.899412, 24.819054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.922443, 22.189398, 24.757637>,  <4.761294, 22.363388, 24.720787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.922443, 22.189398, 24.757637>,  <5.191026, 21.899412, 24.819054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.922443, 22.189398, 24.757637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458936, 0.244137, -0.854269,
		-0.581828, -0.644070, -0.496639,
		-0.671457, 0.724963, -0.153542,
		4.721006, 22.406887, 24.711575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.975997, 22.056709, 24.109100>,  <5.191026, 21.899412, 24.819054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.975997, 22.056709, 24.109100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.881465, 22.404175, 24.283260>,  <4.824746, 22.612654, 24.387756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.881465, 22.404175, 24.283260>,  <4.975997, 22.056709, 24.109100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.881465, 22.404175, 24.283260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429946, 0.495328, -0.754849,
		-0.871375, 0.008806, -0.490538,
		-0.236330, 0.868662, 0.435402,
		4.810566, 22.664774, 24.413881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.731266, 22.430912, 23.563475>,  <4.975997, 22.056709, 24.109100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.731266, 22.430912, 23.563475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.841185, 22.668112, 23.866220>,  <4.907136, 22.810431, 24.047867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.841185, 22.668112, 23.866220>,  <4.731266, 22.430912, 23.563475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.841185, 22.668112, 23.866220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278976, 0.704131, -0.652972,
		-0.920140, 0.390582, 0.028062,
		0.274798, 0.592997, 0.756862,
		4.923624, 22.846010, 24.093279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.411519, 22.445181, 23.251335>,  <4.731266, 22.430912, 23.563475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.411519, 22.445181, 23.251335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.809224, 22.470779, 23.217052>,  <6.047847, 22.486137, 23.196484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.809224, 22.470779, 23.217052>,  <5.411519, 22.445181, 23.251335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.809224, 22.470779, 23.217052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006262, -0.765080, -0.643905,
		-0.106779, 0.640747, -0.760290,
		0.994263, 0.063994, -0.085707,
		6.107502, 22.489977, 23.191339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.568321, 21.868961, 22.931509>,  <5.411519, 22.445181, 23.251335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.568321, 21.868961, 22.931509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.911139, 22.068619, 22.880400>,  <6.116830, 22.188414, 22.849733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.911139, 22.068619, 22.880400>,  <5.568321, 21.868961, 22.931509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.911139, 22.068619, 22.880400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331782, -0.724376, -0.604317,
		-0.394199, 0.475535, -0.786431,
		0.857046, 0.499145, -0.127774,
		6.168253, 22.218363, 22.842068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.662747, 21.777630, 22.291418>,  <5.568321, 21.868961, 22.931509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.662747, 21.777630, 22.291418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.006314, 21.835449, 22.487934>,  <6.212454, 21.870142, 22.605844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.006314, 21.835449, 22.487934>,  <5.662747, 21.777630, 22.291418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.006314, 21.835449, 22.487934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417531, -0.753145, -0.508370,
		0.296527, 0.641777, -0.707244,
		0.858917, 0.144551, 0.491290,
		6.263989, 21.878815, 22.635321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.243308, 22.145111, 21.991646>,  <5.662747, 21.777630, 22.291418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.243308, 22.145111, 21.991646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.397456, 21.871662, 22.239565>,  <6.489944, 21.707592, 22.388317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.397456, 21.871662, 22.239565>,  <6.243308, 22.145111, 21.991646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.397456, 21.871662, 22.239565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420522, -0.467766, -0.777404,
		0.821372, 0.560226, 0.107216,
		0.385370, -0.683624, 0.619797,
		6.513067, 21.666574, 22.425505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.866697, 21.934029, 21.691160>,  <6.243308, 22.145111, 21.991646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.866697, 21.934029, 21.691160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.746716, 21.635462, 21.928778>,  <6.674727, 21.456322, 22.071348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.746716, 21.635462, 21.928778>,  <6.866697, 21.934029, 21.691160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.746716, 21.635462, 21.928778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219443, -0.660007, -0.718495,
		0.928371, -0.085155, 0.361767,
		-0.299952, -0.746418, 0.594044,
		6.656730, 21.411537, 22.106991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.326987, 21.366270, 21.744171>,  <6.866697, 21.934029, 21.691160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.326987, 21.366270, 21.744171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.943748, 21.254818, 21.770741>,  <6.713804, 21.187946, 21.786682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.943748, 21.254818, 21.770741>,  <7.326987, 21.366270, 21.744171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.943748, 21.254818, 21.770741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053292, -0.401239, -0.914422,
		0.281439, -0.872566, 0.399275,
		-0.958098, -0.278632, 0.066423,
		6.656319, 21.171228, 21.790667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.276965, 20.666014, 21.558138>,  <7.326987, 21.366270, 21.744171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.276965, 20.666014, 21.558138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.904833, 20.800905, 21.500502>,  <6.681553, 20.881840, 21.465919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.904833, 20.800905, 21.500502>,  <7.276965, 20.666014, 21.558138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.904833, 20.800905, 21.500502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078616, -0.567180, -0.819833,
		-0.358194, -0.751389, 0.554177,
		-0.930331, 0.337227, -0.144089,
		6.625733, 20.902073, 21.457275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.705804, 20.086248, 21.524832>,  <7.276965, 20.666014, 21.558138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.705804, 20.086248, 21.524832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.530212, 20.403786, 21.356493>,  <6.424857, 20.594307, 21.255489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.530212, 20.403786, 21.356493>,  <6.705804, 20.086248, 21.524832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.530212, 20.403786, 21.356493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318845, -0.575538, -0.753056,
		-0.840021, -0.196392, 0.505762,
		-0.438980, 0.793842, -0.420845,
		6.398518, 20.641939, 21.230240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.097481, 19.907169, 21.377110>,  <6.705804, 20.086248, 21.524832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.097481, 19.907169, 21.377110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.130110, 20.212627, 21.120924>,  <6.149687, 20.395903, 20.967213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.130110, 20.212627, 21.120924>,  <6.097481, 19.907169, 21.377110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.130110, 20.212627, 21.120924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353988, -0.578508, -0.734861,
		-0.931686, 0.286660, 0.223131,
		0.081572, 0.763645, -0.640462,
		6.154582, 20.441721, 20.928785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.469928, 19.872347, 20.978813>,  <6.097481, 19.907169, 21.377110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.469928, 19.872347, 20.978813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.667541, 20.150558, 20.770132>,  <5.786109, 20.317486, 20.644924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.667541, 20.150558, 20.770132>,  <5.469928, 19.872347, 20.978813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.667541, 20.150558, 20.770132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299278, -0.427334, -0.853123,
		-0.816312, 0.577604, -0.002961,
		0.494032, 0.695528, -0.521702,
		5.815751, 20.359217, 20.613621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.005825, 20.083094, 20.466137>,  <5.469928, 19.872347, 20.978813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.005825, 20.083094, 20.466137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.364799, 20.182287, 20.320200>,  <5.580184, 20.241804, 20.232637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.364799, 20.182287, 20.320200>,  <5.005825, 20.083094, 20.466137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.364799, 20.182287, 20.320200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265666, -0.356435, -0.895754,
		-0.352177, 0.900809, -0.253997,
		0.897437, 0.247986, -0.364842,
		5.634031, 20.256683, 20.210747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.948195, 20.370792, 19.738396>,  <5.005825, 20.083094, 20.466137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.948195, 20.370792, 19.738396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.335804, 20.273855, 19.757431>,  <5.568369, 20.215693, 19.768852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.335804, 20.273855, 19.757431>,  <4.948195, 20.370792, 19.738396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.335804, 20.273855, 19.757431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037541, -0.334991, -0.941473,
		0.244101, 0.910522, -0.333712,
		0.969023, -0.242342, 0.047590,
		5.626511, 20.201153, 19.771708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.259546, 20.567894, 19.067944>,  <4.948195, 20.370792, 19.738396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.259546, 20.567894, 19.067944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.504363, 20.304115, 19.242546>,  <5.651253, 20.145849, 19.347307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.504363, 20.304115, 19.242546>,  <5.259546, 20.567894, 19.067944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.504363, 20.304115, 19.242546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069087, -0.505266, -0.860194,
		0.787802, 0.556631, -0.263685,
		0.612042, -0.659446, 0.436505,
		5.687975, 20.106281, 19.373497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.982958, 20.578266, 18.753609>,  <5.259546, 20.567894, 19.067944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.982958, 20.578266, 18.753609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.907140, 20.217003, 18.907688>,  <5.861650, 20.000244, 19.000135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.907140, 20.217003, 18.907688>,  <5.982958, 20.578266, 18.753609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.907140, 20.217003, 18.907688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166729, -0.416219, -0.893847,
		0.967613, -0.105201, 0.229475,
		-0.189545, -0.903158, 0.385199,
		5.850276, 19.946056, 19.023249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.428089, 20.217487, 18.387680>,  <5.982958, 20.578266, 18.753609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.428089, 20.217487, 18.387680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.190188, 19.928013, 18.527710>,  <6.047448, 19.754328, 18.611727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.190188, 19.928013, 18.527710>,  <6.428089, 20.217487, 18.387680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.190188, 19.928013, 18.527710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016054, -0.424683, -0.905200,
		0.803750, -0.543987, 0.240963,
		-0.594750, -0.723686, 0.350072,
		6.011764, 19.710907, 18.632732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.799776, 19.572170, 18.280592>,  <6.428089, 20.217487, 18.387680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.799776, 19.572170, 18.280592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.413531, 19.475330, 18.318495>,  <6.181784, 19.417227, 18.341236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.413531, 19.475330, 18.318495>,  <6.799776, 19.572170, 18.280592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.413531, 19.475330, 18.318495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078994, -0.620458, -0.780251,
		0.247690, -0.745936, 0.618246,
		-0.965613, -0.242098, 0.094757,
		6.123847, 19.402700, 18.346922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.721921, 18.843439, 18.372856>,  <6.799776, 19.572170, 18.280592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.721921, 18.843439, 18.372856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.365501, 18.959414, 18.233162>,  <6.151649, 19.028999, 18.149345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.365501, 18.959414, 18.233162>,  <6.721921, 18.843439, 18.372856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.365501, 18.959414, 18.233162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114473, -0.600990, -0.791017,
		-0.439232, -0.744814, 0.502322,
		-0.891051, 0.289937, -0.349235,
		6.098186, 19.046394, 18.128391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.368459, 18.224527, 18.243389>,  <6.721921, 18.843439, 18.372856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.368459, 18.224527, 18.243389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.112299, 18.466707, 18.054363>,  <5.958604, 18.612015, 17.940947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.112299, 18.466707, 18.054363>,  <6.368459, 18.224527, 18.243389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.112299, 18.466707, 18.054363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016625, -0.626069, -0.779590,
		-0.767863, -0.491391, 0.411000,
		-0.640398, 0.605451, -0.472566,
		5.920180, 18.648342, 17.912594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.847743, 17.802921, 17.987511>,  <6.368459, 18.224527, 18.243389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.847743, 17.802921, 17.987511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.793388, 18.119455, 17.749075>,  <5.760775, 18.309376, 17.606012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.793388, 18.119455, 17.749075>,  <5.847743, 17.802921, 17.987511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.793388, 18.119455, 17.749075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261927, -0.608959, -0.748707,
		-0.955473, 0.054393, 0.290022,
		-0.135887, 0.791334, -0.596091,
		5.752622, 18.356855, 17.570248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.161913, 17.857967, 17.654812>,  <5.847743, 17.802921, 17.987511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.161913, 17.857967, 17.654812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.360740, 18.078651, 17.386919>,  <5.480036, 18.211061, 17.226183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.360740, 18.078651, 17.386919>,  <5.161913, 17.857967, 17.654812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.360740, 18.078651, 17.386919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394328, -0.543906, -0.740723,
		-0.772936, 0.632282, -0.052803,
		0.497066, 0.551710, -0.669732,
		5.509860, 18.244165, 17.185999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.693610, 17.884037, 17.123533>,  <5.161913, 17.857967, 17.654812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.693610, 17.884037, 17.123533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.041851, 17.975214, 16.949133>,  <5.250795, 18.029921, 16.844494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.041851, 17.975214, 16.949133>,  <4.693610, 17.884037, 17.123533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.041851, 17.975214, 16.949133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264708, -0.529972, -0.805642,
		-0.414709, 0.816805, -0.401056,
		0.870601, 0.227944, -0.435999,
		5.303031, 18.043598, 16.818333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.603702, 17.739447, 16.416012>,  <4.693610, 17.884037, 17.123533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.603702, 17.739447, 16.416012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.001332, 17.779362, 16.398783>,  <5.239911, 17.803310, 16.388445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.001332, 17.779362, 16.398783>,  <4.603702, 17.739447, 16.416012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.001332, 17.779362, 16.398783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025961, -0.602854, -0.797429,
		-0.105540, 0.791587, -0.601873,
		0.994076, 0.099786, -0.043075,
		5.299555, 17.809298, 16.385860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.710245, 18.036308, 15.814368>,  <4.603702, 17.739447, 16.416012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.710245, 18.036308, 15.814368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.023353, 17.820763, 15.938882>,  <5.211217, 17.691435, 16.013590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.023353, 17.820763, 15.938882>,  <4.710245, 18.036308, 15.814368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.023353, 17.820763, 15.938882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073656, -0.576912, -0.813479,
		0.617938, 0.613838, -0.491280,
		0.782770, -0.538864, 0.311283,
		5.258183, 17.659103, 16.032267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.196779, 18.005033, 15.221755>,  <4.710245, 18.036308, 15.814368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.196779, 18.005033, 15.221755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.275769, 17.694267, 15.460888>,  <5.323163, 17.507807, 15.604368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.275769, 17.694267, 15.460888>,  <5.196779, 18.005033, 15.221755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.275769, 17.694267, 15.460888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011982, -0.607884, -0.793936,
		0.980235, 0.163946, -0.110733,
		0.197475, -0.776917, 0.597833,
		5.335011, 17.461193, 15.640238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.687353, 17.651983, 14.833853>,  <5.196779, 18.005033, 15.221755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.687353, 17.651983, 14.833853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.673170, 17.361851, 15.108848>,  <5.664660, 17.187771, 15.273845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.673170, 17.361851, 15.108848>,  <5.687353, 17.651983, 14.833853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.673170, 17.361851, 15.108848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157867, -0.683347, -0.712822,
		0.986824, 0.083257, 0.138735,
		-0.035456, -0.725331, 0.687486,
		5.662533, 17.144251, 15.315094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.346864, 17.160341, 14.749864>,  <5.687353, 17.651983, 14.833853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.346864, 17.160341, 14.749864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.011159, 16.991173, 14.886556>,  <5.809737, 16.889671, 14.968571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.011159, 16.991173, 14.886556>,  <6.346864, 17.160341, 14.749864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.011159, 16.991173, 14.886556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008008, -0.618811, -0.785499,
		0.543671, -0.661975, 0.515957,
		-0.839260, -0.422921, 0.341730,
		5.759381, 16.864296, 14.989075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.922022, 16.782677, 14.847824>,  <6.346864, 17.160341, 14.749864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.922022, 16.782677, 14.847824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.302219, 16.701851, 14.753391>,  <7.530337, 16.653355, 14.696732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.302219, 16.701851, 14.753391>,  <6.922022, 16.782677, 14.847824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.302219, 16.701851, 14.753391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300375, 0.792089, 0.531384,
		0.079624, -0.575990, 0.813570,
		0.950492, -0.202066, -0.236082,
		7.587367, 16.641232, 14.682567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.320250, 16.661682, 15.491245>,  <6.922022, 16.782677, 14.847824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.320250, 16.661682, 15.491245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.571141, 16.776386, 15.201596>,  <7.721676, 16.845209, 15.027807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.571141, 16.776386, 15.201596>,  <7.320250, 16.661682, 15.491245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.571141, 16.776386, 15.201596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256323, 0.801950, 0.539606,
		0.735448, -0.524065, 0.429503,
		0.627228, 0.286761, -0.724122,
		7.759310, 16.862415, 14.984360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.980072, 16.808083, 15.838043>,  <7.320250, 16.661682, 15.491245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.980072, 16.808083, 15.838043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.985787, 17.011732, 15.493813>,  <7.989216, 17.133921, 15.287274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.985787, 17.011732, 15.493813>,  <7.980072, 16.808083, 15.838043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.985787, 17.011732, 15.493813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347654, 0.804437, 0.481681,
		0.937514, -0.306065, -0.165506,
		0.014287, 0.509121, -0.860576,
		7.990073, 17.164469, 15.235640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.655812, 17.015959, 15.754722>,  <7.980072, 16.808083, 15.838043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.655812, 17.015959, 15.754722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.455211, 17.271088, 15.520908>,  <8.334849, 17.424166, 15.380621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.455211, 17.271088, 15.520908>,  <8.655812, 17.015959, 15.754722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.455211, 17.271088, 15.520908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425215, 0.770118, 0.475510,
		0.753449, -0.010082, -0.657429,
		-0.501504, 0.637821, -0.584532,
		8.304760, 17.462435, 15.345549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.130413, 17.593668, 15.338292>,  <8.655812, 17.015959, 15.754722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.130413, 17.593668, 15.338292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.756325, 17.714588, 15.412024>,  <8.531872, 17.787140, 15.456263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.756325, 17.714588, 15.412024>,  <9.130413, 17.593668, 15.338292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.756325, 17.714588, 15.412024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353202, 0.832893, 0.426073,
		-0.024723, 0.463577, -0.885712,
		-0.935220, 0.302301, 0.184328,
		8.475759, 17.805279, 15.467322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.239017, 18.285824, 15.323724>,  <9.130413, 17.593668, 15.338292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.239017, 18.285824, 15.323724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.885085, 18.217295, 15.497031>,  <8.672726, 18.176176, 15.601015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.885085, 18.217295, 15.497031>,  <9.239017, 18.285824, 15.323724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.885085, 18.217295, 15.497031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188532, 0.718738, 0.669232,
		-0.426062, 0.673842, -0.603662,
		-0.884831, -0.171325, 0.433268,
		8.619636, 18.165897, 15.627011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.087717, 18.940962, 15.584390>,  <9.239017, 18.285824, 15.323724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.087717, 18.940962, 15.584390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.821094, 18.708704, 15.771387>,  <8.661119, 18.569349, 15.883585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.821094, 18.708704, 15.771387>,  <9.087717, 18.940962, 15.584390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.821094, 18.708704, 15.771387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093339, 0.557183, 0.825128,
		-0.739585, 0.593632, -0.317199,
		-0.666560, -0.580645, 0.467493,
		8.621125, 18.534510, 15.911635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.738490, 19.389563, 15.983037>,  <9.087717, 18.940962, 15.584390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.738490, 19.389563, 15.983037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.579443, 19.060574, 16.145735>,  <8.484015, 18.863180, 16.243353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.579443, 19.060574, 16.145735>,  <8.738490, 19.389563, 15.983037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.579443, 19.060574, 16.145735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086449, 0.474902, 0.875782,
		-0.913470, 0.313064, -0.259931,
		-0.397617, -0.822471, 0.406745,
		8.460157, 18.813831, 16.267757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.168830, 19.610884, 16.241186>,  <8.738490, 19.389563, 15.983037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.168830, 19.610884, 16.241186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.270766, 19.285032, 16.449583>,  <8.331928, 19.089521, 16.574621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.270766, 19.285032, 16.449583>,  <8.168830, 19.610884, 16.241186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.270766, 19.285032, 16.449583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000741, 0.538618, 0.842550,
		-0.966983, -0.215102, 0.136659,
		0.254841, -0.814629, 0.520994,
		8.347219, 19.040644, 16.605881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.648159, 19.476572, 16.801401>,  <8.168830, 19.610884, 16.241186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.648159, 19.476572, 16.801401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.961242, 19.269945, 16.940269>,  <8.149092, 19.145969, 17.023590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.961242, 19.269945, 16.940269>,  <7.648159, 19.476572, 16.801401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.961242, 19.269945, 16.940269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079681, 0.470048, 0.879037,
		-0.617268, -0.715692, 0.326750,
		0.782708, -0.516566, 0.347173,
		8.196054, 19.114975, 17.044422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.431489, 19.355740, 17.576059>,  <7.648159, 19.476572, 16.801401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.431489, 19.355740, 17.576059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.824350, 19.301708, 17.523708>,  <8.060066, 19.269289, 17.492298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.824350, 19.301708, 17.523708>,  <7.431489, 19.355740, 17.576059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.824350, 19.301708, 17.523708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149122, 0.135175, 0.979536,
		-0.114623, -0.981571, 0.152905,
		0.982153, -0.135079, -0.130879,
		8.118996, 19.261185, 17.484444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.648264, 18.829826, 18.021173>,  <7.431489, 19.355740, 17.576059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.648264, 18.829826, 18.021173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.975658, 19.046453, 17.944454>,  <8.172094, 19.176430, 17.898422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.975658, 19.046453, 17.944454>,  <7.648264, 18.829826, 18.021173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.975658, 19.046453, 17.944454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015323, 0.354295, 0.935008,
		0.574325, -0.762350, 0.298283,
		0.818484, 0.541570, -0.191799,
		8.221203, 19.208923, 17.886915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.018679, 18.796301, 18.540371>,  <7.648264, 18.829826, 18.021173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.018679, 18.796301, 18.540371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.190486, 19.130207, 18.402569>,  <8.293571, 19.330551, 18.319887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.190486, 19.130207, 18.402569>,  <8.018679, 18.796301, 18.540371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.190486, 19.130207, 18.402569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015066, 0.374810, 0.926979,
		0.902933, -0.403345, 0.148410,
		0.429518, 0.834764, -0.344505,
		8.319342, 19.380636, 18.299217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.602502, 18.955767, 18.956459>,  <8.018679, 18.796301, 18.540371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.602502, 18.955767, 18.956459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.485539, 19.299175, 18.787966>,  <8.415361, 19.505220, 18.686869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.485539, 19.299175, 18.787966>,  <8.602502, 18.955767, 18.956459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.485539, 19.299175, 18.787966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065731, 0.457488, 0.886783,
		0.954032, 0.231613, -0.190204,
		-0.292406, 0.858522, -0.421235,
		8.397818, 19.556732, 18.661594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.003426, 19.405678, 19.262220>,  <8.602502, 18.955767, 18.956459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.003426, 19.405678, 19.262220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.723980, 19.653961, 19.119862>,  <8.556313, 19.802931, 19.034447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.723980, 19.653961, 19.119862>,  <9.003426, 19.405678, 19.262220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.723980, 19.653961, 19.119862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021246, 0.479194, 0.877452,
		0.715184, 0.620561, -0.321584,
		-0.698613, 0.620707, -0.355896,
		8.514396, 19.840174, 19.013092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.167130, 20.046970, 19.428944>,  <9.003426, 19.405678, 19.262220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.167130, 20.046970, 19.428944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.776615, 20.084433, 19.350872>,  <8.542307, 20.106911, 19.304029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.776615, 20.084433, 19.350872>,  <9.167130, 20.046970, 19.428944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.776615, 20.084433, 19.350872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103505, 0.589920, 0.800800,
		0.190141, 0.802012, -0.566236,
		-0.976285, 0.093656, -0.195180,
		8.483729, 20.112530, 19.292318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.120089, 20.692251, 19.558504>,  <9.167130, 20.046970, 19.428944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.120089, 20.692251, 19.558504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.744038, 20.555950, 19.555702>,  <8.518407, 20.474169, 19.554022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.744038, 20.555950, 19.555702>,  <9.120089, 20.692251, 19.558504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.744038, 20.555950, 19.555702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234848, 0.632769, 0.737869,
		-0.247000, 0.695335, -0.674908,
		-0.940126, -0.340754, -0.007004,
		8.462000, 20.453724, 19.553600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.737636, 21.283352, 19.541981>,  <9.120089, 20.692251, 19.558504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.737636, 21.283352, 19.541981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.509398, 20.993622, 19.696787>,  <8.372456, 20.819784, 19.789671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.509398, 20.993622, 19.696787>,  <8.737636, 21.283352, 19.541981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.509398, 20.993622, 19.696787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210798, 0.584649, 0.783422,
		-0.793718, 0.365433, -0.486283,
		-0.570593, -0.724323, 0.387014,
		8.338221, 20.776325, 19.812891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.186596, 21.637861, 19.726429>,  <8.737636, 21.283352, 19.541981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.186596, 21.637861, 19.726429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.138224, 21.293938, 19.924864>,  <8.109200, 21.087584, 20.043924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.138224, 21.293938, 19.924864>,  <8.186596, 21.637861, 19.726429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.138224, 21.293938, 19.924864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166819, 0.510252, 0.843690,
		-0.978543, 0.019271, -0.205138,
		-0.120931, -0.859809, 0.496089,
		8.101945, 21.035995, 20.073690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.502895, 21.536774, 20.045044>,  <8.186596, 21.637861, 19.726429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.502895, 21.536774, 20.045044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.764800, 21.333206, 20.268576>,  <7.921943, 21.211065, 20.402695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.764800, 21.333206, 20.268576>,  <7.502895, 21.536774, 20.045044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.764800, 21.333206, 20.268576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291130, 0.512494, 0.807833,
		-0.697517, -0.691629, 0.187400,
		0.654762, -0.508919, 0.558827,
		7.961229, 21.180531, 20.436224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.101138, 21.604952, 20.599537>,  <7.502895, 21.536774, 20.045044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.101138, 21.604952, 20.599537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.451516, 21.465996, 20.733427>,  <7.661743, 21.382622, 20.813761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.451516, 21.465996, 20.733427>,  <7.101138, 21.604952, 20.599537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.451516, 21.465996, 20.733427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200198, 0.369516, 0.907402,
		-0.438910, -0.861845, 0.254128,
		0.875944, -0.347392, 0.334724,
		7.714300, 21.361778, 20.833845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.485762, 12.321235, 28.026047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.276615, 11.981125, 28.001900>,  <19.151127, 11.777060, 27.987411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.276615, 11.981125, 28.001900>,  <19.485762, 12.321235, 28.026047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.276615, 11.981125, 28.001900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326671, 0.134461, 0.935524,
		-0.787334, 0.508876, -0.348065,
		-0.522868, -0.850273, -0.060370,
		19.119755, 11.726043, 27.983789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.925495, 12.487033, 28.558661>,  <19.485762, 12.321235, 28.026047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.925495, 12.487033, 28.558661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.885881, 12.092552, 28.505598>,  <18.862114, 11.855864, 28.473761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.885881, 12.092552, 28.505598>,  <18.925495, 12.487033, 28.558661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.885881, 12.092552, 28.505598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520446, -0.062292, 0.851619,
		-0.848132, 0.153380, -0.507096,
		-0.099034, -0.986202, -0.132658,
		18.856171, 11.796692, 28.465801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.275673, 12.344733, 28.783155>,  <18.925495, 12.487033, 28.558661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.275673, 12.344733, 28.783155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.455505, 11.987448, 28.785906>,  <18.563404, 11.773077, 28.787556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.455505, 11.987448, 28.785906>,  <18.275673, 12.344733, 28.783155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.455505, 11.987448, 28.785906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574702, -0.283354, 0.767742,
		-0.683809, -0.349115, -0.640722,
		0.449581, -0.893213, 0.006877,
		18.590380, 11.719484, 28.787970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.756845, 11.857087, 28.982540>,  <18.275673, 12.344733, 28.783155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.756845, 11.857087, 28.982540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.108706, 11.672584, 29.028942>,  <18.319822, 11.561881, 29.056784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.108706, 11.672584, 29.028942>,  <17.756845, 11.857087, 28.982540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.108706, 11.672584, 29.028942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327492, -0.410527, 0.851009,
		-0.344908, -0.786583, -0.512178,
		0.879652, -0.461254, 0.116006,
		18.372601, 11.534206, 29.063744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.626051, 11.155134, 29.095266>,  <17.756845, 11.857087, 28.982540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.626051, 11.155134, 29.095266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.985001, 11.214975, 29.261324>,  <18.200371, 11.250880, 29.360958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.985001, 11.214975, 29.261324>,  <17.626051, 11.155134, 29.095266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.985001, 11.214975, 29.261324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240460, -0.623049, 0.744304,
		0.370004, -0.767743, -0.523133,
		0.897372, 0.149603, 0.415142,
		18.254211, 11.259856, 29.385866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.836918, 10.414296, 29.428696>,  <17.626051, 11.155134, 29.095266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.836918, 10.414296, 29.428696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.060375, 10.683116, 29.623125>,  <18.194450, 10.844408, 29.739782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.060375, 10.683116, 29.623125>,  <17.836918, 10.414296, 29.428696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.060375, 10.683116, 29.623125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070277, -0.545589, 0.835101,
		0.826425, -0.500683, -0.257560,
		0.558643, 0.672048, 0.486075,
		18.227968, 10.884730, 29.768948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.365469, 10.051647, 29.715446>,  <17.836918, 10.414296, 29.428696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.365469, 10.051647, 29.715446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.306173, 10.397966, 29.906620>,  <18.270596, 10.605758, 30.021324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.306173, 10.397966, 29.906620>,  <18.365469, 10.051647, 29.715446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.306173, 10.397966, 29.906620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173898, -0.498561, 0.849233,
		0.973543, 0.042777, 0.224465,
		-0.148237, 0.865798, 0.477932,
		18.261702, 10.657706, 30.049999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.798698, 10.013639, 30.290022>,  <18.365469, 10.051647, 29.715446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.798698, 10.013639, 30.290022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.556707, 10.310818, 30.404587>,  <18.411512, 10.489124, 30.473326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.556707, 10.310818, 30.404587>,  <18.798698, 10.013639, 30.290022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.556707, 10.310818, 30.404587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012113, -0.351077, 0.936268,
		0.796149, 0.569892, 0.203395,
		-0.604979, 0.742946, 0.286413,
		18.375214, 10.533702, 30.490511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.122049, 10.213056, 30.915968>,  <18.798698, 10.013639, 30.290022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.122049, 10.213056, 30.915968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.754972, 10.371972, 30.916212>,  <18.534727, 10.467321, 30.916359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.754972, 10.371972, 30.916212>,  <19.122049, 10.213056, 30.915968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.754972, 10.371972, 30.916212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136888, -0.317639, 0.938279,
		0.372963, 0.860968, 0.345880,
		-0.917693, 0.397290, 0.000612,
		18.479664, 10.491159, 30.916395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.088537, 10.486865, 31.600664>,  <19.122049, 10.213056, 30.915968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.088537, 10.486865, 31.600664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.715048, 10.482002, 31.457548>,  <18.490953, 10.479084, 31.371679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.715048, 10.482002, 31.457548>,  <19.088537, 10.486865, 31.600664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.715048, 10.482002, 31.457548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339826, -0.284254, 0.896503,
		-0.112603, 0.958672, 0.261283,
		-0.933723, -0.012158, -0.357789,
		18.434931, 10.478354, 31.350212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629099, 11.015893, 31.963018>,  <19.088537, 10.486865, 31.600664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.629099, 11.015893, 31.963018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.424953, 10.697681, 31.832382>,  <18.302465, 10.506754, 31.754002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.424953, 10.697681, 31.832382>,  <18.629099, 11.015893, 31.963018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.424953, 10.697681, 31.832382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217928, -0.247730, 0.944001,
		-0.831887, 0.552957, -0.046936,
		-0.510365, -0.795530, -0.326589,
		18.271845, 10.459023, 31.734406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.029240, 10.829958, 32.503571>,  <18.629099, 11.015893, 31.963018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.029240, 10.829958, 32.503571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.060085, 10.510254, 32.265163>,  <18.078592, 10.318432, 32.122120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.060085, 10.510254, 32.265163>,  <18.029240, 10.829958, 32.503571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.060085, 10.510254, 32.265163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284387, -0.590596, 0.755196,
		-0.955603, 0.111263, -0.272843,
		0.077114, -0.799261, -0.596017,
		18.083220, 10.270475, 32.086357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.411236, 11.391372, 32.539429>,  <18.029240, 10.829958, 32.503571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.411236, 11.391372, 32.539429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.090170, 11.610455, 32.444988>,  <16.897530, 11.741904, 32.388325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.090170, 11.610455, 32.444988>,  <17.411236, 11.391372, 32.539429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.090170, 11.610455, 32.444988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237626, -0.069413, -0.968874,
		-0.547048, -0.833785, -0.074434,
		-0.802665, 0.547708, -0.236101,
		16.849371, 11.774767, 32.374157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181360, 11.932808, 33.077843>,  <17.411236, 11.391372, 32.539429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181360, 11.932808, 33.077843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.437639, 12.053954, 32.795628>,  <17.591408, 12.126642, 32.626301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.437639, 12.053954, 32.795628>,  <17.181360, 11.932808, 33.077843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.437639, 12.053954, 32.795628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187607, 0.952812, 0.238649,
		0.744519, -0.020539, 0.667285,
		0.640699, 0.302866, -0.705534,
		17.629848, 12.144814, 32.583969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.588600, 12.310079, 32.823738>,  <17.181360, 11.932808, 33.077843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.588600, 12.310079, 32.823738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.322643, 12.608427, 32.839729>,  <16.163069, 12.787436, 32.849323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.322643, 12.608427, 32.839729>,  <16.588600, 12.310079, 32.823738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.322643, 12.608427, 32.839729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472382, 0.461347, -0.751009,
		-0.578599, -0.480453, -0.659081,
		-0.664890, 0.745871, 0.039978,
		16.123177, 12.832189, 32.851723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.448893, 12.469257, 32.167599>,  <16.588600, 12.310079, 32.823738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.448893, 12.469257, 32.167599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.310158, 12.790107, 32.362045>,  <16.226917, 12.982616, 32.478714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.310158, 12.790107, 32.362045>,  <16.448893, 12.469257, 32.167599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.310158, 12.790107, 32.362045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405879, 0.595600, -0.693197,
		-0.845557, -0.043122, -0.532140,
		-0.346835, 0.802123, 0.486112,
		16.206108, 13.030744, 32.507877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906266, 12.784083, 31.745283>,  <16.448893, 12.469257, 32.167599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.906266, 12.784083, 31.745283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.097082, 13.030230, 31.996284>,  <16.211571, 13.177917, 32.146885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.097082, 13.030230, 31.996284>,  <15.906266, 12.784083, 31.745283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.097082, 13.030230, 31.996284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178539, 0.631239, -0.754759,
		-0.860557, 0.472083, 0.191259,
		0.477039, 0.615366, 0.627502,
		16.240194, 13.214839, 32.184536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.673182, 13.420122, 31.486176>,  <15.906266, 12.784083, 31.745283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.673182, 13.420122, 31.486176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.981619, 13.555616, 31.701832>,  <16.166681, 13.636913, 31.831226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.981619, 13.555616, 31.701832>,  <15.673182, 13.420122, 31.486176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.981619, 13.555616, 31.701832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277259, 0.583623, -0.763225,
		-0.573187, 0.737999, 0.356110,
		0.771093, 0.338736, 0.539142,
		16.212946, 13.657237, 31.863575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.745320, 14.237546, 31.384945>,  <15.673182, 13.420122, 31.486176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.745320, 14.237546, 31.384945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.089031, 14.071212, 31.504091>,  <16.295258, 13.971412, 31.575579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.089031, 14.071212, 31.504091>,  <15.745320, 14.237546, 31.384945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.089031, 14.071212, 31.504091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478524, 0.447778, -0.755321,
		0.180711, 0.791566, 0.583752,
		0.859278, -0.415835, 0.297864,
		16.346815, 13.946462, 31.593451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.263632, 14.775927, 31.398640>,  <15.745320, 14.237546, 31.384945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.263632, 14.775927, 31.398640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.488647, 14.446144, 31.373909>,  <16.623657, 14.248275, 31.359070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.488647, 14.446144, 31.373909>,  <16.263632, 14.775927, 31.398640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.488647, 14.446144, 31.373909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482042, 0.387819, -0.785641,
		0.671705, 0.412149, 0.615585,
		0.562537, -0.824457, -0.061827,
		16.657408, 14.198807, 31.355360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.904621, 15.035186, 31.154373>,  <16.263632, 14.775927, 31.398640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.904621, 15.035186, 31.154373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.951344, 14.641314, 31.102585>,  <16.979376, 14.404990, 31.071512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.951344, 14.641314, 31.102585>,  <16.904621, 15.035186, 31.154373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.951344, 14.641314, 31.102585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661677, 0.174371, -0.729231,
		0.740635, -0.000490, 0.671908,
		0.116804, -0.984680, -0.129469,
		16.986385, 14.345909, 31.063744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.619720, 14.917150, 31.015249>,  <16.904621, 15.035186, 31.154373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.619720, 14.917150, 31.015249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.399027, 14.614561, 30.874773>,  <17.266611, 14.433007, 30.790487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.399027, 14.614561, 30.874773>,  <17.619720, 14.917150, 31.015249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.399027, 14.614561, 30.874773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477044, 0.059161, -0.876886,
		0.684119, -0.651342, 0.328230,
		-0.551734, -0.756475, -0.351192,
		17.233507, 14.387619, 30.769415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.079060, 14.606655, 30.596102>,  <17.619720, 14.917150, 31.015249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.079060, 14.606655, 30.596102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.720772, 14.471270, 30.480772>,  <17.505798, 14.390038, 30.411575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.720772, 14.471270, 30.480772>,  <18.079060, 14.606655, 30.596102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.720772, 14.471270, 30.480772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321851, -0.046184, -0.945663,
		0.306757, -0.939845, 0.150303,
		-0.895719, -0.338464, -0.288323,
		17.452057, 14.369730, 30.394276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.089853, 13.909463, 30.284971>,  <18.079060, 14.606655, 30.596102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.089853, 13.909463, 30.284971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.746986, 14.074040, 30.161049>,  <17.541267, 14.172787, 30.086697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.746986, 14.074040, 30.161049>,  <18.089853, 13.909463, 30.284971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.746986, 14.074040, 30.161049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266708, -0.159990, -0.950405,
		-0.440605, -0.897283, 0.027402,
		-0.857166, 0.411445, -0.309805,
		17.489836, 14.197474, 30.068108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.952118, 13.472754, 29.745560>,  <18.089853, 13.909463, 30.284971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.952118, 13.472754, 29.745560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.743805, 13.813462, 29.722696>,  <17.618816, 14.017888, 29.708979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.743805, 13.813462, 29.722696>,  <17.952118, 13.472754, 29.745560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.743805, 13.813462, 29.722696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162771, 0.033347, -0.986100,
		-0.838027, -0.522849, -0.156010,
		-0.520784, 0.851772, -0.057160,
		17.587570, 14.068994, 29.705549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.499216, 13.342257, 29.197615>,  <17.952118, 13.472754, 29.745560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.499216, 13.342257, 29.197615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.545034, 13.736201, 29.249666>,  <17.572525, 13.972568, 29.280897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.545034, 13.736201, 29.249666>,  <17.499216, 13.342257, 29.197615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.545034, 13.736201, 29.249666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141946, 0.113419, -0.983355,
		-0.983225, 0.131108, -0.126805,
		0.114544, 0.984859, 0.130127,
		17.579397, 14.031659, 29.288704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.061762, 13.559812, 28.662598>,  <17.499216, 13.342257, 29.197615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.061762, 13.559812, 28.662598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.268747, 13.885969, 28.766415>,  <17.392939, 14.081664, 28.828705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.268747, 13.885969, 28.766415>,  <17.061762, 13.559812, 28.662598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.268747, 13.885969, 28.766415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184265, 0.190014, -0.964334,
		-0.835630, 0.546833, -0.051923,
		0.517463, 0.815395, 0.259544,
		17.423986, 14.130588, 28.844278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.862507, 14.194365, 28.260809>,  <17.061762, 13.559812, 28.662598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.862507, 14.194365, 28.260809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.228827, 14.322345, 28.357924>,  <17.448618, 14.399133, 28.416191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.228827, 14.322345, 28.357924>,  <16.862507, 14.194365, 28.260809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.228827, 14.322345, 28.357924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148645, 0.291563, -0.944932,
		-0.373118, 0.901456, 0.219454,
		0.915799, 0.319950, 0.242784,
		17.503567, 14.418330, 28.430759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.261284, 14.622415, 27.919519>,  <16.862507, 14.194365, 28.260809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.261284, 14.622415, 27.919519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.939538, 14.471184, 27.736193>,  <15.746490, 14.380445, 27.626196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.939538, 14.471184, 27.736193>,  <16.261284, 14.622415, 27.919519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.939538, 14.471184, 27.736193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326471, -0.363250, 0.872620,
		-0.496401, 0.851533, 0.168755,
		-0.804365, -0.378076, -0.458318,
		15.698229, 14.357760, 27.598698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.694676, 14.693974, 28.354380>,  <16.261284, 14.622415, 27.919519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.694676, 14.693974, 28.354380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.568379, 14.417325, 28.094543>,  <15.492601, 14.251336, 27.938643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.568379, 14.417325, 28.094543>,  <15.694676, 14.693974, 28.354380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.568379, 14.417325, 28.094543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530479, -0.438951, 0.725199,
		-0.786701, 0.573571, -0.228294,
		-0.315743, -0.691620, -0.649590,
		15.473657, 14.209839, 27.899666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.937109, 14.612961, 28.402199>,  <15.694676, 14.693974, 28.354380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.937109, 14.612961, 28.402199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.024742, 14.244361, 28.273922>,  <15.077322, 14.023201, 28.196957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.024742, 14.244361, 28.273922>,  <14.937109, 14.612961, 28.402199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.024742, 14.244361, 28.273922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573890, -0.387511, 0.721447,
		-0.789084, 0.025985, -0.613736,
		0.219082, -0.921499, -0.320692,
		15.090466, 13.967912, 28.177715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.345789, 14.173326, 28.578831>,  <14.937109, 14.612961, 28.402199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.345789, 14.173326, 28.578831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.648867, 13.922236, 28.507433>,  <14.830713, 13.771583, 28.464594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.648867, 13.922236, 28.507433>,  <14.345789, 14.173326, 28.578831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.648867, 13.922236, 28.507433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357031, -0.627664, 0.691785,
		-0.546286, -0.460434, -0.699695,
		0.757694, -0.627725, -0.178494,
		14.876175, 13.733918, 28.453884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.024824, 13.416924, 28.553383>,  <14.345789, 14.173326, 28.578831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.024824, 13.416924, 28.553383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.422789, 13.393592, 28.586245>,  <14.661568, 13.379593, 28.605961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.422789, 13.393592, 28.586245>,  <14.024824, 13.416924, 28.553383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.422789, 13.393592, 28.586245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099435, -0.699994, 0.707192,
		0.016255, -0.711762, -0.702232,
		0.994911, -0.058331, 0.082153,
		14.721262, 13.376093, 28.610889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.159695, 12.707429, 28.584646>,  <14.024824, 13.416924, 28.553383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.159695, 12.707429, 28.584646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.484084, 12.866572, 28.756243>,  <14.678718, 12.962058, 28.859200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.484084, 12.866572, 28.756243>,  <14.159695, 12.707429, 28.584646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.484084, 12.866572, 28.756243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070771, -0.661122, 0.746933,
		0.580788, -0.636102, -0.507995,
		0.810973, 0.397858, 0.428990,
		14.727376, 12.985929, 28.884939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.458026, 12.088955, 28.835501>,  <14.159695, 12.707429, 28.584646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.458026, 12.088955, 28.835501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.641062, 12.382817, 29.035858>,  <14.750883, 12.559134, 29.156073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.641062, 12.382817, 29.035858>,  <14.458026, 12.088955, 28.835501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.641062, 12.382817, 29.035858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057817, -0.586722, 0.807722,
		0.887282, -0.340645, -0.310953,
		0.457589, 0.734656, 0.500892,
		14.778338, 12.603214, 29.186127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.808946, 11.398437, 28.655411>,  <14.458026, 12.088955, 28.835501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.808946, 11.398437, 28.655411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.760293, 11.016018, 28.548693>,  <14.731101, 10.786567, 28.484661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.760293, 11.016018, 28.548693>,  <14.808946, 11.398437, 28.655411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.760293, 11.016018, 28.548693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103142, 0.255162, -0.961381,
		0.987202, -0.144452, 0.067572,
		-0.121632, -0.956047, -0.266795,
		14.723804, 10.729204, 28.468655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.322605, 11.198816, 28.102194>,  <14.808946, 11.398437, 28.655411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.322605, 11.198816, 28.102194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.017889, 10.943296, 28.059092>,  <14.835059, 10.789985, 28.033230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.017889, 10.943296, 28.059092>,  <15.322605, 11.198816, 28.102194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.017889, 10.943296, 28.059092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030584, 0.130684, -0.990952,
		0.647103, -0.758192, -0.080016,
		-0.761789, -0.638801, -0.107754,
		14.789352, 10.751657, 28.026766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.412066, 10.881120, 27.499269>,  <15.322605, 11.198816, 28.102194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.412066, 10.881120, 27.499269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.020046, 10.833007, 27.562565>,  <14.784835, 10.804139, 27.600542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.020046, 10.833007, 27.562565>,  <15.412066, 10.881120, 27.499269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.020046, 10.833007, 27.562565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174716, 0.141729, -0.974365,
		0.094769, -0.982571, -0.159916,
		-0.980048, -0.120279, 0.158239,
		14.726032, 10.796922, 27.610037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.173282, 10.418356, 26.933939>,  <15.412066, 10.881120, 27.499269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.173282, 10.418356, 26.933939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.834331, 10.577422, 27.074686>,  <14.630960, 10.672862, 27.159134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.834331, 10.577422, 27.074686>,  <15.173282, 10.418356, 26.933939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.834331, 10.577422, 27.074686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352161, 0.075072, -0.932924,
		-0.397407, -0.914454, 0.076427,
		-0.847379, 0.397665, 0.351869,
		14.580117, 10.696721, 27.180246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.665153, 10.328172, 26.374250>,  <15.173282, 10.418356, 26.933939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.665153, 10.328172, 26.374250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.486135, 10.582306, 26.625982>,  <14.378725, 10.734786, 26.777021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.486135, 10.582306, 26.625982>,  <14.665153, 10.328172, 26.374250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.486135, 10.582306, 26.625982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262574, 0.579362, -0.771618,
		-0.854845, -0.510578, -0.092467,
		-0.447543, 0.635335, 0.629329,
		14.351872, 10.772906, 26.814781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.917420, 10.411757, 26.130699>,  <14.665153, 10.328172, 26.374250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.917420, 10.411757, 26.130699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.006892, 10.732160, 26.352819>,  <14.060575, 10.924401, 26.486092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.006892, 10.732160, 26.352819>,  <13.917420, 10.411757, 26.130699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.006892, 10.732160, 26.352819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536450, 0.576851, -0.616006,
		-0.813750, -0.160103, 0.558729,
		0.223679, 0.801005, 0.555300,
		14.073996, 10.972461, 26.519409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.352720, 10.830231, 26.179272>,  <13.917420, 10.411757, 26.130699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.352720, 10.830231, 26.179272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.662729, 11.075566, 26.240139>,  <13.848735, 11.222768, 26.276659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.662729, 11.075566, 26.240139>,  <13.352720, 10.830231, 26.179272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.662729, 11.075566, 26.240139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392453, 0.655886, -0.644821,
		-0.495297, 0.440033, 0.749034,
		0.775023, 0.613339, 0.152166,
		13.895236, 11.259568, 26.285789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<17.492010, 7.836070, 31.389658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.647251, 8.197628, 31.317715>,  <17.740396, 8.414563, 31.274549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.647251, 8.197628, 31.317715>,  <17.492010, 7.836070, 31.389658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.647251, 8.197628, 31.317715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500854, -0.370680, -0.782139,
		-0.773641, 0.213469, -0.596582,
		0.388103, 0.903896, -0.179857,
		17.763681, 8.468797, 31.263758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.277781, 8.054487, 30.656696>,  <17.492010, 7.836070, 31.389658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.277781, 8.054487, 30.656696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.601175, 8.250736, 30.786707>,  <17.795212, 8.368485, 30.864714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.601175, 8.250736, 30.786707>,  <17.277781, 8.054487, 30.656696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.601175, 8.250736, 30.786707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469876, -0.205589, -0.858458,
		-0.354356, 0.846772, -0.396747,
		0.808485, 0.490622, 0.325026,
		17.843721, 8.397923, 30.884214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.458712, 8.310615, 30.025776>,  <17.277781, 8.054487, 30.656696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.458712, 8.310615, 30.025776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.776487, 8.365322, 30.262472>,  <17.967154, 8.398147, 30.404490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.776487, 8.365322, 30.262472>,  <17.458712, 8.310615, 30.025776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.776487, 8.365322, 30.262472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598196, -0.007757, -0.801312,
		-0.105004, 0.990573, -0.087977,
		0.794441, 0.136768, 0.591742,
		18.014820, 8.406352, 30.439995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.770561, 8.944918, 29.827347>,  <17.458712, 8.310615, 30.025776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.770561, 8.944918, 29.827347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.044981, 8.706218, 29.993828>,  <18.209633, 8.562998, 30.093718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.044981, 8.706218, 29.993828>,  <17.770561, 8.944918, 29.827347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.044981, 8.706218, 29.993828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611123, 0.162233, -0.774732,
		0.394800, 0.785855, 0.475988,
		0.686048, -0.596751, 0.416204,
		18.250795, 8.527192, 30.118689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.295208, 9.179380, 29.536375>,  <17.770561, 8.944918, 29.827347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.295208, 9.179380, 29.536375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.425838, 8.838842, 29.700598>,  <18.504217, 8.634520, 29.799131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.425838, 8.838842, 29.700598>,  <18.295208, 9.179380, 29.536375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.425838, 8.838842, 29.700598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648771, -0.113974, -0.752400,
		0.687345, 0.512076, 0.515107,
		0.326577, -0.851345, 0.410559,
		18.523811, 8.583439, 29.823765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.131561, 9.067871, 29.640842>,  <18.295208, 9.179380, 29.536375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.131561, 9.067871, 29.640842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.962336, 8.708426, 29.594347>,  <18.860800, 8.492760, 29.566450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.962336, 8.708426, 29.594347>,  <19.131561, 9.067871, 29.640842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.962336, 8.708426, 29.594347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522406, -0.137086, -0.841605,
		0.740343, -0.416777, 0.527437,
		-0.423066, -0.898613, -0.116236,
		18.835417, 8.438843, 29.559477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.669956, 8.719564, 29.222755>,  <19.131561, 9.067871, 29.640842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.669956, 8.719564, 29.222755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.334711, 8.501700, 29.210649>,  <19.133564, 8.370982, 29.203386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.334711, 8.501700, 29.210649>,  <19.669956, 8.719564, 29.222755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.334711, 8.501700, 29.210649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199482, -0.254373, -0.946309,
		0.507718, -0.799150, 0.321843,
		-0.838111, -0.544660, -0.030267,
		19.083279, 8.338303, 29.201569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.878374, 8.089023, 28.881367>,  <19.669956, 8.719564, 29.222755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.878374, 8.089023, 28.881367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.484566, 8.109813, 28.814411>,  <19.248281, 8.122287, 28.774239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.484566, 8.109813, 28.814411>,  <19.878374, 8.089023, 28.881367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.484566, 8.109813, 28.814411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168040, 0.008373, -0.985745,
		-0.049836, -0.998613, -0.016978,
		-0.984520, 0.051979, -0.167389,
		19.189209, 8.125405, 28.764194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.822453, 7.616822, 28.374714>,  <19.878374, 8.089023, 28.881367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.822453, 7.616822, 28.374714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.486376, 7.832552, 28.352058>,  <19.284731, 7.961991, 28.338465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.486376, 7.832552, 28.352058>,  <19.822453, 7.616822, 28.374714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.486376, 7.832552, 28.352058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115614, 0.076106, -0.990375,
		-0.529826, -0.838650, -0.126297,
		-0.840190, 0.539328, -0.056637,
		19.234320, 7.994350, 28.335068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.472267, 7.224361, 27.848614>,  <19.822453, 7.616822, 28.374714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.472267, 7.224361, 27.848614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.304010, 7.586753, 27.867638>,  <19.203056, 7.804188, 27.879053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.304010, 7.586753, 27.867638>,  <19.472267, 7.224361, 27.848614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.304010, 7.586753, 27.867638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031552, 0.037783, -0.998788,
		-0.906677, -0.421635, 0.012692,
		-0.420644, 0.905978, 0.047561,
		19.177816, 7.858546, 27.881907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.980028, 7.247757, 27.376253>,  <19.472267, 7.224361, 27.848614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.980028, 7.247757, 27.376253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.093012, 7.628413, 27.424589>,  <19.160801, 7.856806, 27.453590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.093012, 7.628413, 27.424589>,  <18.980028, 7.247757, 27.376253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.093012, 7.628413, 27.424589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017883, 0.131171, -0.991198,
		-0.959113, 0.277811, 0.054069,
		0.282458, 0.951638, 0.120840,
		19.177750, 7.913904, 27.460842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.569933, 7.638405, 26.909805>,  <18.980028, 7.247757, 27.376253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.569933, 7.638405, 26.909805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.836637, 7.922204, 27.001057>,  <18.996660, 8.092483, 27.055807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.836637, 7.922204, 27.001057>,  <18.569933, 7.638405, 26.909805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.836637, 7.922204, 27.001057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089734, 0.380304, -0.920498,
		-0.739848, 0.593283, 0.317238,
		0.666763, 0.709496, 0.228129,
		19.036667, 8.135053, 27.069496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.844036, 7.764864, 26.853258>,  <18.569933, 7.638405, 26.909805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.844036, 7.764864, 26.853258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.472206, 7.912023, 26.843924>,  <17.249109, 8.000318, 26.838324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.472206, 7.912023, 26.843924>,  <17.844036, 7.764864, 26.853258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.472206, 7.912023, 26.843924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078692, -0.136196, 0.987552,
		0.360139, 0.919839, 0.155555,
		-0.929574, 0.367897, -0.023334,
		17.193335, 8.022391, 26.836924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.789764, 8.101428, 27.535917>,  <17.844036, 7.764864, 26.853258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.789764, 8.101428, 27.535917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.428963, 8.045740, 27.372452>,  <17.212482, 8.012327, 27.274372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.428963, 8.045740, 27.372452>,  <17.789764, 8.101428, 27.535917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.428963, 8.045740, 27.372452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358987, -0.283958, 0.889098,
		-0.239824, 0.948676, 0.206153,
		-0.902005, -0.139221, -0.408663,
		17.158361, 8.003974, 27.249853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.258263, 8.399508, 27.994770>,  <17.789764, 8.101428, 27.535917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.258263, 8.399508, 27.994770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.053516, 8.132192, 27.778852>,  <16.930668, 7.971801, 27.649302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.053516, 8.132192, 27.778852>,  <17.258263, 8.399508, 27.994770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.053516, 8.132192, 27.778852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534138, -0.244542, 0.809256,
		-0.672823, 0.702555, -0.231789,
		-0.511865, -0.668293, -0.539795,
		16.899958, 7.931704, 27.616915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.515686, 8.564499, 28.129534>,  <17.258263, 8.399508, 27.994770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.515686, 8.564499, 28.129534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.568419, 8.183384, 28.020123>,  <16.600058, 7.954715, 27.954475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.568419, 8.183384, 28.020123>,  <16.515686, 8.564499, 28.129534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568419, 8.183384, 28.020123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445509, -0.303448, 0.842283,
		-0.885518, 0.010819, -0.464480,
		0.131833, -0.952787, -0.273528,
		16.607967, 7.897548, 27.938065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.982930, 8.305584, 28.353605>,  <16.515686, 8.564499, 28.129534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.982930, 8.305584, 28.353605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.212702, 7.981877, 28.304422>,  <16.350565, 7.787653, 28.274912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.212702, 7.981877, 28.304422>,  <15.982930, 8.305584, 28.353605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.212702, 7.981877, 28.304422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411833, -0.415546, 0.810996,
		-0.707408, -0.415221, -0.571984,
		0.574428, -0.809267, -0.122959,
		16.385031, 7.739097, 28.267534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.492099, 7.731997, 28.339691>,  <15.982930, 8.305584, 28.353605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.492099, 7.731997, 28.339691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.854073, 7.577398, 28.410923>,  <16.071257, 7.484638, 28.453663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.854073, 7.577398, 28.410923>,  <15.492099, 7.731997, 28.339691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.854073, 7.577398, 28.410923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379036, -0.541817, 0.750177,
		-0.193455, -0.746360, -0.636805,
		0.904935, -0.386498, 0.178081,
		16.125553, 7.461448, 28.464348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.374063, 7.070294, 28.593431>,  <15.492099, 7.731997, 28.339691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.374063, 7.070294, 28.593431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.745644, 7.135586, 28.726343>,  <15.968592, 7.174761, 28.806089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.745644, 7.135586, 28.726343>,  <15.374063, 7.070294, 28.593431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.745644, 7.135586, 28.726343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204653, -0.521512, 0.828337,
		0.308497, -0.837485, -0.451053,
		0.928949, 0.163231, 0.332279,
		16.024328, 7.184555, 28.826027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.742196, 6.324434, 28.795162>,  <15.374063, 7.070294, 28.593431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.742196, 6.324434, 28.795162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.925382, 6.638332, 28.962229>,  <16.035294, 6.826671, 29.062469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.925382, 6.638332, 28.962229>,  <15.742196, 6.324434, 28.795162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.925382, 6.638332, 28.962229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185901, -0.374903, 0.908234,
		0.869316, -0.493582, -0.025807,
		0.457963, 0.784745, 0.417667,
		16.062771, 6.873756, 29.087528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.276461, 6.049826, 29.348442>,  <15.742196, 6.324434, 28.795162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.276461, 6.049826, 29.348442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.225430, 6.426848, 29.471933>,  <16.194811, 6.653061, 29.546028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.225430, 6.426848, 29.471933>,  <16.276461, 6.049826, 29.348442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.225430, 6.426848, 29.471933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176832, -0.327901, 0.928015,
		0.975937, 0.063802, 0.208508,
		-0.127579, 0.942555, 0.308729,
		16.187157, 6.709614, 29.564552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.585812, 6.140661, 30.145088>,  <16.276461, 6.049826, 29.348442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.585812, 6.140661, 30.145088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.318672, 6.431798, 30.082836>,  <16.158388, 6.606481, 30.045485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.318672, 6.431798, 30.082836>,  <16.585812, 6.140661, 30.145088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.318672, 6.431798, 30.082836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385473, -0.159365, 0.908853,
		0.636700, 0.666969, 0.386995,
		-0.667850, 0.727843, -0.155630,
		16.118317, 6.650151, 30.036146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.616049, 6.616811, 30.791796>,  <16.585812, 6.140661, 30.145088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.616049, 6.616811, 30.791796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.270927, 6.711628, 30.613188>,  <16.063854, 6.768519, 30.506023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.270927, 6.711628, 30.613188>,  <16.616049, 6.616811, 30.791796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.270927, 6.711628, 30.613188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396756, 0.229869, 0.888676,
		0.313295, 0.943913, -0.104283,
		-0.862804, 0.237043, -0.446520,
		16.012087, 6.782742, 30.479233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.370476, 7.196125, 31.024195>,  <16.616049, 6.616811, 30.791796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.370476, 7.196125, 31.024195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.032110, 7.045262, 30.873365>,  <15.829091, 6.954745, 30.782867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.032110, 7.045262, 30.873365>,  <16.370476, 7.196125, 31.024195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.032110, 7.045262, 30.873365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479885, 0.229804, 0.846700,
		-0.232684, 0.897187, -0.375386,
		-0.845913, -0.377156, -0.377075,
		15.778337, 6.932116, 30.760242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.948816, 7.701975, 31.253235>,  <16.370476, 7.196125, 31.024195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.948816, 7.701975, 31.253235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.726520, 7.376912, 31.183107>,  <15.593142, 7.181874, 31.141031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.726520, 7.376912, 31.183107>,  <15.948816, 7.701975, 31.253235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.726520, 7.376912, 31.183107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488010, 0.148158, 0.860172,
		-0.673051, 0.563591, -0.478923,
		-0.555742, -0.812659, -0.175320,
		15.559797, 7.133114, 31.130512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.295930, 7.897442, 31.242554>,  <15.948816, 7.701975, 31.253235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.295930, 7.897442, 31.242554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.279045, 7.511757, 31.347254>,  <15.268914, 7.280346, 31.410074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.279045, 7.511757, 31.347254>,  <15.295930, 7.897442, 31.242554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.279045, 7.511757, 31.347254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472330, 0.250116, 0.845190,
		-0.880410, -0.087955, -0.465985,
		-0.042212, -0.964212, 0.261749,
		15.266381, 7.222494, 31.425779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.951849, 8.245711, 30.685165>,  <15.295930, 7.897442, 31.242554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.951849, 8.245711, 30.685165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.731841, 8.571923, 30.757154>,  <14.599836, 8.767651, 30.800348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.731841, 8.571923, 30.757154>,  <14.951849, 8.245711, 30.685165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.731841, 8.571923, 30.757154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199916, 0.337803, -0.919741,
		-0.810871, -0.469896, -0.348835,
		-0.550020, 0.815529, 0.179975,
		14.566835, 8.816582, 30.811148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.431267, 8.364299, 30.143595>,  <14.951849, 8.245711, 30.685165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.431267, 8.364299, 30.143595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.520749, 8.719588, 30.304100>,  <14.574438, 8.932762, 30.400404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.520749, 8.719588, 30.304100>,  <14.431267, 8.364299, 30.143595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.520749, 8.719588, 30.304100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041088, 0.402737, -0.914393,
		-0.973790, 0.221042, 0.053599,
		0.223706, 0.888225, 0.401264,
		14.587861, 8.986055, 30.424479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.277089, 8.823568, 29.650311>,  <14.431267, 8.364299, 30.143595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.277089, 8.823568, 29.650311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.435498, 9.086451, 29.906824>,  <14.530543, 9.244180, 30.060732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.435498, 9.086451, 29.906824>,  <14.277089, 8.823568, 29.650311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.435498, 9.086451, 29.906824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079842, 0.671094, -0.737061,
		-0.914763, 0.343094, 0.213295,
		0.396022, 0.657206, 0.641285,
		14.554305, 9.283612, 30.099209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.914987, 9.402429, 29.546247>,  <14.277089, 8.823568, 29.650311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.914987, 9.402429, 29.546247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.253980, 9.532790, 29.713846>,  <14.457376, 9.611007, 29.814405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.253980, 9.532790, 29.713846>,  <13.914987, 9.402429, 29.546247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.253980, 9.532790, 29.713846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104298, 0.671717, -0.733430,
		-0.520474, 0.665270, 0.535278,
		0.847484, 0.325903, 0.418997,
		14.508224, 9.630561, 29.839546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.832805, 10.125392, 29.692698>,  <13.914987, 9.402429, 29.546247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.832805, 10.125392, 29.692698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.218069, 10.032269, 29.638853>,  <14.449228, 9.976396, 29.606546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.218069, 10.032269, 29.638853>,  <13.832805, 10.125392, 29.692698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.218069, 10.032269, 29.638853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042930, 0.627243, -0.777640,
		0.265473, 0.743214, 0.614131,
		0.963162, -0.232807, -0.134610,
		14.507018, 9.962427, 29.598471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.880287, 10.619306, 29.213943>,  <13.832805, 10.125392, 29.692698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.880287, 10.619306, 29.213943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.233239, 10.431890, 29.196617>,  <14.445010, 10.319441, 29.186222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.233239, 10.431890, 29.196617>,  <13.880287, 10.619306, 29.213943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.233239, 10.431890, 29.196617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272605, 0.584069, -0.764558,
		0.383524, 0.662823, 0.643097,
		0.882380, -0.468538, -0.043316,
		14.497953, 10.291328, 29.183622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.395395, 11.118679, 29.185137>,  <13.880287, 10.619306, 29.213943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.395395, 11.118679, 29.185137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.527185, 10.778741, 29.020597>,  <14.606259, 10.574778, 28.921875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.527185, 10.778741, 29.020597>,  <14.395395, 11.118679, 29.185137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.527185, 10.778741, 29.020597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246090, 0.497912, -0.831579,
		0.911529, 0.172757, 0.373189,
		0.329476, -0.849846, -0.411347,
		14.626028, 10.523787, 28.897194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.868288, 11.758043, 29.319962>,  <14.395395, 11.118679, 29.185137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.868288, 11.758043, 29.319962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.804751, 12.120865, 29.475922>,  <14.766629, 12.338557, 29.569498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.804751, 12.120865, 29.475922>,  <14.868288, 11.758043, 29.319962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.804751, 12.120865, 29.475922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046987, -0.401414, 0.914691,
		0.986186, 0.126970, 0.106380,
		-0.158841, 0.907053, 0.389902,
		14.757099, 12.392981, 29.592892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.245800, 11.783526, 29.916653>,  <14.868288, 11.758043, 29.319962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.245800, 11.783526, 29.916653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.977360, 12.073866, 29.977007>,  <14.816296, 12.248070, 30.013220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.977360, 12.073866, 29.977007>,  <15.245800, 11.783526, 29.916653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.977360, 12.073866, 29.977007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035046, -0.234357, 0.971519,
		0.740537, 0.646699, 0.182715,
		-0.671101, 0.725849, 0.150886,
		14.776030, 12.291620, 30.022272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.517427, 12.258170, 30.472734>,  <15.245800, 11.783526, 29.916653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.517427, 12.258170, 30.472734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.119528, 12.281992, 30.439444>,  <14.880788, 12.296285, 30.419468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.119528, 12.281992, 30.439444>,  <15.517427, 12.258170, 30.472734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.119528, 12.281992, 30.439444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092772, -0.181360, 0.979031,
		0.043210, 0.981612, 0.185933,
		-0.994749, 0.059554, -0.083230,
		14.821103, 12.299858, 30.414474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.470503, 12.558584, 31.095409>,  <15.517427, 12.258170, 30.472734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.470503, 12.558584, 31.095409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.126022, 12.389498, 30.982523>,  <14.919334, 12.288046, 30.914791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.126022, 12.389498, 30.982523>,  <15.470503, 12.558584, 31.095409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.126022, 12.389498, 30.982523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228312, -0.174343, 0.957851,
		-0.454100, 0.889335, 0.053633,
		-0.861201, -0.422715, -0.282215,
		14.867662, 12.262683, 30.897858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.021006, 12.911824, 31.429567>,  <15.470503, 12.558584, 31.095409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.021006, 12.911824, 31.429567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.846190, 12.559313, 31.357630>,  <14.741302, 12.347806, 31.314466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.846190, 12.559313, 31.357630>,  <15.021006, 12.911824, 31.429567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.846190, 12.559313, 31.357630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127041, -0.137465, 0.982326,
		-0.890426, 0.452161, -0.051881,
		-0.437038, -0.881279, -0.179845,
		14.715079, 12.294929, 31.303677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.591672, 12.782132, 31.909458>,  <15.021006, 12.911824, 31.429567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.591672, 12.782132, 31.909458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.584106, 12.414552, 31.751892>,  <14.579567, 12.194003, 31.657352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.584106, 12.414552, 31.751892>,  <14.591672, 12.782132, 31.909458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.584106, 12.414552, 31.751892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164686, -0.385741, 0.907790,
		-0.986165, 0.082043, -0.144042,
		-0.018915, -0.918952, -0.393916,
		14.578432, 12.138866, 31.633717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.954437, 12.519099, 32.039127>,  <14.591672, 12.782132, 31.909458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.954437, 12.519099, 32.039127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.196233, 12.203503, 31.995157>,  <14.341311, 12.014145, 31.968775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.196233, 12.203503, 31.995157>,  <13.954437, 12.519099, 32.039127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.196233, 12.203503, 31.995157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288640, -0.345549, 0.892907,
		-0.742483, -0.508022, -0.436615,
		0.604488, -0.788993, -0.109928,
		14.377580, 11.966805, 31.962179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.690303, 11.909611, 32.494923>,  <13.954437, 12.519099, 32.039127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.690303, 11.909611, 32.494923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.063159, 11.799062, 32.401344>,  <14.286873, 11.732733, 32.345196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.063159, 11.799062, 32.401344>,  <13.690303, 11.909611, 32.494923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.063159, 11.799062, 32.401344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108220, -0.403928, 0.908367,
		-0.345544, -0.872044, -0.346609,
		0.932141, -0.276371, -0.233947,
		14.342801, 11.716150, 32.331161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.719586, 11.332938, 32.801411>,  <13.690303, 11.909611, 32.494923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.719586, 11.332938, 32.801411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.101638, 11.427392, 32.729889>,  <14.330869, 11.484064, 32.686977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.101638, 11.427392, 32.729889>,  <13.719586, 11.332938, 32.801411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.101638, 11.427392, 32.729889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220265, -0.162675, 0.961780,
		0.198023, -0.958007, -0.207387,
		0.955128, 0.236135, -0.178802,
		14.388176, 11.498232, 32.676247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<17.552608, 18.000122, 18.117708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.877432, 17.863054, 18.306660>,  <18.072325, 17.780813, 18.420031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.877432, 17.863054, 18.306660>,  <17.552608, 18.000122, 18.117708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.877432, 17.863054, 18.306660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582715, -0.432079, 0.688296,
		-0.031754, -0.834197, -0.550552,
		0.812056, -0.342671, 0.472378,
		18.121048, 17.760254, 18.448374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.495956, 17.176607, 18.215488>,  <17.552608, 18.000122, 18.117708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.495956, 17.176607, 18.215488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.755266, 17.320526, 18.483902>,  <17.910852, 17.406878, 18.644949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.755266, 17.320526, 18.483902>,  <17.495956, 17.176607, 18.215488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.755266, 17.320526, 18.483902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495696, -0.469526, 0.730638,
		0.577950, -0.806282, -0.126030,
		0.648274, 0.359799, 0.671033,
		17.949749, 17.428467, 18.685211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.667852, 16.617098, 18.546862>,  <17.495956, 17.176607, 18.215488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.667852, 16.617098, 18.546862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.733582, 16.934835, 18.780788>,  <17.773018, 17.125479, 18.921144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.733582, 16.934835, 18.780788>,  <17.667852, 16.617098, 18.546862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.733582, 16.934835, 18.780788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456716, -0.464230, 0.758881,
		0.874305, -0.391797, 0.286508,
		0.164322, 0.794346, 0.584818,
		17.782879, 17.173140, 18.956234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.988371, 16.383392, 19.152546>,  <17.667852, 16.617098, 18.546862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.988371, 16.383392, 19.152546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.850393, 16.743475, 19.258862>,  <17.767607, 16.959524, 19.322651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.850393, 16.743475, 19.258862>,  <17.988371, 16.383392, 19.152546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.850393, 16.743475, 19.258862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416000, -0.400464, 0.816439,
		0.841401, 0.171058, 0.512623,
		-0.344946, 0.900204, 0.265791,
		17.746910, 17.013536, 19.338598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.183031, 16.473206, 19.877951>,  <17.988371, 16.383392, 19.152546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.183031, 16.473206, 19.877951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.886978, 16.739414, 19.839413>,  <17.709347, 16.899139, 19.816290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.886978, 16.739414, 19.839413>,  <18.183031, 16.473206, 19.877951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.886978, 16.739414, 19.839413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293717, -0.191058, 0.936604,
		0.604925, 0.721509, 0.336884,
		-0.740132, 0.665524, -0.096344,
		17.664938, 16.939072, 19.810509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.114635, 16.909914, 20.560617>,  <18.183031, 16.473206, 19.877951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.114635, 16.909914, 20.560617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.766615, 16.935896, 20.365152>,  <17.557802, 16.951485, 20.247873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.766615, 16.935896, 20.365152>,  <18.114635, 16.909914, 20.560617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.766615, 16.935896, 20.365152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492916, -0.101613, 0.864123,
		0.006473, 0.992701, 0.120425,
		-0.870053, 0.064953, -0.488661,
		17.505600, 16.955381, 20.218554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.657909, 17.016899, 21.157764>,  <18.114635, 16.909914, 20.560617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.657909, 17.016899, 21.157764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.397821, 16.969028, 20.857660>,  <17.241768, 16.940306, 20.677597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.397821, 16.969028, 20.857660>,  <17.657909, 17.016899, 21.157764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.397821, 16.969028, 20.857660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672156, -0.369701, 0.641504,
		-0.354145, 0.921411, 0.159946,
		-0.650221, -0.119676, -0.750260,
		17.202755, 16.933126, 20.632582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.004509, 17.394690, 21.265913>,  <17.657909, 17.016899, 21.157764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.004509, 17.394690, 21.265913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.915691, 17.092752, 21.019043>,  <16.862400, 16.911591, 20.870920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.915691, 17.092752, 21.019043>,  <17.004509, 17.394690, 21.265913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.915691, 17.092752, 21.019043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706792, -0.311430, 0.635183,
		-0.671671, 0.577253, -0.464367,
		-0.222044, -0.754845, -0.617176,
		16.849079, 16.866299, 20.833891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.260815, 17.378605, 21.289490>,  <17.004509, 17.394690, 21.265913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.260815, 17.378605, 21.289490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.361521, 17.014425, 21.158218>,  <16.421944, 16.795918, 21.079454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.361521, 17.014425, 21.158218>,  <16.260815, 17.378605, 21.289490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.361521, 17.014425, 21.158218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740060, -0.399631, 0.540931,
		-0.623640, 0.106686, -0.774398,
		0.251764, -0.910447, -0.328180,
		16.437050, 16.741291, 21.059765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.618584, 16.959856, 21.278540>,  <16.260815, 17.378605, 21.289490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.618584, 16.959856, 21.278540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.917728, 16.694677, 21.264664>,  <16.097216, 16.535570, 21.256338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.917728, 16.694677, 21.264664>,  <15.618584, 16.959856, 21.278540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.917728, 16.694677, 21.264664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511373, -0.608618, 0.606698,
		-0.423320, -0.435988, -0.794175,
		0.747862, -0.662947, -0.034688,
		16.142088, 16.495792, 21.254257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.258907, 16.358234, 21.307926>,  <15.618584, 16.959856, 21.278540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.258907, 16.358234, 21.307926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.635769, 16.247471, 21.383471>,  <15.861886, 16.181013, 21.428797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.635769, 16.247471, 21.383471>,  <15.258907, 16.358234, 21.307926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.635769, 16.247471, 21.383471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327428, -0.639884, 0.695226,
		-0.071665, -0.716848, -0.693536,
		0.942154, -0.276907, 0.188859,
		15.918415, 16.164398, 21.440128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.274588, 15.649135, 21.343378>,  <15.258907, 16.358234, 21.307926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.274588, 15.649135, 21.343378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.584844, 15.755937, 21.572145>,  <15.770997, 15.820018, 21.709406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.584844, 15.755937, 21.572145>,  <15.274588, 15.649135, 21.343378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.584844, 15.755937, 21.572145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276965, -0.670239, 0.688527,
		0.567162, -0.692451, -0.445914,
		0.775640, 0.267004, 0.571919,
		15.817535, 15.836038, 21.743721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.159247, 15.016417, 21.039263>,  <15.274588, 15.649135, 21.343378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.159247, 15.016417, 21.039263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.823972, 14.798315, 21.034550>,  <14.622807, 14.667455, 21.031723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.823972, 14.798315, 21.034550>,  <15.159247, 15.016417, 21.039263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.823972, 14.798315, 21.034550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067063, 0.124484, -0.989953,
		0.541242, -0.828977, -0.140908,
		-0.838189, -0.545253, -0.011782,
		14.572515, 14.634739, 21.031015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254595, 14.589476, 20.449461>,  <15.159247, 15.016417, 21.039263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.254595, 14.589476, 20.449461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.863441, 14.562855, 20.528770>,  <14.628749, 14.546883, 20.576357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.863441, 14.562855, 20.528770>,  <15.254595, 14.589476, 20.449461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.863441, 14.562855, 20.528770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205370, 0.126213, -0.970512,
		0.039564, -0.989768, -0.137089,
		-0.977885, -0.066551, 0.198275,
		14.570076, 14.542890, 20.588253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.988258, 14.146350, 19.898003>,  <15.254595, 14.589476, 20.449461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.988258, 14.146350, 19.898003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.663472, 14.325252, 20.048029>,  <14.468600, 14.432592, 20.138044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.663472, 14.325252, 20.048029>,  <14.988258, 14.146350, 19.898003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.663472, 14.325252, 20.048029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347264, 0.146334, -0.926280,
		-0.469167, -0.882355, 0.036497,
		-0.811967, 0.447254, 0.375066,
		14.419882, 14.459428, 20.160549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.506569, 14.019217, 19.468901>,  <14.988258, 14.146350, 19.898003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.506569, 14.019217, 19.468901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.335818, 14.331448, 19.651537>,  <14.233368, 14.518786, 19.761118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.335818, 14.331448, 19.651537>,  <14.506569, 14.019217, 19.468901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.335818, 14.331448, 19.651537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364294, 0.313688, -0.876864,
		-0.827687, -0.540646, 0.150453,
		-0.426877, 0.780578, 0.456590,
		14.207755, 14.565621, 19.788513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.864464, 14.112988, 19.158833>,  <14.506569, 14.019217, 19.468901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.864464, 14.112988, 19.158833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.861115, 14.452797, 19.369827>,  <13.859105, 14.656682, 19.496424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.861115, 14.452797, 19.369827>,  <13.864464, 14.112988, 19.158833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.861115, 14.452797, 19.369827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435543, 0.471741, -0.766657,
		-0.900129, -0.236162, 0.366054,
		-0.008372, 0.849522, 0.527487,
		13.858603, 14.707654, 19.528072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.181528, 14.196158, 19.243193>,  <13.864464, 14.112988, 19.158833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.181528, 14.196158, 19.243193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.417021, 14.519490, 19.242722>,  <13.558316, 14.713490, 19.242439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.417021, 14.519490, 19.242722>,  <13.181528, 14.196158, 19.243193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.417021, 14.519490, 19.242722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437736, 0.317592, -0.841144,
		-0.679546, 0.495722, 0.540811,
		0.588731, 0.808329, -0.001177,
		13.593640, 14.761989, 19.242369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.691851, 14.750431, 19.269838>,  <13.181528, 14.196158, 19.243193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.691851, 14.750431, 19.269838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.034613, 14.886168, 19.114628>,  <13.240270, 14.967609, 19.021502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.034613, 14.886168, 19.114628>,  <12.691851, 14.750431, 19.269838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.034613, 14.886168, 19.114628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492790, 0.318423, -0.809793,
		-0.151239, 0.885130, 0.440081,
		0.856904, 0.339340, -0.388025,
		13.291684, 14.987969, 18.998220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.506333, 15.463541, 19.020750>,  <12.691851, 14.750431, 19.269838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.506333, 15.463541, 19.020750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.850464, 15.353905, 18.848837>,  <13.056942, 15.288123, 18.745689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.850464, 15.353905, 18.848837>,  <12.506333, 15.463541, 19.020750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.850464, 15.353905, 18.848837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340339, 0.318822, -0.884603,
		0.379486, 0.907319, 0.181007,
		0.860326, -0.274091, -0.429784,
		13.108562, 15.271678, 18.719902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.691072, 16.078579, 18.635210>,  <12.506333, 15.463541, 19.020750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.691072, 16.078579, 18.635210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.862619, 15.747231, 18.491058>,  <12.965549, 15.548422, 18.404568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.862619, 15.747231, 18.491058>,  <12.691072, 16.078579, 18.635210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.862619, 15.747231, 18.491058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554635, 0.073437, -0.828847,
		0.713057, 0.555347, -0.427949,
		0.428870, -0.828370, -0.360380,
		12.991281, 15.498719, 18.382944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.845029, 16.169855, 17.935413>,  <12.691072, 16.078579, 18.635210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.845029, 16.169855, 17.935413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.832884, 15.770663, 17.957737>,  <12.825597, 15.531148, 17.971130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.832884, 15.770663, 17.957737>,  <12.845029, 16.169855, 17.935413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.832884, 15.770663, 17.957737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506158, -0.032794, -0.861817,
		0.861906, -0.054416, -0.504140,
		-0.030364, -0.997980, 0.055808,
		12.823774, 15.471270, 17.974480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.779624, 16.117889, 17.219303>,  <12.845029, 16.169855, 17.935413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.779624, 16.117889, 17.219303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.718495, 15.743324, 17.345654>,  <12.681818, 15.518585, 17.421463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.718495, 15.743324, 17.345654>,  <12.779624, 16.117889, 17.219303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.718495, 15.743324, 17.345654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350185, -0.247578, -0.903369,
		0.924130, -0.248668, -0.290083,
		-0.152821, -0.936413, 0.315874,
		12.672649, 15.462400, 17.440416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.148762, 15.690244, 16.704414>,  <12.779624, 16.117889, 17.219303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.148762, 15.690244, 16.704414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.879264, 15.468617, 16.899998>,  <12.717565, 15.335642, 17.017347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.879264, 15.468617, 16.899998>,  <13.148762, 15.690244, 16.704414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.879264, 15.468617, 16.899998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313261, -0.385132, -0.868067,
		0.669279, -0.738027, 0.085913,
		-0.673745, -0.554066, 0.488956,
		12.677140, 15.302398, 17.046684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.311706, 15.006626, 16.432074>,  <13.148762, 15.690244, 16.704414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.311706, 15.006626, 16.432074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.953977, 15.052830, 16.604977>,  <12.739340, 15.080552, 16.708719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.953977, 15.052830, 16.604977>,  <13.311706, 15.006626, 16.432074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.953977, 15.052830, 16.604977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425635, -0.517450, -0.742348,
		0.137924, -0.847882, 0.511932,
		-0.894322, 0.115509, 0.432257,
		12.685680, 15.087482, 16.734653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.183039, 14.264175, 16.734438>,  <13.311706, 15.006626, 16.432074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.183039, 14.264175, 16.734438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.272491, 13.941136, 16.516163>,  <13.326163, 13.747313, 16.385199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.272491, 13.941136, 16.516163>,  <13.183039, 14.264175, 16.734438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.272491, 13.941136, 16.516163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864741, 0.422700, -0.271198,
		0.449680, -0.411229, 0.792892,
		0.223631, -0.807598, -0.545687,
		13.339581, 13.698857, 16.352457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.772082, 13.868547, 16.993755>,  <13.183039, 14.264175, 16.734438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.772082, 13.868547, 16.993755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.738392, 13.761966, 16.609692>,  <13.718178, 13.698017, 16.379253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.738392, 13.761966, 16.609692>,  <13.772082, 13.868547, 16.993755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.738392, 13.761966, 16.609692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876425, 0.438669, -0.198616,
		0.474115, -0.858238, 0.196580,
		-0.084226, -0.266454, -0.960161,
		13.713124, 13.682030, 16.321644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.000934, 13.566889, 17.570581>,  <13.772082, 13.868547, 16.993755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.000934, 13.566889, 17.570581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.893057, 13.235044, 17.375029>,  <13.828331, 13.035936, 17.257696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.893057, 13.235044, 17.375029>,  <14.000934, 13.566889, 17.570581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.893057, 13.235044, 17.375029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775106, 0.114224, -0.621421,
		0.571382, -0.546529, 0.612233,
		-0.269693, -0.829614, -0.488883,
		13.812149, 12.986159, 17.228363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.659706, 13.117591, 17.479967>,  <14.000934, 13.566889, 17.570581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.659706, 13.117591, 17.479967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.364861, 13.059484, 17.215979>,  <14.187955, 13.024621, 17.057585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.364861, 13.059484, 17.215979>,  <14.659706, 13.117591, 17.479967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.364861, 13.059484, 17.215979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673418, -0.076493, -0.735294,
		0.056330, -0.986431, 0.154210,
		-0.737112, -0.145267, -0.659972,
		14.143727, 13.015905, 17.017986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.036221, 13.097230, 18.183950>,  <14.659706, 13.117591, 17.479967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.036221, 13.097230, 18.183950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.432464, 13.131859, 18.226284>,  <15.670210, 13.152637, 18.251684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.432464, 13.131859, 18.226284>,  <15.036221, 13.097230, 18.183950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.432464, 13.131859, 18.226284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015198, -0.699515, 0.714456,
		0.135885, -0.709354, -0.691630,
		0.990608, 0.086573, 0.105834,
		15.729646, 13.157830, 18.258034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.195414, 12.409062, 18.362833>,  <15.036221, 13.097230, 18.183950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.195414, 12.409062, 18.362833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.518418, 12.611607, 18.483845>,  <15.712221, 12.733133, 18.556452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.518418, 12.611607, 18.483845>,  <15.195414, 12.409062, 18.362833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.518418, 12.611607, 18.483845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054276, -0.574502, 0.816701,
		0.587351, -0.643075, -0.491400,
		0.807511, 0.506362, 0.302531,
		15.760672, 12.763515, 18.574604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.613575, 11.919416, 18.648771>,  <15.195414, 12.409062, 18.362833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.613575, 11.919416, 18.648771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.763511, 12.266250, 18.780018>,  <15.853472, 12.474350, 18.858767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.763511, 12.266250, 18.780018>,  <15.613575, 11.919416, 18.648771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.763511, 12.266250, 18.780018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305697, -0.449727, 0.839222,
		0.875240, -0.214268, -0.433640,
		0.374839, 0.867084, 0.328118,
		15.875962, 12.526375, 18.878454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.270222, 11.745522, 18.937958>,  <15.613575, 11.919416, 18.648771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.270222, 11.745522, 18.937958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.166313, 12.095243, 19.101965>,  <16.103968, 12.305076, 19.200369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.166313, 12.095243, 19.101965>,  <16.270222, 11.745522, 18.937958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.166313, 12.095243, 19.101965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089744, -0.400900, 0.911716,
		0.961491, 0.273635, 0.025679,
		-0.259772, 0.874302, 0.410018,
		16.088381, 12.357534, 19.224970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.753170, 11.787615, 19.460228>,  <16.270222, 11.745522, 18.937958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.753170, 11.787615, 19.460228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.441853, 12.020963, 19.553129>,  <16.255062, 12.160972, 19.608870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.441853, 12.020963, 19.553129>,  <16.753170, 11.787615, 19.460228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.441853, 12.020963, 19.553129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176340, -0.558076, 0.810836,
		0.602632, 0.590111, 0.537218,
		-0.778292, 0.583369, 0.232254,
		16.208364, 12.195973, 19.622805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.942484, 12.142189, 20.131763>,  <16.753170, 11.787615, 19.460228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.942484, 12.142189, 20.131763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.545349, 12.157681, 20.086550>,  <16.307068, 12.166976, 20.059422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.545349, 12.157681, 20.086550>,  <16.942484, 12.142189, 20.131763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.545349, 12.157681, 20.086550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119423, -0.290842, 0.949289,
		0.003890, 0.955987, 0.293383,
		-0.992836, 0.038730, -0.113036,
		16.247498, 12.169299, 20.052639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.715218, 12.394246, 20.713560>,  <16.942484, 12.142189, 20.131763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.715218, 12.394246, 20.713560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.393982, 12.202219, 20.572376>,  <16.201241, 12.087003, 20.487665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.393982, 12.202219, 20.572376>,  <16.715218, 12.394246, 20.713560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.393982, 12.202219, 20.572376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110873, -0.461617, 0.880123,
		-0.585452, 0.745952, 0.317493,
		-0.803090, -0.480069, -0.352960,
		16.153055, 12.058198, 20.466488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.156866, 12.480891, 21.222868>,  <16.715218, 12.394246, 20.713560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.156866, 12.480891, 21.222868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.029261, 12.179015, 20.993547>,  <15.952697, 11.997890, 20.855955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.029261, 12.179015, 20.993547>,  <16.156866, 12.480891, 21.222868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.029261, 12.179015, 20.993547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254359, -0.514537, 0.818873,
		-0.912979, 0.407057, -0.027817,
		-0.319015, -0.754690, -0.573300,
		15.933556, 11.952608, 20.821558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.493547, 12.246371, 21.516455>,  <16.156866, 12.480891, 21.222868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.493547, 12.246371, 21.516455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.607539, 11.940362, 21.285448>,  <15.675934, 11.756757, 21.146843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.607539, 11.940362, 21.285448>,  <15.493547, 12.246371, 21.516455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.607539, 11.940362, 21.285448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172298, -0.633573, 0.754254,
		-0.942921, -0.115441, -0.312367,
		0.284979, -0.765022, -0.577519,
		15.693033, 11.710855, 21.112192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.110306, 11.697454, 21.708319>,  <15.493547, 12.246371, 21.516455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.110306, 11.697454, 21.708319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.415959, 11.498364, 21.544188>,  <15.599352, 11.378910, 21.445709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.415959, 11.498364, 21.544188>,  <15.110306, 11.697454, 21.708319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.415959, 11.498364, 21.544188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085218, -0.708429, 0.700619,
		-0.639403, -0.500400, -0.583750,
		0.764134, -0.497724, -0.410328,
		15.645200, 11.349047, 21.421089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.948856, 10.948888, 21.705826>,  <15.110306, 11.697454, 21.708319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.948856, 10.948888, 21.705826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347980, 10.945784, 21.679550>,  <15.587455, 10.943921, 21.663786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.347980, 10.945784, 21.679550>,  <14.948856, 10.948888, 21.705826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.347980, 10.945784, 21.679550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039856, -0.722012, 0.690732,
		-0.052788, -0.691837, -0.720122,
		0.997810, -0.007761, -0.065687,
		15.647324, 10.943456, 21.659843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.175379, 10.258110, 21.531670>,  <14.948856, 10.948888, 21.705826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.175379, 10.258110, 21.531670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.478565, 10.462438, 21.693930>,  <15.660477, 10.585034, 21.791286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.478565, 10.462438, 21.693930>,  <15.175379, 10.258110, 21.531670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.478565, 10.462438, 21.693930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006805, -0.615655, 0.787987,
		0.652260, -0.600027, -0.463169,
		0.757965, 0.510820, 0.405650,
		15.705955, 10.615684, 21.815624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.671803, 9.693446, 21.724224>,  <15.175379, 10.258110, 21.531670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.671803, 9.693446, 21.724224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.779311, 10.007305, 21.947685>,  <15.843817, 10.195621, 22.081762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.779311, 10.007305, 21.947685>,  <15.671803, 9.693446, 21.724224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.779311, 10.007305, 21.947685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212174, -0.613976, 0.760273,
		0.939544, -0.085809, -0.331501,
		0.268772, 0.784646, 0.558651,
		15.859942, 10.242699, 22.115280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.259832, 9.476641, 22.024446>,  <15.671803, 9.693446, 21.724224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.259832, 9.476641, 22.024446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.156414, 9.790190, 22.250259>,  <16.094364, 9.978319, 22.385748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.156414, 9.790190, 22.250259>,  <16.259832, 9.476641, 22.024446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.156414, 9.790190, 22.250259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279505, -0.498702, 0.820472,
		0.924679, 0.369918, -0.090160,
		-0.258544, 0.783873, 0.564533,
		16.078852, 10.025352, 22.419619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.878447, 9.637120, 22.448448>,  <16.259832, 9.476641, 22.024446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.878447, 9.637120, 22.448448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.556789, 9.787895, 22.632305>,  <16.363794, 9.878360, 22.742620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.556789, 9.787895, 22.632305>,  <16.878447, 9.637120, 22.448448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.556789, 9.787895, 22.632305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326301, -0.366429, 0.871354,
		0.496873, 0.850675, 0.171667,
		-0.804143, 0.376937, 0.459644,
		16.315546, 9.900976, 22.770199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.081348, 9.759982, 23.122532>,  <16.878447, 9.637120, 22.448448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.081348, 9.759982, 23.122532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.685219, 9.788469, 23.170168>,  <16.447540, 9.805561, 23.198750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.685219, 9.788469, 23.170168>,  <17.081348, 9.759982, 23.122532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.685219, 9.788469, 23.170168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081015, -0.399999, 0.912928,
		0.112651, 0.913744, 0.390360,
		-0.990326, 0.071217, 0.119088,
		16.388121, 9.809834, 23.205894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.992842, 10.221236, 23.652002>,  <17.081348, 9.759982, 23.122532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.992842, 10.221236, 23.652002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.692442, 9.960981, 23.606968>,  <16.512203, 9.804829, 23.579948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.692442, 9.960981, 23.606968>,  <16.992842, 10.221236, 23.652002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.692442, 9.960981, 23.606968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231773, -0.419403, 0.877714,
		-0.618291, 0.633067, 0.465770,
		-0.750998, -0.650636, -0.112585,
		16.467142, 9.765791, 23.573193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.718796, 10.252746, 24.272747>,  <16.992842, 10.221236, 23.652002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.718796, 10.252746, 24.272747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.551329, 9.916795, 24.134573>,  <16.450850, 9.715224, 24.051668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.551329, 9.916795, 24.134573>,  <16.718796, 10.252746, 24.272747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.551329, 9.916795, 24.134573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006357, -0.383078, 0.923694,
		-0.908118, 0.384523, 0.165721,
		-0.418666, -0.839877, -0.345436,
		16.425730, 9.664832, 24.030943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.154535, 10.005105, 24.706842>,  <16.718796, 10.252746, 24.272747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.154535, 10.005105, 24.706842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.243301, 9.673465, 24.501574>,  <16.296560, 9.474481, 24.378412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.243301, 9.673465, 24.501574>,  <16.154535, 10.005105, 24.706842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.243301, 9.673465, 24.501574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083708, -0.508152, 0.857190,
		-0.971466, -0.233180, -0.043365,
		0.221915, -0.829101, -0.513172,
		16.309875, 9.424734, 24.347622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.759631, 9.522161, 25.102596>,  <16.154535, 10.005105, 24.706842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.759631, 9.522161, 25.102596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.034384, 9.320456, 24.893250>,  <16.199236, 9.199432, 24.767641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.034384, 9.320456, 24.893250>,  <15.759631, 9.522161, 25.102596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.034384, 9.320456, 24.893250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230049, -0.532239, 0.814739,
		-0.689398, -0.680029, -0.249580,
		0.686882, -0.504264, -0.523365,
		16.240448, 9.169176, 24.736240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.612105, 8.783628, 25.158499>,  <15.759631, 9.522161, 25.102596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.612105, 8.783628, 25.158499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.001343, 8.813183, 25.071201>,  <16.234884, 8.830915, 25.018824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.001343, 8.813183, 25.071201>,  <15.612105, 8.783628, 25.158499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.001343, 8.813183, 25.071201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221255, -0.564008, 0.795576,
		-0.064308, -0.822458, -0.565180,
		0.973093, 0.073887, -0.218243,
		16.293270, 8.835349, 25.005728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980070, 8.069825, 25.152065>,  <15.612105, 8.783628, 25.158499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.980070, 8.069825, 25.152065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.243471, 8.361368, 25.227051>,  <16.401512, 8.536294, 25.272043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.243471, 8.361368, 25.227051>,  <15.980070, 8.069825, 25.152065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.243471, 8.361368, 25.227051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357805, -0.522351, 0.774032,
		0.662081, -0.442625, -0.604757,
		0.658501, 0.728857, 0.187466,
		16.441021, 8.580026, 25.283291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.339447, 7.548771, 25.527691>,  <15.980070, 8.069825, 25.152065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.339447, 7.548771, 25.527691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.519184, 7.901368, 25.585745>,  <16.627026, 8.112926, 25.620577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.519184, 7.901368, 25.585745>,  <16.339447, 7.548771, 25.527691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.519184, 7.901368, 25.585745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614564, -0.422916, 0.665923,
		0.648384, -0.210033, -0.731767,
		0.449342, 0.881492, 0.145133,
		16.653986, 8.165815, 25.629284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.016033, 7.349839, 25.845339>,  <16.339447, 7.548771, 25.527691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.016033, 7.349839, 25.845339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.988997, 7.744073, 25.907373>,  <16.972775, 7.980613, 25.944595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.988997, 7.744073, 25.907373>,  <17.016033, 7.349839, 25.845339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.988997, 7.744073, 25.907373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223026, -0.136584, 0.965196,
		0.972466, 0.099830, -0.210579,
		-0.067594, 0.985586, 0.155088,
		16.968718, 8.039748, 25.953899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.533066, 7.535368, 26.259462>,  <17.016033, 7.349839, 25.845339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.533066, 7.535368, 26.259462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.288954, 7.844394, 26.329550>,  <17.142487, 8.029809, 26.371603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.288954, 7.844394, 26.329550>,  <17.533066, 7.535368, 26.259462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.288954, 7.844394, 26.329550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175906, -0.083503, 0.980859,
		0.772408, 0.629422, -0.084939,
		-0.610281, 0.772564, 0.175218,
		17.105869, 8.076163, 26.382114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
