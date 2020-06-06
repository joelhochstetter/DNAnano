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
	<4.319108, 14.782910, 14.763128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.393680, 14.649265, 15.132693>,  <4.438423, 14.569078, 15.354432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.393680, 14.649265, 15.132693>,  <4.319108, 14.782910, 14.763128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.393680, 14.649265, 15.132693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067823, 0.933778, 0.351366,
		-0.980124, -0.128168, 0.151424,
		0.186430, -0.334112, 0.923912,
		4.449609, 14.549031, 15.409867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.127297, 15.297212, 15.064642>,  <4.319108, 14.782910, 14.763128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.127297, 15.297212, 15.064642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.271315, 15.077875, 15.366553>,  <4.357725, 14.946273, 15.547700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.271315, 15.077875, 15.366553>,  <4.127297, 15.297212, 15.064642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.271315, 15.077875, 15.366553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056636, 0.820390, 0.568992,
		-0.931215, -0.162114, 0.326432,
		0.360043, -0.548342, 0.754778,
		4.379328, 14.913373, 15.592987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.769974, 15.521579, 15.538997>,  <4.127297, 15.297212, 15.064642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.769974, 15.521579, 15.538997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.117232, 15.366241, 15.662617>,  <4.325587, 15.273037, 15.736789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.117232, 15.366241, 15.662617>,  <3.769974, 15.521579, 15.538997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.117232, 15.366241, 15.662617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139670, 0.788692, 0.598714,
		-0.476253, -0.476606, 0.738939,
		0.868145, -0.388346, 0.309049,
		4.377676, 15.249737, 15.755331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.099123, 16.069101, 15.974507>,  <3.769974, 15.521579, 15.538997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.099123, 16.069101, 15.974507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.379864, 15.796555, 16.057589>,  <4.548309, 15.633026, 16.107437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.379864, 15.796555, 16.057589>,  <4.099123, 16.069101, 15.974507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.379864, 15.796555, 16.057589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451715, 0.651194, 0.609836,
		-0.550777, -0.334193, 0.764826,
		0.701853, -0.681368, 0.207703,
		4.590420, 15.592144, 16.119900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.037013, 16.104349, 16.675045>,  <4.099123, 16.069101, 15.974507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.037013, 16.104349, 16.675045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.389667, 15.979597, 16.533371>,  <4.601260, 15.904745, 16.448366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.389667, 15.979597, 16.533371>,  <4.037013, 16.104349, 16.675045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.389667, 15.979597, 16.533371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471819, 0.566211, 0.675864,
		-0.010246, -0.762978, 0.646343,
		0.881636, -0.311882, -0.354186,
		4.654158, 15.886032, 16.427114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.508127, 16.089712, 17.259600>,  <4.037013, 16.104349, 16.675045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.508127, 16.089712, 17.259600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.758560, 16.116867, 16.948881>,  <4.908820, 16.133160, 16.762449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.758560, 16.116867, 16.948881>,  <4.508127, 16.089712, 17.259600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.758560, 16.116867, 16.948881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528215, 0.695887, 0.486549,
		0.573593, -0.714935, 0.399823,
		0.626083, 0.067889, -0.776796,
		4.946385, 16.137234, 16.715843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.110311, 16.194324, 17.492365>,  <4.508127, 16.089712, 17.259600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.110311, 16.194324, 17.492365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.201321, 16.324442, 17.125233>,  <5.255927, 16.402514, 16.904953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.201321, 16.324442, 17.125233>,  <5.110311, 16.194324, 17.492365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.201321, 16.324442, 17.125233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515350, 0.759511, 0.396935,
		0.826225, -0.563317, 0.005167,
		0.227525, 0.325295, -0.917832,
		5.269578, 16.422029, 16.849884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.815339, 16.336123, 17.525105>,  <5.110311, 16.194324, 17.492365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.815339, 16.336123, 17.525105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.683434, 16.533201, 17.202986>,  <5.604290, 16.651449, 17.009714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.683434, 16.533201, 17.202986>,  <5.815339, 16.336123, 17.525105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.683434, 16.533201, 17.202986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557743, 0.789907, 0.254890,
		0.761694, -0.365095, -0.535283,
		-0.329764, 0.492698, -0.805297,
		5.584504, 16.681011, 16.961397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.397731, 16.680300, 17.214584>,  <5.815339, 16.336123, 17.525105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.397731, 16.680300, 17.214584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.065484, 16.879471, 17.114870>,  <5.866135, 16.998974, 17.055042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.065484, 16.879471, 17.114870>,  <6.397731, 16.680300, 17.214584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.065484, 16.879471, 17.114870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470287, 0.866998, 0.164757,
		0.298166, 0.019614, -0.954312,
		-0.830618, 0.497926, -0.249285,
		5.816298, 17.028849, 17.040085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.632561, 17.222013, 16.830175>,  <6.397731, 16.680300, 17.214584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.632561, 17.222013, 16.830175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.260054, 17.330326, 16.927679>,  <6.036550, 17.395313, 16.986181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.260054, 17.330326, 16.927679>,  <6.632561, 17.222013, 16.830175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.260054, 17.330326, 16.927679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304640, 0.945702, 0.113320,
		-0.199837, 0.179789, -0.963193,
		-0.931268, 0.270782, 0.243757,
		5.980673, 17.411560, 17.000807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.650652, 17.911592, 16.611507>,  <6.632561, 17.222013, 16.830175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.650652, 17.911592, 16.611507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.341481, 17.895052, 16.864765>,  <6.155979, 17.885128, 17.016720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.341481, 17.895052, 16.864765>,  <6.650652, 17.911592, 16.611507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.341481, 17.895052, 16.864765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267898, 0.883295, 0.384734,
		-0.575164, 0.466990, -0.671645,
		-0.772928, -0.041353, 0.633145,
		6.109603, 17.882647, 17.054708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.472548, 18.563488, 16.649706>,  <6.650652, 17.911592, 16.611507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.472548, 18.563488, 16.649706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.279959, 18.400032, 16.959854>,  <6.164406, 18.301958, 17.145943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.279959, 18.400032, 16.959854>,  <6.472548, 18.563488, 16.649706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.279959, 18.400032, 16.959854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151283, 0.832634, 0.532760,
		-0.863306, 0.373809, -0.339070,
		-0.481472, -0.408640, 0.775370,
		6.135518, 18.277441, 17.192465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.005147, 19.018396, 16.850132>,  <6.472548, 18.563488, 16.649706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.005147, 19.018396, 16.850132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.051349, 18.793400, 17.177610>,  <6.079070, 18.658401, 17.374098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.051349, 18.793400, 17.177610>,  <6.005147, 19.018396, 16.850132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.051349, 18.793400, 17.177610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377115, 0.787333, 0.487741,
		-0.918936, 0.252405, 0.303066,
		0.115505, -0.562493, 0.818694,
		6.086000, 18.624651, 17.423218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.768888, 19.399504, 17.379051>,  <6.005147, 19.018396, 16.850132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.768888, 19.399504, 17.379051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.016835, 19.132771, 17.544510>,  <6.165603, 18.972731, 17.643785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.016835, 19.132771, 17.544510>,  <5.768888, 19.399504, 17.379051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.016835, 19.132771, 17.544510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449419, 0.733799, 0.509473,
		-0.643264, -0.129905, 0.754544,
		0.619867, -0.666831, 0.413644,
		6.202795, 18.932722, 17.668604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.869333, 19.648453, 18.123438>,  <5.768888, 19.399504, 17.379051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.869333, 19.648453, 18.123438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.180838, 19.411070, 18.042109>,  <6.367740, 19.268641, 17.993311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.180838, 19.411070, 18.042109>,  <5.869333, 19.648453, 18.123438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.180838, 19.411070, 18.042109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554580, 0.499803, 0.665310,
		-0.293211, -0.630877, 0.718347,
		0.778761, -0.593457, -0.203324,
		6.414466, 19.233032, 17.981112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.201571, 19.543486, 18.748489>,  <5.869333, 19.648453, 18.123438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.201571, 19.543486, 18.748489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.481963, 19.443302, 18.481388>,  <6.650199, 19.383192, 18.321127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.481963, 19.443302, 18.481388>,  <6.201571, 19.543486, 18.748489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.481963, 19.443302, 18.481388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697683, 0.434947, 0.569262,
		0.147859, -0.864922, 0.479633,
		0.700982, -0.250461, -0.667752,
		6.692258, 19.368164, 18.281063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.714233, 19.257166, 19.201777>,  <6.201571, 19.543486, 18.748489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.714233, 19.257166, 19.201777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.873887, 19.357658, 18.849056>,  <6.969679, 19.417953, 18.637424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.873887, 19.357658, 18.849056>,  <6.714233, 19.257166, 19.201777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.873887, 19.357658, 18.849056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802981, 0.368486, 0.468444,
		0.442620, -0.895042, -0.054660,
		0.399135, 0.251234, -0.881801,
		6.993628, 19.433029, 18.584517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.351726, 18.982147, 19.134903>,  <6.714233, 19.257166, 19.201777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.351726, 18.982147, 19.134903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.385035, 19.266304, 18.855358>,  <7.405021, 19.436798, 18.687632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.385035, 19.266304, 18.855358>,  <7.351726, 18.982147, 19.134903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.385035, 19.266304, 18.855358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821229, 0.348334, 0.451936,
		0.564489, -0.611560, -0.554388,
		0.083273, 0.710393, -0.698862,
		7.410017, 19.479422, 18.645700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.064838, 19.017963, 19.110277>,  <7.351726, 18.982147, 19.134903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.064838, 19.017963, 19.110277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.917032, 19.354666, 18.952847>,  <7.828348, 19.556686, 18.858387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.917032, 19.354666, 18.952847>,  <8.064838, 19.017963, 19.110277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.917032, 19.354666, 18.952847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740431, 0.522641, 0.422621,
		0.561443, -0.135252, -0.816387,
		-0.369517, 0.841756, -0.393578,
		7.806177, 19.607193, 18.834774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.681027, 19.429548, 19.158081>,  <8.064838, 19.017963, 19.110277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.681027, 19.429548, 19.158081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.382060, 19.683151, 19.078684>,  <8.202680, 19.835314, 19.031046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.382060, 19.683151, 19.078684>,  <8.681027, 19.429548, 19.158081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.382060, 19.683151, 19.078684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528369, 0.748398, 0.400908,
		0.402729, 0.194770, -0.894357,
		-0.747419, 0.634008, -0.198492,
		8.157834, 19.873354, 19.019136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.028544, 20.009789, 18.912281>,  <8.681027, 19.429548, 19.158081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.028544, 20.009789, 18.912281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.666335, 20.134535, 19.027357>,  <8.449009, 20.209383, 19.096403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.666335, 20.134535, 19.027357>,  <9.028544, 20.009789, 18.912281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.666335, 20.134535, 19.027357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413826, 0.798853, 0.436558,
		-0.093673, 0.514367, -0.852439,
		-0.905524, 0.311867, 0.287689,
		8.394678, 20.228094, 19.113665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.045974, 20.726067, 18.761499>,  <9.028544, 20.009789, 18.912281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.045974, 20.726067, 18.761499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.787958, 20.653238, 19.058355>,  <8.633148, 20.609541, 19.236469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.787958, 20.653238, 19.058355>,  <9.045974, 20.726067, 18.761499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.787958, 20.653238, 19.058355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442697, 0.702577, 0.557139,
		-0.622851, 0.687921, -0.372588,
		-0.645040, -0.182071, 0.742141,
		8.594446, 20.598618, 19.280998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.782155, 21.356888, 19.032341>,  <9.045974, 20.726067, 18.761499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.782155, 21.356888, 19.032341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.746792, 21.090919, 19.329006>,  <8.725574, 20.931337, 19.507006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.746792, 21.090919, 19.329006>,  <8.782155, 21.356888, 19.032341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.746792, 21.090919, 19.329006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237083, 0.709133, 0.664020,
		-0.967458, 0.234541, 0.094948,
		-0.088409, -0.664922, 0.741662,
		8.720269, 20.891443, 19.551504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.533935, 21.792078, 19.592867>,  <8.782155, 21.356888, 19.032341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.533935, 21.792078, 19.592867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.660700, 21.456461, 19.769762>,  <8.736759, 21.255091, 19.875900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.660700, 21.456461, 19.769762>,  <8.533935, 21.792078, 19.592867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.660700, 21.456461, 19.769762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501046, 0.544005, 0.673061,
		-0.805307, 0.008281, 0.592800,
		0.316913, -0.839041, 0.442240,
		8.755774, 21.204748, 19.902433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.403241, 21.851271, 20.298912>,  <8.533935, 21.792078, 19.592867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.403241, 21.851271, 20.298912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.689940, 21.572783, 20.314648>,  <8.861960, 21.405689, 20.324089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.689940, 21.572783, 20.314648>,  <8.403241, 21.851271, 20.298912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.689940, 21.572783, 20.314648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395632, 0.452455, 0.799224,
		-0.574235, -0.557280, 0.599744,
		0.716749, -0.696221, 0.039338,
		8.904965, 21.363916, 20.326448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.373703, 21.840763, 21.006634>,  <8.403241, 21.851271, 20.298912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.373703, 21.840763, 21.006634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.691735, 21.637636, 20.873989>,  <8.882555, 21.515760, 20.794401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.691735, 21.637636, 20.873989>,  <8.373703, 21.840763, 21.006634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.691735, 21.637636, 20.873989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535536, 0.331168, 0.776872,
		-0.284689, -0.795267, 0.535260,
		0.795081, -0.507818, -0.331613,
		8.930260, 21.485291, 20.774506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.713239, 21.517029, 21.625824>,  <8.373703, 21.840763, 21.006634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.713239, 21.517029, 21.625824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.968496, 21.546692, 21.319288>,  <9.121651, 21.564489, 21.135368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.968496, 21.546692, 21.319288>,  <8.713239, 21.517029, 21.625824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.968496, 21.546692, 21.319288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646329, 0.489265, 0.585558,
		0.418365, -0.868977, 0.264292,
		0.638145, 0.074157, -0.766336,
		9.159940, 21.568939, 21.089388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.892480, 20.757236, 21.626734>,  <8.713239, 21.517029, 21.625824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.892480, 20.757236, 21.626734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.230409, 20.968639, 21.660103>,  <9.433166, 21.095480, 21.680124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.230409, 20.968639, 21.660103>,  <8.892480, 20.757236, 21.626734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.230409, 20.968639, 21.660103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487040, 0.695065, 0.528845,
		0.221514, -0.487409, 0.844609,
		0.844822, 0.528505, 0.083422,
		9.483855, 21.127192, 21.685129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.176806, 20.939177, 22.441374>,  <8.892480, 20.757236, 21.626734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.176806, 20.939177, 22.441374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.262743, 21.202036, 22.152376>,  <9.314305, 21.359751, 21.978977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.262743, 21.202036, 22.152376>,  <9.176806, 20.939177, 22.441374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.262743, 21.202036, 22.152376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484208, 0.714120, 0.505544,
		0.848166, 0.241227, 0.471619,
		0.214842, 0.657147, -0.722496,
		9.327196, 21.399179, 21.935627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.608659, 20.706678, 23.041759>,  <9.176806, 20.939177, 22.441374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.608659, 20.706678, 23.041759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.698334, 20.595598, 23.415417>,  <9.752139, 20.528950, 23.639610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.698334, 20.595598, 23.415417>,  <9.608659, 20.706678, 23.041759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.698334, 20.595598, 23.415417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792927, 0.505291, 0.340510,
		-0.566574, -0.817045, -0.106917,
		0.224188, -0.277701, 0.934142,
		9.765590, 20.512287, 23.695660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.003114, 20.331709, 23.273247>,  <9.608659, 20.706678, 23.041759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.003114, 20.331709, 23.273247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.222490, 20.498526, 23.563154>,  <9.354116, 20.598616, 23.737099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.222490, 20.498526, 23.563154>,  <9.003114, 20.331709, 23.273247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.222490, 20.498526, 23.563154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836113, 0.261819, 0.482043,
		0.011272, -0.870362, 0.492284,
		0.548441, 0.417039, 0.724770,
		9.387023, 20.623638, 23.780584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.451646, 19.685911, 23.198185>,  <9.003114, 20.331709, 23.273247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.451646, 19.685911, 23.198185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.727744, 19.414747, 23.299376>,  <9.893403, 19.252048, 23.360090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.727744, 19.414747, 23.299376>,  <9.451646, 19.685911, 23.198185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.727744, 19.414747, 23.299376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316766, 0.597444, 0.736696,
		-0.650554, -0.428366, 0.627122,
		0.690246, -0.677911, 0.252978,
		9.934817, 19.211374, 23.375269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.199840, 19.433338, 23.746391>,  <9.451646, 19.685911, 23.198185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.199840, 19.433338, 23.746391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.599608, 19.428196, 23.758991>,  <9.839470, 19.425110, 23.766552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.599608, 19.428196, 23.758991>,  <9.199840, 19.433338, 23.746391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.599608, 19.428196, 23.758991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021575, 0.476463, 0.878930,
		-0.026310, -0.879100, 0.475910,
		0.999421, -0.012857, 0.031502,
		9.899435, 19.424339, 23.768442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.404835, 18.708094, 23.452154>,  <9.199840, 19.433338, 23.746391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.404835, 18.708094, 23.452154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.345875, 18.435871, 23.739241>,  <9.310499, 18.272537, 23.911493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.345875, 18.435871, 23.739241>,  <9.404835, 18.708094, 23.452154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.345875, 18.435871, 23.739241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324243, -0.652295, -0.685111,
		0.934420, -0.333700, -0.124516,
		-0.147400, -0.680555, 0.717717,
		9.301655, 18.231705, 23.954556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.720208, 18.101212, 23.449100>,  <9.404835, 18.708094, 23.452154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.720208, 18.101212, 23.449100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.357053, 18.045708, 23.607332>,  <9.139159, 18.012405, 23.702272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.357053, 18.045708, 23.607332>,  <9.720208, 18.101212, 23.449100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.357053, 18.045708, 23.607332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295086, -0.458719, -0.838153,
		0.297764, -0.877680, 0.375519,
		-0.907888, -0.138761, 0.395581,
		9.084686, 18.004080, 23.726007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.607868, 17.376808, 23.441498>,  <9.720208, 18.101212, 23.449100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.607868, 17.376808, 23.441498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.268691, 17.588381, 23.427513>,  <9.065185, 17.715324, 23.419123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.268691, 17.588381, 23.427513>,  <9.607868, 17.376808, 23.441498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.268691, 17.588381, 23.427513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218005, -0.408088, -0.886532,
		-0.483187, -0.744104, 0.461345,
		-0.847941, 0.528936, -0.034964,
		9.014308, 17.747061, 23.417025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.062232, 16.961315, 23.167463>,  <9.607868, 17.376808, 23.441498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.062232, 16.961315, 23.167463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.938090, 17.337595, 23.112669>,  <8.863605, 17.563362, 23.079792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.938090, 17.337595, 23.112669>,  <9.062232, 16.961315, 23.167463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.938090, 17.337595, 23.112669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302917, -0.234451, -0.923729,
		-0.901067, -0.245187, 0.357717,
		-0.310354, 0.940700, -0.136984,
		8.844984, 17.619804, 23.071573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.395151, 16.992920, 22.964991>,  <9.062232, 16.961315, 23.167463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.395151, 16.992920, 22.964991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.531930, 17.347065, 22.839005>,  <8.613997, 17.559553, 22.763412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.531930, 17.347065, 22.839005>,  <8.395151, 16.992920, 22.964991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.531930, 17.347065, 22.839005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393717, -0.169353, -0.903497,
		-0.853263, 0.432956, 0.290673,
		0.341948, 0.885364, -0.314965,
		8.634514, 17.612675, 22.744514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.817318, 17.337236, 22.775558>,  <8.395151, 16.992920, 22.964991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.817318, 17.337236, 22.775558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.138419, 17.471258, 22.578247>,  <8.331080, 17.551672, 22.459860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.138419, 17.471258, 22.578247>,  <7.817318, 17.337236, 22.775558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.138419, 17.471258, 22.578247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389593, -0.331569, -0.859232,
		-0.451446, 0.881930, -0.135632,
		0.802754, 0.335056, -0.493279,
		8.379245, 17.571775, 22.430264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.556568, 17.283636, 22.054155>,  <7.817318, 17.337236, 22.775558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.556568, 17.283636, 22.054155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.937520, 17.380350, 21.979845>,  <8.166091, 17.438379, 21.935259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.937520, 17.380350, 21.979845>,  <7.556568, 17.283636, 22.054155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.937520, 17.380350, 21.979845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042526, -0.497993, -0.866138,
		-0.301936, 0.832792, -0.463996,
		0.952379, 0.241786, -0.185777,
		8.223233, 17.452887, 21.924112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.617962, 17.722963, 21.429754>,  <7.556568, 17.283636, 22.054155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.617962, 17.722963, 21.429754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.948667, 17.507858, 21.495813>,  <8.147090, 17.378796, 21.535450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.948667, 17.507858, 21.495813>,  <7.617962, 17.722963, 21.429754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.948667, 17.507858, 21.495813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007727, -0.282688, -0.959181,
		0.562499, 0.794290, -0.229560,
		0.826762, -0.537765, 0.165149,
		8.196695, 17.346529, 21.545359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.899355, 18.054434, 20.925486>,  <7.617962, 17.722963, 21.429754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.899355, 18.054434, 20.925486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.087016, 17.718733, 21.035435>,  <8.199613, 17.517313, 21.101404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.087016, 17.718733, 21.035435>,  <7.899355, 18.054434, 20.925486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.087016, 17.718733, 21.035435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045560, -0.333840, -0.941528,
		0.881942, 0.429196, -0.194858,
		0.469151, -0.839251, 0.274873,
		8.227761, 17.466957, 21.117897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.477614, 18.001616, 20.468845>,  <7.899355, 18.054434, 20.925486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.477614, 18.001616, 20.468845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.407659, 17.633259, 20.608200>,  <8.365685, 17.412245, 20.691813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.407659, 17.633259, 20.608200>,  <8.477614, 18.001616, 20.468845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.407659, 17.633259, 20.608200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036918, -0.347458, -0.936968,
		0.983896, -0.176728, 0.026769,
		-0.174890, -0.920891, 0.348387,
		8.355191, 17.356991, 20.712717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.896021, 17.590883, 19.965881>,  <8.477614, 18.001616, 20.468845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.896021, 17.590883, 19.965881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.629744, 17.343908, 20.133511>,  <8.469977, 17.195723, 20.234089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.629744, 17.343908, 20.133511>,  <8.896021, 17.590883, 19.965881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.629744, 17.343908, 20.133511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109632, -0.474576, -0.873360,
		0.738129, -0.627334, 0.248231,
		-0.665693, -0.617438, 0.419074,
		8.430036, 17.158676, 20.259233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.050909, 16.918684, 19.717510>,  <8.896021, 17.590883, 19.965881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.050909, 16.918684, 19.717510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.679996, 16.874207, 19.860495>,  <8.457447, 16.847519, 19.946285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.679996, 16.874207, 19.860495>,  <9.050909, 16.918684, 19.717510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.679996, 16.874207, 19.860495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243292, -0.546726, -0.801186,
		0.284522, -0.829895, 0.479918,
		-0.927284, -0.111195, 0.357462,
		8.401810, 16.840849, 19.967733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.893606, 16.218988, 19.717081>,  <9.050909, 16.918684, 19.717510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.893606, 16.218988, 19.717081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.550696, 16.424925, 19.718843>,  <8.344951, 16.548487, 19.719900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.550696, 16.424925, 19.718843>,  <8.893606, 16.218988, 19.717081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.550696, 16.424925, 19.718843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319212, -0.524776, -0.789122,
		-0.403962, -0.677900, 0.614221,
		-0.857274, 0.514841, 0.004404,
		8.293514, 16.579378, 19.720165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.338673, 15.733238, 19.705744>,  <8.893606, 16.218988, 19.717081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.338673, 15.733238, 19.705744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.192557, 16.078938, 19.567389>,  <8.104888, 16.286358, 19.484375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.192557, 16.078938, 19.567389>,  <8.338673, 15.733238, 19.705744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.192557, 16.078938, 19.567389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334635, -0.468641, -0.817554,
		-0.868668, -0.182896, 0.460397,
		-0.365289, 0.864248, -0.345890,
		8.082971, 16.338211, 19.463621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.793333, 15.550960, 19.320038>,  <8.338673, 15.733238, 19.705744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.793333, 15.550960, 19.320038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.812073, 15.929364, 19.191746>,  <7.823318, 16.156406, 19.114771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.812073, 15.929364, 19.191746>,  <7.793333, 15.550960, 19.320038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.812073, 15.929364, 19.191746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227900, -0.302492, -0.925506,
		-0.972557, 0.116455, 0.201424,
		0.046851, 0.946011, -0.320731,
		7.826128, 16.213167, 19.095526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.144173, 15.640739, 18.930202>,  <7.793333, 15.550960, 19.320038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.144173, 15.640739, 18.930202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.394082, 15.929721, 18.811731>,  <7.544026, 16.103109, 18.740648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.394082, 15.929721, 18.811731>,  <7.144173, 15.640739, 18.930202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.394082, 15.929721, 18.811731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176595, -0.238750, -0.954889,
		-0.760576, 0.648890, -0.021582,
		0.624771, 0.722454, -0.296178,
		7.581513, 16.146458, 18.722878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.796886, 16.041439, 18.276398>,  <7.144173, 15.640739, 18.930202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.796886, 16.041439, 18.276398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.189519, 16.115820, 18.258883>,  <7.425099, 16.160448, 18.248373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.189519, 16.115820, 18.258883>,  <6.796886, 16.041439, 18.276398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.189519, 16.115820, 18.258883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010389, -0.176912, -0.984172,
		-0.190754, 0.966501, -0.171722,
		0.981583, 0.185951, -0.043787,
		7.483994, 16.171606, 18.245747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.839311, 16.463541, 17.749670>,  <6.796886, 16.041439, 18.276398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.839311, 16.463541, 17.749670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.217854, 16.338427, 17.782104>,  <7.444979, 16.263359, 17.801565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.217854, 16.338427, 17.782104>,  <6.839311, 16.463541, 17.749670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.217854, 16.338427, 17.782104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060807, -0.074064, -0.995398,
		0.317351, 0.946932, -0.051072,
		0.946357, -0.312785, 0.081085,
		7.501760, 16.244591, 17.806429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.168388, 16.820858, 17.172571>,  <6.839311, 16.463541, 17.749670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.168388, 16.820858, 17.172571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.409693, 16.517136, 17.270166>,  <7.554475, 16.334902, 17.328724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.409693, 16.517136, 17.270166>,  <7.168388, 16.820858, 17.172571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.409693, 16.517136, 17.270166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191938, -0.158710, -0.968489,
		0.774103, 0.631082, 0.049996,
		0.603261, -0.759307, 0.243987,
		7.590671, 16.289343, 17.343363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.746641, 16.966200, 16.830650>,  <7.168388, 16.820858, 17.172571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.746641, 16.966200, 16.830650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.772483, 16.576365, 16.916445>,  <7.787988, 16.342463, 16.967922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.772483, 16.576365, 16.916445>,  <7.746641, 16.966200, 16.830650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.772483, 16.576365, 16.916445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198241, -0.198119, -0.959921,
		0.978022, 0.104536, 0.180404,
		0.064605, -0.974588, 0.214488,
		7.791864, 16.283989, 16.980791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.261440, 16.730135, 16.347218>,  <7.746641, 16.966200, 16.830650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.261440, 16.730135, 16.347218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.059380, 16.401003, 16.451351>,  <7.938143, 16.203524, 16.513830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.059380, 16.401003, 16.451351>,  <8.261440, 16.730135, 16.347218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.059380, 16.401003, 16.451351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074890, -0.342303, -0.936600,
		0.859775, -0.453629, 0.234537,
		-0.505151, -0.822830, 0.260332,
		7.907834, 16.154154, 16.529451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.544391, 16.237820, 15.814133>,  <8.261440, 16.730135, 16.347218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.544391, 16.237820, 15.814133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.214838, 16.084520, 15.981149>,  <8.017106, 15.992540, 16.081358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.214838, 16.084520, 15.981149>,  <8.544391, 16.237820, 15.814133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.214838, 16.084520, 15.981149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081969, -0.648393, -0.756880,
		0.560804, -0.657805, 0.502784,
		-0.823881, -0.383248, 0.417541,
		7.967674, 15.969546, 16.106411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.604756, 15.470581, 15.609733>,  <8.544391, 16.237820, 15.814133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.604756, 15.470581, 15.609733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.232871, 15.574566, 15.714080>,  <8.009740, 15.636957, 15.776689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.232871, 15.574566, 15.714080>,  <8.604756, 15.470581, 15.609733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.232871, 15.574566, 15.714080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365689, -0.567693, -0.737561,
		-0.043645, -0.781117, 0.622857,
		-0.929713, 0.259962, 0.260869,
		7.953957, 15.652555, 15.792340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.207229, 14.859721, 15.339503>,  <8.604756, 15.470581, 15.609733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.207229, 14.859721, 15.339503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.946468, 15.161495, 15.370094>,  <7.790011, 15.342560, 15.388449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.946468, 15.161495, 15.370094>,  <8.207229, 14.859721, 15.339503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.946468, 15.161495, 15.370094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501415, -0.353203, -0.789829,
		-0.568864, -0.553239, 0.608539,
		-0.651902, 0.754436, 0.076478,
		7.750897, 15.387826, 15.393038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.880619, 15.138142, 15.047353>,  <8.207229, 14.859721, 15.339503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.880619, 15.138142, 15.047353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.880868, 14.793400, 14.844491>,  <8.881017, 14.586555, 14.722774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.880868, 14.793400, 14.844491>,  <8.880619, 15.138142, 15.047353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.880868, 14.793400, 14.844491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999887, 0.008163, -0.012646,
		0.015039, -0.507089, 0.861762,
		0.000621, -0.861855, -0.507155,
		8.881055, 14.534843, 14.692345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.056448, 14.598584, 15.394346>,  <8.880619, 15.138142, 15.047353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.056448, 14.598584, 15.394346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.205597, 14.506273, 15.034856>,  <9.295086, 14.450887, 14.819161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.205597, 14.506273, 15.034856>,  <9.056448, 14.598584, 15.394346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.205597, 14.506273, 15.034856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926718, 0.044094, 0.373162,
		-0.046490, -0.972007, 0.230307,
		0.372871, -0.230778, -0.898726,
		9.317458, 14.437039, 14.765238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.349751, 13.908155, 15.269821>,  <9.056448, 14.598584, 15.394346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.349751, 13.908155, 15.269821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.518258, 14.195686, 15.048617>,  <9.619362, 14.368205, 14.915895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.518258, 14.195686, 15.048617>,  <9.349751, 13.908155, 15.269821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.518258, 14.195686, 15.048617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851438, -0.103430, 0.514156,
		0.312392, -0.687450, -0.655609,
		0.421266, 0.718828, -0.553010,
		9.644638, 14.411335, 14.882714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.024304, 13.736215, 15.245981>,  <9.349751, 13.908155, 15.269821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.024304, 13.736215, 15.245981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.063420, 14.113673, 15.119509>,  <10.086890, 14.340148, 15.043626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.063420, 14.113673, 15.119509>,  <10.024304, 13.736215, 15.245981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.063420, 14.113673, 15.119509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907685, 0.045709, 0.417156,
		0.408100, -0.327786, -0.852063,
		0.097791, 0.943646, -0.316180,
		10.092757, 14.396767, 15.024654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.625122, 13.836056, 14.784114>,  <10.024304, 13.736215, 15.245981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.625122, 13.836056, 14.784114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.565940, 14.211941, 14.907434>,  <10.530431, 14.437472, 14.981425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.565940, 14.211941, 14.907434>,  <10.625122, 13.836056, 14.784114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.565940, 14.211941, 14.907434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958642, 0.059633, 0.278296,
		0.243134, 0.336724, -0.909672,
		-0.147955, 0.939713, 0.308299,
		10.521553, 14.493855, 14.999924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.265403, 14.115130, 14.822871>,  <10.625122, 13.836056, 14.784114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.265403, 14.115130, 14.822871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.050788, 14.380558, 15.031410>,  <10.922019, 14.539814, 15.156534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.050788, 14.380558, 15.031410>,  <11.265403, 14.115130, 14.822871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.050788, 14.380558, 15.031410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794813, 0.189781, 0.576417,
		0.283550, 0.723643, -0.629237,
		-0.536538, 0.663568, 0.521349,
		10.889827, 14.579629, 15.187815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.654348, 14.751506, 14.874247>,  <11.265403, 14.115130, 14.822871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.654348, 14.751506, 14.874247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.409366, 14.732282, 15.189863>,  <11.262376, 14.720747, 15.379233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.409366, 14.732282, 15.189863>,  <11.654348, 14.751506, 14.874247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.409366, 14.732282, 15.189863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774468, 0.163550, 0.611106,
		-0.158418, 0.985364, -0.062945,
		-0.612456, -0.048061, 0.789042,
		11.225629, 14.717863, 15.426576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.229053, 15.014164, 15.242511>,  <11.654348, 14.751506, 14.874247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.229053, 15.014164, 15.242511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.532502, 14.755461, 15.211024>,  <12.714572, 14.600239, 15.192132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.532502, 14.755461, 15.211024>,  <12.229053, 15.014164, 15.242511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.532502, 14.755461, 15.211024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016458, -0.139803, 0.990043,
		-0.651323, -0.749773, -0.116702,
		0.758623, -0.646758, -0.078717,
		12.760089, 14.561434, 15.187409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.094412, 14.491564, 15.650009>,  <12.229053, 15.014164, 15.242511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.094412, 14.491564, 15.650009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.493219, 14.494826, 15.619312>,  <12.732504, 14.496784, 15.600894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.493219, 14.494826, 15.619312>,  <12.094412, 14.491564, 15.650009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.493219, 14.494826, 15.619312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074120, 0.175734, 0.981643,
		0.021491, -0.984404, 0.174606,
		0.997018, 0.008155, -0.076741,
		12.792325, 14.497273, 15.596290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.320067, 14.074229, 16.196440>,  <12.094412, 14.491564, 15.650009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.320067, 14.074229, 16.196440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.621147, 14.320875, 16.104153>,  <12.801795, 14.468863, 16.048780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.621147, 14.320875, 16.104153>,  <12.320067, 14.074229, 16.196440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.621147, 14.320875, 16.104153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243546, 0.064799, 0.967722,
		0.611662, -0.784594, -0.101400,
		0.752698, 0.616614, -0.230719,
		12.846957, 14.505859, 16.034937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.917396, 13.836581, 16.514198>,  <12.320067, 14.074229, 16.196440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.917396, 13.836581, 16.514198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.014936, 14.213805, 16.423710>,  <13.073461, 14.440140, 16.369417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.014936, 14.213805, 16.423710>,  <12.917396, 13.836581, 16.514198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.014936, 14.213805, 16.423710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400835, 0.114401, 0.908979,
		0.883101, -0.312333, -0.350114,
		0.243851, 0.943059, -0.226222,
		13.088092, 14.496723, 16.355843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.443082, 13.896131, 16.872049>,  <12.917396, 13.836581, 16.514198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.443082, 13.896131, 16.872049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.358124, 14.277304, 16.785511>,  <13.307149, 14.506007, 16.733587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.358124, 14.277304, 16.785511>,  <13.443082, 13.896131, 16.872049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.358124, 14.277304, 16.785511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390999, 0.285780, 0.874900,
		0.895549, 0.101234, -0.433294,
		-0.212396, 0.952933, -0.216348,
		13.294405, 14.563184, 16.720606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.036149, 14.331949, 17.045479>,  <13.443082, 13.896131, 16.872049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.036149, 14.331949, 17.045479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.705521, 14.556961, 17.038111>,  <13.507143, 14.691968, 17.033689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.705521, 14.556961, 17.038111>,  <14.036149, 14.331949, 17.045479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.705521, 14.556961, 17.038111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179448, 0.294414, 0.938679,
		0.533458, 0.772581, -0.344299,
		-0.826572, 0.562529, -0.018419,
		13.457549, 14.725719, 17.032585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.238713, 14.910328, 17.395847>,  <14.036149, 14.331949, 17.045479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.238713, 14.910328, 17.395847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.840881, 14.871966, 17.411917>,  <13.602182, 14.848949, 17.421558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.840881, 14.871966, 17.411917>,  <14.238713, 14.910328, 17.395847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.840881, 14.871966, 17.411917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035726, 0.047630, 0.998226,
		-0.097648, 0.994250, -0.043945,
		-0.994580, -0.095904, 0.040171,
		13.542507, 14.843195, 17.423967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.028465, 15.450912, 17.782656>,  <14.238713, 14.910328, 17.395847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.028465, 15.450912, 17.782656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.748955, 15.167740, 17.823732>,  <13.581248, 14.997836, 17.848377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.748955, 15.167740, 17.823732>,  <14.028465, 15.450912, 17.782656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.748955, 15.167740, 17.823732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054345, 0.195675, 0.979162,
		-0.713273, 0.678635, -0.175205,
		-0.698776, -0.707931, 0.102690,
		13.539322, 14.955360, 17.854540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.617556, 15.738146, 18.297894>,  <14.028465, 15.450912, 17.782656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.617556, 15.738146, 18.297894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.488795, 15.359563, 18.288109>,  <13.411539, 15.132413, 18.282238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.488795, 15.359563, 18.288109>,  <13.617556, 15.738146, 18.297894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.488795, 15.359563, 18.288109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120092, 0.015189, 0.992647,
		-0.939126, 0.322472, -0.118551,
		-0.321902, -0.946457, -0.024462,
		13.392224, 15.075625, 18.280771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.105771, 15.711725, 18.829535>,  <13.617556, 15.738146, 18.297894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.105771, 15.711725, 18.829535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.127048, 15.318986, 18.756712>,  <13.139815, 15.083343, 18.713018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.127048, 15.318986, 18.756712>,  <13.105771, 15.711725, 18.829535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.127048, 15.318986, 18.756712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167618, -0.188507, 0.967662,
		-0.984416, -0.020957, -0.174602,
		0.053193, -0.981849, -0.182056,
		13.143006, 15.024431, 18.702095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.434427, 15.311089, 19.155064>,  <13.105771, 15.711725, 18.829535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.434427, 15.311089, 19.155064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.744138, 15.063533, 19.102188>,  <12.929964, 14.915000, 19.070463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.744138, 15.063533, 19.102188>,  <12.434427, 15.311089, 19.155064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.744138, 15.063533, 19.102188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167736, -0.402100, 0.900100,
		-0.610214, -0.674753, -0.415147,
		0.774276, -0.618889, -0.132187,
		12.976420, 14.877867, 19.062532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.146849, 14.574425, 19.183802>,  <12.434427, 15.311089, 19.155064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.146849, 14.574425, 19.183802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.531467, 14.578327, 19.293591>,  <12.762239, 14.580668, 19.359463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.531467, 14.578327, 19.293591>,  <12.146849, 14.574425, 19.183802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.531467, 14.578327, 19.293591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244430, -0.425296, 0.871423,
		0.125233, -0.905002, -0.406557,
		0.961546, 0.009757, 0.274470,
		12.819931, 14.581254, 19.375931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.342988, 13.897922, 19.338223>,  <12.146849, 14.574425, 19.183802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.342988, 13.897922, 19.338223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.625792, 14.114454, 19.520254>,  <12.795474, 14.244374, 19.629473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.625792, 14.114454, 19.520254>,  <12.342988, 13.897922, 19.338223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.625792, 14.114454, 19.520254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127164, -0.535690, 0.834785,
		0.695677, -0.648071, -0.309900,
		0.707010, 0.541333, 0.455078,
		12.837894, 14.276855, 19.656778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.630954, 13.371455, 19.621521>,  <12.342988, 13.897922, 19.338223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.630954, 13.371455, 19.621521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.766466, 13.693921, 19.815563>,  <12.847774, 13.887401, 19.931988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.766466, 13.693921, 19.815563>,  <12.630954, 13.371455, 19.621521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.766466, 13.693921, 19.815563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004149, -0.514309, 0.857595,
		0.940856, -0.292550, -0.170894,
		0.338782, 0.806164, 0.485104,
		12.868101, 13.935770, 19.961094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.057370, 13.097808, 20.076899>,  <12.630954, 13.371455, 19.621521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.057370, 13.097808, 20.076899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.052079, 13.477307, 20.203199>,  <13.048904, 13.705008, 20.278980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.052079, 13.477307, 20.203199>,  <13.057370, 13.097808, 20.076899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.052079, 13.477307, 20.203199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058325, -0.315975, 0.946973,
		0.998210, -0.005889, 0.059515,
		-0.013228, 0.948749, 0.315753,
		13.048111, 13.761932, 20.297926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.615796, 13.119609, 20.496374>,  <13.057370, 13.097808, 20.076899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.615796, 13.119609, 20.496374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.337828, 13.392672, 20.586763>,  <13.171046, 13.556509, 20.640997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.337828, 13.392672, 20.586763>,  <13.615796, 13.119609, 20.496374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.337828, 13.392672, 20.586763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013488, -0.301820, 0.953270,
		0.718959, 0.665495, 0.200533,
		-0.694922, 0.682657, 0.225972,
		13.129352, 13.597468, 20.654554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.800991, 13.368687, 21.118284>,  <13.615796, 13.119609, 20.496374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.800991, 13.368687, 21.118284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.416240, 13.473689, 21.087606>,  <13.185389, 13.536691, 21.069201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.416240, 13.473689, 21.087606>,  <13.800991, 13.368687, 21.118284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.416240, 13.473689, 21.087606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145419, -0.253436, 0.956359,
		0.231612, 0.931054, 0.281947,
		-0.961878, 0.262505, -0.076694,
		13.127676, 13.552441, 21.064598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.678215, 13.854756, 21.607824>,  <13.800991, 13.368687, 21.118284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.678215, 13.854756, 21.607824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.329185, 13.673815, 21.534079>,  <13.119768, 13.565249, 21.489832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.329185, 13.673815, 21.534079>,  <13.678215, 13.854756, 21.607824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.329185, 13.673815, 21.534079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048683, -0.295013, 0.954252,
		-0.486050, 0.841631, 0.235399,
		-0.872574, -0.452354, -0.184364,
		13.067413, 13.538109, 21.478769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.313935, 14.045291, 22.262873>,  <13.678215, 13.854756, 21.607824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.313935, 14.045291, 22.262873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.135591, 13.735662, 22.083088>,  <13.028584, 13.549884, 21.975216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.135591, 13.735662, 22.083088>,  <13.313935, 14.045291, 22.262873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.135591, 13.735662, 22.083088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152915, -0.428885, 0.890323,
		-0.881944, 0.465690, 0.072856,
		-0.445861, -0.774074, -0.449463,
		13.001832, 13.503439, 21.948250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.697137, 14.057873, 22.565706>,  <13.313935, 14.045291, 22.262873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.697137, 14.057873, 22.565706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.733722, 13.694162, 22.403297>,  <12.755672, 13.475936, 22.305853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.733722, 13.694162, 22.403297>,  <12.697137, 14.057873, 22.565706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.733722, 13.694162, 22.403297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200767, -0.416195, 0.886834,
		-0.975360, 0.000404, -0.220618,
		0.091462, -0.909275, -0.406021,
		12.761160, 13.421380, 22.281490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.048749, 13.719798, 22.746111>,  <12.697137, 14.057873, 22.565706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.048749, 13.719798, 22.746111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.280385, 13.405420, 22.659445>,  <12.419367, 13.216793, 22.607445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.280385, 13.405420, 22.659445>,  <12.048749, 13.719798, 22.746111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.280385, 13.405420, 22.659445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378642, -0.494641, 0.782279,
		-0.722000, -0.370971, -0.584034,
		0.579090, -0.785945, -0.216666,
		12.454112, 13.169637, 22.594444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.526315, 13.157446, 22.712025>,  <12.048749, 13.719798, 22.746111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.526315, 13.157446, 22.712025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.899925, 13.029068, 22.774752>,  <12.124091, 12.952042, 22.812387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.899925, 13.029068, 22.774752>,  <11.526315, 13.157446, 22.712025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.899925, 13.029068, 22.774752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322326, -0.568050, 0.757249,
		-0.153954, -0.757836, -0.634022,
		0.934026, -0.320943, 0.156817,
		12.180133, 12.932785, 22.821796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.436372, 12.560170, 22.893480>,  <11.526315, 13.157446, 22.712025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.436372, 12.560170, 22.893480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.802677, 12.646326, 23.029119>,  <12.022460, 12.698019, 23.110502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.802677, 12.646326, 23.029119>,  <11.436372, 12.560170, 22.893480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.802677, 12.646326, 23.029119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161057, -0.576450, 0.801103,
		0.368020, -0.788234, -0.493202,
		0.915763, 0.215388, 0.339096,
		12.077406, 12.710942, 23.130848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.622071, 11.934848, 23.213659>,  <11.436372, 12.560170, 22.893480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.622071, 11.934848, 23.213659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.864583, 12.212608, 23.368698>,  <12.010090, 12.379265, 23.461721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.864583, 12.212608, 23.368698>,  <11.622071, 11.934848, 23.213659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.864583, 12.212608, 23.368698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172510, -0.360947, 0.916492,
		0.776315, -0.622515, -0.099043,
		0.606279, 0.694401, 0.387599,
		12.046467, 12.420929, 23.484978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.190526, 11.568582, 23.616085>,  <11.622071, 11.934848, 23.213659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.190526, 11.568582, 23.616085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.215918, 11.941691, 23.758017>,  <12.231153, 12.165557, 23.843176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.215918, 11.941691, 23.758017>,  <12.190526, 11.568582, 23.616085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.215918, 11.941691, 23.758017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037235, -0.357511, 0.933166,
		0.997288, -0.046023, -0.057426,
		0.063478, 0.932774, 0.354828,
		12.234961, 12.221523, 23.864466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.524268, 11.498184, 24.231237>,  <12.190526, 11.568582, 23.616085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.524268, 11.498184, 24.231237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.381341, 11.871196, 24.252079>,  <12.295585, 12.095002, 24.264584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.381341, 11.871196, 24.252079>,  <12.524268, 11.498184, 24.231237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.381341, 11.871196, 24.252079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046351, -0.073422, 0.996223,
		0.932832, 0.353554, 0.069459,
		-0.357319, 0.932528, 0.052103,
		12.274145, 12.150954, 24.267710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.014806, 11.912639, 24.607189>,  <12.524268, 11.498184, 24.231237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.014806, 11.912639, 24.607189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.649708, 12.075120, 24.624605>,  <12.430649, 12.172608, 24.635056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.649708, 12.075120, 24.624605>,  <13.014806, 11.912639, 24.607189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.649708, 12.075120, 24.624605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034466, -0.029635, 0.998966,
		0.407073, 0.913302, 0.013049,
		-0.912745, 0.406203, 0.043541,
		12.375884, 12.196980, 24.637667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.048426, 12.440685, 25.102945>,  <13.014806, 11.912639, 24.607189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.048426, 12.440685, 25.102945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.664376, 12.329311, 25.092867>,  <12.433947, 12.262487, 25.086821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.664376, 12.329311, 25.092867>,  <13.048426, 12.440685, 25.102945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.664376, 12.329311, 25.092867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021461, -0.163260, 0.986350,
		-0.278748, 0.946478, 0.162726,
		-0.960125, -0.278435, -0.025196,
		12.376339, 12.245781, 25.085308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.804737, 12.622396, 25.691011>,  <13.048426, 12.440685, 25.102945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.804737, 12.622396, 25.691011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.515438, 12.369976, 25.578806>,  <12.341859, 12.218524, 25.511482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.515438, 12.369976, 25.578806>,  <12.804737, 12.622396, 25.691011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.515438, 12.369976, 25.578806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108850, -0.296947, 0.948670,
		-0.681956, 0.716658, 0.146077,
		-0.723248, -0.631050, -0.280513,
		12.298464, 12.180661, 25.494652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.269964, 12.774034, 26.060833>,  <12.804737, 12.622396, 25.691011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.269964, 12.774034, 26.060833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.236140, 12.392840, 25.944437>,  <12.215846, 12.164124, 25.874599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.236140, 12.392840, 25.944437>,  <12.269964, 12.774034, 26.060833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.236140, 12.392840, 25.944437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181874, -0.272367, 0.944848,
		-0.979679, 0.132819, -0.150291,
		-0.084560, -0.952982, -0.290989,
		12.210773, 12.106946, 25.857140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.695001, 12.578155, 26.462950>,  <12.269964, 12.774034, 26.060833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.695001, 12.578155, 26.462950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.873378, 12.249525, 26.320879>,  <11.980404, 12.052347, 26.235636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.873378, 12.249525, 26.320879>,  <11.695001, 12.578155, 26.462950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.873378, 12.249525, 26.320879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003575, -0.398452, 0.917182,
		-0.895055, -0.407740, -0.180624,
		0.445942, -0.821574, -0.355179,
		12.007160, 12.003053, 26.214325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.349119, 12.009879, 26.702929>,  <11.695001, 12.578155, 26.462950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.349119, 12.009879, 26.702929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.722874, 11.886648, 26.631365>,  <11.947126, 11.812710, 26.588427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.722874, 11.886648, 26.631365>,  <11.349119, 12.009879, 26.702929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.722874, 11.886648, 26.631365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083706, -0.298285, 0.950799,
		-0.346287, -0.903390, -0.252926,
		0.934387, -0.308078, -0.178911,
		12.003190, 11.794225, 26.577692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.444693, 11.294268, 26.799503>,  <11.349119, 12.009879, 26.702929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.444693, 11.294268, 26.799503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.822943, 11.417821, 26.840267>,  <12.049892, 11.491953, 26.864725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.822943, 11.417821, 26.840267>,  <11.444693, 11.294268, 26.799503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.822943, 11.417821, 26.840267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117252, -0.615966, 0.778998,
		0.303391, -0.724690, -0.618690,
		0.945624, 0.308883, 0.101908,
		12.106630, 11.510486, 26.870840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.873192, 10.589680, 26.839590>,  <11.444693, 11.294268, 26.799503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.873192, 10.589680, 26.839590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.109005, 10.876282, 26.988758>,  <12.250493, 11.048244, 27.078259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.109005, 10.876282, 26.988758>,  <11.873192, 10.589680, 26.839590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.109005, 10.876282, 26.988758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252574, -0.602050, 0.757458,
		0.767239, -0.352357, -0.535900,
		0.589534, 0.716506, 0.372920,
		12.285865, 11.091233, 27.100634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.535107, 10.242887, 27.036299>,  <11.873192, 10.589680, 26.839590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.535107, 10.242887, 27.036299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.512331, 10.574329, 27.259069>,  <12.498666, 10.773195, 27.392733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.512331, 10.574329, 27.259069>,  <12.535107, 10.242887, 27.036299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.512331, 10.574329, 27.259069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092208, -0.551084, 0.829339,
		0.994110, 0.098576, -0.045025,
		-0.056940, 0.828606, 0.556928,
		12.495249, 10.822911, 27.426147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.978022, 10.123564, 27.589304>,  <12.535107, 10.242887, 27.036299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.978022, 10.123564, 27.589304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.741467, 10.413358, 27.730942>,  <12.599534, 10.587234, 27.815924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.741467, 10.413358, 27.730942>,  <12.978022, 10.123564, 27.589304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.741467, 10.413358, 27.730942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087203, -0.493992, 0.865082,
		0.801659, 0.480720, 0.355318,
		-0.591387, 0.724486, 0.354093,
		12.564051, 10.630703, 27.837170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.245591, 10.205297, 28.287939>,  <12.978022, 10.123564, 27.589304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.245591, 10.205297, 28.287939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.886865, 10.381130, 28.267982>,  <12.671629, 10.486629, 28.256008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.886865, 10.381130, 28.267982>,  <13.245591, 10.205297, 28.287939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.886865, 10.381130, 28.267982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315782, -0.557065, 0.768089,
		0.309844, 0.704590, 0.638397,
		-0.896816, 0.439582, -0.049893,
		12.617820, 10.513004, 28.253014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.060872, 10.048205, 28.931143>,  <13.245591, 10.205297, 28.287939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.060872, 10.048205, 28.931143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.729242, 10.176361, 28.747845>,  <12.530265, 10.253255, 28.637867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.729242, 10.176361, 28.747845>,  <13.060872, 10.048205, 28.931143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.729242, 10.176361, 28.747845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552386, -0.596317, 0.582474,
		-0.086640, 0.736041, 0.671369,
		-0.829074, 0.320389, -0.458243,
		12.480520, 10.272478, 28.610373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.497653, 10.191740, 29.494837>,  <13.060872, 10.048205, 28.931143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.497653, 10.191740, 29.494837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.308807, 10.086308, 29.158354>,  <12.195499, 10.023047, 28.956463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.308807, 10.086308, 29.158354>,  <12.497653, 10.191740, 29.494837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.308807, 10.086308, 29.158354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559641, -0.647674, 0.517030,
		-0.681109, 0.714873, 0.158265,
		-0.472115, -0.263582, -0.841209,
		12.167173, 10.007233, 28.905991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.933007, 10.041730, 29.770832>,  <12.497653, 10.191740, 29.494837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.933007, 10.041730, 29.770832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.899193, 9.888848, 29.402750>,  <11.878904, 9.797119, 29.181902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.899193, 9.888848, 29.402750>,  <11.933007, 10.041730, 29.770832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.899193, 9.888848, 29.402750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714296, -0.620639, 0.323401,
		-0.694719, 0.684636, -0.220541,
		-0.084535, -0.382205, -0.920203,
		11.873832, 9.774187, 29.126690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.144280, 9.878682, 29.639423>,  <11.933007, 10.041730, 29.770832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.144280, 9.878682, 29.639423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.369937, 9.671483, 29.382231>,  <11.505331, 9.547164, 29.227915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.369937, 9.671483, 29.382231>,  <11.144280, 9.878682, 29.639423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.369937, 9.671483, 29.382231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512602, -0.830206, 0.219081,
		-0.647290, 0.206000, -0.733880,
		0.564141, -0.517997, -0.642980,
		11.539179, 9.516084, 29.189337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.845469, 9.513894, 29.126825>,  <11.144280, 9.878682, 29.639423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.845469, 9.513894, 29.126825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.170838, 9.297312, 29.211840>,  <11.366059, 9.167362, 29.262848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.170838, 9.297312, 29.211840>,  <10.845469, 9.513894, 29.126825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.170838, 9.297312, 29.211840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580166, -0.781510, 0.229454,
		0.041861, -0.309949, -0.949831,
		0.813422, -0.541455, 0.212536,
		11.414865, 9.134875, 29.275600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.710180, 8.807892, 28.853893>,  <10.845469, 9.513894, 29.126825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.710180, 8.807892, 28.853893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.964814, 8.758729, 29.158434>,  <11.117595, 8.729232, 29.341158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.964814, 8.758729, 29.158434>,  <10.710180, 8.807892, 28.853893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.964814, 8.758729, 29.158434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555481, -0.757896, 0.342103,
		0.534977, -0.640694, -0.550737,
		0.636584, -0.122906, 0.761350,
		11.155789, 8.721857, 29.386839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.785577, 8.101437, 28.920742>,  <10.710180, 8.807892, 28.853893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.785577, 8.101437, 28.920742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.809538, 8.292608, 29.271284>,  <10.823915, 8.407311, 29.481609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.809538, 8.292608, 29.271284>,  <10.785577, 8.101437, 28.920742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.809538, 8.292608, 29.271284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672658, -0.629333, 0.389193,
		0.737525, -0.612800, 0.283785,
		0.059902, 0.477930, 0.876353,
		10.827509, 8.435987, 29.534189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.877208, 7.410088, 29.274652>,  <10.785577, 8.101437, 28.920742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.877208, 7.410088, 29.274652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.255816, 7.404436, 29.403589>,  <11.482980, 7.401045, 29.480951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.255816, 7.404436, 29.403589>,  <10.877208, 7.410088, 29.274652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.255816, 7.404436, 29.403589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037497, 0.997088, -0.066402,
		-0.320463, 0.074937, 0.944292,
		0.946519, -0.014129, 0.322340,
		11.539771, 7.400198, 29.500292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.055269, 7.894125, 29.884714>,  <10.877208, 7.410088, 29.274652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.055269, 7.894125, 29.884714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.369588, 7.821739, 29.648148>,  <11.558179, 7.778308, 29.506207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.369588, 7.821739, 29.648148>,  <11.055269, 7.894125, 29.884714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.369588, 7.821739, 29.648148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144768, 0.983490, -0.108584,
		0.601303, -0.000294, 0.799021,
		0.785797, -0.180964, -0.591418,
		11.605327, 7.767450, 29.470722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.518275, 8.422312, 30.007963>,  <11.055269, 7.894125, 29.884714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.518275, 8.422312, 30.007963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.561051, 8.284837, 29.634773>,  <11.586718, 8.202352, 29.410860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.561051, 8.284837, 29.634773>,  <11.518275, 8.422312, 30.007963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.561051, 8.284837, 29.634773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138320, 0.934374, -0.328348,
		0.984597, -0.093935, 0.147462,
		0.106941, -0.343687, -0.932975,
		11.593134, 8.181730, 29.354881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.179735, 8.540763, 29.695200>,  <11.518275, 8.422312, 30.007963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.179735, 8.540763, 29.695200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.909078, 8.536357, 29.400709>,  <11.746683, 8.533713, 29.224014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.909078, 8.536357, 29.400709>,  <12.179735, 8.540763, 29.695200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.909078, 8.536357, 29.400709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263028, 0.930298, -0.255660,
		0.687726, -0.366640, -0.626584,
		-0.676645, -0.011015, -0.736227,
		11.706084, 8.533052, 29.179840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.484227, 8.644971, 29.077059>,  <12.179735, 8.540763, 29.695200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.484227, 8.644971, 29.077059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.106984, 8.777019, 29.061209>,  <11.880638, 8.856247, 29.051699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.106984, 8.777019, 29.061209>,  <12.484227, 8.644971, 29.077059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.106984, 8.777019, 29.061209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320549, 0.871104, -0.372057,
		-0.088305, -0.363592, -0.927364,
		-0.943107, 0.330120, -0.039626,
		11.824052, 8.876055, 29.049320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.109188, 8.132095, 29.038483>,  <12.484227, 8.644971, 29.077059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.109188, 8.132095, 29.038483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.814420, 7.913402, 28.879469>,  <12.637559, 7.782187, 28.784061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.814420, 7.913402, 28.879469>,  <13.109188, 8.132095, 29.038483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.814420, 7.913402, 28.879469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519707, -0.082175, -0.850384,
		0.432265, -0.833265, 0.344697,
		-0.736921, -0.546732, -0.397532,
		12.593344, 7.749382, 28.760210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.349783, 7.566732, 28.770809>,  <13.109188, 8.132095, 29.038483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.349783, 7.566732, 28.770809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.037507, 7.727927, 28.579760>,  <12.850142, 7.824644, 28.465130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.037507, 7.727927, 28.579760>,  <13.349783, 7.566732, 28.770809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.037507, 7.727927, 28.579760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536910, 0.041454, -0.842620,
		-0.319766, -0.914266, -0.248730,
		-0.780690, 0.402987, -0.477623,
		12.803300, 7.848823, 28.436472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.280491, 7.293036, 28.127462>,  <13.349783, 7.566732, 28.770809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.280491, 7.293036, 28.127462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.141529, 7.660122, 28.050411>,  <13.058152, 7.880374, 28.004181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.141529, 7.660122, 28.050411>,  <13.280491, 7.293036, 28.127462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.141529, 7.660122, 28.050411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413071, -0.034649, -0.910040,
		-0.841833, -0.395721, -0.367045,
		-0.347404, 0.917717, -0.192629,
		13.037308, 7.935438, 27.992622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.859333, 7.250335, 27.494301>,  <13.280491, 7.293036, 28.127462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.859333, 7.250335, 27.494301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.997803, 7.622354, 27.543573>,  <13.080884, 7.845566, 27.573137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.997803, 7.622354, 27.543573>,  <12.859333, 7.250335, 27.494301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.997803, 7.622354, 27.543573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433881, -0.042295, -0.899977,
		-0.831812, 0.364995, -0.418172,
		0.346173, 0.930048, 0.123183,
		13.101655, 7.901369, 27.580528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.765280, 7.576689, 26.892910>,  <12.859333, 7.250335, 27.494301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.765280, 7.576689, 26.892910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.032945, 7.836356, 27.037577>,  <13.193543, 7.992157, 27.124376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.032945, 7.836356, 27.037577>,  <12.765280, 7.576689, 26.892910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.032945, 7.836356, 27.037577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327613, 0.179125, -0.927677,
		-0.667001, 0.739253, -0.092812,
		0.669163, 0.649167, 0.361666,
		13.233694, 8.031106, 27.146076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.781912, 8.245214, 26.447510>,  <12.765280, 7.576689, 26.892910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.781912, 8.245214, 26.447510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.131421, 8.223636, 26.640842>,  <13.341126, 8.210689, 26.756842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.131421, 8.223636, 26.640842>,  <12.781912, 8.245214, 26.447510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.131421, 8.223636, 26.640842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484237, 0.188647, -0.854357,
		-0.045089, 0.980562, 0.190957,
		0.873774, -0.053946, 0.483331,
		13.393554, 8.207452, 26.785841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.098625, 8.807806, 26.198286>,  <12.781912, 8.245214, 26.447510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.098625, 8.807806, 26.198286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414951, 8.625301, 26.361473>,  <13.604747, 8.515799, 26.459385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414951, 8.625301, 26.361473>,  <13.098625, 8.807806, 26.198286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.414951, 8.625301, 26.361473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571752, 0.312816, -0.758450,
		0.218432, 0.833049, 0.508248,
		0.790814, -0.456262, 0.407968,
		13.652196, 8.488422, 26.483864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.704336, 9.247093, 26.211121>,  <13.098625, 8.807806, 26.198286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.704336, 9.247093, 26.211121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.860191, 8.878830, 26.220682>,  <13.953705, 8.657872, 26.226419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.860191, 8.878830, 26.220682>,  <13.704336, 9.247093, 26.211121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.860191, 8.878830, 26.220682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605884, 0.236700, -0.759525,
		0.693604, 0.310424, 0.650039,
		0.389639, -0.920657, 0.023905,
		13.977083, 8.602633, 26.227854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.438022, 9.362733, 26.099392>,  <13.704336, 9.247093, 26.211121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.438022, 9.362733, 26.099392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.351321, 8.984191, 26.003531>,  <14.299301, 8.757066, 25.946014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.351321, 8.984191, 26.003531>,  <14.438022, 9.362733, 26.099392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.351321, 8.984191, 26.003531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559657, 0.080684, -0.824788,
		0.799877, -0.312896, 0.512145,
		-0.216751, -0.946354, -0.239652,
		14.286296, 8.700285, 25.931635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.022554, 8.959952, 25.899023>,  <14.438022, 9.362733, 26.099392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.022554, 8.959952, 25.899023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.748957, 8.731513, 25.717476>,  <14.584798, 8.594449, 25.608547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.748957, 8.731513, 25.717476>,  <15.022554, 8.959952, 25.899023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.748957, 8.731513, 25.717476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511025, 0.068880, -0.856801,
		0.520580, -0.817987, 0.244733,
		-0.683995, -0.571098, -0.453869,
		14.543758, 8.560184, 25.581314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.356724, 8.547199, 25.519369>,  <15.022554, 8.959952, 25.899023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.356724, 8.547199, 25.519369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.007192, 8.494040, 25.332283>,  <14.797472, 8.462144, 25.220032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.007192, 8.494040, 25.332283>,  <15.356724, 8.547199, 25.519369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.007192, 8.494040, 25.332283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473797, -0.016584, -0.880478,
		0.109259, -0.990991, 0.077459,
		-0.873830, -0.132900, -0.467716,
		14.745043, 8.454170, 25.191969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.400466, 7.990087, 24.974655>,  <15.356724, 8.547199, 25.519369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.400466, 7.990087, 24.974655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.083547, 8.212121, 24.873350>,  <14.893394, 8.345342, 24.812567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.083547, 8.212121, 24.873350>,  <15.400466, 7.990087, 24.974655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.083547, 8.212121, 24.873350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295627, -0.013860, -0.955203,
		-0.533729, -0.831678, -0.153117,
		-0.792299, 0.555085, -0.253264,
		14.845857, 8.378647, 24.797371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.295745, 7.806103, 24.331797>,  <15.400466, 7.990087, 24.974655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.295745, 7.806103, 24.331797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.066433, 8.133847, 24.331635>,  <14.928845, 8.330494, 24.331537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.066433, 8.133847, 24.331635>,  <15.295745, 7.806103, 24.331797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.066433, 8.133847, 24.331635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096768, 0.067214, -0.993035,
		-0.813626, -0.569326, -0.117820,
		-0.573280, 0.819360, -0.000406,
		14.894449, 8.379655, 24.331512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.789668, 7.682484, 23.778193>,  <15.295745, 7.806103, 24.331797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.789668, 7.682484, 23.778193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.826106, 8.071221, 23.865114>,  <14.847969, 8.304463, 23.917267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.826106, 8.071221, 23.865114>,  <14.789668, 7.682484, 23.778193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.826106, 8.071221, 23.865114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183768, 0.198060, -0.962809,
		-0.978740, 0.127642, -0.160551,
		0.091096, 0.971844, 0.217306,
		14.853435, 8.362775, 23.930305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.391585, 8.014057, 23.416658>,  <14.789668, 7.682484, 23.778193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.391585, 8.014057, 23.416658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.675521, 8.284691, 23.495003>,  <14.845882, 8.447071, 23.542009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.675521, 8.284691, 23.495003>,  <14.391585, 8.014057, 23.416658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.675521, 8.284691, 23.495003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143181, 0.133657, -0.980630,
		-0.689657, 0.724133, -0.002000,
		0.709839, 0.676585, 0.195860,
		14.888473, 8.487666, 23.553761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.332628, 8.601403, 22.876146>,  <14.391585, 8.014057, 23.416658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.332628, 8.601403, 22.876146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.686713, 8.711912, 23.025852>,  <14.899164, 8.778217, 23.115675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.686713, 8.711912, 23.025852>,  <14.332628, 8.601403, 22.876146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.686713, 8.711912, 23.025852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125419, 0.633012, -0.763915,
		-0.447961, 0.723167, 0.525700,
		0.885212, 0.276271, 0.374264,
		14.952277, 8.794793, 23.138132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.599492, 9.426486, 22.864065>,  <14.332628, 8.601403, 22.876146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.599492, 9.426486, 22.864065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.900945, 9.164653, 22.840204>,  <15.081817, 9.007553, 22.825888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.900945, 9.164653, 22.840204>,  <14.599492, 9.426486, 22.864065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.900945, 9.164653, 22.840204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223799, 0.340874, -0.913082,
		0.618022, 0.674778, 0.403389,
		0.753633, -0.654583, -0.059653,
		15.127034, 8.968278, 22.822308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.261021, 9.752352, 22.623348>,  <14.599492, 9.426486, 22.864065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.261021, 9.752352, 22.623348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.256945, 9.364921, 22.523947>,  <15.254498, 9.132462, 22.464306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.256945, 9.364921, 22.523947>,  <15.261021, 9.752352, 22.623348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.256945, 9.364921, 22.523947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245598, 0.238479, -0.939579,
		0.969318, -0.070607, 0.235451,
		-0.010191, -0.968577, -0.248503,
		15.253887, 9.074347, 22.449396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.743035, 9.758537, 22.117514>,  <15.261021, 9.752352, 22.623348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.743035, 9.758537, 22.117514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.586162, 9.395149, 22.059719>,  <15.492038, 9.177116, 22.025043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.586162, 9.395149, 22.059719>,  <15.743035, 9.758537, 22.117514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.586162, 9.395149, 22.059719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111064, 0.109155, -0.987800,
		0.913158, -0.403446, 0.058089,
		-0.392183, -0.908469, -0.144484,
		15.468507, 9.122608, 22.016375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.197788, 9.444685, 21.615839>,  <15.743035, 9.758537, 22.117514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.197788, 9.444685, 21.615839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.860114, 9.230295, 21.612261>,  <15.657510, 9.101661, 21.610115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.860114, 9.230295, 21.612261>,  <16.197788, 9.444685, 21.615839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.860114, 9.230295, 21.612261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005807, 0.007540, -0.999955,
		0.536019, -0.844200, -0.003252,
		-0.844186, -0.535976, -0.008944,
		15.606858, 9.069503, 21.609577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.378075, 8.921365, 21.155405>,  <16.197788, 9.444685, 21.615839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.378075, 8.921365, 21.155405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.980015, 8.956515, 21.173103>,  <15.741179, 8.977606, 21.183722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.980015, 8.956515, 21.173103>,  <16.378075, 8.921365, 21.155405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.980015, 8.956515, 21.173103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030421, 0.152852, -0.987781,
		-0.093566, -0.984334, -0.149437,
		-0.995149, 0.087877, 0.044246,
		15.681470, 8.982878, 21.186377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.245705, 8.682993, 20.537075>,  <16.378075, 8.921365, 21.155405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.245705, 8.682993, 20.537075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.919050, 8.884336, 20.650026>,  <15.723058, 9.005142, 20.717796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.919050, 8.884336, 20.650026>,  <16.245705, 8.682993, 20.537075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.919050, 8.884336, 20.650026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093249, 0.367761, -0.925233,
		-0.569572, -0.781909, -0.253389,
		-0.816634, 0.503359, 0.282379,
		15.674060, 9.035344, 20.734739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.554789, 8.468823, 20.215462>,  <16.245705, 8.682993, 20.537075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.554789, 8.468823, 20.215462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.492952, 8.856046, 20.294424>,  <15.455851, 9.088379, 20.341801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.492952, 8.856046, 20.294424>,  <15.554789, 8.468823, 20.215462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.492952, 8.856046, 20.294424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288066, 0.146960, -0.946267,
		-0.945050, -0.203149, 0.256146,
		-0.154590, 0.968057, 0.197405,
		15.446575, 9.146462, 20.353645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.986072, 8.647331, 19.783581>,  <15.554789, 8.468823, 20.215462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.986072, 8.647331, 19.783581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.123147, 9.008484, 19.887403>,  <15.205392, 9.225176, 19.949697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.123147, 9.008484, 19.887403>,  <14.986072, 8.647331, 19.783581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.123147, 9.008484, 19.887403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189377, 0.337004, -0.922261,
		-0.920163, 0.266894, 0.286473,
		0.342689, 0.902882, 0.259555,
		15.225954, 9.279348, 19.965269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.475646, 9.125530, 19.584482>,  <14.986072, 8.647331, 19.783581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.475646, 9.125530, 19.584482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.819806, 9.329115, 19.594835>,  <15.026302, 9.451265, 19.601048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.819806, 9.329115, 19.594835>,  <14.475646, 9.125530, 19.584482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.819806, 9.329115, 19.594835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229538, 0.432377, -0.871987,
		-0.454999, 0.744317, 0.488844,
		0.860400, 0.508962, 0.025882,
		15.077926, 9.481804, 19.602600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.369122, 9.834250, 19.309666>,  <14.475646, 9.125530, 19.584482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.369122, 9.834250, 19.309666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.758762, 9.757988, 19.261045>,  <14.992547, 9.712231, 19.231873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.758762, 9.757988, 19.261045>,  <14.369122, 9.834250, 19.309666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.758762, 9.757988, 19.261045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036823, 0.396636, -0.917237,
		0.223089, 0.897959, 0.379343,
		0.974102, -0.190657, -0.121551,
		15.050993, 9.700791, 19.224581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.552918, 10.425661, 19.060816>,  <14.369122, 9.834250, 19.309666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.552918, 10.425661, 19.060816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.887142, 10.218280, 18.988100>,  <15.087676, 10.093851, 18.944469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.887142, 10.218280, 18.988100>,  <14.552918, 10.425661, 19.060816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.887142, 10.218280, 18.988100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031093, 0.285735, -0.957804,
		0.548521, 0.805954, 0.222628,
		0.835559, -0.518453, -0.181791,
		15.137810, 10.062744, 18.933563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.062359, 10.859261, 18.728331>,  <14.552918, 10.425661, 19.060816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.062359, 10.859261, 18.728331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137446, 10.483935, 18.612173>,  <15.182499, 10.258740, 18.542479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137446, 10.483935, 18.612173>,  <15.062359, 10.859261, 18.728331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.137446, 10.483935, 18.612173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031822, 0.301304, -0.952997,
		0.981707, 0.169655, 0.086419,
		0.187719, -0.938314, -0.290394,
		15.193762, 10.202441, 18.525055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.404253, 10.981147, 18.183258>,  <15.062359, 10.859261, 18.728331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.404253, 10.981147, 18.183258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.324249, 10.595348, 18.114273>,  <15.276247, 10.363870, 18.072882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.324249, 10.595348, 18.114273>,  <15.404253, 10.981147, 18.183258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.324249, 10.595348, 18.114273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053820, 0.164940, -0.984834,
		0.978315, -0.206258, 0.018919,
		-0.200010, -0.964496, -0.172464,
		15.264246, 10.306000, 18.062534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.909357, 10.728900, 17.787231>,  <15.404253, 10.981147, 18.183258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.909357, 10.728900, 17.787231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.585254, 10.505331, 17.716707>,  <15.390792, 10.371189, 17.674393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.585254, 10.505331, 17.716707>,  <15.909357, 10.728900, 17.787231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.585254, 10.505331, 17.716707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046258, 0.360888, -0.931461,
		0.584245, -0.746568, -0.318267,
		-0.810258, -0.558924, -0.176312,
		15.342176, 10.337654, 17.663815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.039793, 10.325704, 17.182936>,  <15.909357, 10.728900, 17.787231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.039793, 10.325704, 17.182936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.644117, 10.316353, 17.240849>,  <15.406713, 10.310742, 17.275597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.644117, 10.316353, 17.240849>,  <16.039793, 10.325704, 17.182936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.644117, 10.316353, 17.240849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143415, 0.360581, -0.921636,
		-0.030660, -0.932435, -0.360035,
		-0.989188, -0.023377, 0.144781,
		15.347361, 10.309340, 17.284283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.677386, 9.939684, 16.666565>,  <16.039793, 10.325704, 17.182936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.677386, 9.939684, 16.666565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.409173, 10.197891, 16.812820>,  <15.248245, 10.352816, 16.900574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.409173, 10.197891, 16.812820>,  <15.677386, 9.939684, 16.666565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.409173, 10.197891, 16.812820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149416, 0.365250, -0.918841,
		-0.726678, -0.670745, -0.148461,
		-0.670533, 0.645518, 0.365638,
		15.208013, 10.391546, 16.922512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.217082, 9.901710, 16.150894>,  <15.677386, 9.939684, 16.666565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.217082, 9.901710, 16.150894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.107723, 10.225908, 16.358105>,  <15.042109, 10.420427, 16.482431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.107723, 10.225908, 16.358105>,  <15.217082, 9.901710, 16.150894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.107723, 10.225908, 16.358105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344359, 0.420379, -0.839463,
		-0.898149, -0.407893, 0.164172,
		-0.273396, 0.810497, 0.518025,
		15.025704, 10.469057, 16.513512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.525470, 10.153008, 15.738775>,  <15.217082, 9.901710, 16.150894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.525470, 10.153008, 15.738775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.699100, 10.441092, 15.955246>,  <14.803277, 10.613944, 16.085129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.699100, 10.441092, 15.955246>,  <14.525470, 10.153008, 15.738775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.699100, 10.441092, 15.955246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108723, 0.638213, -0.762144,
		-0.894292, 0.271989, 0.355335,
		0.434074, 0.720213, 0.541177,
		14.829322, 10.657156, 16.117599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.027954, 10.558965, 15.602745>,  <14.525470, 10.153008, 15.738775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.027954, 10.558965, 15.602745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.345062, 10.768391, 15.727578>,  <14.535327, 10.894046, 15.802478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.345062, 10.768391, 15.727578>,  <14.027954, 10.558965, 15.602745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.345062, 10.768391, 15.727578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056500, 0.572931, -0.817654,
		-0.606896, 0.630579, 0.483785,
		0.792771, 0.523564, 0.312082,
		14.582893, 10.925460, 15.821202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.798643, 11.258598, 15.536318>,  <14.027954, 10.558965, 15.602745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.798643, 11.258598, 15.536318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.197890, 11.274014, 15.555399>,  <14.437439, 11.283264, 15.566848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.197890, 11.274014, 15.555399>,  <13.798643, 11.258598, 15.536318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.197890, 11.274014, 15.555399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011569, 0.645560, -0.763622,
		-0.060226, 0.762736, 0.643899,
		0.998118, 0.038540, 0.047704,
		14.497326, 11.285577, 15.569710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.085653, 11.971336, 15.642623>,  <13.798643, 11.258598, 15.536318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.085653, 11.971336, 15.642623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.388875, 11.761500, 15.487623>,  <14.570808, 11.635598, 15.394623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.388875, 11.761500, 15.487623>,  <14.085653, 11.971336, 15.642623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.388875, 11.761500, 15.487623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137166, 0.709102, -0.691636,
		0.637603, 0.471146, 0.609495,
		0.758056, -0.524591, -0.387500,
		14.616292, 11.604123, 15.371373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.520134, 12.434417, 15.433943>,  <14.085653, 11.971336, 15.642623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.520134, 12.434417, 15.433943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.655548, 12.116524, 15.232430>,  <14.736796, 11.925788, 15.111524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.655548, 12.116524, 15.232430>,  <14.520134, 12.434417, 15.433943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.655548, 12.116524, 15.232430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170218, 0.578284, -0.797880,
		0.925430, 0.184357, 0.331047,
		0.338534, -0.794733, -0.503780,
		14.757109, 11.878104, 15.081296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.132504, 12.738445, 15.144117>,  <14.520134, 12.434417, 15.433943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.132504, 12.738445, 15.144117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.044195, 12.405107, 14.941420>,  <14.991210, 12.205103, 14.819800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.044195, 12.405107, 14.941420>,  <15.132504, 12.738445, 15.144117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.044195, 12.405107, 14.941420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247760, 0.454603, -0.855541,
		0.943331, -0.314432, 0.106106,
		-0.220773, -0.833348, -0.506745,
		14.977963, 12.155102, 14.789396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.688959, 12.623569, 14.584161>,  <15.132504, 12.738445, 15.144117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.688959, 12.623569, 14.584161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.354671, 12.436670, 14.468748>,  <15.154098, 12.324532, 14.399501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.354671, 12.436670, 14.468748>,  <15.688959, 12.623569, 14.584161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.354671, 12.436670, 14.468748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137227, 0.331055, -0.933580,
		0.531730, -0.819808, -0.212551,
		-0.835722, -0.467245, -0.288532,
		15.103953, 12.296497, 14.382189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.914334, 12.258165, 14.014835>,  <15.688959, 12.623569, 14.584161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.914334, 12.258165, 14.014835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.519503, 12.284386, 13.956349>,  <15.282604, 12.300117, 13.921258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.519503, 12.284386, 13.956349>,  <15.914334, 12.258165, 14.014835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.519503, 12.284386, 13.956349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159688, 0.477917, -0.863768,
		0.013258, -0.875956, -0.482209,
		-0.987078, 0.065551, -0.146216,
		15.223379, 12.304050, 13.912484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.358625, 12.462186, 13.348294>,  <15.914334, 12.258165, 14.014835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.358625, 12.462186, 13.348294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.750460, 12.464840, 13.267924>,  <16.985559, 12.466433, 13.219702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.750460, 12.464840, 13.267924>,  <16.358625, 12.462186, 13.348294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.750460, 12.464840, 13.267924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195110, -0.272238, 0.942241,
		-0.048446, -0.962207, -0.267975,
		0.979584, 0.006637, -0.200925,
		17.044334, 12.466831, 13.207646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.680841, 11.745456, 13.637052>,  <16.358625, 12.462186, 13.348294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.680841, 11.745456, 13.637052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.922115, 12.064448, 13.642611>,  <17.066879, 12.255844, 13.645947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.922115, 12.064448, 13.642611>,  <16.680841, 11.745456, 13.637052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.922115, 12.064448, 13.642611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110844, -0.101069, 0.988685,
		0.789862, -0.594818, -0.149359,
		0.603184, 0.797481, 0.013898,
		17.103071, 12.303693, 13.646780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.170294, 11.598886, 14.097606>,  <16.680841, 11.745456, 13.637052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.170294, 11.598886, 14.097606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.190044, 11.997391, 14.069252>,  <17.201895, 12.236493, 14.052239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.190044, 11.997391, 14.069252>,  <17.170294, 11.598886, 14.097606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.190044, 11.997391, 14.069252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042945, 0.073023, 0.996405,
		0.997857, -0.046155, 0.046391,
		0.049377, 0.996262, -0.070884,
		17.204857, 12.296269, 14.047987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.603552, 11.711317, 14.596295>,  <17.170294, 11.598886, 14.097606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.603552, 11.711317, 14.596295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.465105, 12.084476, 14.556476>,  <17.382038, 12.308371, 14.532583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.465105, 12.084476, 14.556476>,  <17.603552, 11.711317, 14.596295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.465105, 12.084476, 14.556476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150238, 0.159851, 0.975641,
		0.926085, 0.322728, -0.195483,
		-0.346115, 0.932895, -0.099550,
		17.361271, 12.364345, 14.526610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.012215, 12.034812, 15.100178>,  <17.603552, 11.711317, 14.596295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.012215, 12.034812, 15.100178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.702484, 12.275578, 15.022083>,  <17.516645, 12.420038, 14.975226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.702484, 12.275578, 15.022083>,  <18.012215, 12.034812, 15.100178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.702484, 12.275578, 15.022083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057660, 0.240135, 0.969026,
		0.630155, 0.761598, -0.151236,
		-0.774325, 0.601916, -0.195236,
		17.470186, 12.456154, 14.963512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.116966, 12.664064, 15.480545>,  <18.012215, 12.034812, 15.100178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.116966, 12.664064, 15.480545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.724520, 12.653065, 15.403959>,  <17.489052, 12.646464, 15.358008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.724520, 12.653065, 15.403959>,  <18.116966, 12.664064, 15.480545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.724520, 12.653065, 15.403959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193264, 0.180133, 0.964469,
		0.007966, 0.983258, -0.182046,
		-0.981114, -0.027500, -0.191463,
		17.430185, 12.644814, 15.346520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.869846, 13.300524, 15.767159>,  <18.116966, 12.664064, 15.480545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.869846, 13.300524, 15.767159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.597408, 13.010167, 15.728814>,  <17.433945, 12.835953, 15.705807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.597408, 13.010167, 15.728814>,  <17.869846, 13.300524, 15.767159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.597408, 13.010167, 15.728814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192282, 0.050993, 0.980014,
		-0.706496, 0.685916, -0.174307,
		-0.681096, -0.725892, -0.095863,
		17.393080, 12.792399, 15.700055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.579073, 13.405831, 16.378607>,  <17.869846, 13.300524, 15.767159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.579073, 13.405831, 16.378607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.389357, 13.066937, 16.282906>,  <17.275526, 12.863602, 16.225485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.389357, 13.066937, 16.282906>,  <17.579073, 13.405831, 16.378607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.389357, 13.066937, 16.282906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299458, -0.100302, 0.948822,
		-0.827872, 0.521665, -0.206139,
		-0.474291, -0.847234, -0.239254,
		17.247068, 12.812767, 16.211130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.953768, 13.442397, 16.689964>,  <17.579073, 13.405831, 16.378607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.953768, 13.442397, 16.689964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.023977, 13.054234, 16.623634>,  <17.066103, 12.821336, 16.583836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.023977, 13.054234, 16.623634>,  <16.953768, 13.442397, 16.689964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.023977, 13.054234, 16.623634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057415, -0.178245, 0.982310,
		-0.982799, -0.162899, -0.087002,
		0.175525, -0.970408, -0.165827,
		17.076635, 12.763111, 16.573887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.460218, 12.981899, 17.052540>,  <16.953768, 13.442397, 16.689964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.460218, 12.981899, 17.052540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.765034, 12.735303, 16.973309>,  <16.947924, 12.587345, 16.925770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.765034, 12.735303, 16.973309>,  <16.460218, 12.981899, 17.052540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765034, 12.735303, 16.973309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036182, -0.264879, 0.963603,
		-0.646518, -0.741470, -0.179542,
		0.762040, -0.616491, -0.198077,
		16.993647, 12.550356, 16.913885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.272753, 12.293291, 17.295086>,  <16.460218, 12.981899, 17.052540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.272753, 12.293291, 17.295086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.671980, 12.303658, 17.272495>,  <16.911516, 12.309879, 17.258942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.671980, 12.303658, 17.272495>,  <16.272753, 12.293291, 17.295086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.671980, 12.303658, 17.272495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060823, -0.221371, 0.973291,
		0.012725, -0.974845, -0.222519,
		0.998068, 0.025920, -0.056476,
		16.971399, 12.311434, 17.255552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.422918, 11.771008, 17.641104>,  <16.272753, 12.293291, 17.295086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.422918, 11.771008, 17.641104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.764458, 11.978081, 17.662832>,  <16.969381, 12.102324, 17.675869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.764458, 11.978081, 17.662832>,  <16.422918, 11.771008, 17.641104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.764458, 11.978081, 17.662832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118317, -0.294653, 0.948251,
		0.506896, -0.803236, -0.312839,
		0.853848, 0.517680, 0.054322,
		17.020613, 12.133385, 17.679129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.856003, 11.254977, 17.822357>,  <16.422918, 11.771008, 17.641104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.856003, 11.254977, 17.822357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.030678, 11.595769, 17.937899>,  <17.135483, 11.800243, 18.007223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.030678, 11.595769, 17.937899>,  <16.856003, 11.254977, 17.822357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.030678, 11.595769, 17.937899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012099, -0.315496, 0.948850,
		0.899532, -0.417846, -0.127465,
		0.436687, 0.851979, 0.288854,
		17.161684, 11.851362, 18.024555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.529388, 11.010134, 18.211445>,  <16.856003, 11.254977, 17.822357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.529388, 11.010134, 18.211445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.426630, 11.377369, 18.332188>,  <17.364975, 11.597710, 18.404634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.426630, 11.377369, 18.332188>,  <17.529388, 11.010134, 18.211445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.426630, 11.377369, 18.332188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349102, -0.203097, 0.914811,
		0.901184, 0.340390, -0.268332,
		-0.256895, 0.918088, 0.301859,
		17.349562, 11.652796, 18.422745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.033062, 11.205355, 18.600441>,  <17.529388, 11.010134, 18.211445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.033062, 11.205355, 18.600441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.750965, 11.471333, 18.698814>,  <17.581707, 11.630919, 18.757839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.750965, 11.471333, 18.698814>,  <18.033062, 11.205355, 18.600441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.750965, 11.471333, 18.698814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160670, -0.187962, 0.968946,
		0.690522, 0.722854, 0.025722,
		-0.705241, 0.664945, 0.245933,
		17.539392, 11.670816, 18.772594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.259108, 11.415693, 19.153572>,  <18.033062, 11.205355, 18.600441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.259108, 11.415693, 19.153572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.877020, 11.533709, 19.162580>,  <17.647768, 11.604518, 19.167986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.877020, 11.533709, 19.162580>,  <18.259108, 11.415693, 19.153572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.877020, 11.533709, 19.162580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002342, -0.083647, 0.996493,
		0.295887, 0.951817, 0.080593,
		-0.955220, 0.295038, 0.022521,
		17.590454, 11.622220, 19.169336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.277992, 11.822077, 19.841105>,  <18.259108, 11.415693, 19.153572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.277992, 11.822077, 19.841105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.897951, 11.749211, 19.739817>,  <17.669926, 11.705492, 19.679045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.897951, 11.749211, 19.739817>,  <18.277992, 11.822077, 19.841105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.897951, 11.749211, 19.739817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213896, -0.210416, 0.953925,
		-0.227053, 0.960490, 0.160953,
		-0.950103, -0.182165, -0.253220,
		17.612921, 11.694562, 19.663851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.866816, 12.077946, 20.391096>,  <18.277992, 11.822077, 19.841105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.866816, 12.077946, 20.391096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.613543, 11.816696, 20.224958>,  <17.461578, 11.659946, 20.125277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.613543, 11.816696, 20.224958>,  <17.866816, 12.077946, 20.391096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.613543, 11.816696, 20.224958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312372, -0.275343, 0.909181,
		-0.708168, 0.705420, -0.029674,
		-0.633184, -0.653123, -0.415342,
		17.423588, 11.620759, 20.100355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.202717, 12.227821, 20.721283>,  <17.866816, 12.077946, 20.391096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.202717, 12.227821, 20.721283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.195900, 11.857870, 20.569330>,  <17.191811, 11.635900, 20.478159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.195900, 11.857870, 20.569330>,  <17.202717, 12.227821, 20.721283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.195900, 11.857870, 20.569330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402236, -0.341496, 0.849463,
		-0.915377, 0.167280, -0.366199,
		-0.017042, -0.924877, -0.379884,
		17.190786, 11.580407, 20.455364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.630173, 11.943730, 21.082413>,  <17.202717, 12.227821, 20.721283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.630173, 11.943730, 21.082413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.848856, 11.649631, 20.922153>,  <16.980066, 11.473170, 20.825998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.848856, 11.649631, 20.922153>,  <16.630173, 11.943730, 21.082413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.848856, 11.649631, 20.922153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055460, -0.509233, 0.858840,
		-0.835485, -0.447314, -0.319178,
		0.546707, -0.735250, -0.400649,
		17.012869, 11.429055, 20.801958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.302069, 11.335665, 21.257891>,  <16.630173, 11.943730, 21.082413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.302069, 11.335665, 21.257891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.688225, 11.259972, 21.186094>,  <16.919918, 11.214556, 21.143017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.688225, 11.259972, 21.186094>,  <16.302069, 11.335665, 21.257891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.688225, 11.259972, 21.186094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048140, -0.547084, 0.835692,
		-0.256335, -0.815408, -0.519039,
		0.965388, -0.189231, -0.179491,
		16.977840, 11.203202, 21.132246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.404768, 10.606910, 21.385210>,  <16.302069, 11.335665, 21.257891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.404768, 10.606910, 21.385210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.777792, 10.750477, 21.400776>,  <17.001606, 10.836617, 21.410114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.777792, 10.750477, 21.400776>,  <16.404768, 10.606910, 21.385210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.777792, 10.750477, 21.400776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222470, -0.656208, 0.721039,
		0.284328, -0.663754, -0.691801,
		0.932558, 0.358917, 0.038913,
		17.057560, 10.858151, 21.412451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.729078, 9.978202, 21.545254>,  <16.404768, 10.606910, 21.385210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.729078, 9.978202, 21.545254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.963106, 10.288211, 21.640783>,  <17.103523, 10.474216, 21.698101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.963106, 10.288211, 21.640783>,  <16.729078, 9.978202, 21.545254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.963106, 10.288211, 21.640783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244553, -0.449382, 0.859214,
		0.773233, -0.444293, -0.452453,
		0.585068, 0.775022, 0.238824,
		17.138626, 10.520718, 21.712431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.302265, 9.690445, 21.875977>,  <16.729078, 9.978202, 21.545254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.302265, 9.690445, 21.875977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.318748, 10.074043, 21.988142>,  <17.328638, 10.304202, 22.055441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.318748, 10.074043, 21.988142>,  <17.302265, 9.690445, 21.875977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.318748, 10.074043, 21.988142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270964, -0.280859, 0.920705,
		0.961707, 0.038040, -0.271427,
		0.041209, 0.958995, 0.280411,
		17.331112, 10.361742, 22.072266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.940050, 9.843306, 22.207439>,  <17.302265, 9.690445, 21.875977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.940050, 9.843306, 22.207439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.665525, 10.107751, 22.328701>,  <17.500811, 10.266418, 22.401459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.665525, 10.107751, 22.328701>,  <17.940050, 9.843306, 22.207439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.665525, 10.107751, 22.328701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162421, -0.266975, 0.949918,
		0.708938, 0.701181, 0.075850,
		-0.686314, 0.661113, 0.303156,
		17.459631, 10.306085, 22.419647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.256588, 9.986515, 22.846947>,  <17.940050, 9.843306, 22.207439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.256588, 9.986515, 22.846947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.886496, 10.135816, 22.874166>,  <17.664440, 10.225396, 22.890499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.886496, 10.135816, 22.874166>,  <18.256588, 9.986515, 22.846947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.886496, 10.135816, 22.874166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055981, -0.311700, 0.948530,
		0.375252, 0.873800, 0.309289,
		-0.925231, 0.373252, 0.068050,
		17.608927, 10.247791, 22.894581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.226154, 10.438557, 23.411760>,  <18.256588, 9.986515, 22.846947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.226154, 10.438557, 23.411760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.847490, 10.332935, 23.337889>,  <17.620291, 10.269563, 23.293566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.847490, 10.332935, 23.337889>,  <18.226154, 10.438557, 23.411760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.847490, 10.332935, 23.337889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110079, -0.273641, 0.955512,
		-0.302842, 0.924877, 0.229979,
		-0.946662, -0.264053, -0.184679,
		17.563492, 10.253719, 23.282486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.853209, 10.636837, 23.995501>,  <18.226154, 10.438557, 23.411760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.853209, 10.636837, 23.995501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.617264, 10.353747, 23.839970>,  <17.475697, 10.183893, 23.746651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.617264, 10.353747, 23.839970>,  <17.853209, 10.636837, 23.995501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.617264, 10.353747, 23.839970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178470, -0.355353, 0.917536,
		-0.787534, 0.610616, 0.083302,
		-0.589864, -0.707724, -0.388829,
		17.440304, 10.141430, 23.723322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.483646, 10.573346, 24.498201>,  <17.853209, 10.636837, 23.995501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.483646, 10.573346, 24.498201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.348906, 10.259218, 24.290430>,  <17.268061, 10.070742, 24.165768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.348906, 10.259218, 24.290430>,  <17.483646, 10.573346, 24.498201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.348906, 10.259218, 24.290430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305119, -0.430852, 0.849276,
		-0.890748, 0.444568, -0.094482,
		-0.336853, -0.785319, -0.519427,
		17.247850, 10.023623, 24.134602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.854862, 10.438010, 24.768734>,  <17.483646, 10.573346, 24.498201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.854862, 10.438010, 24.768734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.989197, 10.099555, 24.603197>,  <17.069798, 9.896482, 24.503876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.989197, 10.099555, 24.603197>,  <16.854862, 10.438010, 24.768734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.989197, 10.099555, 24.603197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309549, -0.514099, 0.799926,
		-0.889603, -0.140539, -0.434574,
		0.335836, -0.846139, -0.413841,
		17.089947, 9.845714, 24.479046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.366417, 10.027560, 24.876368>,  <16.854862, 10.438010, 24.768734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.366417, 10.027560, 24.876368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.660210, 9.769620, 24.791792>,  <16.836485, 9.614856, 24.741047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.660210, 9.769620, 24.791792>,  <16.366417, 10.027560, 24.876368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.660210, 9.769620, 24.791792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279441, -0.571314, 0.771695,
		-0.618426, -0.507710, -0.599817,
		0.734481, -0.644849, -0.211441,
		16.880554, 9.576165, 24.728359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.018267, 9.430602, 24.973730>,  <16.366417, 10.027560, 24.876368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.018267, 9.430602, 24.973730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.404980, 9.332275, 25.001751>,  <16.637007, 9.273279, 25.018564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.404980, 9.332275, 25.001751>,  <16.018267, 9.430602, 24.973730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.404980, 9.332275, 25.001751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220199, -0.661811, 0.716602,
		-0.129791, -0.708223, -0.693956,
		0.966782, -0.245817, 0.070053,
		16.695015, 9.258531, 25.022766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.055691, 8.673653, 25.013109>,  <16.018267, 9.430602, 24.973730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.055691, 8.673653, 25.013109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.390205, 8.822582, 25.174105>,  <16.590914, 8.911940, 25.270702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.390205, 8.822582, 25.174105>,  <16.055691, 8.673653, 25.013109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.390205, 8.822582, 25.174105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159238, -0.537507, 0.828088,
		0.524658, -0.756611, -0.390223,
		0.836288, 0.372324, 0.402489,
		16.641092, 8.934279, 25.294851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.266060, 8.089686, 25.292183>,  <16.055691, 8.673653, 25.013109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.266060, 8.089686, 25.292183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.479591, 8.385804, 25.455643>,  <16.607710, 8.563475, 25.553719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.479591, 8.385804, 25.455643>,  <16.266060, 8.089686, 25.292183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.479591, 8.385804, 25.455643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047719, -0.456126, 0.888635,
		0.844247, -0.493877, -0.208166,
		0.533826, 0.740294, 0.408650,
		16.639740, 8.607892, 25.578238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.751591, 7.703473, 25.717196>,  <16.266060, 8.089686, 25.292183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.751591, 7.703473, 25.717196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.757580, 8.083214, 25.842739>,  <16.761173, 8.311058, 25.918064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.757580, 8.083214, 25.842739>,  <16.751591, 7.703473, 25.717196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.757580, 8.083214, 25.842739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008795, -0.313755, 0.949463,
		0.999849, -0.016976, 0.003652,
		0.014972, 0.949352, 0.313857,
		16.762072, 8.368019, 25.936895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.237541, 7.755646, 26.241388>,  <16.751591, 7.703473, 25.717196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.237541, 7.755646, 26.241388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.991468, 8.065370, 26.300718>,  <16.843824, 8.251204, 26.336317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.991468, 8.065370, 26.300718>,  <17.237541, 7.755646, 26.241388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.991468, 8.065370, 26.300718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046077, -0.152504, 0.987228,
		0.787039, 0.614158, 0.058140,
		-0.615180, 0.774308, 0.148325,
		16.806913, 8.297662, 26.345215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.579100, 8.169280, 26.787941>,  <17.237541, 7.755646, 26.241388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.579100, 8.169280, 26.787941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.192007, 8.269927, 26.782473>,  <16.959751, 8.330316, 26.779192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.192007, 8.269927, 26.782473>,  <17.579100, 8.169280, 26.787941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.192007, 8.269927, 26.782473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004565, 0.036739, 0.999314,
		0.251947, 0.967129, -0.034404,
		-0.967730, 0.251617, -0.013671,
		16.901688, 8.345412, 26.778372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.402178, 8.677144, 27.348190>,  <17.579100, 8.169280, 26.787941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.402178, 8.677144, 27.348190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.072754, 8.470387, 27.254747>,  <16.875099, 8.346334, 27.198681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.072754, 8.470387, 27.254747>,  <17.402178, 8.677144, 27.348190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.072754, 8.470387, 27.254747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126855, -0.233575, 0.964028,
		-0.552864, 0.823568, 0.126793,
		-0.823559, -0.516892, -0.233609,
		16.825686, 8.315320, 27.184666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.793097, 9.056323, 27.559383>,  <17.402178, 8.677144, 27.348190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.793097, 9.056323, 27.559383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.720964, 9.292509, 27.874046>,  <16.677685, 9.434221, 28.062845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.720964, 9.292509, 27.874046>,  <16.793097, 9.056323, 27.559383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.720964, 9.292509, 27.874046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136278, 0.807055, -0.574535,
		-0.974120, 0.003599, -0.226002,
		-0.180329, 0.590466, 0.786659,
		16.666866, 9.469648, 28.110044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.344923, 9.565772, 27.369745>,  <16.793097, 9.056323, 27.559383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.344923, 9.565772, 27.369745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.512009, 9.759028, 27.677534>,  <16.612261, 9.874982, 27.862207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.512009, 9.759028, 27.677534>,  <16.344923, 9.565772, 27.369745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.512009, 9.759028, 27.677534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131508, 0.805830, -0.577359,
		-0.899010, 0.342364, 0.273071,
		0.417716, 0.483140, 0.769473,
		16.637323, 9.903971, 27.908377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.121979, 10.187381, 27.419270>,  <16.344923, 9.565772, 27.369745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.121979, 10.187381, 27.419270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.468040, 10.238150, 27.613340>,  <16.675678, 10.268611, 27.729782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.468040, 10.238150, 27.613340>,  <16.121979, 10.187381, 27.419270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.468040, 10.238150, 27.613340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226607, 0.764112, -0.603972,
		-0.447386, 0.632474, 0.632315,
		0.865156, 0.126921, 0.485176,
		16.727587, 10.276226, 27.758894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.107594, 10.872469, 27.651403>,  <16.121979, 10.187381, 27.419270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.107594, 10.872469, 27.651403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.485310, 10.748495, 27.607113>,  <16.711939, 10.674110, 27.580540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.485310, 10.748495, 27.607113>,  <16.107594, 10.872469, 27.651403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.485310, 10.748495, 27.607113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196227, 0.800276, -0.566617,
		0.264225, 0.513322, 0.816508,
		0.944288, -0.309935, -0.110725,
		16.768597, 10.655515, 27.573895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.476526, 11.494687, 27.793148>,  <16.107594, 10.872469, 27.651403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.476526, 11.494687, 27.793148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.730970, 11.247435, 27.608419>,  <16.883636, 11.099083, 27.497581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.730970, 11.247435, 27.608419>,  <16.476526, 11.494687, 27.793148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.730970, 11.247435, 27.608419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322518, 0.756733, -0.568628,
		0.700963, 0.212763, 0.680722,
		0.636108, -0.618132, -0.461821,
		16.921803, 11.061995, 27.469873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.074799, 11.911583, 27.724054>,  <16.476526, 11.494687, 27.793148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.074799, 11.911583, 27.724054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.104515, 11.612940, 27.459614>,  <17.122345, 11.433754, 27.300949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.104515, 11.612940, 27.459614>,  <17.074799, 11.911583, 27.724054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.104515, 11.612940, 27.459614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236785, 0.657182, -0.715573,
		0.968718, -0.103378, 0.225609,
		0.074291, -0.746609, -0.661102,
		17.126802, 11.388957, 27.261284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.515863, 12.216303, 27.348244>,  <17.074799, 11.911583, 27.724054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.515863, 12.216303, 27.348244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.405634, 11.896741, 27.134399>,  <17.339497, 11.705004, 27.006092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.405634, 11.896741, 27.134399>,  <17.515863, 12.216303, 27.348244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.405634, 11.896741, 27.134399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186389, 0.501183, -0.845029,
		0.943037, -0.332512, 0.010794,
		-0.275573, -0.798906, -0.534611,
		17.322962, 11.657069, 26.974016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.959681, 12.255070, 26.846676>,  <17.515863, 12.216303, 27.348244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.959681, 12.255070, 26.846676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.648520, 12.032512, 26.729858>,  <17.461823, 11.898977, 26.659769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.648520, 12.032512, 26.729858>,  <17.959681, 12.255070, 26.846676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.648520, 12.032512, 26.729858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007573, 0.473019, -0.881020,
		0.628337, -0.683137, -0.372177,
		-0.777904, -0.556396, -0.292042,
		17.415148, 11.865593, 26.642246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.156887, 12.103163, 26.257940>,  <17.959681, 12.255070, 26.846676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.156887, 12.103163, 26.257940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.763407, 12.032387, 26.270775>,  <17.527319, 11.989922, 26.278477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.763407, 12.032387, 26.270775>,  <18.156887, 12.103163, 26.257940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.763407, 12.032387, 26.270775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103690, 0.412319, -0.905120,
		0.146920, -0.893692, -0.423944,
		-0.983698, -0.176939, 0.032089,
		17.468298, 11.979305, 26.280401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.924393, 11.806769, 25.640850>,  <18.156887, 12.103163, 26.257940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.924393, 11.806769, 25.640850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.583790, 11.963926, 25.779743>,  <17.379429, 12.058220, 25.863079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.583790, 11.963926, 25.779743>,  <17.924393, 11.806769, 25.640850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.583790, 11.963926, 25.779743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197913, 0.372414, -0.906718,
		-0.485557, -0.840799, -0.239355,
		-0.851507, 0.392892, 0.347234,
		17.328337, 12.081794, 25.883913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.328007, 11.614057, 25.191792>,  <17.924393, 11.806769, 25.640850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.328007, 11.614057, 25.191792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.229019, 11.959962, 25.366579>,  <17.169626, 12.167505, 25.471453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.229019, 11.959962, 25.366579>,  <17.328007, 11.614057, 25.191792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.229019, 11.959962, 25.366579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055212, 0.437679, -0.897435,
		-0.967321, -0.246214, -0.060567,
		-0.247470, 0.864763, 0.436970,
		17.154778, 12.219391, 25.497669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.878937, 11.838157, 24.723110>,  <17.328007, 11.614057, 25.191792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.878937, 11.838157, 24.723110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.986826, 12.154291, 24.943153>,  <17.051559, 12.343972, 25.075180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.986826, 12.154291, 24.943153>,  <16.878937, 11.838157, 24.723110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.986826, 12.154291, 24.943153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075522, 0.586882, -0.806143,
		-0.959973, 0.175888, 0.217982,
		0.269721, 0.790337, 0.550107,
		17.067741, 12.391393, 25.108185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334215, 12.507455, 24.699467>,  <16.878937, 11.838157, 24.723110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.334215, 12.507455, 24.699467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.702749, 12.633344, 24.790758>,  <16.923870, 12.708877, 24.845533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.702749, 12.633344, 24.790758>,  <16.334215, 12.507455, 24.699467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.702749, 12.633344, 24.790758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095043, 0.751593, -0.652744,
		-0.376969, 0.579705, 0.722382,
		0.921337, 0.314721, 0.228231,
		16.979151, 12.727760, 24.859228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305035, 13.178213, 24.636839>,  <16.334215, 12.507455, 24.699467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.305035, 13.178213, 24.636839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.693525, 13.083809, 24.624090>,  <16.926620, 13.027166, 24.616442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.693525, 13.083809, 24.624090>,  <16.305035, 13.178213, 24.636839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.693525, 13.083809, 24.624090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146481, 0.697516, -0.701438,
		0.187776, 0.676587, 0.712018,
		0.971228, -0.236011, -0.031870,
		16.984894, 13.013005, 24.614529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.651272, 13.794495, 24.664425>,  <16.305035, 13.178213, 24.636839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.651272, 13.794495, 24.664425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.876373, 13.528616, 24.467859>,  <17.011435, 13.369089, 24.349920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.876373, 13.528616, 24.467859>,  <16.651272, 13.794495, 24.664425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.876373, 13.528616, 24.467859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106423, 0.647794, -0.754346,
		0.819746, 0.372213, 0.435287,
		0.562753, -0.664696, -0.491414,
		17.045198, 13.329207, 24.320435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.231197, 14.116590, 24.313156>,  <16.651272, 13.794495, 24.664425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.231197, 14.116590, 24.313156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.200787, 13.764062, 24.126612>,  <17.182539, 13.552545, 24.014685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.200787, 13.764062, 24.126612>,  <17.231197, 14.116590, 24.313156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.200787, 13.764062, 24.126612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090290, 0.459709, -0.883468,
		0.993009, -0.109276, 0.044624,
		-0.076028, -0.881321, -0.466362,
		17.177979, 13.499665, 23.986704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.752846, 14.195448, 23.739546>,  <17.231197, 14.116590, 24.313156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.752846, 14.195448, 23.739546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.558611, 13.859616, 23.642132>,  <17.442070, 13.658117, 23.583683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.558611, 13.859616, 23.642132>,  <17.752846, 14.195448, 23.739546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.558611, 13.859616, 23.642132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257450, 0.128886, -0.957657,
		0.835418, -0.527725, 0.153565,
		-0.485588, -0.839580, -0.243537,
		17.412935, 13.607742, 23.569071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.092627, 13.918420, 23.168869>,  <17.752846, 14.195448, 23.739546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.092627, 13.918420, 23.168869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.758186, 13.706485, 23.112009>,  <17.557522, 13.579324, 23.077892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.758186, 13.706485, 23.112009>,  <18.092627, 13.918420, 23.168869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.758186, 13.706485, 23.112009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190932, -0.038139, -0.980862,
		0.514276, -0.847241, 0.133051,
		-0.836101, -0.529837, -0.142152,
		17.507357, 13.547534, 23.069363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.361572, 13.424553, 22.671673>,  <18.092627, 13.918420, 23.168869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.361572, 13.424553, 22.671673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.961985, 13.441349, 22.678541>,  <17.722231, 13.451427, 22.682663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.961985, 13.441349, 22.678541>,  <18.361572, 13.424553, 22.671673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.961985, 13.441349, 22.678541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025343, -0.202567, -0.978940,
		-0.037626, -0.978368, 0.203422,
		-0.998971, 0.041989, 0.017173,
		17.662294, 13.453946, 22.683693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.119276, 12.898030, 22.248718>,  <18.361572, 13.424553, 22.671673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.119276, 12.898030, 22.248718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.809290, 13.149232, 22.277109>,  <17.623299, 13.299953, 22.294144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.809290, 13.149232, 22.277109>,  <18.119276, 12.898030, 22.248718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.809290, 13.149232, 22.277109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010937, 0.098958, -0.995031,
		-0.631908, -0.771892, -0.069821,
		-0.774966, 0.628005, 0.070975,
		17.576799, 13.337633, 22.298401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516119, 12.633084, 21.819378>,  <18.119276, 12.898030, 22.248718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.516119, 12.633084, 21.819378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.497984, 13.030722, 21.858822>,  <17.487103, 13.269304, 21.882488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.497984, 13.030722, 21.858822>,  <17.516119, 12.633084, 21.819378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.497984, 13.030722, 21.858822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026211, 0.097492, -0.994891,
		-0.998628, -0.047690, 0.021636,
		-0.045337, 0.994093, 0.098608,
		17.484383, 13.328950, 21.888405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.995968, 12.830804, 21.411083>,  <17.516119, 12.633084, 21.819378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.995968, 12.830804, 21.411083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.194355, 13.176572, 21.444050>,  <17.313387, 13.384032, 21.463829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.194355, 13.176572, 21.444050>,  <16.995968, 12.830804, 21.411083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.194355, 13.176572, 21.444050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090555, 0.145882, -0.985149,
		-0.863605, 0.481141, 0.150631,
		0.495969, 0.864420, 0.082415,
		17.343145, 13.435898, 21.468775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.580893, 13.311600, 20.984777>,  <16.995968, 12.830804, 21.411083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.580893, 13.311600, 20.984777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.941040, 13.477499, 21.037422>,  <17.157129, 13.577039, 21.069010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.941040, 13.477499, 21.037422>,  <16.580893, 13.311600, 20.984777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.941040, 13.477499, 21.037422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061662, 0.177798, -0.982133,
		-0.430738, 0.892397, 0.134509,
		0.900368, 0.414748, 0.131611,
		17.211151, 13.601923, 21.076906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.629725, 13.926846, 20.618771>,  <16.580893, 13.311600, 20.984777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.629725, 13.926846, 20.618771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.019129, 13.837506, 20.638351>,  <17.252771, 13.783903, 20.650099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.019129, 13.837506, 20.638351>,  <16.629725, 13.926846, 20.618771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019129, 13.837506, 20.638351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107999, 0.260459, -0.959426,
		0.201536, 0.939296, 0.277680,
		0.973509, -0.223348, 0.048951,
		17.311182, 13.770502, 20.653036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.971628, 14.159244, 20.076099>,  <16.629725, 13.926846, 20.618771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.971628, 14.159244, 20.076099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.314667, 13.999700, 20.205986>,  <17.520489, 13.903973, 20.283918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.314667, 13.999700, 20.205986>,  <16.971628, 14.159244, 20.076099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.314667, 13.999700, 20.205986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439379, 0.239978, -0.865654,
		0.267351, 0.885054, 0.381055,
		0.857595, -0.398861, 0.324715,
		17.571945, 13.880041, 20.303400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.605532, 14.680921, 20.011196>,  <16.971628, 14.159244, 20.076099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.605532, 14.680921, 20.011196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.747480, 14.308468, 19.977585>,  <17.832649, 14.084996, 19.957418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.747480, 14.308468, 19.977585>,  <17.605532, 14.680921, 20.011196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.747480, 14.308468, 19.977585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564877, 0.285164, -0.774336,
		0.744969, 0.227326, 0.627171,
		0.354873, -0.931131, -0.084027,
		17.853943, 14.029129, 19.952377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.346704, 14.684618, 19.866980>,  <17.605532, 14.680921, 20.011196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.346704, 14.684618, 19.866980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.251263, 14.315795, 19.745077>,  <18.193998, 14.094501, 19.671936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.251263, 14.315795, 19.745077>,  <18.346704, 14.684618, 19.866980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.251263, 14.315795, 19.745077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703152, 0.052416, -0.709105,
		0.669810, -0.383486, 0.635840,
		-0.238604, -0.922058, -0.304758,
		18.179682, 14.039178, 19.653650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.007029, 14.244896, 19.809509>,  <18.346704, 14.684618, 19.866980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.007029, 14.244896, 19.809509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.725096, 14.099981, 19.565556>,  <18.555935, 14.013032, 19.419184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.725096, 14.099981, 19.565556>,  <19.007029, 14.244896, 19.809509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.725096, 14.099981, 19.565556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591345, 0.174803, -0.787245,
		0.391819, -0.915528, 0.091030,
		-0.704833, -0.362288, -0.609884,
		18.513645, 13.991295, 19.382591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.277716, 13.823291, 19.328766>,  <19.007029, 14.244896, 19.809509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.277716, 13.823291, 19.328766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.935417, 13.940525, 19.158213>,  <18.730038, 14.010865, 19.055882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.935417, 13.940525, 19.158213>,  <19.277716, 13.823291, 19.328766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.935417, 13.940525, 19.158213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493007, 0.211851, -0.843838,
		-0.156988, -0.932319, -0.325783,
		-0.855744, 0.293086, -0.426382,
		18.678694, 14.028451, 19.030298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.267246, 13.618845, 18.566813>,  <19.277716, 13.823291, 19.328766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.267246, 13.618845, 18.566813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.990164, 13.903771, 18.612003>,  <18.823914, 14.074727, 18.639118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.990164, 13.903771, 18.612003>,  <19.267246, 13.618845, 18.566813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.990164, 13.903771, 18.612003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346107, 0.465750, -0.814425,
		-0.632747, -0.525055, -0.569165,
		-0.692706, 0.712317, 0.112976,
		18.782352, 14.117466, 18.645897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.974510, 13.725318, 17.936987>,  <19.267246, 13.618845, 18.566813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.974510, 13.725318, 17.936987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.895731, 14.057091, 18.146082>,  <18.848463, 14.256154, 18.271538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.895731, 14.057091, 18.146082>,  <18.974510, 13.725318, 17.936987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.895731, 14.057091, 18.146082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390366, 0.555435, -0.734238,
		-0.899347, 0.059450, -0.433175,
		-0.196950, 0.829432, 0.522736,
		18.836645, 14.305921, 18.302902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.671768, 14.129105, 17.475864>,  <18.974510, 13.725318, 17.936987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.671768, 14.129105, 17.475864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.837040, 14.340913, 17.772213>,  <18.936203, 14.467998, 17.950022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.837040, 14.340913, 17.772213>,  <18.671768, 14.129105, 17.475864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.837040, 14.340913, 17.772213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396627, 0.627705, -0.669831,
		-0.819739, 0.570609, 0.049332,
		0.413178, 0.529520, 0.740873,
		18.960993, 14.499768, 17.994474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.803949, 14.662193, 17.141539>,  <18.671768, 14.129105, 17.475864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.803949, 14.662193, 17.141539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.991703, 14.761828, 17.480391>,  <19.104355, 14.821609, 17.683702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.991703, 14.761828, 17.480391>,  <18.803949, 14.662193, 17.141539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.991703, 14.761828, 17.480391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484086, 0.729768, -0.482804,
		-0.738470, 0.636706, 0.221964,
		0.469386, 0.249087, 0.847132,
		19.132519, 14.836555, 17.734529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.666782, 15.414925, 17.221336>,  <18.803949, 14.662193, 17.141539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.666782, 15.414925, 17.221336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.995104, 15.297620, 17.417408>,  <19.192097, 15.227237, 17.535051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.995104, 15.297620, 17.417408>,  <18.666782, 15.414925, 17.221336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.995104, 15.297620, 17.417408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516833, 0.746707, -0.418702,
		-0.243231, 0.597014, 0.764469,
		0.820806, -0.293262, 0.490179,
		19.241346, 15.209641, 17.564461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.012308, 16.060448, 17.495321>,  <18.666782, 15.414925, 17.221336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.012308, 16.060448, 17.495321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.300432, 15.784404, 17.467318>,  <19.473307, 15.618777, 17.450516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.300432, 15.784404, 17.467318>,  <19.012308, 16.060448, 17.495321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.300432, 15.784404, 17.467318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664686, 0.715566, -0.214845,
		0.198364, 0.108220, 0.974136,
		0.720308, -0.690112, -0.070011,
		19.516525, 15.577371, 17.446314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.606606, 16.496357, 17.712805>,  <19.012308, 16.060448, 17.495321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.606606, 16.496357, 17.712805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.778627, 16.165110, 17.568989>,  <19.881840, 15.966361, 17.482698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.778627, 16.165110, 17.568989>,  <19.606606, 16.496357, 17.712805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.778627, 16.165110, 17.568989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864921, 0.492080, -0.098840,
		0.258774, -0.268469, 0.927880,
		0.430055, -0.828120, -0.359542,
		19.907644, 15.916674, 17.461126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.234520, 16.360760, 18.134651>,  <19.606606, 16.496357, 17.712805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.234520, 16.360760, 18.134651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.277468, 16.121445, 17.817028>,  <20.303236, 15.977856, 17.626455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.277468, 16.121445, 17.817028>,  <20.234520, 16.360760, 18.134651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.277468, 16.121445, 17.817028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944023, 0.311916, -0.107369,
		0.311916, -0.738080, 0.598286,
		0.107369, -0.598286, -0.794056,
		20.309679, 15.941958, 17.578812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.812149, 15.915859, 18.266870>,  <20.234520, 16.360760, 18.134651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.812149, 15.915859, 18.266870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.774063, 15.952404, 17.870369>,  <20.751211, 15.974331, 17.632467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.774063, 15.952404, 17.870369>,  <20.812149, 15.915859, 18.266870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.774063, 15.952404, 17.870369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965421, 0.251238, -0.069577,
		0.242684, -0.963604, -0.112123,
		-0.095215, 0.091361, -0.991256,
		20.745499, 15.979813, 17.572992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.468412, 15.803519, 18.014874>,  <20.812149, 15.915859, 18.266870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.468412, 15.803519, 18.014874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.291531, 15.966890, 17.695463>,  <21.185402, 16.064913, 17.503817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.291531, 15.966890, 17.695463>,  <21.468412, 15.803519, 18.014874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.291531, 15.966890, 17.695463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892347, 0.290074, -0.345794,
		0.090400, -0.865473, -0.492731,
		-0.442204, 0.408428, -0.798525,
		21.158869, 16.089418, 17.455906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.656584, 15.403156, 17.300442>,  <21.468412, 15.803519, 18.014874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.656584, 15.403156, 17.300442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.545910, 15.768985, 17.182455>,  <21.479506, 15.988482, 17.111664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.545910, 15.768985, 17.182455>,  <21.656584, 15.403156, 17.300442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.545910, 15.768985, 17.182455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854665, 0.093876, -0.510623,
		-0.439311, -0.393378, -0.807626,
		-0.276685, 0.914572, -0.294965,
		21.462904, 16.043356, 17.093966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.779900, 15.432052, 16.611055>,  <21.656584, 15.403156, 17.300442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.779900, 15.432052, 16.611055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.776134, 15.816577, 16.721174>,  <21.773874, 16.047293, 16.787245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.776134, 15.816577, 16.721174>,  <21.779900, 15.432052, 16.611055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.776134, 15.816577, 16.721174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863300, 0.146741, -0.482888,
		-0.504604, 0.233117, -0.831283,
		-0.009414, 0.961313, 0.275296,
		21.773310, 16.104971, 16.803762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.851093, 15.881210, 15.967130>,  <21.779900, 15.432052, 16.611055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.851093, 15.881210, 15.967130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.970966, 16.058985, 16.304808>,  <22.042891, 16.165649, 16.507414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.970966, 16.058985, 16.304808>,  <21.851093, 15.881210, 15.967130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.970966, 16.058985, 16.304808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861281, 0.254562, -0.439765,
		-0.410348, 0.858880, -0.306496,
		0.299683, 0.444436, 0.844196,
		22.060871, 16.192316, 16.558067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.040237, 16.628334, 16.079422>,  <21.851093, 15.881210, 15.967130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.040237, 16.628334, 16.079422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.248524, 16.322746, 16.231846>,  <22.373495, 16.139393, 16.323299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.248524, 16.322746, 16.231846>,  <22.040237, 16.628334, 16.079422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.248524, 16.322746, 16.231846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805032, 0.290792, -0.517073,
		0.284219, 0.576012, 0.766440,
		0.520714, -0.763970, 0.381059,
		22.404737, 16.093555, 16.346163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.573893, 16.463346, 15.495245>,  <22.040237, 16.628334, 16.079422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.573893, 16.463346, 15.495245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.220602, 16.626682, 15.587481>,  <21.008627, 16.724684, 15.642821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.220602, 16.626682, 15.587481>,  <21.573893, 16.463346, 15.495245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.220602, 16.626682, 15.587481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215466, 0.083373, -0.972946,
		-0.416517, -0.909015, 0.014346,
		-0.883226, 0.408339, 0.230588,
		20.955635, 16.749184, 15.656657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.923349, 16.107407, 15.192964>,  <21.573893, 16.463346, 15.495245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.923349, 16.107407, 15.192964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.876387, 16.497547, 15.267691>,  <20.848209, 16.731632, 15.312527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.876387, 16.497547, 15.267691>,  <20.923349, 16.107407, 15.192964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.876387, 16.497547, 15.267691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254541, 0.152280, -0.954997,
		-0.959909, -0.159676, 0.230389,
		-0.117406, 0.975353, 0.186819,
		20.841166, 16.790154, 15.323736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.272993, 16.452358, 14.979416>,  <20.923349, 16.107407, 15.192964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.272993, 16.452358, 14.979416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.562792, 16.727648, 14.964188>,  <20.736671, 16.892822, 14.955050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.562792, 16.727648, 14.964188>,  <20.272993, 16.452358, 14.979416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.562792, 16.727648, 14.964188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245654, 0.206206, -0.947171,
		-0.644015, 0.695577, 0.318461,
		0.724499, 0.688224, -0.038072,
		20.780142, 16.934114, 14.952766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.044708, 16.932520, 14.527153>,  <20.272993, 16.452358, 14.979416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.044708, 16.932520, 14.527153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.437258, 17.003344, 14.556973>,  <20.672787, 17.045837, 14.574864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.437258, 17.003344, 14.556973>,  <20.044708, 16.932520, 14.527153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.437258, 17.003344, 14.556973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042530, 0.178181, -0.983078,
		-0.187345, 0.967937, 0.167331,
		0.981373, 0.177058, 0.074548,
		20.731670, 17.056461, 14.579337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.308367, 17.712023, 14.307379>,  <20.044708, 16.932520, 14.527153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.308367, 17.712023, 14.307379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.583784, 17.440346, 14.205707>,  <20.749035, 17.277340, 14.144703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.583784, 17.440346, 14.205707>,  <20.308367, 17.712023, 14.307379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.583784, 17.440346, 14.205707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215457, 0.526262, -0.822573,
		0.692451, 0.511612, 0.508690,
		0.688542, -0.679192, -0.254180,
		20.790346, 17.236588, 14.129453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.834646, 18.042381, 14.057752>,  <20.308367, 17.712023, 14.307379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.834646, 18.042381, 14.057752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.920576, 17.673702, 13.928556>,  <20.972134, 17.452496, 13.851039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.920576, 17.673702, 13.928556>,  <20.834646, 18.042381, 14.057752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.920576, 17.673702, 13.928556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155043, 0.358701, -0.920487,
		0.964267, 0.147668, 0.219961,
		0.214827, -0.921698, -0.322989,
		20.985023, 17.397192, 13.831660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.513798, 17.913443, 13.931900>,  <20.834646, 18.042381, 14.057752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.513798, 17.913443, 13.931900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.330280, 17.651754, 13.691400>,  <21.220169, 17.494741, 13.547099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.330280, 17.651754, 13.691400>,  <21.513798, 17.913443, 13.931900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.330280, 17.651754, 13.691400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105252, 0.631892, -0.767877,
		0.882287, -0.415580, -0.221049,
		-0.458793, -0.654222, -0.601251,
		21.192642, 17.455488, 13.511024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.922134, 17.809977, 13.382042>,  <21.513798, 17.913443, 13.931900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.922134, 17.809977, 13.382042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.568905, 17.704884, 13.226529>,  <21.356968, 17.641829, 13.133222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.568905, 17.704884, 13.226529>,  <21.922134, 17.809977, 13.382042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.568905, 17.704884, 13.226529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241236, 0.456467, -0.856413,
		0.402473, -0.850065, -0.339714,
		-0.883074, -0.262732, -0.388782,
		21.303982, 17.626064, 13.109895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.085333, 17.403177, 12.743379>,  <21.922134, 17.809977, 13.382042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.085333, 17.403177, 12.743379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.695257, 17.483822, 12.706810>,  <21.461212, 17.532209, 12.684869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.695257, 17.483822, 12.706810>,  <22.085333, 17.403177, 12.743379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.695257, 17.483822, 12.706810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152143, 0.310411, -0.938349,
		-0.160804, -0.928977, -0.333383,
		-0.975190, 0.201612, -0.091422,
		21.402700, 17.544306, 12.679383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.918568, 17.170712, 12.158025>,  <22.085333, 17.403177, 12.743379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.918568, 17.170712, 12.158025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.641270, 17.452600, 12.218401>,  <21.474892, 17.621733, 12.254626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.641270, 17.452600, 12.218401>,  <21.918568, 17.170712, 12.158025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.641270, 17.452600, 12.218401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353422, 0.514940, -0.780980,
		-0.628098, -0.488063, -0.606043,
		-0.693243, 0.704720, 0.150941,
		21.433296, 17.664017, 12.263683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.605268, 17.175821, 11.537889>,  <21.918568, 17.170712, 12.158025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.605268, 17.175821, 11.537889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.484688, 17.519733, 11.702768>,  <21.412340, 17.726080, 11.801696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.484688, 17.519733, 11.702768>,  <21.605268, 17.175821, 11.537889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.484688, 17.519733, 11.702768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028982, 0.423846, -0.905270,
		-0.953042, -0.284839, -0.102850,
		-0.301449, 0.859780, 0.412198,
		21.394253, 17.777668, 11.826427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.084888, 17.407597, 11.138209>,  <21.605268, 17.175821, 11.537889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.084888, 17.407597, 11.138209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.242996, 17.720119, 11.331423>,  <21.337860, 17.907633, 11.447351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.242996, 17.720119, 11.331423>,  <21.084888, 17.407597, 11.138209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.242996, 17.720119, 11.331423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136653, 0.469987, -0.872031,
		-0.908345, 0.410693, 0.079002,
		0.395267, 0.781309, 0.483033,
		21.361576, 17.954512, 11.476333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.815056, 17.978651, 10.662431>,  <21.084888, 17.407597, 11.138209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.815056, 17.978651, 10.662431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.098101, 18.145535, 10.890545>,  <21.267927, 18.245665, 11.027413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.098101, 18.145535, 10.890545>,  <20.815056, 17.978651, 10.662431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.098101, 18.145535, 10.890545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103399, 0.737253, -0.667657,
		-0.698997, 0.531408, 0.478549,
		0.707610, 0.417209, 0.570285,
		21.310383, 18.270697, 11.061630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.600361, 18.747990, 10.678914>,  <20.815056, 17.978651, 10.662431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.600361, 18.747990, 10.678914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.988331, 18.702477, 10.764983>,  <21.221113, 18.675169, 10.816625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.988331, 18.702477, 10.764983>,  <20.600361, 18.747990, 10.678914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.988331, 18.702477, 10.764983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225191, 0.754987, -0.615860,
		-0.092379, 0.645793, 0.757903,
		0.969925, -0.113780, 0.215172,
		21.279308, 18.668343, 10.829535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.827213, 19.535122, 10.815810>,  <20.600361, 18.747990, 10.678914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.827213, 19.535122, 10.815810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.151421, 19.314800, 10.736131>,  <21.345945, 19.182608, 10.688323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.151421, 19.314800, 10.736131>,  <20.827213, 19.535122, 10.815810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.151421, 19.314800, 10.736131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230675, 0.612790, -0.755829,
		0.538379, 0.566662, 0.623733,
		0.810517, -0.550802, -0.199198,
		21.394575, 19.149559, 10.676372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.328867, 19.975864, 10.665316>,  <20.827213, 19.535122, 10.815810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.328867, 19.975864, 10.665316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.514517, 19.660183, 10.504443>,  <21.625906, 19.470774, 10.407920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.514517, 19.660183, 10.504443>,  <21.328867, 19.975864, 10.665316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.514517, 19.660183, 10.504443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499342, 0.608141, -0.617108,
		0.731606, 0.085588, 0.676334,
		0.464123, -0.789202, -0.402182,
		21.653753, 19.423422, 10.383789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.000074, 20.026957, 10.574896>,  <21.328867, 19.975864, 10.665316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.000074, 20.026957, 10.574896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.933468, 19.731247, 10.313899>,  <21.893503, 19.553822, 10.157301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.933468, 19.731247, 10.313899>,  <22.000074, 20.026957, 10.574896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.933468, 19.731247, 10.313899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522578, 0.494991, -0.694187,
		0.836172, -0.456572, 0.303904,
		-0.166517, -0.739273, -0.652493,
		21.883512, 19.509464, 10.118151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.644115, 19.633039, 10.651074>,  <22.000074, 20.026957, 10.574896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.644115, 19.633039, 10.651074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.499809, 19.536598, 10.290693>,  <22.413225, 19.478733, 10.074465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.499809, 19.536598, 10.290693>,  <22.644115, 19.633039, 10.651074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.499809, 19.536598, 10.290693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682911, 0.589626, -0.431247,
		0.635201, -0.770850, -0.048064,
		-0.360766, -0.241105, -0.900953,
		22.391579, 19.464266, 10.020408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.174744, 19.465332, 10.313330>,  <22.644115, 19.633039, 10.651074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.174744, 19.465332, 10.313330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.898363, 19.587025, 10.051023>,  <22.732534, 19.660040, 9.893640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.898363, 19.587025, 10.051023>,  <23.174744, 19.465332, 10.313330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.898363, 19.587025, 10.051023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673680, 0.599989, -0.431472,
		0.262185, -0.739903, -0.619519,
		-0.690951, 0.304232, -0.655766,
		22.691078, 19.678295, 9.854294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.519318, 19.527719, 9.629861>,  <23.174744, 19.465332, 10.313330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.519318, 19.527719, 9.629861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.186632, 19.737024, 9.555618>,  <22.987020, 19.862606, 9.511073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.186632, 19.737024, 9.555618>,  <23.519318, 19.527719, 9.629861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.186632, 19.737024, 9.555618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526745, 0.638027, -0.561659,
		-0.175473, -0.564907, -0.806281,
		-0.831715, 0.523261, -0.185605,
		22.937119, 19.894003, 9.499937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.589504, 19.768431, 8.914565>,  <23.519318, 19.527719, 9.629861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.589504, 19.768431, 8.914565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.318186, 20.021767, 9.063586>,  <23.155396, 20.173769, 9.152999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.318186, 20.021767, 9.063586>,  <23.589504, 19.768431, 8.914565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.318186, 20.021767, 9.063586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439560, 0.756037, -0.484969,
		-0.588813, -0.165194, -0.791208,
		-0.678296, 0.633340, 0.372552,
		23.114697, 20.211769, 9.175352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.445520, 20.363302, 8.386372>,  <23.589504, 19.768431, 8.914565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.445520, 20.363302, 8.386372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.296158, 20.511232, 8.726677>,  <23.206541, 20.599991, 8.930860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.296158, 20.511232, 8.726677>,  <23.445520, 20.363302, 8.386372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.296158, 20.511232, 8.726677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365453, 0.901579, -0.231516,
		-0.852650, 0.224465, -0.471809,
		-0.373406, 0.369826, 0.850763,
		23.184135, 20.622181, 8.981906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.167290, 20.934399, 8.128899>,  <23.445520, 20.363302, 8.386372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.167290, 20.934399, 8.128899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.216722, 21.014715, 8.517622>,  <23.246382, 21.062904, 8.750856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.216722, 21.014715, 8.517622>,  <23.167290, 20.934399, 8.128899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.216722, 21.014715, 8.517622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290247, 0.929175, -0.228890,
		-0.948938, 0.310351, 0.056550,
		0.123581, 0.200789, 0.971808,
		23.253798, 21.074951, 8.809164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.909380, 21.653000, 8.253298>,  <23.167290, 20.934399, 8.128899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.909380, 21.653000, 8.253298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.139891, 21.581911, 8.572377>,  <23.278196, 21.539257, 8.763824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.139891, 21.581911, 8.572377>,  <22.909380, 21.653000, 8.253298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.139891, 21.581911, 8.572377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329521, 0.943739, -0.027795,
		-0.747879, 0.278876, 0.602417,
		0.576275, -0.177722, 0.797698,
		23.312773, 21.528595, 8.811687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.923977, 22.284344, 8.744482>,  <22.909380, 21.653000, 8.253298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.923977, 22.284344, 8.744482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.259491, 22.080589, 8.821391>,  <23.460798, 21.958336, 8.867537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.259491, 22.080589, 8.821391>,  <22.923977, 22.284344, 8.744482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.259491, 22.080589, 8.821391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517166, 0.855812, 0.011178,
		-0.170243, 0.090061, 0.981278,
		0.838783, -0.509386, 0.192272,
		23.511126, 21.927773, 8.879073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.233974, 22.739920, 9.097917>,  <22.923977, 22.284344, 8.744482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.233974, 22.739920, 9.097917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.523901, 22.492569, 8.976424>,  <23.697857, 22.344158, 8.903528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.523901, 22.492569, 8.976424>,  <23.233974, 22.739920, 9.097917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.523901, 22.492569, 8.976424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624564, 0.775867, -0.089164,
		0.290793, -0.125072, 0.948576,
		0.724817, -0.618375, -0.303732,
		23.741346, 22.307056, 8.885304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.746618, 22.951906, 9.477864>,  <23.233974, 22.739920, 9.097917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.746618, 22.951906, 9.477864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.864038, 22.752340, 9.151696>,  <23.934490, 22.632601, 8.955996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.864038, 22.752340, 9.151696>,  <23.746618, 22.951906, 9.477864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.864038, 22.752340, 9.151696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672604, 0.713934, -0.194686,
		0.679288, -0.491304, 0.545150,
		0.293551, -0.498917, -0.815420,
		23.952105, 22.602665, 8.907070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.473976, 22.850397, 9.503089>,  <23.746618, 22.951906, 9.477864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.473976, 22.850397, 9.503089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361210, 22.858149, 9.119391>,  <24.293550, 22.862801, 8.889174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361210, 22.858149, 9.119391>,  <24.473976, 22.850397, 9.503089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.361210, 22.858149, 9.119391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676460, 0.713020, -0.184402,
		0.680386, -0.700875, -0.214123,
		-0.281917, 0.019381, -0.959243,
		24.276634, 22.863962, 8.831618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.116850, 23.016552, 9.128961>,  <24.473976, 22.850397, 9.503089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.116850, 23.016552, 9.128961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793192, 23.122194, 8.918995>,  <24.598997, 23.185579, 8.793015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793192, 23.122194, 8.918995>,  <25.116850, 23.016552, 9.128961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.793192, 23.122194, 8.918995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542557, 0.678835, -0.494787,
		0.225653, -0.685150, -0.692568,
		-0.809143, 0.264108, -0.524914,
		24.550449, 23.201427, 8.761520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.369547, 23.305033, 8.517952>,  <25.116850, 23.016552, 9.128961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.369547, 23.305033, 8.517952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.982672, 23.406389, 8.525302>,  <24.750546, 23.467203, 8.529712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.982672, 23.406389, 8.525302>,  <25.369547, 23.305033, 8.517952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.982672, 23.406389, 8.525302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231245, 0.907997, -0.349382,
		-0.105214, -0.333669, -0.936800,
		-0.967189, 0.253390, 0.018375,
		24.692514, 23.482407, 8.530814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857241, 22.759850, 8.503569>,  <25.369547, 23.305033, 8.517952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857241, 22.759850, 8.503569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240183, 22.672682, 8.579447>,  <26.469948, 22.620380, 8.624974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240183, 22.672682, 8.579447>,  <25.857241, 22.759850, 8.503569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240183, 22.672682, 8.579447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274629, -0.482442, 0.831763,
		-0.089741, -0.848387, -0.521715,
		0.957354, -0.217921, 0.189697,
		26.527390, 22.607306, 8.636355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985537, 21.978294, 8.624322>,  <25.857241, 22.759850, 8.503569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985537, 21.978294, 8.624322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238594, 22.211544, 8.828176>,  <26.390429, 22.351494, 8.950489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238594, 22.211544, 8.828176>,  <25.985537, 21.978294, 8.624322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238594, 22.211544, 8.828176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309332, -0.413026, 0.856576,
		0.709985, -0.699553, -0.080918,
		0.632641, 0.583125, 0.509636,
		26.428387, 22.386482, 8.981068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483654, 21.591013, 9.057764>,  <25.985537, 21.978294, 8.624322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483654, 21.591013, 9.057764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.375694, 21.943878, 9.212135>,  <26.310919, 22.155598, 9.304758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.375694, 21.943878, 9.212135>,  <26.483654, 21.591013, 9.057764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375694, 21.943878, 9.212135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187037, -0.441200, 0.877701,
		0.944548, 0.164709, 0.284077,
		-0.269901, 0.882164, 0.385928,
		26.294724, 22.208527, 9.327914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786266, 21.575945, 9.659992>,  <26.483654, 21.591013, 9.057764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786266, 21.575945, 9.659992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462433, 21.810743, 9.661469>,  <26.268133, 21.951622, 9.662354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462433, 21.810743, 9.661469>,  <26.786266, 21.575945, 9.659992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462433, 21.810743, 9.661469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318235, -0.444177, 0.837516,
		0.493257, 0.676864, 0.546400,
		-0.809583, 0.586994, 0.003692,
		26.219559, 21.986841, 9.662576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813963, 21.975260, 10.317766>,  <26.786266, 21.575945, 9.659992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813963, 21.975260, 10.317766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455263, 21.907335, 10.154303>,  <26.240044, 21.866581, 10.056225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455263, 21.907335, 10.154303>,  <26.813963, 21.975260, 10.317766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455263, 21.907335, 10.154303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135916, -0.773132, 0.619510,
		-0.421147, 0.611090, 0.670227,
		-0.896751, -0.169811, -0.408659,
		26.186237, 21.856392, 10.031705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663181, 21.379114, 10.891625>,  <26.813963, 21.975260, 10.317766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663181, 21.379114, 10.891625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329920, 21.419691, 10.674164>,  <26.129963, 21.444038, 10.543687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329920, 21.419691, 10.674164>,  <26.663181, 21.379114, 10.891625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329920, 21.419691, 10.674164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505109, -0.539882, 0.673344,
		-0.225203, 0.835605, 0.501046,
		-0.833156, 0.101444, -0.543655,
		26.079973, 21.450125, 10.511067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174330, 21.810017, 11.310079>,  <26.663181, 21.379114, 10.891625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174330, 21.810017, 11.310079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015432, 21.546133, 11.054898>,  <25.920094, 21.387802, 10.901791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015432, 21.546133, 11.054898>,  <26.174330, 21.810017, 11.310079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015432, 21.546133, 11.054898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452075, -0.464285, 0.761622,
		-0.798640, 0.590950, -0.113805,
		-0.397242, -0.659711, -0.637950,
		25.896259, 21.348221, 10.863513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.318266, 21.666361, 11.412635>,  <26.174330, 21.810017, 11.310079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.318266, 21.666361, 11.412635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470654, 21.356918, 11.210093>,  <25.562086, 21.171253, 11.088569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470654, 21.356918, 11.210093>,  <25.318266, 21.666361, 11.412635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.470654, 21.356918, 11.210093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425037, -0.632891, 0.647142,
		-0.821100, -0.031323, -0.569924,
		0.380970, -0.773607, -0.506353,
		25.584944, 21.124836, 11.058187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.718327, 21.190275, 11.124589>,  <25.318266, 21.666361, 11.412635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.718327, 21.190275, 11.124589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.056765, 20.983944, 11.178320>,  <25.259827, 20.860146, 11.210559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.056765, 20.983944, 11.178320>,  <24.718327, 21.190275, 11.124589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.056765, 20.983944, 11.178320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484513, -0.639205, 0.597214,
		-0.222197, -0.570383, -0.790754,
		0.846095, -0.515830, 0.134329,
		25.310593, 20.829195, 11.218618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.448542, 20.604221, 11.067858>,  <24.718327, 21.190275, 11.124589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.448542, 20.604221, 11.067858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810560, 20.523422, 11.217571>,  <25.027771, 20.474943, 11.307399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810560, 20.523422, 11.217571>,  <24.448542, 20.604221, 11.067858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810560, 20.523422, 11.217571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387528, -0.754271, 0.529998,
		0.175252, -0.624717, -0.760930,
		0.905046, -0.201999, 0.374283,
		25.082073, 20.462822, 11.329856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.500942, 19.906113, 10.986192>,  <24.448542, 20.604221, 11.067858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.500942, 19.906113, 10.986192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782141, 19.986372, 11.259112>,  <24.950861, 20.034527, 11.422865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782141, 19.986372, 11.259112>,  <24.500942, 19.906113, 10.986192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.782141, 19.986372, 11.259112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217615, -0.852673, 0.474966,
		0.677080, -0.482379, -0.555764,
		0.702998, 0.200647, 0.682301,
		24.993040, 20.046566, 11.463802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.907297, 19.262825, 11.055293>,  <24.500942, 19.906113, 10.986192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.907297, 19.262825, 11.055293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.997467, 19.462732, 11.389817>,  <25.051569, 19.582676, 11.590532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.997467, 19.462732, 11.389817>,  <24.907297, 19.262825, 11.055293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.997467, 19.462732, 11.389817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373559, -0.748460, 0.547961,
		0.899799, -0.435934, 0.017973,
		0.225423, 0.499768, 0.836311,
		25.065094, 19.612663, 11.640711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.243603, 18.847757, 11.432604>,  <24.907297, 19.262825, 11.055293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.243603, 18.847757, 11.432604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109587, 19.090466, 11.720931>,  <25.029177, 19.236090, 11.893928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109587, 19.090466, 11.720931>,  <25.243603, 18.847757, 11.432604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.109587, 19.090466, 11.720931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124711, -0.786863, 0.604396,
		0.933914, 0.112603, 0.339301,
		-0.335040, 0.606768, 0.720819,
		25.009075, 19.272495, 11.937177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567846, 18.727665, 12.100647>,  <25.243603, 18.847757, 11.432604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567846, 18.727665, 12.100647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211262, 18.889801, 12.181640>,  <24.997311, 18.987083, 12.230235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211262, 18.889801, 12.181640>,  <25.567846, 18.727665, 12.100647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.211262, 18.889801, 12.181640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216819, -0.774016, 0.594885,
		0.397855, 0.486414, 0.777890,
		-0.891460, 0.405339, 0.202483,
		24.943823, 19.011402, 12.242385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.395109, 18.397404, 12.643964>,  <25.567846, 18.727665, 12.100647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.395109, 18.397404, 12.643964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041622, 18.578218, 12.595453>,  <24.829531, 18.686707, 12.566347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.041622, 18.578218, 12.595453>,  <25.395109, 18.397404, 12.643964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.041622, 18.578218, 12.595453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419572, -0.650355, 0.633244,
		0.207376, 0.610492, 0.764392,
		-0.883716, 0.452037, -0.121277,
		24.776506, 18.713829, 12.559070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.149038, 18.330500, 13.297317>,  <25.395109, 18.397404, 12.643964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.149038, 18.330500, 13.297317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.831984, 18.408810, 13.066355>,  <24.641750, 18.455795, 12.927778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.831984, 18.408810, 13.066355>,  <25.149038, 18.330500, 13.297317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.831984, 18.408810, 13.066355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553154, -0.629202, 0.546009,
		-0.256407, 0.752181, 0.607025,
		-0.792639, 0.195777, -0.577404,
		24.594193, 18.467543, 12.893133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.573988, 18.403233, 13.771878>,  <25.149038, 18.330500, 13.297317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.573988, 18.403233, 13.771878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.405050, 18.327766, 13.417244>,  <24.303688, 18.282488, 13.204464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.405050, 18.327766, 13.417244>,  <24.573988, 18.403233, 13.771878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.405050, 18.327766, 13.417244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505826, -0.762587, 0.403238,
		-0.752174, 0.618762, 0.226642,
		-0.422343, -0.188664, -0.886585,
		24.278347, 18.271168, 13.151269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.993034, 18.112877, 13.907236>,  <24.573988, 18.403233, 13.771878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.993034, 18.112877, 13.907236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.014353, 18.007198, 13.522038>,  <24.027143, 17.943792, 13.290918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.014353, 18.007198, 13.522038>,  <23.993034, 18.112877, 13.907236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.014353, 18.007198, 13.522038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532074, -0.823581, 0.196500,
		-0.845019, 0.501913, -0.184462,
		0.053294, -0.264194, -0.962996,
		24.030340, 17.927940, 13.233139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.296543, 17.975311, 13.674543>,  <23.993034, 18.112877, 13.907236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.296543, 17.975311, 13.674543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.535841, 17.774408, 13.424794>,  <23.679420, 17.653866, 13.274944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.535841, 17.774408, 13.424794>,  <23.296543, 17.975311, 13.674543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.535841, 17.774408, 13.424794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419418, -0.860195, 0.290090,
		-0.682783, 0.088329, -0.725262,
		0.598244, -0.502257, -0.624374,
		23.715315, 17.623732, 13.237482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.855804, 17.617777, 13.217790>,  <23.296543, 17.975311, 13.674543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.855804, 17.617777, 13.217790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.197044, 17.409189, 13.224545>,  <23.401789, 17.284037, 13.228598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.197044, 17.409189, 13.224545>,  <22.855804, 17.617777, 13.217790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.197044, 17.409189, 13.224545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514874, -0.836193, 0.188910,
		-0.084390, -0.169854, -0.981849,
		0.853102, -0.521471, 0.016887,
		23.452974, 17.252748, 13.229610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.696108, 16.893164, 12.943929>,  <22.855804, 17.617777, 13.217790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.696108, 16.893164, 12.943929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.064589, 16.847334, 13.092661>,  <23.285677, 16.819836, 13.181900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.064589, 16.847334, 13.092661>,  <22.696108, 16.893164, 12.943929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.064589, 16.847334, 13.092661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244724, -0.913574, 0.324796,
		0.302481, -0.390199, -0.869626,
		0.921203, -0.114574, 0.371829,
		23.340950, 16.812962, 13.204209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.078339, 16.308182, 12.674892>,  <22.696108, 16.893164, 12.943929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.078339, 16.308182, 12.674892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.205591, 16.363220, 13.050096>,  <23.281942, 16.396242, 13.275218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.205591, 16.363220, 13.050096>,  <23.078339, 16.308182, 12.674892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.205591, 16.363220, 13.050096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266575, -0.936510, 0.227785,
		0.909797, -0.322515, -0.261254,
		0.318132, 0.137595, 0.938008,
		23.301031, 16.404499, 13.331498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.145044, 15.598150, 12.846385>,  <23.078339, 16.308182, 12.674892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.145044, 15.598150, 12.846385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.182198, 15.792658, 13.193928>,  <23.204491, 15.909363, 13.402453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.182198, 15.792658, 13.193928>,  <23.145044, 15.598150, 12.846385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.182198, 15.792658, 13.193928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111058, -0.862125, 0.494374,
		0.989464, -0.142413, -0.026075,
		0.092885, 0.486270, 0.868858,
		23.210064, 15.938539, 13.454585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.624462, 15.167836, 13.312221>,  <23.145044, 15.598150, 12.846385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.624462, 15.167836, 13.312221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.411341, 15.404178, 13.554545>,  <23.283468, 15.545982, 13.699941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.411341, 15.404178, 13.554545>,  <23.624462, 15.167836, 13.312221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.411341, 15.404178, 13.554545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094644, -0.753004, 0.651173,
		0.840929, 0.289612, 0.457125,
		-0.532805, 0.590855, 0.605813,
		23.251499, 15.581434, 13.736289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.925135, 15.121964, 13.970684>,  <23.624462, 15.167836, 13.312221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.925135, 15.121964, 13.970684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.581203, 15.296512, 14.076726>,  <23.374846, 15.401240, 14.140351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.581203, 15.296512, 14.076726>,  <23.925135, 15.121964, 13.970684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.581203, 15.296512, 14.076726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130166, -0.689397, 0.712593,
		0.493716, 0.578198, 0.649562,
		-0.859826, 0.436370, 0.265105,
		23.323256, 15.427423, 14.156258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.113981, 15.456180, 14.615542>,  <23.925135, 15.121964, 13.970684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.113981, 15.456180, 14.615542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440029, 15.383121, 14.395644>,  <24.635658, 15.339287, 14.263705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440029, 15.383121, 14.395644>,  <24.113981, 15.456180, 14.615542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.440029, 15.383121, 14.395644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517211, -0.197955, 0.832650,
		-0.260907, -0.963044, -0.066890,
		0.815120, -0.182648, -0.549745,
		24.684565, 15.328328, 14.230721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.364553, 14.811461, 14.799718>,  <24.113981, 15.456180, 14.615542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.364553, 14.811461, 14.799718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670921, 15.010508, 14.636869>,  <24.854742, 15.129935, 14.539160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670921, 15.010508, 14.636869>,  <24.364553, 14.811461, 14.799718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.670921, 15.010508, 14.636869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594596, -0.307332, 0.742969,
		0.244592, -0.811126, -0.531271,
		0.765918, 0.497616, -0.407122,
		24.900696, 15.159792, 14.514732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061800, 14.871315, 15.220390>,  <24.364553, 14.811461, 14.799718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.061800, 14.871315, 15.220390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.191833, 14.919847, 14.845243>,  <25.269854, 14.948967, 14.620153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.191833, 14.919847, 14.845243>,  <25.061800, 14.871315, 15.220390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.191833, 14.919847, 14.845243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942287, -0.125550, 0.310373,
		-0.080091, -0.984640, -0.155144,
		0.325084, 0.121332, -0.937869,
		25.289358, 14.956247, 14.563882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.599560, 14.326560, 14.999847>,  <25.061800, 14.871315, 15.220390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.599560, 14.326560, 14.999847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653009, 14.676884, 14.814330>,  <25.685080, 14.887077, 14.703020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653009, 14.676884, 14.814330>,  <25.599560, 14.326560, 14.999847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.653009, 14.676884, 14.814330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984004, -0.061614, 0.167151,
		0.117816, -0.478710, -0.870032,
		0.133624, 0.875808, -0.463793,
		25.693096, 14.939627, 14.675192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.175121, 14.420372, 14.365546>,  <25.599560, 14.326560, 14.999847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.175121, 14.420372, 14.365546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099035, 14.731118, 14.605645>,  <26.053383, 14.917566, 14.749704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099035, 14.731118, 14.605645>,  <26.175121, 14.420372, 14.365546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099035, 14.731118, 14.605645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870130, -0.149730, 0.469526,
		0.454634, 0.611605, -0.647493,
		-0.190216, 0.776866, 0.600248,
		26.041971, 14.964178, 14.785720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806799, 14.701358, 14.516362>,  <26.175121, 14.420372, 14.365546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806799, 14.701358, 14.516362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574961, 14.830805, 14.815519>,  <26.435858, 14.908473, 14.995013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574961, 14.830805, 14.815519>,  <26.806799, 14.701358, 14.516362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574961, 14.830805, 14.815519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784363, -0.027363, 0.619698,
		0.221009, 0.945793, -0.237973,
		-0.579594, 0.323616, 0.747892,
		26.401083, 14.927890, 15.039887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<15.540242, 14.514918, 24.621761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.145156, 14.494123, 24.680708>,  <14.908104, 14.481646, 24.716076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.145156, 14.494123, 24.680708>,  <15.540242, 14.514918, 24.621761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.145156, 14.494123, 24.680708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156262, 0.336377, -0.928673,
		-0.001291, -0.940291, -0.340368,
		-0.987715, -0.051988, 0.147366,
		14.848842, 14.478526, 24.724918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.384917, 14.256663, 24.046230>,  <15.540242, 14.514918, 24.621761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.384917, 14.256663, 24.046230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.044598, 14.434022, 24.159042>,  <14.840405, 14.540437, 24.226730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.044598, 14.434022, 24.159042>,  <15.384917, 14.256663, 24.046230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.044598, 14.434022, 24.159042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127555, 0.346395, -0.929376,
		-0.509776, -0.826687, -0.238155,
		-0.850799, 0.443396, 0.282032,
		14.789358, 14.567040, 24.243652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.898869, 14.135484, 23.454374>,  <15.384917, 14.256663, 24.046230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.898869, 14.135484, 23.454374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.720420, 14.445967, 23.632578>,  <14.613351, 14.632257, 23.739500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.720420, 14.445967, 23.632578>,  <14.898869, 14.135484, 23.454374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.720420, 14.445967, 23.632578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248307, 0.370899, -0.894862,
		-0.859837, -0.509840, 0.027272,
		-0.446121, 0.776207, 0.445510,
		14.586583, 14.678829, 23.766232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.116982, 14.073036, 23.399088>,  <14.898869, 14.135484, 23.454374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.116982, 14.073036, 23.399088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.228799, 14.453057, 23.454594>,  <14.295889, 14.681070, 23.487896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.228799, 14.453057, 23.454594>,  <14.116982, 14.073036, 23.399088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.228799, 14.453057, 23.454594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244611, 0.210227, -0.946557,
		-0.928451, 0.230660, 0.291161,
		0.279543, 0.950053, 0.138764,
		14.312662, 14.738073, 23.496223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.506179, 14.450897, 23.044676>,  <14.116982, 14.073036, 23.399088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.506179, 14.450897, 23.044676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.828402, 14.686189, 23.073145>,  <14.021735, 14.827364, 23.090225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.828402, 14.686189, 23.073145>,  <13.506179, 14.450897, 23.044676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.828402, 14.686189, 23.073145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071431, 0.215650, -0.973854,
		-0.588197, 0.779412, 0.215736,
		0.805557, 0.588228, 0.071171,
		14.070068, 14.862658, 23.094496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.325465, 14.965437, 22.519382>,  <13.506179, 14.450897, 23.044676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.325465, 14.965437, 22.519382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.714328, 15.019500, 22.595951>,  <13.947645, 15.051937, 22.641893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.714328, 15.019500, 22.595951>,  <13.325465, 14.965437, 22.519382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.714328, 15.019500, 22.595951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165984, 0.179447, -0.969664,
		-0.165407, 0.974439, 0.152017,
		0.972157, 0.135157, 0.191423,
		14.005975, 15.060047, 22.653378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.397214, 15.567267, 22.210331>,  <13.325465, 14.965437, 22.519382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.397214, 15.567267, 22.210331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.763207, 15.415797, 22.266056>,  <13.982803, 15.324915, 22.299492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.763207, 15.415797, 22.266056>,  <13.397214, 15.567267, 22.210331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.763207, 15.415797, 22.266056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291253, 0.380901, -0.877546,
		0.279239, 0.843517, 0.458808,
		0.914985, -0.378675, 0.139314,
		14.037703, 15.302195, 22.307850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.833002, 16.107878, 22.058331>,  <13.397214, 15.567267, 22.210331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.833002, 16.107878, 22.058331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.030560, 15.761868, 22.023006>,  <14.149096, 15.554261, 22.001812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.030560, 15.761868, 22.023006>,  <13.833002, 16.107878, 22.058331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.030560, 15.761868, 22.023006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366368, 0.299132, -0.881076,
		0.788570, 0.402805, 0.464657,
		0.493895, -0.865025, -0.088311,
		14.178729, 15.502360, 21.996513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.490734, 16.278326, 21.990391>,  <13.833002, 16.107878, 22.058331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.490734, 16.278326, 21.990391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.465889, 15.918878, 21.816668>,  <14.450982, 15.703209, 21.712433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.465889, 15.918878, 21.816668>,  <14.490734, 16.278326, 21.990391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.465889, 15.918878, 21.816668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358119, 0.386108, -0.850101,
		0.931608, -0.208335, 0.297831,
		-0.062111, -0.898620, -0.434310,
		14.447255, 15.649292, 21.686375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.056682, 16.219280, 21.674345>,  <14.490734, 16.278326, 21.990391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.056682, 16.219280, 21.674345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.855100, 15.922144, 21.498066>,  <14.734150, 15.743862, 21.392298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.855100, 15.922144, 21.498066>,  <15.056682, 16.219280, 21.674345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.855100, 15.922144, 21.498066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487111, 0.176911, -0.855234,
		0.713268, -0.645669, 0.272691,
		-0.503956, -0.742842, -0.440698,
		14.703913, 15.699291, 21.365856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.572762, 15.683538, 21.433704>,  <15.056682, 16.219280, 21.674345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.572762, 15.683538, 21.433704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.250834, 15.637196, 21.200867>,  <15.057676, 15.609389, 21.061163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.250834, 15.637196, 21.200867>,  <15.572762, 15.683538, 21.433704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.250834, 15.637196, 21.200867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533775, 0.287531, -0.795242,
		0.259500, -0.950739, -0.169575,
		-0.804825, -0.115850, -0.582095,
		15.009386, 15.602438, 21.026237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.709759, 15.140212, 21.023468>,  <15.572762, 15.683538, 21.433704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.709759, 15.140212, 21.023468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.442602, 15.367788, 20.831539>,  <15.282309, 15.504334, 20.716383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.442602, 15.367788, 20.831539>,  <15.709759, 15.140212, 21.023468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.442602, 15.367788, 20.831539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622184, 0.073033, -0.779457,
		-0.408423, -0.819129, -0.402764,
		-0.667891, 0.568941, -0.479820,
		15.242235, 15.538470, 20.687593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.837122, 14.910869, 20.423403>,  <15.709759, 15.140212, 21.023468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.837122, 14.910869, 20.423403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.624481, 15.245399, 20.369802>,  <15.496897, 15.446118, 20.337643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.624481, 15.245399, 20.369802>,  <15.837122, 14.910869, 20.423403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.624481, 15.245399, 20.369802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555517, 0.224844, -0.800528,
		-0.639374, -0.500003, -0.584122,
		-0.531603, 0.836327, -0.134001,
		15.465000, 15.496298, 20.329603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.711978, 14.927166, 19.700136>,  <15.837122, 14.910869, 20.423403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.711978, 14.927166, 19.700136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.658800, 15.297633, 19.841295>,  <15.626893, 15.519914, 19.925991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.658800, 15.297633, 19.841295>,  <15.711978, 14.927166, 19.700136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.658800, 15.297633, 19.841295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487173, 0.371142, -0.790516,
		-0.863127, 0.066827, -0.500546,
		-0.132945, 0.926168, 0.352899,
		15.618917, 15.575483, 19.947165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.629154, 15.305575, 19.107815>,  <15.711978, 14.927166, 19.700136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.629154, 15.305575, 19.107815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.675300, 15.589561, 19.385704>,  <15.702987, 15.759953, 19.552437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.675300, 15.589561, 19.385704>,  <15.629154, 15.305575, 19.107815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.675300, 15.589561, 19.385704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536747, 0.543941, -0.645005,
		-0.835819, 0.447300, -0.318321,
		0.115363, 0.709965, 0.694723,
		15.709908, 15.802551, 19.594122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.400614, 15.871602, 18.686293>,  <15.629154, 15.305575, 19.107815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.400614, 15.871602, 18.686293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.659155, 15.989223, 18.967934>,  <15.814280, 16.059795, 19.136919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.659155, 15.989223, 18.967934>,  <15.400614, 15.871602, 18.686293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.659155, 15.989223, 18.967934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524744, 0.498625, -0.689940,
		-0.553961, 0.815419, 0.167986,
		0.646353, 0.294050, 0.704104,
		15.853061, 16.077438, 19.179165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.478038, 16.602242, 18.544884>,  <15.400614, 15.871602, 18.686293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.478038, 16.602242, 18.544884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.782114, 16.466307, 18.766376>,  <15.964560, 16.384747, 18.899273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.782114, 16.466307, 18.766376>,  <15.478038, 16.602242, 18.544884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.782114, 16.466307, 18.766376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646083, 0.485222, -0.589183,
		-0.068459, 0.805650, 0.588423,
		0.760191, -0.339836, 0.553734,
		16.010172, 16.364355, 18.932497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.859198, 17.190359, 18.709131>,  <15.478038, 16.602242, 18.544884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.859198, 17.190359, 18.709131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.112247, 16.882895, 18.746962>,  <16.264078, 16.698416, 18.769661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.112247, 16.882895, 18.746962>,  <15.859198, 17.190359, 18.709131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.112247, 16.882895, 18.746962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686944, 0.500547, -0.526840,
		0.357621, 0.398261, 0.844686,
		0.632625, -0.768662, 0.094577,
		16.302034, 16.652296, 18.775335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.482264, 17.508169, 18.773071>,  <15.859198, 17.190359, 18.709131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.482264, 17.508169, 18.773071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.587578, 17.141012, 18.654305>,  <16.650766, 16.920719, 18.583044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.587578, 17.141012, 18.654305>,  <16.482264, 17.508169, 18.773071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.587578, 17.141012, 18.654305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715939, 0.392195, -0.577594,
		0.646617, -0.060503, 0.760412,
		0.263284, -0.917890, -0.296916,
		16.666563, 16.865644, 18.565229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.172762, 17.610565, 18.726461>,  <16.482264, 17.508169, 18.773071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.172762, 17.610565, 18.726461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.077799, 17.293877, 18.501316>,  <17.020821, 17.103863, 18.366228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.077799, 17.293877, 18.501316>,  <17.172762, 17.610565, 18.726461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.077799, 17.293877, 18.501316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698254, 0.263745, -0.665492,
		0.675337, -0.551014, 0.490208,
		-0.237405, -0.791721, -0.562864,
		17.006577, 17.056360, 18.332457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.802097, 17.333637, 18.525723>,  <17.172762, 17.610565, 18.726461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.802097, 17.333637, 18.525723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.537542, 17.199154, 18.257534>,  <17.378809, 17.118464, 18.096621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.537542, 17.199154, 18.257534>,  <17.802097, 17.333637, 18.525723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.537542, 17.199154, 18.257534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697670, 0.052407, -0.714500,
		0.275359, -0.940328, 0.199901,
		-0.661388, -0.336209, -0.670470,
		17.339127, 17.098291, 18.056393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.196344, 16.960957, 18.109674>,  <17.802097, 17.333637, 18.525723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.196344, 16.960957, 18.109674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.867159, 17.045410, 17.898714>,  <17.669647, 17.096083, 17.772139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.867159, 17.045410, 17.898714>,  <18.196344, 16.960957, 18.109674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.867159, 17.045410, 17.898714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567936, 0.327655, -0.755044,
		0.013388, -0.920904, -0.389560,
		-0.822964, 0.211137, -0.527400,
		17.620270, 17.108751, 17.740494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.914196, 16.694460, 17.959126>,  <18.196344, 16.960957, 18.109674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.914196, 16.694460, 17.959126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.198288, 16.973034, 18.000219>,  <19.368744, 17.140179, 18.024876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.198288, 16.973034, 18.000219>,  <18.914196, 16.694460, 17.959126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.198288, 16.973034, 18.000219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099083, -0.045592, 0.994034,
		0.696963, -0.716172, 0.036624,
		0.710229, 0.696434, 0.102737,
		19.411356, 17.181963, 18.031040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.371065, 16.432682, 18.391832>,  <18.914196, 16.694460, 17.959126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.371065, 16.432682, 18.391832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.396343, 16.826048, 18.459837>,  <19.411510, 17.062067, 18.500639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.396343, 16.826048, 18.459837>,  <19.371065, 16.432682, 18.391832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.396343, 16.826048, 18.459837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000945, -0.170411, 0.985373,
		0.998001, -0.062111, -0.011698,
		0.063196, 0.983414, 0.170011,
		19.415302, 17.121073, 18.510839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.812256, 16.456997, 18.933203>,  <19.371065, 16.432682, 18.391832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.812256, 16.456997, 18.933203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.617590, 16.806049, 18.916855>,  <19.500792, 17.015482, 18.907045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.617590, 16.806049, 18.916855>,  <19.812256, 16.456997, 18.933203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.617590, 16.806049, 18.916855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171771, -0.049713, 0.983882,
		0.856536, 0.485839, 0.174087,
		-0.486663, 0.872633, -0.040872,
		19.471592, 17.067839, 18.904593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.079885, 16.792723, 19.569033>,  <19.812256, 16.456997, 18.933203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.079885, 16.792723, 19.569033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.759642, 17.011835, 19.471905>,  <19.567495, 17.143303, 19.413628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.759642, 17.011835, 19.471905>,  <20.079885, 16.792723, 19.569033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.759642, 17.011835, 19.471905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326776, -0.059484, 0.943228,
		0.502238, 0.834505, 0.226625,
		-0.800609, 0.547781, -0.242821,
		19.519459, 17.176168, 19.399059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.079760, 17.407398, 20.074831>,  <20.079885, 16.792723, 19.569033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.079760, 17.407398, 20.074831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.705275, 17.364174, 19.941069>,  <19.480583, 17.338240, 19.860811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.705275, 17.364174, 19.941069>,  <20.079760, 17.407398, 20.074831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.705275, 17.364174, 19.941069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340259, 0.040702, 0.939450,
		-0.087906, 0.993311, -0.074874,
		-0.936214, -0.108060, -0.334405,
		19.424410, 17.331757, 19.840748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.660099, 17.924952, 20.294662>,  <20.079760, 17.407398, 20.074831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.660099, 17.924952, 20.294662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.393370, 17.639862, 20.207603>,  <19.233332, 17.468807, 20.155369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.393370, 17.639862, 20.207603>,  <19.660099, 17.924952, 20.294662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.393370, 17.639862, 20.207603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515667, 0.230459, 0.825212,
		-0.537991, 0.662504, -0.521204,
		-0.666823, -0.712725, -0.217647,
		19.193323, 17.426044, 20.142309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.997610, 18.229624, 20.356157>,  <19.660099, 17.924952, 20.294662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.997610, 18.229624, 20.356157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.909868, 17.839390, 20.360466>,  <18.857224, 17.605249, 20.363050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.909868, 17.839390, 20.360466>,  <18.997610, 18.229624, 20.356157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.909868, 17.839390, 20.360466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497745, 0.121396, 0.858786,
		-0.839127, 0.183017, -0.512221,
		-0.219354, -0.975586, 0.010771,
		18.844063, 17.546715, 20.363697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.311695, 18.166891, 20.720783>,  <18.997610, 18.229624, 20.356157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.311695, 18.166891, 20.720783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.448133, 17.790941, 20.727589>,  <18.529997, 17.565371, 20.731672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.448133, 17.790941, 20.727589>,  <18.311695, 18.166891, 20.720783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.448133, 17.790941, 20.727589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467746, -0.153999, 0.870344,
		-0.815393, -0.304829, -0.492151,
		0.341097, -0.939874, 0.017013,
		18.550463, 17.508980, 20.732693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.698666, 17.741438, 20.902660>,  <18.311695, 18.166891, 20.720783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.698666, 17.741438, 20.902660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.019850, 17.516027, 20.980322>,  <18.212561, 17.380781, 21.026918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.019850, 17.516027, 20.980322>,  <17.698666, 17.741438, 20.902660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.019850, 17.516027, 20.980322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374425, -0.223460, 0.899929,
		-0.463749, -0.795301, -0.390427,
		0.802959, -0.563527, 0.194151,
		18.260738, 17.346970, 21.038567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.453966, 17.156460, 21.192354>,  <17.698666, 17.741438, 20.902660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.453966, 17.156460, 21.192354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.825895, 17.172503, 21.338678>,  <18.049053, 17.182129, 21.426474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.825895, 17.172503, 21.338678>,  <17.453966, 17.156460, 21.192354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.825895, 17.172503, 21.338678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349364, -0.216156, 0.911713,
		0.115639, -0.975535, -0.186975,
		0.929824, 0.040107, 0.365813,
		18.104843, 17.184534, 21.448421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600178, 16.521065, 21.449436>,  <17.453966, 17.156460, 21.192354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.600178, 16.521065, 21.449436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.858290, 16.776165, 21.617668>,  <18.013157, 16.929226, 21.718607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.858290, 16.776165, 21.617668>,  <17.600178, 16.521065, 21.449436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.858290, 16.776165, 21.617668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273345, -0.321340, 0.906655,
		0.713369, -0.700010, -0.033028,
		0.645280, 0.637751, 0.420578,
		18.051874, 16.967491, 21.743841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.836708, 16.106544, 22.031605>,  <17.600178, 16.521065, 21.449436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.836708, 16.106544, 22.031605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.940714, 16.485466, 22.106453>,  <18.003117, 16.712818, 22.151361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.940714, 16.485466, 22.106453>,  <17.836708, 16.106544, 22.031605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.940714, 16.485466, 22.106453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306859, -0.102676, 0.946200,
		0.915550, -0.303443, 0.263991,
		0.260012, 0.947301, 0.187119,
		18.018717, 16.769657, 22.162588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.227900, 16.120186, 22.604836>,  <17.836708, 16.106544, 22.031605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.227900, 16.120186, 22.604836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.013483, 16.456419, 22.573645>,  <17.884832, 16.658159, 22.554930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.013483, 16.456419, 22.573645>,  <18.227900, 16.120186, 22.604836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.013483, 16.456419, 22.573645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359312, -0.143593, 0.922104,
		0.763907, 0.522305, 0.379003,
		-0.536042, 0.840582, -0.077979,
		17.852671, 16.708593, 22.550251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.572407, 16.557459, 23.098915>,  <18.227900, 16.120186, 22.604836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.572407, 16.557459, 23.098915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.183384, 16.612419, 23.023809>,  <17.949970, 16.645395, 22.978746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.183384, 16.612419, 23.023809>,  <18.572407, 16.557459, 23.098915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.183384, 16.612419, 23.023809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218509, -0.262142, 0.939966,
		0.079932, 0.955197, 0.284972,
		-0.972556, 0.137403, -0.187766,
		17.891617, 16.653641, 22.967480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.313036, 16.845222, 23.719727>,  <18.572407, 16.557459, 23.098915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.313036, 16.845222, 23.719727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.963524, 16.752487, 23.548727>,  <17.753817, 16.696846, 23.446127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.963524, 16.752487, 23.548727>,  <18.313036, 16.845222, 23.719727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.963524, 16.752487, 23.548727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356200, -0.293388, 0.887155,
		-0.331101, 0.927455, 0.173776,
		-0.873781, -0.231840, -0.427501,
		17.701389, 16.682936, 23.420477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.781460, 17.183187, 24.095137>,  <18.313036, 16.845222, 23.719727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.781460, 17.183187, 24.095137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.604439, 16.867933, 23.924028>,  <17.498226, 16.678780, 23.821363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.604439, 16.867933, 23.924028>,  <17.781460, 17.183187, 24.095137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.604439, 16.867933, 23.924028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352100, -0.285996, 0.891197,
		-0.824726, 0.545020, -0.150935,
		-0.442553, -0.788137, -0.427769,
		17.471672, 16.631493, 23.795698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.040184, 17.131472, 24.301424>,  <17.781460, 17.183187, 24.095137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.040184, 17.131472, 24.301424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.153938, 16.768600, 24.177389>,  <17.222191, 16.550879, 24.102968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.153938, 16.768600, 24.177389>,  <17.040184, 17.131472, 24.301424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.153938, 16.768600, 24.177389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373285, -0.402694, 0.835760,
		-0.883053, -0.121929, -0.453157,
		0.284387, -0.907177, -0.310086,
		17.239254, 16.496447, 24.084364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.503178, 16.716431, 24.495846>,  <17.040184, 17.131472, 24.301424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.503178, 16.716431, 24.495846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.781101, 16.438431, 24.421850>,  <16.947855, 16.271631, 24.377453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.781101, 16.438431, 24.421850>,  <16.503178, 16.716431, 24.495846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.781101, 16.438431, 24.421850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301770, -0.515208, 0.802182,
		-0.652824, -0.501536, -0.567699,
		0.694806, -0.694998, -0.184992,
		16.989544, 16.229931, 24.366352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.149221, 16.079115, 24.607040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.530005, 15.956630, 24.607946>,  <16.758474, 15.883138, 24.608490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.530005, 15.956630, 24.607946>,  <16.149221, 16.079115, 24.607040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.530005, 15.956630, 24.607946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207869, -0.640753, 0.739071,
		-0.224862, -0.704037, -0.673624,
		0.951960, -0.306215, 0.002266,
		16.815592, 15.864765, 24.608625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.009508, 15.484045, 24.786623>,  <16.149221, 16.079115, 24.607040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.009508, 15.484045, 24.786623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.397747, 15.512223, 24.878691>,  <16.630690, 15.529130, 24.933931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.397747, 15.512223, 24.878691>,  <16.009508, 15.484045, 24.786623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.397747, 15.512223, 24.878691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165573, -0.498672, 0.850830,
		0.174717, -0.863923, -0.472346,
		0.970597, 0.070447, 0.230169,
		16.688927, 15.533358, 24.947741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.138248, 14.897439, 25.041708>,  <16.009508, 15.484045, 24.786623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.138248, 14.897439, 25.041708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.442745, 15.116268, 25.180977>,  <16.625443, 15.247565, 25.264538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.442745, 15.116268, 25.180977>,  <16.138248, 14.897439, 25.041708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.442745, 15.116268, 25.180977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092184, -0.440169, 0.893170,
		0.641885, -0.712013, -0.284642,
		0.761239, 0.547073, 0.348174,
		16.671118, 15.280390, 25.285429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.657698, 14.359389, 25.287947>,  <16.138248, 14.897439, 25.041708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.657698, 14.359389, 25.287947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.712543, 14.706896, 25.478291>,  <16.745451, 14.915400, 25.592497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.712543, 14.706896, 25.478291>,  <16.657698, 14.359389, 25.287947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.712543, 14.706896, 25.478291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025405, -0.477157, 0.878451,
		0.990229, -0.132540, -0.043355,
		0.137117, 0.868766, 0.475862,
		16.753679, 14.967525, 25.621050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.229898, 14.336396, 25.588295>,  <16.657698, 14.359389, 25.287947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.229898, 14.336396, 25.588295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.991898, 14.598811, 25.774019>,  <16.849096, 14.756260, 25.885454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.991898, 14.598811, 25.774019>,  <17.229898, 14.336396, 25.588295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.991898, 14.598811, 25.774019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039684, -0.600976, 0.798282,
		0.802743, 0.456555, 0.383617,
		-0.595004, 0.656038, 0.464311,
		16.813396, 14.795623, 25.913313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.477385, 14.321791, 26.230255>,  <17.229898, 14.336396, 25.588295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.477385, 14.321791, 26.230255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.115028, 14.478027, 26.295734>,  <16.897614, 14.571770, 26.335022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.115028, 14.478027, 26.295734>,  <17.477385, 14.321791, 26.230255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.115028, 14.478027, 26.295734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048135, -0.478987, 0.876501,
		0.420764, 0.786136, 0.452712,
		-0.905892, 0.390591, 0.163700,
		16.843260, 14.595204, 26.344845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.519426, 14.498353, 26.952394>,  <17.477385, 14.321791, 26.230255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.519426, 14.498353, 26.952394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.139795, 14.455270, 26.833973>,  <16.912016, 14.429420, 26.762920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.139795, 14.455270, 26.833973>,  <17.519426, 14.498353, 26.952394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.139795, 14.455270, 26.833973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219999, -0.446057, 0.867545,
		-0.225497, 0.888501, 0.399648,
		-0.949079, -0.107707, -0.296054,
		16.855072, 14.422957, 26.745157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.161816, 14.724079, 27.508760>,  <17.519426, 14.498353, 26.952394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.161816, 14.724079, 27.508760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.855223, 14.537187, 27.332489>,  <16.671267, 14.425051, 27.226727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.855223, 14.537187, 27.332489>,  <17.161816, 14.724079, 27.508760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.855223, 14.537187, 27.332489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346368, -0.277095, 0.896241,
		-0.540861, 0.839591, 0.050555,
		-0.766484, -0.467231, -0.440677,
		16.625277, 14.397017, 27.200285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.634586, 14.859998, 27.937052>,  <17.161816, 14.724079, 27.508760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.634586, 14.859998, 27.937052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.490358, 14.554514, 27.722862>,  <16.403822, 14.371223, 27.594349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.490358, 14.554514, 27.722862>,  <16.634586, 14.859998, 27.937052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.490358, 14.554514, 27.722862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475492, -0.343390, 0.809933,
		-0.802431, 0.546654, -0.239322,
		-0.360572, -0.763710, -0.535476,
		16.382187, 14.325400, 27.562220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.991138, 14.834288, 28.157211>,  <16.634586, 14.859998, 27.937052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.991138, 14.834288, 28.157211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.121098, 14.478333, 28.029123>,  <16.199074, 14.264759, 27.952271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.121098, 14.478333, 28.029123>,  <15.991138, 14.834288, 28.157211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.121098, 14.478333, 28.029123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156810, -0.384589, 0.909671,
		-0.932658, -0.245337, -0.264496,
		0.324899, -0.889888, -0.320219,
		16.218567, 14.211366, 27.933058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.662392, 14.423216, 28.581421>,  <15.991138, 14.834288, 28.157211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.662392, 14.423216, 28.581421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.927496, 14.167600, 28.425280>,  <16.086559, 14.014230, 28.331594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.927496, 14.167600, 28.425280>,  <15.662392, 14.423216, 28.581421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.927496, 14.167600, 28.425280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188592, -0.646923, 0.738866,
		-0.724695, -0.416073, -0.549273,
		0.662760, -0.639041, -0.390354,
		16.126324, 13.975887, 28.308174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.324283, 13.829356, 28.552389>,  <15.662392, 14.423216, 28.581421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.324283, 13.829356, 28.552389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.707532, 13.715052, 28.545002>,  <15.937482, 13.646469, 28.540569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.707532, 13.715052, 28.545002>,  <15.324283, 13.829356, 28.552389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.707532, 13.715052, 28.545002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184370, -0.664949, 0.723775,
		-0.219107, -0.690061, -0.689789,
		0.958123, -0.285761, -0.018468,
		15.994968, 13.629323, 28.539461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.323983, 13.123881, 28.472303>,  <15.324283, 13.829356, 28.552389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.323983, 13.123881, 28.472303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.690986, 13.205561, 28.608824>,  <15.911187, 13.254568, 28.690737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.690986, 13.205561, 28.608824>,  <15.323983, 13.123881, 28.472303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.690986, 13.205561, 28.608824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126492, -0.663763, 0.737169,
		0.377072, -0.719529, -0.583177,
		0.917505, 0.204199, 0.341301,
		15.966237, 13.266820, 28.711214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.669405, 12.498687, 28.436384>,  <15.323983, 13.123881, 28.472303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.669405, 12.498687, 28.436384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.881659, 12.707721, 28.703318>,  <16.009010, 12.833141, 28.863478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.881659, 12.707721, 28.703318>,  <15.669405, 12.498687, 28.436384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.881659, 12.707721, 28.703318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186760, -0.695885, 0.693444,
		0.826771, -0.492596, -0.271661,
		0.530633, 0.522584, 0.667334,
		16.040848, 12.864496, 28.903519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.179754, 12.071900, 28.753080>,  <15.669405, 12.498687, 28.436384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.179754, 12.071900, 28.753080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.175888, 12.376698, 29.012085>,  <16.173569, 12.559576, 29.167488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.175888, 12.376698, 29.012085>,  <16.179754, 12.071900, 28.753080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.175888, 12.376698, 29.012085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046405, -0.646503, 0.761499,
		0.998876, 0.037407, -0.029113,
		-0.009664, 0.761994, 0.647512,
		16.172989, 12.605296, 29.206339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.881590, 12.125466, 29.099972>,  <16.179754, 12.071900, 28.753080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.881590, 12.125466, 29.099972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.574165, 12.284991, 29.300076>,  <16.389709, 12.380706, 29.420137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.574165, 12.284991, 29.300076>,  <16.881590, 12.125466, 29.099972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.574165, 12.284991, 29.300076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169365, -0.627208, 0.760214,
		0.616950, 0.668999, 0.414504,
		-0.768562, 0.398812, 0.500261,
		16.343597, 12.404634, 29.450153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.969315, 11.862638, 29.706633>,  <16.881590, 12.125466, 29.099972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.969315, 11.862638, 29.706633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.610804, 12.021280, 29.786022>,  <16.395697, 12.116466, 29.833656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.610804, 12.021280, 29.786022>,  <16.969315, 11.862638, 29.706633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.610804, 12.021280, 29.786022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061705, -0.554685, 0.829769,
		0.439180, 0.731457, 0.521624,
		-0.896278, 0.396605, 0.198472,
		16.341921, 12.140262, 29.845564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.040426, 12.045594, 30.334927>,  <16.969315, 11.862638, 29.706633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.040426, 12.045594, 30.334927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.653631, 11.982482, 30.254883>,  <16.421555, 11.944614, 30.206856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.653631, 11.982482, 30.254883>,  <17.040426, 12.045594, 30.334927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.653631, 11.982482, 30.254883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058932, -0.625522, 0.777978,
		-0.247924, 0.764086, 0.595572,
		-0.966985, -0.157781, -0.200111,
		16.363535, 11.935147, 30.194849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.766729, 11.946490, 30.949665>,  <17.040426, 12.045594, 30.334927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.766729, 11.946490, 30.949665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.480577, 11.801061, 30.710985>,  <16.308887, 11.713803, 30.567778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.480577, 11.801061, 30.710985>,  <16.766729, 11.946490, 30.949665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.480577, 11.801061, 30.710985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137957, -0.763663, 0.630703,
		-0.684983, 0.533510, 0.496150,
		-0.715378, -0.363574, -0.596698,
		16.265965, 11.691989, 30.531977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.236979, 11.734649, 31.390774>,  <16.766729, 11.946490, 30.949665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.236979, 11.734649, 31.390774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.153032, 11.541407, 31.050758>,  <16.102665, 11.425462, 30.846748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.153032, 11.541407, 31.050758>,  <16.236979, 11.734649, 31.390774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.153032, 11.541407, 31.050758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253141, -0.812909, 0.524499,
		-0.944392, 0.325253, 0.048307,
		-0.209864, -0.483104, -0.850040,
		16.090073, 11.396476, 30.795746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.592640, 11.714046, 31.434507>,  <16.236979, 11.734649, 31.390774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.592640, 11.714046, 31.434507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.743312, 11.422719, 31.205540>,  <15.833715, 11.247922, 31.068159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.743312, 11.422719, 31.205540>,  <15.592640, 11.714046, 31.434507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.743312, 11.422719, 31.205540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427799, -0.684862, 0.589875,
		-0.821645, 0.022686, -0.569548,
		0.376680, -0.728320, -0.572419,
		15.856316, 11.204224, 31.033813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.009616, 11.264520, 31.391098>,  <15.592640, 11.714046, 31.434507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.009616, 11.264520, 31.391098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.313808, 11.036203, 31.267248>,  <15.496324, 10.899214, 31.192938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.313808, 11.036203, 31.267248>,  <15.009616, 11.264520, 31.391098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.313808, 11.036203, 31.267248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396211, -0.785641, 0.475169,
		-0.514476, -0.238680, -0.823618,
		0.760481, -0.570789, -0.309626,
		15.541952, 10.864966, 31.174360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.603518, 11.834400, 31.870506>,  <15.009616, 11.264520, 31.391098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.603518, 11.834400, 31.870506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.759569, 11.466236, 31.880692>,  <14.853199, 11.245337, 31.886803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.759569, 11.466236, 31.880692>,  <14.603518, 11.834400, 31.870506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.759569, 11.466236, 31.880692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891858, 0.384610, 0.238042,
		-0.228890, -0.070156, 0.970921,
		0.390126, -0.920409, 0.025464,
		14.876607, 11.190113, 31.888330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.136358, 11.308791, 32.202881>,  <14.603518, 11.834400, 31.870506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.136358, 11.308791, 32.202881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.846247, 11.050071, 32.108547>,  <13.672179, 10.894838, 32.051945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.846247, 11.050071, 32.108547>,  <14.136358, 11.308791, 32.202881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.846247, 11.050071, 32.108547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127455, 0.210489, -0.969252,
		0.676554, -0.733037, -0.070226,
		-0.725279, -0.646801, -0.235836,
		13.628663, 10.856030, 32.037796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.234506, 10.899092, 31.594440>,  <14.136358, 11.308791, 32.202881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.234506, 10.899092, 31.594440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.839596, 10.936827, 31.645651>,  <13.602650, 10.959468, 31.676376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.839596, 10.936827, 31.645651>,  <14.234506, 10.899092, 31.594440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.839596, 10.936827, 31.645651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101616, 0.245024, -0.964177,
		-0.122327, -0.964916, -0.232319,
		-0.987274, 0.094338, 0.128024,
		13.543413, 10.965128, 31.684057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.918970, 10.567984, 30.982876>,  <14.234506, 10.899092, 31.594440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.918970, 10.567984, 30.982876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.667119, 10.839904, 31.133310>,  <13.516008, 11.003056, 31.223572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.667119, 10.839904, 31.133310>,  <13.918970, 10.567984, 30.982876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.667119, 10.839904, 31.133310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046011, 0.515866, -0.855433,
		-0.775534, -0.521300, -0.356081,
		-0.629627, 0.679801, 0.376086,
		13.478230, 11.043844, 31.246136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.258798, 10.570726, 30.691479>,  <13.918970, 10.567984, 30.982876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.258798, 10.570726, 30.691479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.288051, 10.944699, 30.830362>,  <13.305602, 11.169083, 30.913692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.288051, 10.944699, 30.830362>,  <13.258798, 10.570726, 30.691479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.288051, 10.944699, 30.830362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172013, 0.354748, -0.919002,
		-0.982376, 0.007485, 0.186764,
		0.073133, 0.934932, 0.347209,
		13.309991, 11.225179, 30.934525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.687263, 10.894555, 30.411690>,  <13.258798, 10.570726, 30.691479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.687263, 10.894555, 30.411690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.946740, 11.176474, 30.526552>,  <13.102427, 11.345625, 30.595470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.946740, 11.176474, 30.526552>,  <12.687263, 10.894555, 30.411690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.946740, 11.176474, 30.526552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120187, 0.467454, -0.875809,
		-0.751501, 0.533618, 0.387941,
		0.648693, 0.704797, 0.287158,
		13.141348, 11.387913, 30.612700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.420414, 11.519855, 30.160904>,  <12.687263, 10.894555, 30.411690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.420414, 11.519855, 30.160904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.801124, 11.615980, 30.237196>,  <13.029550, 11.673656, 30.282970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.801124, 11.615980, 30.237196>,  <12.420414, 11.519855, 30.160904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.801124, 11.615980, 30.237196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031123, 0.542833, -0.839264,
		-0.305220, 0.804725, 0.509175,
		0.951773, 0.240313, 0.190729,
		13.086656, 11.688074, 30.294415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.337770, 12.230182, 29.889215>,  <12.420414, 11.519855, 30.160904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.337770, 12.230182, 29.889215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.725190, 12.144343, 29.939594>,  <12.957642, 12.092840, 29.969822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.725190, 12.144343, 29.939594>,  <12.337770, 12.230182, 29.889215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.725190, 12.144343, 29.939594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230887, 0.586398, -0.776421,
		0.092762, 0.781081, 0.617502,
		0.968549, -0.214595, 0.125946,
		13.015755, 12.079965, 29.977379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.679958, 12.861314, 29.837830>,  <12.337770, 12.230182, 29.889215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.679958, 12.861314, 29.837830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.951460, 12.572689, 29.783218>,  <13.114361, 12.399514, 29.750452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.951460, 12.572689, 29.783218>,  <12.679958, 12.861314, 29.837830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.951460, 12.572689, 29.783218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256029, 0.406761, -0.876923,
		0.688289, 0.560261, 0.460832,
		0.678754, -0.721563, -0.136526,
		13.155087, 12.356220, 29.742260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.258927, 13.156091, 29.638748>,  <12.679958, 12.861314, 29.837830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.258927, 13.156091, 29.638748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.338758, 12.791860, 29.493961>,  <13.386657, 12.573321, 29.407089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.338758, 12.791860, 29.493961>,  <13.258927, 13.156091, 29.638748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.338758, 12.791860, 29.493961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403647, 0.412998, -0.816396,
		0.892882, 0.016828, 0.449977,
		0.199578, -0.910577, -0.361965,
		13.398632, 12.518686, 29.385372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.901561, 13.161600, 29.449280>,  <13.258927, 13.156091, 29.638748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.901561, 13.161600, 29.449280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.763193, 12.837970, 29.259233>,  <13.680173, 12.643791, 29.145206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.763193, 12.837970, 29.259233>,  <13.901561, 13.161600, 29.449280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.763193, 12.837970, 29.259233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493427, 0.273831, -0.825559,
		0.798042, -0.520011, 0.304497,
		-0.345918, -0.809077, -0.475116,
		13.659417, 12.595246, 29.116699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.535630, 12.682096, 29.143465>,  <13.901561, 13.161600, 29.449280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.535630, 12.682096, 29.143465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.193962, 12.621152, 28.944597>,  <13.988961, 12.584585, 28.825275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.193962, 12.621152, 28.944597>,  <14.535630, 12.682096, 29.143465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.193962, 12.621152, 28.944597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455673, 0.241295, -0.856819,
		0.250527, -0.958414, -0.136671,
		-0.854165, -0.152380, -0.497174,
		13.937711, 12.575443, 28.795446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.702584, 12.123853, 28.558640>,  <14.535630, 12.682096, 29.143465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.702584, 12.123853, 28.558640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.383799, 12.346543, 28.464914>,  <14.192527, 12.480158, 28.408680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.383799, 12.346543, 28.464914>,  <14.702584, 12.123853, 28.558640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.383799, 12.346543, 28.464914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388661, 0.175707, -0.904472,
		-0.462374, -0.811900, -0.356410,
		-0.796965, 0.556727, -0.234312,
		14.144710, 12.513561, 28.394621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.520519, 11.869814, 27.846855>,  <14.702584, 12.123853, 28.558640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.520519, 11.869814, 27.846855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.373157, 12.237506, 27.902416>,  <14.284739, 12.458121, 27.935753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.373157, 12.237506, 27.902416>,  <14.520519, 11.869814, 27.846855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.373157, 12.237506, 27.902416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324800, 0.267260, -0.907236,
		-0.871081, -0.289116, -0.397026,
		-0.368406, 0.919230, 0.138900,
		14.262634, 12.513275, 27.944086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.215621, 11.988733, 27.189690>,  <14.520519, 11.869814, 27.846855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.215621, 11.988733, 27.189690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.208318, 12.362754, 27.331306>,  <14.203936, 12.587167, 27.416277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.208318, 12.362754, 27.331306>,  <14.215621, 11.988733, 27.189690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.208318, 12.362754, 27.331306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032360, 0.353361, -0.934928,
		-0.999310, -0.028526, 0.023807,
		-0.018257, 0.935052, 0.354040,
		14.202841, 12.643270, 27.437519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.851550, 12.378193, 26.699308>,  <14.215621, 11.988733, 27.189690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.851550, 12.378193, 26.699308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.018079, 12.665207, 26.922672>,  <14.117996, 12.837416, 27.056690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.018079, 12.665207, 26.922672>,  <13.851550, 12.378193, 26.699308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.018079, 12.665207, 26.922672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055593, 0.633103, -0.772068,
		-0.907517, 0.290385, 0.303464,
		0.416321, 0.717535, 0.558408,
		14.142975, 12.880467, 27.090195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.443564, 12.974855, 26.647547>,  <13.851550, 12.378193, 26.699308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.443564, 12.974855, 26.647547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.813024, 13.101468, 26.733973>,  <14.034698, 13.177436, 26.785828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.813024, 13.101468, 26.733973>,  <13.443564, 12.974855, 26.647547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.813024, 13.101468, 26.733973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012800, 0.537981, -0.842860,
		-0.383030, 0.781271, 0.492853,
		0.923647, 0.316532, 0.216063,
		14.090117, 13.196427, 26.798792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.412215, 13.773778, 26.501738>,  <13.443564, 12.974855, 26.647547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.412215, 13.773778, 26.501738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.800900, 13.680508, 26.516733>,  <14.034110, 13.624545, 26.525730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.800900, 13.680508, 26.516733>,  <13.412215, 13.773778, 26.501738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.800900, 13.680508, 26.516733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189684, 0.675985, -0.712085,
		0.140700, 0.699052, 0.701092,
		0.971712, -0.233177, 0.037488,
		14.092413, 13.610555, 26.527979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.803711, 14.382082, 26.443546>,  <13.412215, 13.773778, 26.501738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.803711, 14.382082, 26.443546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.095732, 14.128242, 26.342112>,  <14.270945, 13.975939, 26.281250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.095732, 14.128242, 26.342112>,  <13.803711, 14.382082, 26.443546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.095732, 14.128242, 26.342112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226705, 0.574953, -0.786151,
		0.644692, 0.516443, 0.563613,
		0.730053, -0.634599, -0.253587,
		14.314748, 13.937862, 26.266035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.404811, 14.793823, 26.272177>,  <13.803711, 14.382082, 26.443546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.404811, 14.793823, 26.272177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.483142, 14.445554, 26.091698>,  <14.530140, 14.236592, 25.983410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.483142, 14.445554, 26.091698>,  <14.404811, 14.793823, 26.272177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.483142, 14.445554, 26.091698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237036, 0.488490, -0.839757,
		0.951560, 0.057496, 0.302040,
		0.195827, -0.870673, -0.451199,
		14.541890, 14.184352, 25.956339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.893072, 15.011561, 25.770287>,  <14.404811, 14.793823, 26.272177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.893072, 15.011561, 25.770287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.761271, 14.654986, 25.645857>,  <14.682190, 14.441042, 25.571199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.761271, 14.654986, 25.645857>,  <14.893072, 15.011561, 25.770287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.761271, 14.654986, 25.645857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159495, 0.272185, -0.948934,
		0.930585, -0.362293, 0.052494,
		-0.329504, -0.891437, -0.311075,
		14.662419, 14.387555, 25.552534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.454557, 14.691702, 25.306112>,  <14.893072, 15.011561, 25.770287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.454557, 14.691702, 25.306112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.081572, 14.567434, 25.232363>,  <14.857780, 14.492874, 25.188114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.081572, 14.567434, 25.232363>,  <15.454557, 14.691702, 25.306112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.081572, 14.567434, 25.232363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077386, 0.326739, -0.941941,
		0.352877, -0.892594, -0.280631,
		-0.932464, -0.310673, -0.184373,
		14.801832, 14.474234, 25.177052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<26.218021, 25.329172, 7.897423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.341904, 25.156113, 8.236103>,  <26.416233, 25.052277, 8.439311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.341904, 25.156113, 8.236103>,  <26.218021, 25.329172, 7.897423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341904, 25.156113, 8.236103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926345, 0.338087, -0.166080,
		-0.214404, 0.835771, 0.505488,
		0.309704, -0.432648, 0.846699,
		26.434814, 25.026318, 8.490113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422176, 25.229303, 7.843432>,  <26.218021, 25.329172, 7.897423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422176, 25.229303, 7.843432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.141882, 25.330935, 8.110089>,  <24.973705, 25.391912, 8.270083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.141882, 25.330935, 8.110089>,  <25.422176, 25.229303, 7.843432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141882, 25.330935, 8.110089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422748, -0.900587, -0.101127,
		0.574675, -0.352685, 0.738486,
		-0.700737, 0.254078, 0.666642,
		24.931662, 25.407158, 8.310081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498301, 24.865540, 8.414253>,  <25.422176, 25.229303, 7.843432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498301, 24.865540, 8.414253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.125799, 24.966715, 8.309342>,  <24.902298, 25.027420, 8.246396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.125799, 24.966715, 8.309342>,  <25.498301, 24.865540, 8.414253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.125799, 24.966715, 8.309342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249420, -0.967245, -0.047195,
		-0.265623, 0.021466, 0.963838,
		-0.931254, 0.252936, -0.262277,
		24.846422, 25.042595, 8.230659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056902, 24.488413, 8.701970>,  <25.498301, 24.865540, 8.414253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.056902, 24.488413, 8.701970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.864723, 24.603424, 8.370548>,  <24.749416, 24.672430, 8.171696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.864723, 24.603424, 8.370548>,  <25.056902, 24.488413, 8.701970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.864723, 24.603424, 8.370548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176581, -0.957099, -0.229742,
		-0.859064, 0.035928, 0.510606,
		-0.480446, 0.287527, -0.828553,
		24.720589, 24.689682, 8.121983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.255953, 24.333076, 8.659390>,  <25.056902, 24.488413, 8.701970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.255953, 24.333076, 8.659390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.479736, 24.318043, 8.328188>,  <24.614006, 24.309023, 8.129466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.479736, 24.318043, 8.328188>,  <24.255953, 24.333076, 8.659390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.479736, 24.318043, 8.328188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168778, -0.983207, -0.069407,
		-0.811493, 0.178579, -0.556407,
		0.559458, -0.037586, -0.828006,
		24.647573, 24.306767, 8.079786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.983423, 24.296602, 7.915789>,  <24.255953, 24.333076, 8.659390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.983423, 24.296602, 7.915789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.330854, 24.111662, 7.987120>,  <24.539314, 24.000698, 8.029919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.330854, 24.111662, 7.987120>,  <23.983423, 24.296602, 7.915789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.330854, 24.111662, 7.987120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453537, -0.886692, -0.089896,
		0.199686, -0.002797, -0.979856,
		0.868579, -0.462352, 0.178329,
		24.591429, 23.972956, 8.040619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.910053, 23.610699, 7.613744>,  <23.983423, 24.296602, 7.915789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.910053, 23.610699, 7.613744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.224295, 23.550514, 7.853807>,  <24.412840, 23.514404, 7.997846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.224295, 23.550514, 7.853807>,  <23.910053, 23.610699, 7.613744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.224295, 23.550514, 7.853807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348711, -0.908926, 0.228592,
		0.511107, -0.388865, -0.766521,
		0.785602, -0.150459, 0.600159,
		24.459976, 23.505377, 8.033855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.997057, 22.925325, 7.527029>,  <23.910053, 23.610699, 7.613744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.997057, 22.925325, 7.527029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.205194, 22.997271, 7.860949>,  <24.330076, 23.040438, 8.061301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.205194, 22.997271, 7.860949>,  <23.997057, 22.925325, 7.527029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.205194, 22.997271, 7.860949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300377, -0.876546, 0.376087,
		0.799385, -0.446449, -0.402078,
		0.520344, 0.179863, 0.834800,
		24.361298, 23.051229, 8.111389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.488295, 22.431515, 7.613131>,  <23.997057, 22.925325, 7.527029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.488295, 22.431515, 7.613131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.405048, 22.554182, 7.984645>,  <24.355101, 22.627783, 8.207554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.405048, 22.554182, 7.984645>,  <24.488295, 22.431515, 7.613131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.405048, 22.554182, 7.984645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166171, -0.946859, 0.275399,
		0.963885, -0.097022, 0.248016,
		-0.208117, 0.306666, 0.928786,
		24.342613, 22.646181, 8.263281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.830383, 22.039860, 8.118316>,  <24.488295, 22.431515, 7.613131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.830383, 22.039860, 8.118316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.516459, 22.176922, 8.324870>,  <24.328104, 22.259159, 8.448803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.516459, 22.176922, 8.324870>,  <24.830383, 22.039860, 8.118316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.516459, 22.176922, 8.324870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171739, -0.920858, 0.350037,
		0.595461, 0.186030, 0.781549,
		-0.784813, 0.342656, 0.516387,
		24.281015, 22.279718, 8.479786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.589537, 21.461157, 8.423422>,  <24.830383, 22.039860, 8.118316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.589537, 21.461157, 8.423422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.341379, 21.718863, 8.602325>,  <24.192486, 21.873486, 8.709667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.341379, 21.718863, 8.602325>,  <24.589537, 21.461157, 8.423422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.341379, 21.718863, 8.602325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456434, -0.760337, 0.462121,
		0.637794, 0.082552, 0.765770,
		-0.620392, 0.644262, 0.447259,
		24.155262, 21.912142, 8.736503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.607864, 21.319151, 9.096924>,  <24.589537, 21.461157, 8.423422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.607864, 21.319151, 9.096924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.258242, 21.499493, 9.024532>,  <24.048468, 21.607698, 8.981097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.258242, 21.499493, 9.024532>,  <24.607864, 21.319151, 9.096924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.258242, 21.499493, 9.024532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484455, -0.780927, 0.394279,
		0.036433, 0.432298, 0.900995,
		-0.874057, 0.450857, -0.180978,
		23.996025, 21.634750, 8.970239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.238474, 21.131577, 9.660275>,  <24.607864, 21.319151, 9.096924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.238474, 21.131577, 9.660275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.952250, 21.267599, 9.416198>,  <23.780516, 21.349213, 9.269752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.952250, 21.267599, 9.416198>,  <24.238474, 21.131577, 9.660275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.952250, 21.267599, 9.416198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643330, -0.661190, 0.385947,
		-0.272210, 0.668723, 0.691889,
		-0.715562, 0.340055, -0.610192,
		23.737581, 21.369616, 9.233140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.647640, 21.179680, 10.025234>,  <24.238474, 21.131577, 9.660275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.647640, 21.179680, 10.025234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.517784, 21.161322, 9.647345>,  <23.439871, 21.150307, 9.420611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.517784, 21.161322, 9.647345>,  <23.647640, 21.179680, 10.025234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.517784, 21.161322, 9.647345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656422, -0.708182, 0.259976,
		-0.680968, 0.704536, 0.199776,
		-0.324640, -0.045898, -0.944723,
		23.420391, 21.147552, 9.363928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.915283, 21.201340, 10.104301>,  <23.647640, 21.179680, 10.025234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.915283, 21.201340, 10.104301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.991800, 21.033829, 9.749217>,  <23.037710, 20.933321, 9.536166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.991800, 21.033829, 9.749217>,  <22.915283, 21.201340, 10.104301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.991800, 21.033829, 9.749217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635592, -0.742034, 0.213093,
		-0.747951, 0.523459, -0.408118,
		0.191292, -0.418780, -0.887711,
		23.049189, 20.908195, 9.482903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.328333, 21.005596, 9.838825>,  <22.915283, 21.201340, 10.104301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.328333, 21.005596, 9.838825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.565235, 20.755867, 9.635079>,  <22.707376, 20.606030, 9.512832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.565235, 20.755867, 9.635079>,  <22.328333, 21.005596, 9.838825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.565235, 20.755867, 9.635079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550957, -0.775069, 0.309378,
		-0.587944, 0.097406, -0.803016,
		0.592258, -0.624324, -0.509363,
		22.742912, 20.568569, 9.482270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.945997, 20.666872, 9.401300>,  <22.328333, 21.005596, 9.838825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.945997, 20.666872, 9.401300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.265854, 20.430901, 9.446124>,  <22.457767, 20.289318, 9.473018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.265854, 20.430901, 9.446124>,  <21.945997, 20.666872, 9.401300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.265854, 20.430901, 9.446124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599512, -0.794904, 0.093345,
		0.034009, -0.141823, -0.989308,
		0.799643, -0.589927, 0.112058,
		22.505747, 20.253922, 9.479741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.798531, 20.051746, 9.014215>,  <21.945997, 20.666872, 9.401300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.798531, 20.051746, 9.014215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.086493, 19.924793, 9.261117>,  <22.259270, 19.848621, 9.409259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.086493, 19.924793, 9.261117>,  <21.798531, 20.051746, 9.014215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.086493, 19.924793, 9.261117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490633, -0.861745, 0.129128,
		0.490935, -0.395807, -0.776093,
		0.719904, -0.317384, 0.617257,
		22.302464, 19.829578, 9.446294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.878870, 19.298527, 8.877282>,  <21.798531, 20.051746, 9.014215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.878870, 19.298527, 8.877282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.038548, 19.352785, 9.239993>,  <22.134354, 19.385340, 9.457620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.038548, 19.352785, 9.239993>,  <21.878870, 19.298527, 8.877282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.038548, 19.352785, 9.239993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379667, -0.875763, 0.298146,
		0.834565, -0.463292, -0.298099,
		0.399193, 0.135644, 0.906778,
		22.158306, 19.393478, 9.512027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.963654, 18.587727, 9.235485>,  <21.878870, 19.298527, 8.877282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.963654, 18.587727, 9.235485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.950083, 18.856749, 9.531193>,  <21.941940, 19.018162, 9.708617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.950083, 18.856749, 9.531193>,  <21.963654, 18.587727, 9.235485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.950083, 18.856749, 9.531193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595549, -0.607626, 0.525464,
		0.802603, -0.422444, 0.421153,
		-0.033925, 0.672556, 0.739268,
		21.939905, 19.058516, 9.752974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.098503, 18.234699, 9.823192>,  <21.963654, 18.587727, 9.235485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.098503, 18.234699, 9.823192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.973995, 18.578299, 9.985787>,  <21.899290, 18.784458, 10.083344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.973995, 18.578299, 9.985787>,  <22.098503, 18.234699, 9.823192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.973995, 18.578299, 9.985787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212913, -0.479901, 0.851095,
		0.926164, 0.178373, 0.332270,
		-0.311269, 0.858999, 0.406489,
		21.880615, 18.835999, 10.107734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.437714, 18.374144, 10.404958>,  <22.098503, 18.234699, 9.823192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.437714, 18.374144, 10.404958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.124517, 18.612974, 10.474734>,  <21.936600, 18.756273, 10.516600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.124517, 18.612974, 10.474734>,  <22.437714, 18.374144, 10.404958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.124517, 18.612974, 10.474734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120306, -0.420499, 0.899282,
		0.610292, 0.683141, 0.401077,
		-0.782988, 0.597076, 0.174441,
		21.889622, 18.792097, 10.527066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.527390, 18.699429, 11.026484>,  <22.437714, 18.374144, 10.404958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.527390, 18.699429, 11.026484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.131315, 18.683123, 10.973017>,  <21.893671, 18.673340, 10.940937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.131315, 18.683123, 10.973017>,  <22.527390, 18.699429, 11.026484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.131315, 18.683123, 10.973017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111116, -0.350397, 0.929987,
		-0.084745, 0.935714, 0.342429,
		-0.990188, -0.040763, -0.133667,
		21.834259, 18.670895, 10.932917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.294001, 18.848448, 11.635433>,  <22.527390, 18.699429, 11.026484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.294001, 18.848448, 11.635433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.963398, 18.680515, 11.485430>,  <21.765038, 18.579756, 11.395428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.963398, 18.680515, 11.485430>,  <22.294001, 18.848448, 11.635433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.963398, 18.680515, 11.485430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152934, -0.473655, 0.867330,
		-0.541756, 0.774205, 0.327272,
		-0.826505, -0.419830, -0.375008,
		21.715446, 18.554565, 11.372928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.652117, 19.084803, 12.064496>,  <22.294001, 18.848448, 11.635433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.652117, 19.084803, 12.064496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.589247, 18.732464, 11.885879>,  <21.551525, 18.521061, 11.778708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.589247, 18.732464, 11.885879>,  <21.652117, 19.084803, 12.064496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.589247, 18.732464, 11.885879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300588, -0.388041, 0.871247,
		-0.940714, 0.271164, -0.203783,
		-0.157175, -0.880848, -0.446545,
		21.542095, 18.468208, 11.751915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.084917, 18.991144, 12.403454>,  <21.652117, 19.084803, 12.064496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.084917, 18.991144, 12.403454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.219152, 18.644859, 12.254900>,  <21.299694, 18.437088, 12.165768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.219152, 18.644859, 12.254900>,  <21.084917, 18.991144, 12.403454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.219152, 18.644859, 12.254900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492045, -0.497281, 0.714565,
		-0.803289, -0.057061, -0.592850,
		0.335587, -0.865711, -0.371384,
		21.319828, 18.385145, 12.143485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.577671, 18.572498, 12.540758>,  <21.084917, 18.991144, 12.403454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.577671, 18.572498, 12.540758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.850357, 18.289829, 12.464991>,  <21.013969, 18.120228, 12.419530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.850357, 18.289829, 12.464991>,  <20.577671, 18.572498, 12.540758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.850357, 18.289829, 12.464991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391092, -0.570798, 0.721967,
		-0.618312, -0.418098, -0.665496,
		0.681717, -0.706671, -0.189416,
		21.054871, 18.077827, 12.408165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.166376, 17.973227, 12.576857>,  <20.577671, 18.572498, 12.540758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.166376, 17.973227, 12.576857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.550114, 17.864027, 12.605500>,  <20.780357, 17.798508, 12.622686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.550114, 17.864027, 12.605500>,  <20.166376, 17.973227, 12.576857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.550114, 17.864027, 12.605500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208919, -0.516315, 0.830525,
		-0.189760, -0.811721, -0.552359,
		0.959346, -0.272999, 0.071609,
		20.837917, 17.782127, 12.626983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.235796, 17.199274, 12.585368>,  <20.166376, 17.973227, 12.576857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.235796, 17.199274, 12.585368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.584011, 17.319305, 12.741375>,  <20.792940, 17.391323, 12.834979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.584011, 17.319305, 12.741375>,  <20.235796, 17.199274, 12.585368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.584011, 17.319305, 12.741375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088010, -0.684844, 0.723355,
		0.484164, -0.664035, -0.569775,
		0.870540, 0.300077, 0.390018,
		20.845173, 17.409328, 12.858380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.548769, 16.578922, 12.741195>,  <20.235796, 17.199274, 12.585368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.548769, 16.578922, 12.741195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.732815, 16.848759, 12.972096>,  <20.843243, 17.010660, 13.110638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.732815, 16.848759, 12.972096>,  <20.548769, 16.578922, 12.741195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.732815, 16.848759, 12.972096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158665, -0.577224, 0.801023,
		0.873567, -0.460152, -0.158555,
		0.460115, 0.674590, 0.577255,
		20.870850, 17.051136, 13.145273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.957384, 16.219088, 13.154369>,  <20.548769, 16.578922, 12.741195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.957384, 16.219088, 13.154369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.979191, 16.567833, 13.349052>,  <20.992275, 16.777081, 13.465862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.979191, 16.567833, 13.349052>,  <20.957384, 16.219088, 13.154369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.979191, 16.567833, 13.349052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061855, -0.483548, 0.873129,
		0.996595, -0.077706, 0.027567,
		0.054517, 0.871862, 0.486709,
		20.995546, 16.829391, 13.495065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.433210, 16.147099, 13.622287>,  <20.957384, 16.219088, 13.154369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.433210, 16.147099, 13.622287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.155090, 16.415154, 13.726190>,  <20.988218, 16.575987, 13.788531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.155090, 16.415154, 13.726190>,  <21.433210, 16.147099, 13.622287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.155090, 16.415154, 13.726190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027282, -0.336548, 0.941271,
		0.718200, 0.661554, 0.215720,
		-0.695301, 0.670136, 0.259758,
		20.946501, 16.616194, 13.804117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.671659, 16.623419, 14.130632>,  <21.433210, 16.147099, 13.622287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.671659, 16.623419, 14.130632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.291721, 16.498751, 14.120383>,  <21.063759, 16.423950, 14.114234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.291721, 16.498751, 14.120383>,  <21.671659, 16.623419, 14.130632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.291721, 16.498751, 14.120383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109193, -0.407318, 0.906735,
		-0.293041, 0.858459, 0.420921,
		-0.949844, -0.311672, -0.025623,
		21.006767, 16.405249, 14.112697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.255236, 16.098665, 14.445254>,  <21.671659, 16.623419, 14.130632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.255236, 16.098665, 14.445254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.595728, 15.901752, 14.372517>,  <22.800022, 15.783605, 14.328874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.595728, 15.901752, 14.372517>,  <22.255236, 16.098665, 14.445254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.595728, 15.901752, 14.372517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261956, 0.698827, -0.665598,
		0.454741, 0.518940, 0.723818,
		0.851229, -0.492283, -0.181845,
		22.851097, 15.754067, 14.317963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.774647, 16.486694, 14.447669>,  <22.255236, 16.098665, 14.445254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.774647, 16.486694, 14.447669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.922085, 16.194204, 14.218079>,  <23.010548, 16.018711, 14.080324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.922085, 16.194204, 14.218079>,  <22.774647, 16.486694, 14.447669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.922085, 16.194204, 14.218079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527957, 0.672873, -0.518172,
		0.765114, -0.112040, 0.634073,
		0.368595, -0.731224, -0.573977,
		23.032663, 15.974837, 14.045885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.371603, 16.683977, 14.463511>,  <22.774647, 16.486694, 14.447669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.371603, 16.683977, 14.463511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.354515, 16.434759, 14.151103>,  <23.344263, 16.285229, 13.963658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.354515, 16.434759, 14.151103>,  <23.371603, 16.683977, 14.463511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.354515, 16.434759, 14.151103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488835, 0.668735, -0.560209,
		0.871330, -0.405721, 0.275998,
		-0.042719, -0.623044, -0.781019,
		23.341700, 16.247847, 13.916798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.098223, 16.587793, 14.312302>,  <23.371603, 16.683977, 14.463511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.098223, 16.587793, 14.312302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.822460, 16.553164, 14.024628>,  <23.657003, 16.532387, 13.852023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.822460, 16.553164, 14.024628>,  <24.098223, 16.587793, 14.312302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.822460, 16.553164, 14.024628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408683, 0.773244, -0.484841,
		0.598079, -0.628170, -0.497698,
		-0.689405, -0.086573, -0.719184,
		23.615639, 16.527191, 13.808872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.484375, 16.581083, 13.690116>,  <24.098223, 16.587793, 14.312302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.484375, 16.581083, 13.690116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.118233, 16.674809, 13.559139>,  <23.898546, 16.731045, 13.480554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.118233, 16.674809, 13.559139>,  <24.484375, 16.581083, 13.690116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.118233, 16.674809, 13.559139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385214, 0.746299, -0.542815,
		0.117179, -0.623004, -0.773392,
		-0.915357, 0.234315, -0.327441,
		23.843626, 16.745104, 13.460907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.555902, 16.565348, 12.995358>,  <24.484375, 16.581083, 13.690116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.555902, 16.565348, 12.995358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.233677, 16.785036, 13.084283>,  <24.040342, 16.916849, 13.137638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.233677, 16.785036, 13.084283>,  <24.555902, 16.565348, 12.995358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.233677, 16.785036, 13.084283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397440, 0.779153, -0.484730,
		-0.439440, -0.302124, -0.845939,
		-0.805565, 0.549219, 0.222314,
		23.992008, 16.949802, 13.150977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.581320, 17.102282, 12.453937>,  <24.555902, 16.565348, 12.995358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.581320, 17.102282, 12.453937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.297873, 17.262373, 12.686378>,  <24.127804, 17.358427, 12.825842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.297873, 17.262373, 12.686378>,  <24.581320, 17.102282, 12.453937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.297873, 17.262373, 12.686378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360528, 0.913317, -0.189397,
		-0.606533, 0.075294, -0.791485,
		-0.708617, 0.400228, 0.581102,
		24.085287, 17.382441, 12.860708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.114389, 17.505579, 11.994170>,  <24.581320, 17.102282, 12.453937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.114389, 17.505579, 11.994170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.108498, 17.661131, 12.362638>,  <24.104963, 17.754463, 12.583719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.108498, 17.661131, 12.362638>,  <24.114389, 17.505579, 11.994170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.108498, 17.661131, 12.362638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294826, 0.882000, -0.367632,
		-0.955437, 0.266170, -0.127643,
		-0.014728, 0.388882, 0.921170,
		24.104078, 17.777796, 12.638989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.859741, 18.119141, 11.972959>,  <24.114389, 17.505579, 11.994170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.859741, 18.119141, 11.972959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.991718, 18.165846, 12.347659>,  <24.070904, 18.193869, 12.572479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.991718, 18.165846, 12.347659>,  <23.859741, 18.119141, 11.972959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.991718, 18.165846, 12.347659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178525, 0.966697, -0.183376,
		-0.926966, 0.227737, 0.298110,
		0.329943, 0.116763, 0.936752,
		24.090702, 18.200874, 12.628685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.488703, 18.641582, 12.215565>,  <23.859741, 18.119141, 11.972959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.488703, 18.641582, 12.215565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.841595, 18.586985, 12.395804>,  <24.053329, 18.554226, 12.503948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.841595, 18.586985, 12.395804>,  <23.488703, 18.641582, 12.215565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.841595, 18.586985, 12.395804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273457, 0.927629, -0.254410,
		-0.383264, 0.347668, 0.855708,
		0.882230, -0.136493, 0.450599,
		24.106264, 18.546036, 12.530984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.615957, 19.294985, 12.417000>,  <23.488703, 18.641582, 12.215565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.615957, 19.294985, 12.417000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.971458, 19.118547, 12.466887>,  <24.184759, 19.012684, 12.496819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.971458, 19.118547, 12.466887>,  <23.615957, 19.294985, 12.417000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.971458, 19.118547, 12.466887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456174, 0.824390, -0.335091,
		0.044990, 0.354707, 0.933895,
		0.888752, -0.441095, 0.124719,
		24.238085, 18.986219, 12.504303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.009489, 19.758137, 12.818777>,  <23.615957, 19.294985, 12.417000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.009489, 19.758137, 12.818777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.263702, 19.521379, 12.620480>,  <24.416231, 19.379326, 12.501501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.263702, 19.521379, 12.620480>,  <24.009489, 19.758137, 12.818777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.263702, 19.521379, 12.620480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551076, 0.797472, -0.245671,
		0.540752, -0.117060, 0.832997,
		0.635533, -0.591892, -0.495743,
		24.454363, 19.343811, 12.471757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.578959, 20.176247, 12.799472>,  <24.009489, 19.758137, 12.818777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.578959, 20.176247, 12.799472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.719250, 19.910723, 12.535245>,  <24.803425, 19.751410, 12.376709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.719250, 19.910723, 12.535245>,  <24.578959, 20.176247, 12.799472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.719250, 19.910723, 12.535245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587356, 0.705315, -0.396918,
		0.729385, -0.248779, 0.637264,
		0.350727, -0.663807, -0.660568,
		24.824469, 19.711580, 12.337074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301641, 20.350243, 12.667565>,  <24.578959, 20.176247, 12.799472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.301641, 20.350243, 12.667565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.254574, 20.103531, 12.356248>,  <25.226334, 19.955505, 12.169457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.254574, 20.103531, 12.356248>,  <25.301641, 20.350243, 12.667565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.254574, 20.103531, 12.356248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492998, 0.644055, -0.584933,
		0.862036, -0.452526, 0.228284,
		-0.117670, -0.616777, -0.778293,
		25.219273, 19.918497, 12.122760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916227, 20.387831, 12.323638>,  <25.301641, 20.350243, 12.667565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916227, 20.387831, 12.323638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.642921, 20.263992, 12.059125>,  <25.478937, 20.189690, 11.900417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.642921, 20.263992, 12.059125>,  <25.916227, 20.387831, 12.323638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642921, 20.263992, 12.059125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373755, 0.629716, -0.681003,
		0.627219, -0.712482, -0.314587,
		-0.683303, -0.309560, -0.661264,
		25.437941, 20.171112, 11.860740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319786, 20.248425, 11.754834>,  <25.916227, 20.387831, 12.323638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319786, 20.248425, 11.754834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.942091, 20.299671, 11.633509>,  <25.715473, 20.330420, 11.560714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.942091, 20.299671, 11.633509>,  <26.319786, 20.248425, 11.754834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.942091, 20.299671, 11.633509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324446, 0.518987, -0.790814,
		0.056098, -0.845126, -0.531615,
		-0.944239, 0.128117, -0.303312,
		25.658819, 20.338106, 11.542515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324442, 20.026979, 11.025987>,  <26.319786, 20.248425, 11.754834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324442, 20.026979, 11.025987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.010347, 20.265209, 11.093740>,  <25.821890, 20.408148, 11.134391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.010347, 20.265209, 11.093740>,  <26.324442, 20.026979, 11.025987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.010347, 20.265209, 11.093740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300318, 0.605548, -0.736968,
		-0.541489, -0.527827, -0.654361,
		-0.785238, 0.595576, 0.169381,
		25.774776, 20.443882, 11.144554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075987, 20.059961, 10.443124>,  <26.324442, 20.026979, 11.025987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075987, 20.059961, 10.443124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.940092, 20.379316, 10.641983>,  <25.858555, 20.570929, 10.761299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.940092, 20.379316, 10.641983>,  <26.075987, 20.059961, 10.443124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.940092, 20.379316, 10.641983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401980, 0.601137, -0.690685,
		-0.850289, -0.034806, -0.525164,
		-0.339735, 0.798388, 0.497149,
		25.838171, 20.618834, 10.791128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872265, 20.512428, 9.954300>,  <26.075987, 20.059961, 10.443124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872265, 20.512428, 9.954300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.912539, 20.761566, 10.264636>,  <25.936703, 20.911049, 10.450838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.912539, 20.761566, 10.264636>,  <25.872265, 20.512428, 9.954300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912539, 20.761566, 10.264636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641017, 0.555767, -0.529358,
		-0.760894, 0.550625, -0.343296,
		0.100685, 0.622844, 0.775840,
		25.942743, 20.948420, 10.497388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<18.254330, 18.047470, 22.348373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.246559, 17.650013, 22.304010>,  <18.241898, 17.411539, 22.277393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.246559, 17.650013, 22.304010>,  <18.254330, 18.047470, 22.348373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.246559, 17.650013, 22.304010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320206, 0.098901, -0.942172,
		0.947149, -0.053814, 0.316248,
		-0.019425, -0.993641, -0.110905,
		18.240732, 17.351921, 22.270739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.971592, 17.784683, 22.159115>,  <18.254330, 18.047470, 22.348373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.971592, 17.784683, 22.159115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.691713, 17.526642, 22.036304>,  <18.523787, 17.371817, 21.962618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.691713, 17.526642, 22.036304>,  <18.971592, 17.784683, 22.159115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.691713, 17.526642, 22.036304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402382, -0.000735, -0.915472,
		0.590348, -0.764095, 0.260092,
		-0.699698, -0.645103, -0.307024,
		18.481804, 17.333111, 21.944197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.279566, 17.125084, 21.971926>,  <18.971592, 17.784683, 22.159115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.279566, 17.125084, 21.971926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.928583, 17.156748, 21.782694>,  <18.717995, 17.175747, 21.669155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.928583, 17.156748, 21.782694>,  <19.279566, 17.125084, 21.971926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.928583, 17.156748, 21.782694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457693, -0.156871, -0.875162,
		-0.143476, -0.984443, 0.101424,
		-0.877457, 0.079143, -0.473080,
		18.665346, 17.180496, 21.640770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.315605, 16.632174, 21.416214>,  <19.279566, 17.125084, 21.971926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.315605, 16.632174, 21.416214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.006769, 16.857931, 21.299366>,  <18.821468, 16.993385, 21.229258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.006769, 16.857931, 21.299366>,  <19.315605, 16.632174, 21.416214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.006769, 16.857931, 21.299366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264749, -0.132225, -0.955209,
		-0.577742, -0.814846, -0.047334,
		-0.772089, 0.564396, -0.292122,
		18.775143, 17.027250, 21.211729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.133696, 16.322989, 20.804226>,  <19.315605, 16.632174, 21.416214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.133696, 16.322989, 20.804226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.964207, 16.684933, 20.787775>,  <18.862514, 16.902100, 20.777905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.964207, 16.684933, 20.787775>,  <19.133696, 16.322989, 20.804226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.964207, 16.684933, 20.787775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177279, 0.038316, -0.983415,
		-0.888275, -0.423984, -0.176648,
		-0.423721, 0.904859, -0.041128,
		18.837090, 16.956390, 20.775436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.593525, 16.261066, 20.299105>,  <19.133696, 16.322989, 20.804226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.593525, 16.261066, 20.299105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.665071, 16.653490, 20.328852>,  <18.708000, 16.888945, 20.346699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.665071, 16.653490, 20.328852>,  <18.593525, 16.261066, 20.299105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.665071, 16.653490, 20.328852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391946, -0.001723, -0.919987,
		-0.902433, 0.193702, -0.384830,
		0.178867, 0.981059, 0.074366,
		18.718731, 16.947807, 20.351162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.345985, 16.473642, 19.695076>,  <18.593525, 16.261066, 20.299105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.345985, 16.473642, 19.695076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.595636, 16.753515, 19.834162>,  <18.745428, 16.921440, 19.917614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.595636, 16.753515, 19.834162>,  <18.345985, 16.473642, 19.695076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.595636, 16.753515, 19.834162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377006, 0.120108, -0.918390,
		-0.684347, 0.704284, -0.188822,
		0.624128, 0.699684, 0.347715,
		18.782875, 16.963421, 19.938477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.183390, 17.172504, 19.389332>,  <18.345985, 16.473642, 19.695076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.183390, 17.172504, 19.389332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.566647, 17.214128, 19.496017>,  <18.796600, 17.239103, 19.560030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.566647, 17.214128, 19.496017>,  <18.183390, 17.172504, 19.389332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.566647, 17.214128, 19.496017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228823, 0.281541, -0.931866,
		-0.172064, 0.953890, 0.245944,
		0.958141, 0.104062, 0.266715,
		18.854090, 17.245348, 19.576033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.471994, 17.771538, 19.027647>,  <18.183390, 17.172504, 19.389332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.471994, 17.771538, 19.027647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.804867, 17.590210, 19.155380>,  <19.004591, 17.481413, 19.232019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.804867, 17.590210, 19.155380>,  <18.471994, 17.771538, 19.027647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.804867, 17.590210, 19.155380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477265, 0.292381, -0.828693,
		0.282297, 0.842029, 0.459668,
		0.832182, -0.453321, 0.319333,
		19.054522, 17.454214, 19.251181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.083391, 18.292576, 19.001616>,  <18.471994, 17.771538, 19.027647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.083391, 18.292576, 19.001616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.200314, 17.912350, 18.959688>,  <19.270468, 17.684214, 18.934532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.200314, 17.912350, 18.959688>,  <19.083391, 18.292576, 19.001616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.200314, 17.912350, 18.959688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524542, 0.251009, -0.813542,
		0.799633, 0.182823, 0.571981,
		0.292306, -0.950563, -0.104817,
		19.288006, 17.627180, 18.928244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.717224, 18.353432, 18.681322>,  <19.083391, 18.292576, 19.001616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.717224, 18.353432, 18.681322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.610971, 17.975101, 18.606647>,  <19.547220, 17.748102, 18.561844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.610971, 17.975101, 18.606647>,  <19.717224, 18.353432, 18.681322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.610971, 17.975101, 18.606647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620779, -0.019650, -0.783739,
		0.737613, -0.324076, 0.592370,
		-0.265632, -0.945827, -0.186686,
		19.531282, 17.691353, 18.550642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.257614, 18.134605, 18.257174>,  <19.717224, 18.353432, 18.681322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.257614, 18.134605, 18.257174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.988651, 17.851667, 18.169966>,  <19.827274, 17.681904, 18.117641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.988651, 17.851667, 18.169966>,  <20.257614, 18.134605, 18.257174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.988651, 17.851667, 18.169966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316878, -0.008902, -0.948425,
		0.668922, -0.706813, 0.230128,
		-0.672407, -0.707345, -0.218018,
		19.786928, 17.639463, 18.104561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.636282, 17.639746, 17.913418>,  <20.257614, 18.134605, 18.257174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.636282, 17.639746, 17.913418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.245905, 17.619242, 17.828653>,  <20.011679, 17.606939, 17.777794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.245905, 17.619242, 17.828653>,  <20.636282, 17.639746, 17.913418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.245905, 17.619242, 17.828653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217980, -0.210208, -0.953046,
		0.004307, -0.976312, 0.216325,
		-0.975944, -0.051259, -0.211911,
		19.953121, 17.603865, 17.765079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.331789, 17.664345, 17.781513>,  <20.636282, 17.639746, 17.913418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.331789, 17.664345, 17.781513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.649570, 17.452526, 17.900455>,  <21.840240, 17.325434, 17.971821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.649570, 17.452526, 17.900455>,  <21.331789, 17.664345, 17.781513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.649570, 17.452526, 17.900455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119881, -0.343247, -0.931563,
		0.595374, 0.775732, -0.209212,
		0.794455, -0.529548, 0.297356,
		21.887907, 17.293661, 17.989662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.736673, 17.364504, 17.103018>,  <21.331789, 17.664345, 17.781513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.736673, 17.364504, 17.103018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.737406, 16.979767, 16.993578>,  <21.737844, 16.748924, 16.927914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.737406, 16.979767, 16.993578>,  <21.736673, 17.364504, 17.103018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.737406, 16.979767, 16.993578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940214, -0.094837, 0.327113,
		-0.340578, 0.256644, -0.904511,
		0.001829, -0.961842, -0.273600,
		21.737955, 16.691214, 16.911499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034395, 17.206598, 16.761992>,  <21.736673, 17.364504, 17.103018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034395, 17.206598, 16.761992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.171110, 16.843645, 16.859837>,  <21.253139, 16.625874, 16.918543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.171110, 16.843645, 16.859837>,  <21.034395, 17.206598, 16.761992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.171110, 16.843645, 16.859837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924902, -0.278653, 0.258666,
		-0.166547, -0.314652, -0.934482,
		0.341786, -0.907384, 0.244613,
		21.273645, 16.571430, 16.933220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.608820, 16.729586, 16.459465>,  <21.034395, 17.206598, 16.761992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.608820, 16.729586, 16.459465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.764280, 16.549953, 16.781279>,  <20.857557, 16.442173, 16.974367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.764280, 16.549953, 16.781279>,  <20.608820, 16.729586, 16.459465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.764280, 16.549953, 16.781279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899241, -0.375158, 0.224995,
		0.200786, -0.810915, -0.549638,
		0.388653, -0.449081, 0.804534,
		20.880877, 16.415230, 17.022638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.676960, 16.029318, 16.293524>,  <20.608820, 16.729586, 16.459465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.676960, 16.029318, 16.293524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.676722, 16.044216, 16.693247>,  <20.676579, 16.053156, 16.933081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.676722, 16.044216, 16.693247>,  <20.676960, 16.029318, 16.293524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.676722, 16.044216, 16.693247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780760, -0.624414, 0.022806,
		0.624831, -0.780205, 0.029455,
		-0.000599, 0.037247, 0.999306,
		20.676542, 16.055389, 16.993038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.524395, 15.343428, 16.418213>,  <20.676960, 16.029318, 16.293524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.524395, 15.343428, 16.418213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.458185, 15.530463, 16.765537>,  <20.418459, 15.642685, 16.973932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.458185, 15.530463, 16.765537>,  <20.524395, 15.343428, 16.418213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.458185, 15.530463, 16.765537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762201, -0.619368, 0.188234,
		0.625820, -0.630670, 0.458918,
		-0.165526, 0.467589, 0.868310,
		20.408527, 15.670740, 17.026030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.242813, 14.795457, 16.795835>,  <20.524395, 15.343428, 16.418213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.242813, 14.795457, 16.795835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.178289, 15.129475, 17.006237>,  <20.139576, 15.329885, 17.132479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.178289, 15.129475, 17.006237>,  <20.242813, 14.795457, 16.795835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.178289, 15.129475, 17.006237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770309, -0.439710, 0.461821,
		0.616931, -0.330690, 0.714171,
		-0.161309, 0.835045, 0.526004,
		20.129896, 15.379988, 17.164038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.460762, 14.715430, 17.502167>,  <20.242813, 14.795457, 16.795835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.460762, 14.715430, 17.502167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.167862, 14.986602, 17.476173>,  <19.992123, 15.149305, 17.460577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.167862, 14.986602, 17.476173>,  <20.460762, 14.715430, 17.502167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.167862, 14.986602, 17.476173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586788, -0.579603, 0.565456,
		0.345676, 0.452186, 0.822214,
		-0.732249, 0.677930, -0.064982,
		19.948187, 15.189981, 17.456678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.212358, 14.798601, 18.231056>,  <20.460762, 14.715430, 17.502167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.212358, 14.798601, 18.231056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.900887, 14.926366, 18.015045>,  <19.714003, 15.003025, 17.885439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.900887, 14.926366, 18.015045>,  <20.212358, 14.798601, 18.231056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.900887, 14.926366, 18.015045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625003, -0.470347, 0.623013,
		-0.055003, 0.822648, 0.565884,
		-0.778682, 0.319411, -0.540028,
		19.667282, 15.022189, 17.853037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.835703, 15.108528, 18.737183>,  <20.212358, 14.798601, 18.231056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.835703, 15.108528, 18.737183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.598423, 15.022876, 18.426760>,  <19.456055, 14.971484, 18.240505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.598423, 15.022876, 18.426760>,  <19.835703, 15.108528, 18.737183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.598423, 15.022876, 18.426760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626780, -0.482129, 0.612126,
		-0.505235, 0.849529, 0.151785,
		-0.593198, -0.214131, -0.776056,
		19.420464, 14.958636, 18.193943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.209812, 15.455206, 18.888680>,  <19.835703, 15.108528, 18.737183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.209812, 15.455206, 18.888680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.146460, 15.160063, 18.626236>,  <19.108448, 14.982977, 18.468769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.146460, 15.160063, 18.626236>,  <19.209812, 15.455206, 18.888680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.146460, 15.160063, 18.626236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651154, -0.421466, 0.631161,
		-0.742236, 0.527193, -0.413706,
		-0.158381, -0.737857, -0.656111,
		19.098946, 14.938705, 18.429403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.503279, 15.416868, 18.901251>,  <19.209812, 15.455206, 18.888680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.503279, 15.416868, 18.901251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.594318, 15.076718, 18.711487>,  <18.648943, 14.872628, 18.597630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.594318, 15.076718, 18.711487>,  <18.503279, 15.416868, 18.901251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.594318, 15.076718, 18.711487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716264, -0.476252, 0.510050,
		-0.659671, 0.223715, -0.717486,
		0.227598, -0.850374, -0.474408,
		18.662598, 14.821606, 18.569164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.811750, 15.031008, 18.740057>,  <18.503279, 15.416868, 18.901251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.811750, 15.031008, 18.740057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.110262, 14.766998, 18.705566>,  <18.289370, 14.608592, 18.684872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.110262, 14.766998, 18.705566>,  <17.811750, 15.031008, 18.740057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.110262, 14.766998, 18.705566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536983, -0.673518, 0.507959,
		-0.393341, -0.332777, -0.857054,
		0.746279, -0.660025, -0.086226,
		18.334146, 14.568991, 18.679699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.538963, 14.383815, 18.584118>,  <17.811750, 15.031008, 18.740057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.538963, 14.383815, 18.584118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.898567, 14.253675, 18.701374>,  <18.114330, 14.175592, 18.771729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.898567, 14.253675, 18.701374>,  <17.538963, 14.383815, 18.584118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.898567, 14.253675, 18.701374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437884, -0.658212, 0.612385,
		-0.006289, -0.678901, -0.734203,
		0.899009, -0.325347, 0.293141,
		18.168270, 14.156072, 18.789316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.497766, 13.600976, 18.717556>,  <17.538963, 14.383815, 18.584118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.497766, 13.600976, 18.717556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.815399, 13.738538, 18.918022>,  <18.005978, 13.821074, 19.038301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.815399, 13.738538, 18.918022>,  <17.497766, 13.600976, 18.717556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.815399, 13.738538, 18.918022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261309, -0.551289, 0.792337,
		0.548775, -0.760138, -0.347902,
		0.794080, 0.343904, 0.501165,
		18.053623, 13.841709, 19.068371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.765921, 12.970342, 18.257385>,  <17.497766, 13.600976, 18.717556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.765921, 12.970342, 18.257385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600065, 12.615376, 18.176815>,  <17.500551, 12.402397, 18.128473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600065, 12.615376, 18.176815>,  <17.765921, 12.970342, 18.257385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.600065, 12.615376, 18.176815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068177, 0.190435, -0.979330,
		0.907429, -0.419800, -0.018460,
		-0.414638, -0.887414, -0.201427,
		17.475674, 12.349153, 18.116386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.088852, 12.833108, 17.690969>,  <17.765921, 12.970342, 18.257385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.088852, 12.833108, 17.690969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.766148, 12.596757, 17.690292>,  <17.572525, 12.454947, 17.689886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.766148, 12.596757, 17.690292>,  <18.088852, 12.833108, 17.690969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.766148, 12.596757, 17.690292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005046, 0.009754, -0.999940,
		0.590860, -0.806701, -0.010851,
		-0.806758, -0.590879, -0.001693,
		17.524120, 12.419494, 17.689785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.212105, 12.303868, 17.165777>,  <18.088852, 12.833108, 17.690969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.212105, 12.303868, 17.165777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.815023, 12.343833, 17.192791>,  <17.576775, 12.367812, 17.209000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.815023, 12.343833, 17.192791>,  <18.212105, 12.303868, 17.165777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.815023, 12.343833, 17.192791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080474, -0.131757, -0.988010,
		-0.089808, -0.986235, 0.138835,
		-0.992702, 0.099903, 0.067533,
		17.517212, 12.373807, 17.213051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.946930, 11.717917, 16.754536>,  <18.212105, 12.303868, 17.165777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.946930, 11.717917, 16.754536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.668728, 12.003083, 16.790373>,  <17.501806, 12.174183, 16.811876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.668728, 12.003083, 16.790373>,  <17.946930, 11.717917, 16.754536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.668728, 12.003083, 16.790373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199018, -0.071325, -0.977397,
		-0.690409, -0.697615, 0.191490,
		-0.695505, 0.712914, 0.089595,
		17.460077, 12.216957, 16.817251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.451048, 11.537342, 16.301023>,  <17.946930, 11.717917, 16.754536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.451048, 11.537342, 16.301023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.330378, 11.910648, 16.379007>,  <17.257977, 12.134632, 16.425798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.330378, 11.910648, 16.379007>,  <17.451048, 11.537342, 16.301023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.330378, 11.910648, 16.379007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364976, 0.075867, -0.927921,
		-0.880787, -0.351086, 0.317732,
		-0.301675, 0.933265, 0.194960,
		17.239876, 12.190628, 16.437496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.956770, 11.624006, 15.888534>,  <17.451048, 11.537342, 16.301023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.956770, 11.624006, 15.888534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.036415, 12.005584, 15.978285>,  <17.084202, 12.234530, 16.032135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.036415, 12.005584, 15.978285>,  <16.956770, 11.624006, 15.888534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.036415, 12.005584, 15.978285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278425, 0.274596, -0.920368,
		-0.939592, 0.120785, 0.320277,
		0.199113, 0.953943, 0.224379,
		17.096149, 12.291767, 16.045599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.322861, 12.084990, 15.700753>,  <16.956770, 11.624006, 15.888534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.322861, 12.084990, 15.700753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.657066, 12.304369, 15.687383>,  <16.857590, 12.435997, 15.679360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.657066, 12.304369, 15.687383>,  <16.322861, 12.084990, 15.700753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.657066, 12.304369, 15.687383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256147, 0.334957, -0.906748,
		-0.486110, 0.766164, 0.420345,
		0.835515, 0.548450, -0.033425,
		16.907721, 12.468904, 15.677355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128424, 12.462053, 15.165339>,  <16.322861, 12.084990, 15.700753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.128424, 12.462053, 15.165339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.518723, 12.533226, 15.216340>,  <16.752901, 12.575930, 15.246941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.518723, 12.533226, 15.216340>,  <16.128424, 12.462053, 15.165339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.518723, 12.533226, 15.216340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098098, 0.165280, -0.981356,
		-0.195688, 0.970063, 0.143817,
		0.975747, 0.177932, 0.127504,
		16.811447, 12.586605, 15.254591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.349344, 13.191811, 14.909831>,  <16.128424, 12.462053, 15.165339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.349344, 13.191811, 14.909831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.643538, 12.920801, 14.911734>,  <16.820053, 12.758195, 14.912875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.643538, 12.920801, 14.911734>,  <16.349344, 13.191811, 14.909831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.643538, 12.920801, 14.911734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148386, 0.154224, -0.976830,
		0.661093, 0.719149, 0.213964,
		0.735484, -0.677525, 0.004755,
		16.864183, 12.717544, 14.913160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792202, 13.492922, 14.427831>,  <16.349344, 13.191811, 14.909831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.792202, 13.492922, 14.427831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.950108, 13.126260, 14.452826>,  <17.044851, 12.906262, 14.467822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.950108, 13.126260, 14.452826>,  <16.792202, 13.492922, 14.427831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.950108, 13.126260, 14.452826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416783, 0.118050, -0.901308,
		0.818813, 0.381846, 0.428648,
		0.394763, -0.916656, 0.062487,
		17.068537, 12.851263, 14.471572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.345783, 13.540748, 13.947391>,  <16.792202, 13.492922, 14.427831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.345783, 13.540748, 13.947391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.306570, 13.144685, 13.987352>,  <17.283043, 12.907047, 14.011330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.306570, 13.144685, 13.987352>,  <17.345783, 13.540748, 13.947391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.306570, 13.144685, 13.987352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377866, -0.129903, -0.916702,
		0.920656, -0.052115, 0.386880,
		-0.098031, -0.990156, 0.099904,
		17.277161, 12.847638, 14.017323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.888927, 13.361403, 13.589342>,  <17.345783, 13.540748, 13.947391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.888927, 13.361403, 13.589342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643572, 13.045553, 13.595616>,  <17.496359, 12.856043, 13.599380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643572, 13.045553, 13.595616>,  <17.888927, 13.361403, 13.589342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.643572, 13.045553, 13.595616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245676, -0.209642, -0.946411,
		0.750599, -0.576663, 0.322585,
		-0.613387, -0.789627, 0.015685,
		17.459557, 12.808665, 13.600322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<16.273689, 10.055169, 23.164820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.672905, 10.060636, 23.189245>,  <16.912436, 10.063915, 23.203899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.672905, 10.060636, 23.189245>,  <16.273689, 10.055169, 23.164820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.672905, 10.060636, 23.189245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035188, 0.684338, -0.728315,
		-0.051741, 0.729037, 0.682516,
		0.998040, 0.013667, 0.061062,
		16.972317, 10.064735, 23.207563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.302246, 10.691956, 22.967182>,  <16.273689, 10.055169, 23.164820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.302246, 10.691956, 22.967182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.674503, 10.545979, 22.956457>,  <16.897858, 10.458392, 22.950022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.674503, 10.545979, 22.956457>,  <16.302246, 10.691956, 22.967182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.674503, 10.545979, 22.956457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217165, 0.609802, -0.762221,
		0.294518, 0.703533, 0.646761,
		0.930644, -0.364941, -0.026815,
		16.953697, 10.436496, 22.948412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.823997, 11.271369, 22.933430>,  <16.302246, 10.691956, 22.967182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.823997, 11.271369, 22.933430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.019274, 10.974713, 22.749411>,  <17.136438, 10.796720, 22.639000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.019274, 10.974713, 22.749411>,  <16.823997, 11.271369, 22.933430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019274, 10.974713, 22.749411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052594, 0.551172, -0.832732,
		0.871152, 0.382335, 0.308082,
		0.488189, -0.741639, -0.460046,
		17.165730, 10.752221, 22.611397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.286654, 11.606771, 22.448826>,  <16.823997, 11.271369, 22.933430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.286654, 11.606771, 22.448826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.319641, 11.228383, 22.323391>,  <17.339434, 11.001349, 22.248131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.319641, 11.228383, 22.323391>,  <17.286654, 11.606771, 22.448826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.319641, 11.228383, 22.323391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063031, 0.318978, -0.945664,
		0.994598, 0.058224, 0.085932,
		0.082470, -0.945972, -0.313585,
		17.344381, 10.944592, 22.229315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.907221, 11.475109, 22.114395>,  <17.286654, 11.606771, 22.448826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.907221, 11.475109, 22.114395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.688410, 11.169579, 21.977383>,  <17.557123, 10.986260, 21.895176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.688410, 11.169579, 21.977383>,  <17.907221, 11.475109, 22.114395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.688410, 11.169579, 21.977383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018798, 0.397870, -0.917249,
		0.836902, -0.508201, -0.203288,
		-0.547029, -0.763826, -0.342532,
		17.524302, 10.940431, 21.874622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.227888, 11.339313, 21.482708>,  <17.907221, 11.475109, 22.114395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.227888, 11.339313, 21.482708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.862934, 11.180937, 21.441162>,  <17.643963, 11.085912, 21.416235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.862934, 11.180937, 21.441162>,  <18.227888, 11.339313, 21.482708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.862934, 11.180937, 21.441162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001670, 0.257335, -0.966321,
		0.409334, -0.881481, -0.235450,
		-0.912383, -0.395941, -0.103864,
		17.589218, 11.062155, 21.410004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.188894, 10.987342, 20.799292>,  <18.227888, 11.339313, 21.482708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.188894, 10.987342, 20.799292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.808846, 11.056594, 20.903055>,  <17.580816, 11.098145, 20.965313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.808846, 11.056594, 20.903055>,  <18.188894, 10.987342, 20.799292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.808846, 11.056594, 20.903055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228664, 0.178911, -0.956924,
		-0.212085, -0.968512, -0.130398,
		-0.950123, 0.173132, 0.259408,
		17.523809, 11.108533, 20.980877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.745031, 10.497690, 20.439987>,  <18.188894, 10.987342, 20.799292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.745031, 10.497690, 20.439987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.497534, 10.795415, 20.540506>,  <17.349035, 10.974051, 20.600819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.497534, 10.795415, 20.540506>,  <17.745031, 10.497690, 20.439987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.497534, 10.795415, 20.540506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296228, 0.075218, -0.952151,
		-0.727601, -0.663582, 0.173946,
		-0.618746, 0.744313, 0.251300,
		17.311911, 11.018709, 20.615896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.185509, 10.351040, 19.999834>,  <17.745031, 10.497690, 20.439987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.185509, 10.351040, 19.999834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.173841, 10.728489, 20.131727>,  <17.166842, 10.954958, 20.210863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.173841, 10.728489, 20.131727>,  <17.185509, 10.351040, 19.999834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.173841, 10.728489, 20.131727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221939, 0.315528, -0.922597,
		-0.974624, -0.100090, 0.200224,
		-0.029167, 0.943623, 0.329735,
		17.165091, 11.011576, 20.230648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.908558, 10.637062, 19.410803>,  <17.185509, 10.351040, 19.999834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.908558, 10.637062, 19.410803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.022112, 10.951338, 19.630659>,  <17.090244, 11.139903, 19.762573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.022112, 10.951338, 19.630659>,  <16.908558, 10.637062, 19.410803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.022112, 10.951338, 19.630659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005222, 0.574480, -0.818502,
		-0.958845, 0.229489, 0.167188,
		0.283883, 0.785689, 0.549638,
		17.107277, 11.187045, 19.795551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.408278, 11.164927, 19.384659>,  <16.908558, 10.637062, 19.410803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.408278, 11.164927, 19.384659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.755932, 11.339784, 19.477186>,  <16.964525, 11.444697, 19.532703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.755932, 11.339784, 19.477186>,  <16.408278, 11.164927, 19.384659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.755932, 11.339784, 19.477186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015458, 0.491495, -0.870743,
		-0.494330, 0.753220, 0.433933,
		0.869137, 0.437142, 0.231318,
		17.016672, 11.470926, 19.546581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.315168, 11.911993, 19.239679>,  <16.408278, 11.164927, 19.384659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.315168, 11.911993, 19.239679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.705574, 11.829121, 19.212929>,  <16.939817, 11.779397, 19.196878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.705574, 11.829121, 19.212929>,  <16.315168, 11.911993, 19.239679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.705574, 11.829121, 19.212929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046894, 0.500048, -0.864727,
		0.212596, 0.840850, 0.497769,
		0.976014, -0.207180, -0.066878,
		16.998379, 11.766967, 19.192865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.697039, 12.588543, 19.027649>,  <16.315168, 11.911993, 19.239679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.697039, 12.588543, 19.027649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.929800, 12.273890, 18.945087>,  <17.069456, 12.085099, 18.895552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.929800, 12.273890, 18.945087>,  <16.697039, 12.588543, 19.027649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.929800, 12.273890, 18.945087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256068, 0.418110, -0.871558,
		0.771892, 0.454309, 0.444730,
		0.581903, -0.786630, -0.206402,
		17.104370, 12.037901, 18.883167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.176962, 12.902525, 18.721676>,  <16.697039, 12.588543, 19.027649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.176962, 12.902525, 18.721676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.224001, 12.517905, 18.622402>,  <17.252224, 12.287133, 18.562838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.224001, 12.517905, 18.622402>,  <17.176962, 12.902525, 18.721676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.224001, 12.517905, 18.622402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123811, 0.262163, -0.957048,
		0.985313, 0.081818, 0.149880,
		0.117597, -0.961549, -0.248183,
		17.259279, 12.229441, 18.547947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751135, 12.902947, 19.306042>,  <17.176962, 12.902525, 18.721676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751135, 12.902947, 19.306042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.884008, 13.263753, 19.416332>,  <17.963732, 13.480236, 19.482506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.884008, 13.263753, 19.416332>,  <17.751135, 12.902947, 19.306042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.884008, 13.263753, 19.416332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078475, -0.264880, 0.961083,
		0.939944, -0.340894, -0.017203,
		0.332184, 0.902015, 0.275724,
		17.983664, 13.534357, 19.499050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.215759, 12.808275, 19.883862>,  <17.751135, 12.902947, 19.306042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.215759, 12.808275, 19.883862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.108301, 13.191958, 19.919075>,  <18.043827, 13.422169, 19.940203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.108301, 13.191958, 19.919075>,  <18.215759, 12.808275, 19.883862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.108301, 13.191958, 19.919075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159334, -0.134384, 0.978036,
		0.949970, 0.248718, 0.188936,
		-0.268645, 0.959208, 0.088032,
		18.027708, 13.479721, 19.945484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.047062, 12.806571, 20.519676>,  <18.215759, 12.808275, 19.883862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.047062, 12.806571, 20.519676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.043005, 13.194174, 20.420948>,  <18.040571, 13.426736, 20.361712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.043005, 13.194174, 20.420948>,  <18.047062, 12.806571, 20.519676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.043005, 13.194174, 20.420948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154345, 0.242359, 0.957831,
		0.987965, 0.047810, 0.147104,
		-0.010142, 0.969008, -0.246821,
		18.039963, 13.484877, 20.346901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.487785, 13.396930, 20.852484>,  <18.047062, 12.806571, 20.519676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.487785, 13.396930, 20.852484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.124065, 13.546586, 20.779606>,  <17.905834, 13.636380, 20.735878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.124065, 13.546586, 20.779606>,  <18.487785, 13.396930, 20.852484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.124065, 13.546586, 20.779606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100222, 0.228048, 0.968478,
		0.403896, 0.898896, -0.169867,
		-0.909298, 0.374140, -0.182196,
		17.851276, 13.658828, 20.724947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.451084, 13.971360, 21.309772>,  <18.487785, 13.396930, 20.852484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.451084, 13.971360, 21.309772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.070011, 13.888693, 21.220617>,  <17.841366, 13.839092, 21.167124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.070011, 13.888693, 21.220617>,  <18.451084, 13.971360, 21.309772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.070011, 13.888693, 21.220617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253194, 0.133844, 0.958112,
		-0.168180, 0.969213, -0.179838,
		-0.952685, -0.206669, -0.222889,
		17.784206, 13.826692, 21.153751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.983873, 14.559172, 21.647598>,  <18.451084, 13.971360, 21.309772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.983873, 14.559172, 21.647598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.774855, 14.221235, 21.601658>,  <17.649443, 14.018474, 21.574093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.774855, 14.221235, 21.601658>,  <17.983873, 14.559172, 21.647598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.774855, 14.221235, 21.601658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130771, -0.053696, 0.989957,
		-0.842523, 0.532318, -0.082421,
		-0.522546, -0.844840, -0.114852,
		17.618092, 13.967783, 21.567202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.302578, 14.619081, 22.039085>,  <17.983873, 14.559172, 21.647598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.302578, 14.619081, 22.039085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.351675, 14.224957, 21.991592>,  <17.381134, 13.988483, 21.963097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.351675, 14.224957, 21.991592>,  <17.302578, 14.619081, 22.039085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.351675, 14.224957, 21.991592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363366, -0.155948, 0.918502,
		-0.923525, -0.069597, -0.377170,
		0.122744, -0.985310, -0.118733,
		17.388498, 13.929364, 21.955973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.734140, 14.290643, 22.386053>,  <17.302578, 14.619081, 22.039085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.734140, 14.290643, 22.386053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.991137, 13.986788, 22.345745>,  <17.145334, 13.804475, 22.321560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.991137, 13.986788, 22.345745>,  <16.734140, 14.290643, 22.386053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.991137, 13.986788, 22.345745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223655, -0.311672, 0.923492,
		-0.732927, -0.570798, -0.370144,
		0.642492, -0.759638, -0.100771,
		17.183884, 13.758897, 22.315514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.341707, 13.626529, 22.561739>,  <16.734140, 14.290643, 22.386053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.341707, 13.626529, 22.561739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.736702, 13.577710, 22.601688>,  <16.973700, 13.548419, 22.625658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.736702, 13.577710, 22.601688>,  <16.341707, 13.626529, 22.561739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.736702, 13.577710, 22.601688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130340, -0.275117, 0.952535,
		-0.088775, -0.953633, -0.287582,
		0.987487, -0.122045, 0.099873,
		17.032948, 13.541096, 22.631651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.343124, 12.953622, 22.817013>,  <16.341707, 13.626529, 22.561739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.343124, 12.953622, 22.817013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.686710, 13.137114, 22.908003>,  <16.892862, 13.247209, 22.962597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.686710, 13.137114, 22.908003>,  <16.343124, 12.953622, 22.817013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.686710, 13.137114, 22.908003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053321, -0.361705, 0.930766,
		0.509248, -0.811626, -0.286233,
		0.858966, 0.458729, 0.227475,
		16.944401, 13.274733, 22.976246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.680565, 12.562132, 23.226955>,  <16.343124, 12.953622, 22.817013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.680565, 12.562132, 23.226955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.889866, 12.884289, 23.338348>,  <17.015446, 13.077582, 23.405184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.889866, 12.884289, 23.338348>,  <16.680565, 12.562132, 23.226955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.889866, 12.884289, 23.338348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189215, -0.428434, 0.883539,
		0.830906, -0.409620, -0.376571,
		0.523251, 0.805391, 0.278482,
		17.046841, 13.125906, 23.421892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.421642, 12.353065, 23.369692>,  <16.680565, 12.562132, 23.226955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.421642, 12.353065, 23.369692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.331638, 12.687547, 23.569746>,  <17.277636, 12.888235, 23.689777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.331638, 12.687547, 23.569746>,  <17.421642, 12.353065, 23.369692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.331638, 12.687547, 23.569746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450477, -0.365864, 0.814379,
		0.863968, 0.408543, -0.294367,
		-0.225011, 0.836203, 0.500134,
		17.264135, 12.938408, 23.719786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.848818, 12.338364, 23.876451>,  <17.421642, 12.353065, 23.369692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.848818, 12.338364, 23.876451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.634718, 12.649503, 24.008184>,  <17.506258, 12.836186, 24.087223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.634718, 12.649503, 24.008184>,  <17.848818, 12.338364, 23.876451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.634718, 12.649503, 24.008184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259017, -0.219958, 0.940494,
		0.804001, 0.588702, -0.083743,
		-0.535251, 0.777848, 0.329331,
		17.474142, 12.882857, 24.106983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.287270, 12.755898, 24.406612>,  <17.848818, 12.338364, 23.876451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.287270, 12.755898, 24.406612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.901924, 12.839949, 24.473280>,  <17.670717, 12.890380, 24.513281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.901924, 12.839949, 24.473280>,  <18.287270, 12.755898, 24.406612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.901924, 12.839949, 24.473280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142781, -0.124246, 0.981925,
		0.227039, 0.969747, 0.089691,
		-0.963362, 0.210129, 0.166670,
		17.612915, 12.902987, 24.523281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<11.084780, 12.543479, 24.674923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.477637, 12.474966, 24.706045>,  <11.713352, 12.433858, 24.724718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.477637, 12.474966, 24.706045>,  <11.084780, 12.543479, 24.674923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.477637, 12.474966, 24.706045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161507, 0.555612, -0.815605,
		0.096471, 0.813608, 0.573355,
		0.982145, -0.171283, 0.077803,
		11.772281, 12.423581, 24.729385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.455041, 13.151130, 24.313013>,  <11.084780, 12.543479, 24.674923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.455041, 13.151130, 24.313013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.749473, 12.881334, 24.335827>,  <11.926131, 12.719457, 24.349516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.749473, 12.881334, 24.335827>,  <11.455041, 13.151130, 24.313013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.749473, 12.881334, 24.335827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371007, 0.331535, -0.867432,
		0.566165, 0.659658, 0.494276,
		0.736078, -0.674489, 0.057035,
		11.970296, 12.678988, 24.352938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.199079, 13.407866, 24.310202>,  <11.455041, 13.151130, 24.313013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.199079, 13.407866, 24.310202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.183532, 13.039226, 24.155725>,  <12.174204, 12.818042, 24.063040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.183532, 13.039226, 24.155725>,  <12.199079, 13.407866, 24.310202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.183532, 13.039226, 24.155725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502960, 0.315912, -0.804506,
		0.863435, -0.225508, 0.451250,
		-0.038867, -0.921600, -0.386191,
		12.171872, 12.762746, 24.039867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.831291, 13.340995, 24.018425>,  <12.199079, 13.407866, 24.310202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.831291, 13.340995, 24.018425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.604291, 13.066460, 23.836487>,  <12.468091, 12.901738, 23.727324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.604291, 13.066460, 23.836487>,  <12.831291, 13.340995, 24.018425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.604291, 13.066460, 23.836487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427714, 0.226300, -0.875128,
		0.703564, -0.691179, 0.165131,
		-0.567501, -0.686338, -0.454843,
		12.434040, 12.860559, 23.700033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.246534, 13.001471, 23.535322>,  <12.831291, 13.340995, 24.018425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.246534, 13.001471, 23.535322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.893676, 12.867534, 23.402840>,  <12.681960, 12.787171, 23.323351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.893676, 12.867534, 23.402840>,  <13.246534, 13.001471, 23.535322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.893676, 12.867534, 23.402840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305120, 0.129388, -0.943483,
		0.358773, -0.933348, -0.011972,
		-0.882147, -0.334844, -0.331205,
		12.629031, 12.767081, 23.303478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.374782, 12.448956, 23.055080>,  <13.246534, 13.001471, 23.535322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.374782, 12.448956, 23.055080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.021546, 12.615108, 22.967796>,  <12.809606, 12.714800, 22.915426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.021546, 12.615108, 22.967796>,  <13.374782, 12.448956, 23.055080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.021546, 12.615108, 22.967796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292784, 0.124415, -0.948050,
		-0.366654, -0.901099, -0.231487,
		-0.883087, 0.415381, -0.218210,
		12.756620, 12.739723, 22.902332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.323072, 12.250075, 22.421406>,  <13.374782, 12.448956, 23.055080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.323072, 12.250075, 22.421406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.035808, 12.528091, 22.435055>,  <12.863449, 12.694901, 22.443245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.035808, 12.528091, 22.435055>,  <13.323072, 12.250075, 22.421406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.035808, 12.528091, 22.435055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173314, 0.226138, -0.958553,
		-0.673949, -0.682482, -0.282864,
		-0.718161, 0.695040, 0.034122,
		12.820359, 12.736604, 22.445292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.878586, 12.212910, 21.820677>,  <13.323072, 12.250075, 22.421406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.878586, 12.212910, 21.820677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.833161, 12.587160, 21.954367>,  <12.805906, 12.811710, 22.034580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.833161, 12.587160, 21.954367>,  <12.878586, 12.212910, 21.820677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.833161, 12.587160, 21.954367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002555, 0.336127, -0.941813,
		-0.993528, -0.107808, -0.035781,
		-0.113562, 0.935626, 0.334227,
		12.799092, 12.867847, 22.054634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.338616, 12.496917, 21.406271>,  <12.878586, 12.212910, 21.820677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.338616, 12.496917, 21.406271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.515109, 12.823112, 21.556093>,  <12.621004, 13.018830, 21.645987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.515109, 12.823112, 21.556093>,  <12.338616, 12.496917, 21.406271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.515109, 12.823112, 21.556093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060804, 0.443591, -0.894165,
		-0.895331, 0.371759, 0.245311,
		0.441231, 0.815489, 0.374556,
		12.647478, 13.067760, 21.668461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.931201, 13.093716, 21.108763>,  <12.338616, 12.496917, 21.406271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.931201, 13.093716, 21.108763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.281281, 13.239301, 21.236235>,  <12.491329, 13.326652, 21.312717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.281281, 13.239301, 21.236235>,  <11.931201, 13.093716, 21.108763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.281281, 13.239301, 21.236235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019687, 0.631412, -0.775198,
		-0.483360, 0.684727, 0.545447,
		0.875200, 0.363962, 0.318679,
		12.543841, 13.348489, 21.331839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.850801, 13.807107, 21.116961>,  <11.931201, 13.093716, 21.108763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.850801, 13.807107, 21.116961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.238855, 13.721660, 21.070999>,  <12.471688, 13.670391, 21.043423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.238855, 13.721660, 21.070999>,  <11.850801, 13.807107, 21.116961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.238855, 13.721660, 21.070999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028756, 0.571661, -0.819986,
		0.240849, 0.792194, 0.560732,
		0.970136, -0.213617, -0.114904,
		12.529897, 13.657575, 21.036528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.209906, 14.492956, 21.051582>,  <11.850801, 13.807107, 21.116961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.209906, 14.492956, 21.051582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.495018, 14.231305, 20.950340>,  <12.666085, 14.074315, 20.889595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.495018, 14.231305, 20.950340>,  <12.209906, 14.492956, 21.051582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.495018, 14.231305, 20.950340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303080, 0.612682, -0.729907,
		0.632523, 0.443553, 0.634961,
		0.712781, -0.654127, -0.253104,
		12.708853, 14.035068, 20.874409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.625895, 14.895697, 20.750204>,  <12.209906, 14.492956, 21.051582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.625895, 14.895697, 20.750204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.764019, 14.540809, 20.627825>,  <12.846893, 14.327876, 20.554398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.764019, 14.540809, 20.627825>,  <12.625895, 14.895697, 20.750204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.764019, 14.540809, 20.627825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373469, 0.428983, -0.822492,
		0.860977, 0.169753, 0.479481,
		0.345310, -0.887219, -0.305948,
		12.867612, 14.274643, 20.536041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.379390, 15.042675, 20.544561>,  <12.625895, 14.895697, 20.750204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.379390, 15.042675, 20.544561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.227274, 14.715575, 20.371742>,  <13.136004, 14.519316, 20.268051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.227274, 14.715575, 20.371742>,  <13.379390, 15.042675, 20.544561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.227274, 14.715575, 20.371742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348710, 0.305895, -0.885906,
		0.856610, -0.487561, 0.168828,
		-0.380290, -0.817749, -0.432050,
		13.113187, 14.470250, 20.242126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.990121, 14.766145, 20.842920>,  <13.379390, 15.042675, 20.544561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.990121, 14.766145, 20.842920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.235278, 15.042166, 20.996902>,  <14.382373, 15.207778, 21.089293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.235278, 15.042166, 20.996902>,  <13.990121, 14.766145, 20.842920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.235278, 15.042166, 20.996902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217368, -0.321146, 0.921746,
		0.759679, -0.648609, -0.046834,
		0.612894, 0.690051, 0.384955,
		14.419147, 15.249181, 21.112389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.361567, 14.415535, 21.310703>,  <13.990121, 14.766145, 20.842920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.361567, 14.415535, 21.310703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.362736, 14.800810, 21.418228>,  <14.363437, 15.031975, 21.482744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.362736, 14.800810, 21.418228>,  <14.361567, 14.415535, 21.310703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.362736, 14.800810, 21.418228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202888, -0.262653, 0.943318,
		0.979198, -0.057294, 0.194652,
		0.002921, 0.963188, 0.268814,
		14.363612, 15.089767, 21.498873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.863395, 14.430718, 21.931597>,  <14.361567, 14.415535, 21.310703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.863395, 14.430718, 21.931597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.643032, 14.764300, 21.944389>,  <14.510815, 14.964450, 21.952065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.643032, 14.764300, 21.944389>,  <14.863395, 14.430718, 21.931597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.643032, 14.764300, 21.944389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199581, -0.168856, 0.965223,
		0.810352, 0.525364, 0.259465,
		-0.550906, 0.833955, 0.031980,
		14.477760, 15.014486, 21.953983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.165075, 14.642617, 22.487089>,  <14.863395, 14.430718, 21.931597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.165075, 14.642617, 22.487089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.837591, 14.865193, 22.430399>,  <14.641101, 14.998739, 22.396385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.837591, 14.865193, 22.430399>,  <15.165075, 14.642617, 22.487089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.837591, 14.865193, 22.430399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102807, 0.100786, 0.989582,
		0.564927, 0.824752, -0.025309,
		-0.818711, 0.556440, -0.141727,
		14.591978, 15.032125, 22.387880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.243435, 15.357214, 22.735161>,  <15.165075, 14.642617, 22.487089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.243435, 15.357214, 22.735161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.853929, 15.267495, 22.719822>,  <14.620225, 15.213664, 22.710619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.853929, 15.267495, 22.719822>,  <15.243435, 15.357214, 22.735161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.853929, 15.267495, 22.719822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079940, 0.179425, 0.980518,
		-0.213048, 0.957861, -0.192649,
		-0.973766, -0.224298, -0.038345,
		14.561799, 15.200206, 22.708319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.076279, 15.727946, 23.179335>,  <15.243435, 15.357214, 22.735161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.076279, 15.727946, 23.179335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.769944, 15.471016, 23.167250>,  <14.586143, 15.316858, 23.159998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.769944, 15.471016, 23.167250>,  <15.076279, 15.727946, 23.179335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.769944, 15.471016, 23.167250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063951, 0.029326, 0.997522,
		-0.639848, 0.765871, -0.063536,
		-0.765836, -0.642325, -0.030214,
		14.540194, 15.278318, 23.158186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.532050, 15.988479, 23.610409>,  <15.076279, 15.727946, 23.179335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.532050, 15.988479, 23.610409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.487989, 15.592438, 23.575619>,  <14.461554, 15.354814, 23.554745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.487989, 15.592438, 23.575619>,  <14.532050, 15.988479, 23.610409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.487989, 15.592438, 23.575619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194039, -0.064402, 0.978878,
		-0.974790, 0.124701, -0.185024,
		-0.110151, -0.990102, -0.086975,
		14.454945, 15.295407, 23.549526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.997293, 15.729128, 24.103172>,  <14.532050, 15.988479, 23.610409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.997293, 15.729128, 24.103172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.199363, 15.395908, 24.012991>,  <14.320604, 15.195976, 23.958881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.199363, 15.395908, 24.012991>,  <13.997293, 15.729128, 24.103172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.199363, 15.395908, 24.012991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124770, -0.328994, 0.936053,
		-0.853952, -0.444738, -0.270138,
		0.505173, -0.833049, -0.225456,
		14.350915, 15.145993, 23.945354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.690383, 15.170834, 24.542238>,  <13.997293, 15.729128, 24.103172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.690383, 15.170834, 24.542238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.038021, 14.994112, 24.453260>,  <14.246604, 14.888079, 24.399874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.038021, 14.994112, 24.453260>,  <13.690383, 15.170834, 24.542238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.038021, 14.994112, 24.453260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085975, -0.577782, 0.811650,
		-0.487115, -0.686278, -0.540132,
		0.869096, -0.441805, -0.222444,
		14.298750, 14.861570, 24.386528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.527520, 14.463710, 24.762688>,  <13.690383, 15.170834, 24.542238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.527520, 14.463710, 24.762688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.925289, 14.445287, 24.724733>,  <14.163951, 14.434233, 24.701962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.925289, 14.445287, 24.724733>,  <13.527520, 14.463710, 24.762688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.925289, 14.445287, 24.724733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051254, -0.575243, 0.816375,
		-0.092181, -0.816685, -0.569674,
		0.994422, -0.046057, -0.094885,
		14.223616, 14.431470, 24.696268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.730123, 13.758325, 24.867537>,  <13.527520, 14.463710, 24.762688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.730123, 13.758325, 24.867537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.054592, 13.974629, 24.956598>,  <14.249273, 14.104412, 25.010035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.054592, 13.974629, 24.956598>,  <13.730123, 13.758325, 24.867537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.054592, 13.974629, 24.956598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086287, -0.487235, 0.868998,
		0.578406, -0.685695, -0.441892,
		0.811173, 0.540763, 0.222652,
		14.297944, 14.136858, 25.023394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.242782, 13.232720, 25.127234>,  <13.730123, 13.758325, 24.867537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.242782, 13.232720, 25.127234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.390592, 13.586617, 25.240854>,  <14.479278, 13.798954, 25.309027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.390592, 13.586617, 25.240854>,  <14.242782, 13.232720, 25.127234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.390592, 13.586617, 25.240854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208928, -0.376969, 0.902354,
		0.905429, -0.274095, -0.324146,
		0.369524, 0.884741, 0.284053,
		14.501449, 13.852038, 25.326071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.017815, 13.124916, 25.364651>,  <14.242782, 13.232720, 25.127234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.017815, 13.124916, 25.364651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.864500, 13.441982, 25.554291>,  <14.772511, 13.632222, 25.668076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.864500, 13.441982, 25.554291>,  <15.017815, 13.124916, 25.364651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.864500, 13.441982, 25.554291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172184, -0.442984, 0.879839,
		0.907439, 0.418862, 0.033305,
		-0.383285, 0.792666, 0.474102,
		14.749515, 13.679782, 25.696522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.446979, 13.351166, 25.966167>,  <15.017815, 13.124916, 25.364651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.446979, 13.351166, 25.966167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.096073, 13.515147, 26.066046>,  <14.885530, 13.613536, 26.125973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.096073, 13.515147, 26.066046>,  <15.446979, 13.351166, 25.966167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.096073, 13.515147, 26.066046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004808, -0.527663, 0.849440,
		0.479986, 0.743982, 0.464870,
		-0.877263, 0.409954, 0.249694,
		14.832894, 13.638133, 26.140953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.743973, 13.748962, 26.551590>,  <15.446979, 13.351166, 25.966167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.743973, 13.748962, 26.551590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.021383, 13.952145, 26.755943>,  <16.187830, 14.074054, 26.878555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.021383, 13.952145, 26.755943>,  <15.743973, 13.748962, 26.551590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.021383, 13.952145, 26.755943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022182, 0.693746, -0.719878,
		-0.720091, 0.510586, 0.469863,
		0.693525, 0.507955, 0.510886,
		16.229441, 14.104531, 26.909208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.566353, 14.484620, 26.583715>,  <15.743973, 13.748962, 26.551590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.566353, 14.484620, 26.583715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.963373, 14.457467, 26.624178>,  <16.201586, 14.441175, 26.648455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.963373, 14.457467, 26.624178>,  <15.566353, 14.484620, 26.583715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.963373, 14.457467, 26.624178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117207, 0.758526, -0.641015,
		-0.033216, 0.648097, 0.760833,
		0.992552, -0.067883, 0.101157,
		16.261139, 14.437102, 26.654526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.777755, 15.221261, 26.728395>,  <15.566353, 14.484620, 26.583715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.777755, 15.221261, 26.728395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.093462, 15.017787, 26.590818>,  <16.282887, 14.895702, 26.508272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.093462, 15.017787, 26.590818>,  <15.777755, 15.221261, 26.728395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.093462, 15.017787, 26.590818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168564, 0.718088, -0.675230,
		0.590460, 0.474962, 0.652510,
		0.789268, -0.508686, -0.343941,
		16.330242, 14.865181, 26.487637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.269436, 15.793976, 26.502123>,  <15.777755, 15.221261, 26.728395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.269436, 15.793976, 26.502123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.428415, 15.474925, 26.320650>,  <16.523802, 15.283495, 26.211765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.428415, 15.474925, 26.320650>,  <16.269436, 15.793976, 26.502123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.428415, 15.474925, 26.320650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284732, 0.577205, -0.765351,
		0.872332, 0.175008, 0.456518,
		0.397447, -0.797626, -0.453684,
		16.547649, 15.235638, 26.184546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.903801, 16.059847, 26.316538>,  <16.269436, 15.793976, 26.502123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.903801, 16.059847, 26.316538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.832342, 15.731894, 26.098957>,  <16.789467, 15.535124, 25.968409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.832342, 15.731894, 26.098957>,  <16.903801, 16.059847, 26.316538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.832342, 15.731894, 26.098957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254773, 0.495443, -0.830438,
		0.950355, -0.286941, 0.120372,
		-0.178649, -0.819879, -0.543951,
		16.778748, 15.485930, 25.935772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.457462, 16.107016, 25.861320>,  <16.903801, 16.059847, 26.316538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.457462, 16.107016, 25.861320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.245146, 15.835084, 25.658897>,  <17.117756, 15.671925, 25.537443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.245146, 15.835084, 25.658897>,  <17.457462, 16.107016, 25.861320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.245146, 15.835084, 25.658897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254363, 0.441799, -0.860298,
		0.808432, -0.585360, -0.061578,
		-0.530789, -0.679829, -0.506059,
		17.085909, 15.631135, 25.507080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.913418, 15.732197, 25.403126>,  <17.457462, 16.107016, 25.861320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.913418, 15.732197, 25.403126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.562286, 15.636853, 25.236944>,  <17.351608, 15.579647, 25.137236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.562286, 15.636853, 25.236944>,  <17.913418, 15.732197, 25.403126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.562286, 15.636853, 25.236944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302987, 0.395454, -0.867073,
		0.370964, -0.887019, -0.274923,
		-0.877829, -0.238355, -0.415454,
		17.298939, 15.565346, 25.112307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.031418, 15.497265, 24.754471>,  <17.913418, 15.732197, 25.403126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.031418, 15.497265, 24.754471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.646185, 15.594728, 24.708679>,  <17.415045, 15.653205, 24.681204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.646185, 15.594728, 24.708679>,  <18.031418, 15.497265, 24.754471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.646185, 15.594728, 24.708679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202758, 0.376772, -0.903843,
		-0.177096, -0.893685, -0.412266,
		-0.963082, 0.243657, -0.114477,
		17.357260, 15.667825, 24.674335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.868635, 15.275312, 24.190498>,  <18.031418, 15.497265, 24.754471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.868635, 15.275312, 24.190498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.591410, 15.562295, 24.218557>,  <17.425076, 15.734485, 24.235392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.591410, 15.562295, 24.218557>,  <17.868635, 15.275312, 24.190498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.591410, 15.562295, 24.218557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165943, 0.253476, -0.953002,
		-0.701519, -0.648849, -0.294732,
		-0.693062, 0.717457, 0.070147,
		17.383492, 15.777533, 24.239601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.435354, 15.276867, 23.559666>,  <17.868635, 15.275312, 24.190498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.435354, 15.276867, 23.559666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.364168, 15.637863, 23.716553>,  <17.321457, 15.854462, 23.810686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.364168, 15.637863, 23.716553>,  <17.435354, 15.276867, 23.559666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.364168, 15.637863, 23.716553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045081, 0.390687, -0.919419,
		-0.983003, -0.181308, -0.028844,
		-0.177967, 0.902492, 0.392220,
		17.310778, 15.908610, 23.834219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.013910, 15.642884, 23.122864>,  <17.435354, 15.276867, 23.559666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.013910, 15.642884, 23.122864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.126673, 15.959753, 23.339378>,  <17.194330, 16.149874, 23.469288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.126673, 15.959753, 23.339378>,  <17.013910, 15.642884, 23.122864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.126673, 15.959753, 23.339378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041582, 0.553551, -0.831776,
		-0.958541, 0.256989, 0.123109,
		0.281904, 0.792173, 0.541288,
		17.211245, 16.197405, 23.501764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.674301, 16.179222, 22.872663>,  <17.013910, 15.642884, 23.122864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.674301, 16.179222, 22.872663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.999437, 16.345974, 23.035393>,  <17.194519, 16.446024, 23.133030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.999437, 16.345974, 23.035393>,  <16.674301, 16.179222, 22.872663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.999437, 16.345974, 23.035393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134350, 0.545414, -0.827329,
		-0.566783, 0.727142, 0.387326,
		0.812839, 0.416879, 0.406823,
		17.243290, 16.471037, 23.157440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.625238, 16.990070, 22.937521>,  <16.674301, 16.179222, 22.872663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.625238, 16.990070, 22.937521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.997826, 16.848707, 22.902954>,  <17.221378, 16.763889, 22.882214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.997826, 16.848707, 22.902954>,  <16.625238, 16.990070, 22.937521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.997826, 16.848707, 22.902954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186408, 0.667574, -0.720831,
		0.312437, 0.655323, 0.687703,
		0.931469, -0.353408, -0.086417,
		17.277266, 16.742685, 22.877029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.947367, 17.575338, 22.776581>,  <16.625238, 16.990070, 22.937521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.947367, 17.575338, 22.776581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.220985, 17.302544, 22.673059>,  <17.385157, 17.138866, 22.610947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.220985, 17.302544, 22.673059>,  <16.947367, 17.575338, 22.776581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.220985, 17.302544, 22.673059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391409, 0.642564, -0.658719,
		0.615533, 0.349296, 0.706478,
		0.684046, -0.681985, -0.258801,
		17.426199, 17.097948, 22.595419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<9.791600, 22.665552, 21.659603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.139203, 22.659609, 21.857433>,  <10.347765, 22.656042, 21.976131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.139203, 22.659609, 21.857433>,  <9.791600, 22.665552, 21.659603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.139203, 22.659609, 21.857433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359706, -0.667385, -0.652080,
		0.339762, 0.744565, -0.574618,
		0.869007, -0.014859, 0.494577,
		10.399905, 22.655151, 22.005806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.067171, 23.241451, 22.033731>,  <9.791600, 22.665552, 21.659603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.067171, 23.241451, 22.033731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.985883, 23.570650, 21.821550>,  <9.937110, 23.768169, 21.694242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.985883, 23.570650, 21.821550>,  <10.067171, 23.241451, 22.033731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.985883, 23.570650, 21.821550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396855, -0.564496, -0.723775,
		-0.895102, 0.063425, 0.441328,
		-0.203222, 0.822995, -0.530452,
		9.924916, 23.817549, 21.662415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.371071, 23.260853, 21.865158>,  <10.067171, 23.241451, 22.033731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.371071, 23.260853, 21.865158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.608702, 23.459320, 21.611895>,  <9.751280, 23.578400, 21.459936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.608702, 23.459320, 21.611895>,  <9.371071, 23.260853, 21.865158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.608702, 23.459320, 21.611895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377132, -0.523450, -0.764049,
		-0.710524, 0.692688, -0.123849,
		0.594077, 0.496168, -0.633159,
		9.786924, 23.608171, 21.421947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.983867, 23.457449, 21.321266>,  <9.371071, 23.260853, 21.865158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.983867, 23.457449, 21.321266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.350318, 23.421795, 21.164925>,  <9.570189, 23.400402, 21.071119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.350318, 23.421795, 21.164925>,  <8.983867, 23.457449, 21.321266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.350318, 23.421795, 21.164925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396149, -0.350743, -0.848555,
		-0.061452, 0.932220, -0.356636,
		0.916128, -0.089136, -0.390852,
		9.625156, 23.395054, 21.047668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.997181, 23.634220, 20.607153>,  <8.983867, 23.457449, 21.321266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.997181, 23.634220, 20.607153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.295792, 23.375990, 20.671566>,  <9.474958, 23.221052, 20.710215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.295792, 23.375990, 20.671566>,  <8.997181, 23.634220, 20.607153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.295792, 23.375990, 20.671566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274834, -0.519610, -0.808994,
		0.605940, 0.559679, -0.565329,
		0.746527, -0.645574, 0.161033,
		9.519750, 23.182318, 20.719875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.314134, 23.511667, 19.905981>,  <8.997181, 23.634220, 20.607153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.314134, 23.511667, 19.905981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.338987, 23.175819, 20.121824>,  <9.353900, 22.974310, 20.251331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.338987, 23.175819, 20.121824>,  <9.314134, 23.511667, 19.905981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.338987, 23.175819, 20.121824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091880, -0.543171, -0.834580,
		0.993830, 0.002276, -0.110894,
		0.062134, -0.839619, 0.539610,
		9.357628, 22.923933, 20.283707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.591551, 23.015949, 19.555882>,  <9.314134, 23.511667, 19.905981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.591551, 23.015949, 19.555882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.426610, 22.767242, 19.822226>,  <9.327645, 22.618017, 19.982033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.426610, 22.767242, 19.822226>,  <9.591551, 23.015949, 19.555882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.426610, 22.767242, 19.822226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090947, -0.699147, -0.709171,
		0.906474, -0.352985, 0.231746,
		-0.412351, -0.621768, 0.665861,
		9.302904, 22.580711, 20.021984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.012112, 22.349012, 19.613028>,  <9.591551, 23.015949, 19.555882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.012112, 22.349012, 19.613028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.612288, 22.339277, 19.619780>,  <9.372393, 22.333435, 19.623831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.612288, 22.339277, 19.619780>,  <10.012112, 22.349012, 19.613028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.612288, 22.339277, 19.619780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006374, -0.733265, -0.679913,
		0.028926, -0.679507, 0.733098,
		-0.999561, -0.024340, 0.016879,
		9.312419, 22.331976, 19.624844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.272239, 21.647194, 19.608444>,  <10.012112, 22.349012, 19.613028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.272239, 21.647194, 19.608444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.381681, 21.646227, 19.223709>,  <10.447347, 21.645647, 18.992868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.381681, 21.646227, 19.223709>,  <10.272239, 21.647194, 19.608444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.381681, 21.646227, 19.223709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620856, 0.763325, -0.178528,
		0.734627, 0.646010, 0.207351,
		0.273607, -0.002417, -0.961839,
		10.463763, 21.645502, 18.935158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.994130, 21.262865, 20.155592>,  <10.272239, 21.647194, 19.608444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.994130, 21.262865, 20.155592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.695680, 21.265301, 20.421902>,  <9.516609, 21.266762, 20.581688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.695680, 21.265301, 20.421902>,  <9.994130, 21.262865, 20.155592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.695680, 21.265301, 20.421902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471391, -0.711012, -0.521778,
		0.470196, -0.703153, 0.533377,
		-0.746127, 0.006091, 0.665776,
		9.471842, 21.267128, 20.621634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.854995, 20.515293, 20.285236>,  <9.994130, 21.262865, 20.155592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.854995, 20.515293, 20.285236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.542990, 20.761898, 20.328117>,  <9.355786, 20.909861, 20.353846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.542990, 20.761898, 20.328117>,  <9.854995, 20.515293, 20.285236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.542990, 20.761898, 20.328117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459766, -0.448410, -0.766514,
		-0.424493, -0.647180, 0.633217,
		-0.780014, 0.616511, 0.107205,
		9.308986, 20.946852, 20.360279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.125023, 20.069019, 20.387074>,  <9.854995, 20.515293, 20.285236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.125023, 20.069019, 20.387074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.011481, 20.421679, 20.236275>,  <8.943357, 20.633274, 20.145796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.011481, 20.421679, 20.236275>,  <9.125023, 20.069019, 20.387074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.011481, 20.421679, 20.236275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692684, -0.460409, -0.555168,
		-0.663034, 0.103552, 0.741392,
		-0.283855, 0.881647, -0.376996,
		8.926325, 20.686172, 20.123177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.353026, 20.078665, 20.417444>,  <9.125023, 20.069019, 20.387074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.353026, 20.078665, 20.417444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.511463, 20.323492, 20.143661>,  <8.606525, 20.470388, 19.979391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.511463, 20.323492, 20.143661>,  <8.353026, 20.078665, 20.417444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.511463, 20.323492, 20.143661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636041, -0.354730, -0.685287,
		-0.662241, 0.706779, 0.248796,
		0.396091, 0.612070, -0.684458,
		8.630291, 20.507113, 19.938324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.706750, 20.396832, 20.163486>,  <8.353026, 20.078665, 20.417444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.706750, 20.396832, 20.163486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.988126, 20.433607, 19.881573>,  <8.156952, 20.455673, 19.712425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.988126, 20.433607, 19.881573>,  <7.706750, 20.396832, 20.163486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.988126, 20.433607, 19.881573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664319, -0.267490, -0.697947,
		-0.252690, 0.959164, -0.127087,
		0.703440, 0.091939, -0.704783,
		8.199159, 20.461189, 19.670137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.309049, 20.623899, 19.621902>,  <7.706750, 20.396832, 20.163486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.309049, 20.623899, 19.621902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.651050, 20.519665, 19.442539>,  <7.856250, 20.457125, 19.334921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.651050, 20.519665, 19.442539>,  <7.309049, 20.623899, 19.621902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.651050, 20.519665, 19.442539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517582, -0.373906, -0.769612,
		0.032889, 0.890106, -0.454565,
		0.855001, -0.260586, -0.448406,
		7.907550, 20.441488, 19.308018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.280492, 20.830820, 18.899364>,  <7.309049, 20.623899, 19.621902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.280492, 20.830820, 18.899364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.545719, 20.532238, 18.921791>,  <7.704855, 20.353088, 18.935247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.545719, 20.532238, 18.921791>,  <7.280492, 20.830820, 18.899364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.545719, 20.532238, 18.921791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453265, -0.459980, -0.763524,
		0.595728, 0.480854, -0.643341,
		0.663067, -0.746457, 0.056069,
		7.744639, 20.308300, 18.938612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.617324, 20.746355, 18.246347>,  <7.280492, 20.830820, 18.899364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.617324, 20.746355, 18.246347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.641002, 20.400114, 18.445236>,  <7.655209, 20.192369, 18.564569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.641002, 20.400114, 18.445236>,  <7.617324, 20.746355, 18.246347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.641002, 20.400114, 18.445236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416628, -0.474061, -0.775685,
		0.907148, -0.161239, -0.388696,
		0.059195, -0.865603, 0.497221,
		7.658760, 20.140432, 18.594402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.458278, 20.394394, 17.723188>,  <7.617324, 20.746355, 18.246347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.458278, 20.394394, 17.723188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.456433, 20.119452, 18.013710>,  <7.455327, 19.954485, 18.188023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.456433, 20.119452, 18.013710>,  <7.458278, 20.394394, 17.723188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.456433, 20.119452, 18.013710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478908, -0.636084, -0.605017,
		0.877853, -0.350623, -0.326248,
		-0.004612, -0.687358, 0.726304,
		7.455050, 19.913244, 18.231602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.583035, 19.706598, 17.423748>,  <7.458278, 20.394394, 17.723188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.583035, 19.706598, 17.423748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.410548, 19.607340, 17.770729>,  <7.307056, 19.547785, 17.978918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.410548, 19.607340, 17.770729>,  <7.583035, 19.706598, 17.423748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.410548, 19.607340, 17.770729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462080, -0.765039, -0.448550,
		0.774942, -0.594255, 0.215235,
		-0.431217, -0.248144, 0.867454,
		7.281183, 19.532896, 18.030966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.602012, 19.002796, 17.434649>,  <7.583035, 19.706598, 17.423748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.602012, 19.002796, 17.434649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.312786, 19.104786, 17.691450>,  <7.139251, 19.165979, 17.845531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.312786, 19.104786, 17.691450>,  <7.602012, 19.002796, 17.434649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.312786, 19.104786, 17.691450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588289, -0.714424, -0.378833,
		0.362070, -0.651603, 0.666573,
		-0.723064, 0.254973, 0.642002,
		7.095867, 19.181278, 17.884050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.401124, 18.371729, 17.700644>,  <7.602012, 19.002796, 17.434649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.401124, 18.371729, 17.700644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.100876, 18.622337, 17.784584>,  <6.920727, 18.772703, 17.834948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.100876, 18.622337, 17.784584>,  <7.401124, 18.371729, 17.700644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.100876, 18.622337, 17.784584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660492, -0.702934, -0.263884,
		-0.017819, -0.336680, 0.941450,
		-0.750622, 0.626522, 0.209849,
		6.875690, 18.810293, 17.847538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.050682, 18.104906, 18.211689>,  <7.401124, 18.371729, 17.700644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.050682, 18.104906, 18.211689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.777351, 18.347895, 18.049681>,  <6.613353, 18.493689, 17.952477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.777351, 18.347895, 18.049681>,  <7.050682, 18.104906, 18.211689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.777351, 18.347895, 18.049681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629955, -0.770979, -0.093536,
		-0.369082, 0.191228, 0.909511,
		-0.683327, 0.607473, -0.405019,
		6.572353, 18.530136, 17.928175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.326033, 17.887600, 18.462936>,  <7.050682, 18.104906, 18.211689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.326033, 17.887600, 18.462936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.262916, 18.119125, 18.142916>,  <6.225046, 18.258039, 17.950903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.262916, 18.119125, 18.142916>,  <6.326033, 17.887600, 18.462936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.262916, 18.119125, 18.142916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684219, -0.648268, -0.334056,
		-0.712002, 0.494698, 0.498325,
		-0.157791, 0.578811, -0.800050,
		6.215579, 18.292768, 17.902901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.722657, 17.613123, 18.229345>,  <6.326033, 17.887600, 18.462936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.722657, 17.613123, 18.229345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.815917, 17.855556, 17.925161>,  <5.871872, 18.001017, 17.742651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.815917, 17.855556, 17.925161>,  <5.722657, 17.613123, 18.229345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.815917, 17.855556, 17.925161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556465, -0.558168, -0.615464,
		-0.797488, 0.566666, 0.207129,
		0.233150, 0.606085, -0.760462,
		5.885861, 18.037382, 17.697023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.082344, 17.820341, 17.943192>,  <5.722657, 17.613123, 18.229345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.082344, 17.820341, 17.943192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.376620, 17.824717, 17.672298>,  <5.553185, 17.827341, 17.509764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.376620, 17.824717, 17.672298>,  <5.082344, 17.820341, 17.943192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.376620, 17.824717, 17.672298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481718, -0.694436, -0.534516,
		-0.476139, 0.719472, -0.505620,
		0.735690, 0.010938, -0.677230,
		5.597327, 17.827997, 17.469130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.759097, 17.802980, 17.294462>,  <5.082344, 17.820341, 17.943192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.759097, 17.802980, 17.294462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.128980, 17.667847, 17.224283>,  <5.350910, 17.586767, 17.182175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.128980, 17.667847, 17.224283>,  <4.759097, 17.802980, 17.294462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.128980, 17.667847, 17.224283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373961, -0.719982, -0.584619,
		0.071184, 0.606213, -0.792110,
		0.924709, -0.337834, -0.175449,
		5.406393, 17.566496, 17.171648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.764435, 17.626125, 16.568661>,  <4.759097, 17.802980, 17.294462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.764435, 17.626125, 16.568661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.084646, 17.437550, 16.716661>,  <5.276772, 17.324404, 16.805462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.084646, 17.437550, 16.716661>,  <4.764435, 17.626125, 16.568661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.084646, 17.437550, 16.716661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249939, -0.823773, -0.508850,
		0.544692, 0.314870, -0.777283,
		0.800526, -0.471439, 0.370004,
		5.324803, 17.296118, 16.827663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.061451, 17.358843, 15.964324>,  <4.764435, 17.626125, 16.568661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.061451, 17.358843, 15.964324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.243030, 17.157509, 16.258423>,  <5.351977, 17.036709, 16.434881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.243030, 17.157509, 16.258423>,  <5.061451, 17.358843, 15.964324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.243030, 17.157509, 16.258423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270718, -0.864069, -0.424379,
		0.848907, -0.006399, -0.528503,
		0.453947, -0.503334, 0.735246,
		5.379214, 17.006508, 16.478996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.468144, 16.844730, 15.638136>,  <5.061451, 17.358843, 15.964324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.468144, 16.844730, 15.638136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.380377, 16.721762, 16.008509>,  <5.327717, 16.647982, 16.230732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.380377, 16.721762, 16.008509>,  <5.468144, 16.844730, 15.638136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.380377, 16.721762, 16.008509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213887, -0.910814, -0.353086,
		0.951897, -0.275518, 0.134096,
		-0.219418, -0.307420, 0.925931,
		5.314552, 16.629536, 16.286287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.734252, 16.179571, 15.735229>,  <5.468144, 16.844730, 15.638136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.734252, 16.179571, 15.735229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.489298, 16.161039, 16.050909>,  <5.342325, 16.149921, 16.240316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.489298, 16.161039, 16.050909>,  <5.734252, 16.179571, 15.735229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.489298, 16.161039, 16.050909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330325, -0.891966, -0.308679,
		0.718240, -0.449723, 0.530924,
		-0.612386, -0.046328, 0.789201,
		5.305582, 16.147141, 16.287668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.881253, 15.504333, 15.991343>,  <5.734252, 16.179571, 15.735229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.881253, 15.504333, 15.991343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.513706, 15.629540, 16.087425>,  <5.293177, 15.704665, 16.145075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.513706, 15.629540, 16.087425>,  <5.881253, 15.504333, 15.991343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.513706, 15.629540, 16.087425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378120, -0.872509, -0.309440,
		0.112721, -0.375162, 0.920080,
		-0.918868, 0.313021, 0.240206,
		5.238045, 15.723447, 16.159487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.653671, 15.664479, 15.864592>,  <5.881253, 15.504333, 15.991343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.653671, 15.664479, 15.864592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.052607, 15.690197, 15.850855>,  <7.291969, 15.705627, 15.842613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.052607, 15.690197, 15.850855>,  <6.653671, 15.664479, 15.864592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.052607, 15.690197, 15.850855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024280, 0.151189, 0.988207,
		0.068730, -0.986412, 0.149226,
		0.997340, 0.064296, -0.034342,
		7.351809, 15.709485, 15.840552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.801651, 15.460425, 16.515665>,  <6.653671, 15.664479, 15.864592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.801651, 15.460425, 16.515665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.158738, 15.595240, 16.396023>,  <7.372990, 15.676128, 16.324238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.158738, 15.595240, 16.396023>,  <6.801651, 15.460425, 16.515665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.158738, 15.595240, 16.396023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237508, 0.212160, 0.947934,
		0.382947, -0.917275, 0.109349,
		0.892716, 0.337037, -0.299106,
		7.426553, 15.696350, 16.306292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.291141, 15.025245, 16.877249>,  <6.801651, 15.460425, 16.515665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.291141, 15.025245, 16.877249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.463296, 15.373649, 16.782501>,  <7.566589, 15.582691, 16.725653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.463296, 15.373649, 16.782501>,  <7.291141, 15.025245, 16.877249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.463296, 15.373649, 16.782501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272039, 0.125050, 0.954126,
		0.860675, -0.475082, -0.183129,
		0.430388, 0.871011, -0.236868,
		7.592412, 15.634952, 16.711441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.050561, 15.013432, 17.228073>,  <7.291141, 15.025245, 16.877249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.050561, 15.013432, 17.228073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.974617, 15.398267, 17.149752>,  <7.929050, 15.629168, 17.102758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.974617, 15.398267, 17.149752>,  <8.050561, 15.013432, 17.228073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.974617, 15.398267, 17.149752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148347, 0.225253, 0.962940,
		0.970539, 0.153777, -0.185489,
		-0.189860, 0.962088, -0.195804,
		7.917658, 15.686893, 17.091011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.484401, 15.355498, 17.682688>,  <8.050561, 15.013432, 17.228073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.484401, 15.355498, 17.682688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.212363, 15.632764, 17.587193>,  <8.049141, 15.799123, 17.529896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.212363, 15.632764, 17.587193>,  <8.484401, 15.355498, 17.682688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.212363, 15.632764, 17.587193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038955, 0.359353, 0.932388,
		0.732090, 0.624811, -0.271396,
		-0.680093, 0.693164, -0.238739,
		8.008335, 15.840714, 17.515572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.756856, 15.844281, 18.036734>,  <8.484401, 15.355498, 17.682688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.756856, 15.844281, 18.036734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.385544, 15.970201, 17.957541>,  <8.162756, 16.045752, 17.910025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.385544, 15.970201, 17.957541>,  <8.756856, 15.844281, 18.036734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.385544, 15.970201, 17.957541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084652, 0.339534, 0.936777,
		0.362116, 0.886352, -0.288535,
		-0.928281, 0.314797, -0.197982,
		8.107059, 16.064640, 17.898146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.712963, 16.530832, 18.277006>,  <8.756856, 15.844281, 18.036734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.712963, 16.530832, 18.277006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.327622, 16.424446, 18.263048>,  <8.096418, 16.360615, 18.254673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.327622, 16.424446, 18.263048>,  <8.712963, 16.530832, 18.277006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.327622, 16.424446, 18.263048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157060, 0.453805, 0.877150,
		-0.217454, 0.850485, -0.478946,
		-0.963351, -0.265963, -0.034895,
		8.038617, 16.344658, 18.252579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.396576, 17.108250, 18.361961>,  <8.712963, 16.530832, 18.277006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.396576, 17.108250, 18.361961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.148346, 16.810139, 18.459488>,  <7.999408, 16.631271, 18.518003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.148346, 16.810139, 18.459488>,  <8.396576, 17.108250, 18.361961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.148346, 16.810139, 18.459488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093023, 0.378706, 0.920830,
		-0.778610, 0.548764, -0.304344,
		-0.620575, -0.745279, 0.243817,
		7.962173, 16.586555, 18.532633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.793038, 17.386106, 18.635830>,  <8.396576, 17.108250, 18.361961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.793038, 17.386106, 18.635830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.845093, 17.017263, 18.781586>,  <7.876326, 16.795958, 18.869040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.845093, 17.017263, 18.781586>,  <7.793038, 17.386106, 18.635830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.845093, 17.017263, 18.781586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016446, 0.369471, 0.929097,
		-0.991360, -0.114917, 0.063247,
		0.130137, -0.922109, 0.364389,
		7.884134, 16.740631, 18.890902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.274735, 17.256775, 19.093126>,  <7.793038, 17.386106, 18.635830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.274735, 17.256775, 19.093126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.545664, 16.986521, 19.209574>,  <7.708222, 16.824368, 19.279442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.545664, 16.986521, 19.209574>,  <7.274735, 17.256775, 19.093126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.545664, 16.986521, 19.209574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118191, 0.290637, 0.949506,
		-0.726130, -0.677530, 0.117001,
		0.677323, -0.675636, 0.291118,
		7.748861, 16.783831, 19.296909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.140467, 17.105064, 19.753012>,  <7.274735, 17.256775, 19.093126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.140467, 17.105064, 19.753012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.510948, 16.954256, 19.752289>,  <7.733237, 16.863771, 19.751856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.510948, 16.954256, 19.752289>,  <7.140467, 17.105064, 19.753012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.510948, 16.954256, 19.752289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093116, 0.224101, 0.970107,
		-0.365348, -0.898684, 0.242670,
		0.926202, -0.377023, -0.001807,
		7.788809, 16.841148, 19.751747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.225978, 16.770723, 20.457668>,  <7.140467, 17.105064, 19.753012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.225978, 16.770723, 20.457668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.597959, 16.784649, 20.311256>,  <7.821147, 16.793003, 20.223410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.597959, 16.784649, 20.311256>,  <7.225978, 16.770723, 20.457668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.597959, 16.784649, 20.311256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357865, 0.142799, 0.922790,
		0.084391, -0.989139, 0.120339,
		0.929952, 0.034810, -0.366029,
		7.876944, 16.795094, 20.201448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.576131, 16.309153, 20.790976>,  <7.225978, 16.770723, 20.457668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.576131, 16.309153, 20.790976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.857703, 16.550436, 20.640976>,  <8.026646, 16.695206, 20.550976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.857703, 16.550436, 20.640976>,  <7.576131, 16.309153, 20.790976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.857703, 16.550436, 20.640976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424763, 0.065636, 0.902922,
		0.569263, -0.794879, -0.210017,
		0.703929, 0.603207, -0.375000,
		8.068882, 16.731398, 20.528477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.227036, 16.093817, 21.155127>,  <7.576131, 16.309153, 20.790976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.227036, 16.093817, 21.155127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.256275, 16.468508, 21.018190>,  <8.273819, 16.693323, 20.936029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.256275, 16.468508, 21.018190>,  <8.227036, 16.093817, 21.155127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.256275, 16.468508, 21.018190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487620, 0.265865, 0.831590,
		0.869990, -0.227719, -0.437334,
		0.073097, 0.936728, -0.342341,
		8.278205, 16.749527, 20.915487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.940046, 16.295006, 21.282330>,  <8.227036, 16.093817, 21.155127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.940046, 16.295006, 21.282330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.703098, 16.614847, 21.242865>,  <8.560929, 16.806751, 21.219185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.703098, 16.614847, 21.242865>,  <8.940046, 16.295006, 21.282330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.703098, 16.614847, 21.242865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425446, 0.414453, 0.804503,
		0.684173, 0.434588, -0.585697,
		-0.592371, 0.799601, -0.098663,
		8.525387, 16.854727, 21.213266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.364639, 16.817860, 21.671391>,  <8.940046, 16.295006, 21.282330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.364639, 16.817860, 21.671391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.009912, 16.995333, 21.619696>,  <8.797076, 17.101816, 21.588678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.009912, 16.995333, 21.619696>,  <9.364639, 16.817860, 21.671391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.009912, 16.995333, 21.619696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137796, 0.520820, 0.842472,
		0.441097, 0.729310, -0.523010,
		-0.886818, 0.443680, -0.129236,
		8.743867, 17.128437, 21.580925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.469841, 17.557196, 21.724501>,  <9.364639, 16.817860, 21.671391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.469841, 17.557196, 21.724501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.080950, 17.513397, 21.807240>,  <8.847615, 17.487118, 21.856882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.080950, 17.513397, 21.807240>,  <9.469841, 17.557196, 21.724501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.080950, 17.513397, 21.807240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101994, 0.597245, 0.795547,
		-0.210647, 0.794550, -0.569490,
		-0.972227, -0.109495, 0.206847,
		8.789282, 17.480549, 21.869293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.260972, 18.286564, 21.914204>,  <9.469841, 17.557196, 21.724501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.260972, 18.286564, 21.914204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.990894, 18.042271, 22.079670>,  <8.828848, 17.895695, 22.178949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.990894, 18.042271, 22.079670>,  <9.260972, 18.286564, 21.914204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.990894, 18.042271, 22.079670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028354, 0.538892, 0.841897,
		-0.737096, 0.580172, -0.346540,
		-0.675193, -0.610734, 0.413665,
		8.788337, 17.859051, 22.203770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.957985, 18.798487, 22.376566>,  <9.260972, 18.286564, 21.914204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.957985, 18.798487, 22.376566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.856525, 18.428289, 22.489084>,  <8.795650, 18.206171, 22.556595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.856525, 18.428289, 22.489084>,  <8.957985, 18.798487, 22.376566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.856525, 18.428289, 22.489084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117694, 0.259118, 0.958648,
		-0.960110, 0.276266, 0.043200,
		-0.253648, -0.925492, 0.281296,
		8.780431, 18.150642, 22.573473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.465049, 18.870201, 22.946829>,  <8.957985, 18.798487, 22.376566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.465049, 18.870201, 22.946829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.577471, 18.487490, 22.976709>,  <8.644924, 18.257862, 22.994637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.577471, 18.487490, 22.976709>,  <8.465049, 18.870201, 22.946829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.577471, 18.487490, 22.976709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198463, 0.134100, 0.970891,
		-0.938946, -0.258049, 0.227576,
		0.281055, -0.956780, 0.074700,
		8.661787, 18.200457, 22.999119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.026172, 18.618565, 23.367504>,  <8.465049, 18.870201, 22.946829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.026172, 18.618565, 23.367504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.349002, 18.382431, 23.372169>,  <8.542700, 18.240751, 23.374968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.349002, 18.382431, 23.372169>,  <8.026172, 18.618565, 23.367504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.349002, 18.382431, 23.372169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050360, 0.088501, 0.994802,
		-0.588298, -0.802292, 0.101156,
		0.807075, -0.590335, 0.011661,
		8.591125, 18.205330, 23.375668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.006773, 13.168089, 25.493378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.664282, 13.082174, 25.305445>,  <17.458788, 13.030625, 25.192686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.664282, 13.082174, 25.305445>,  <18.006773, 13.168089, 25.493378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.664282, 13.082174, 25.305445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337322, -0.456366, 0.823374,
		-0.391265, 0.863479, 0.318300,
		-0.856227, -0.214787, -0.469831,
		17.407413, 13.017738, 25.164495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.524469, 13.308737, 25.939505>,  <18.006773, 13.168089, 25.493378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.524469, 13.308737, 25.939505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.353971, 13.051693, 25.684830>,  <17.251673, 12.897467, 25.532024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.353971, 13.051693, 25.684830>,  <17.524469, 13.308737, 25.939505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.353971, 13.051693, 25.684830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430261, -0.475099, 0.767565,
		-0.795734, 0.601111, -0.073981,
		-0.426244, -0.642609, -0.636687,
		17.226099, 12.858911, 25.493824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.906395, 13.236762, 26.237932>,  <17.524469, 13.308737, 25.939505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.906395, 13.236762, 26.237932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.951857, 12.916905, 26.002083>,  <16.979134, 12.724991, 25.860573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.951857, 12.916905, 26.002083>,  <16.906395, 13.236762, 26.237932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.951857, 12.916905, 26.002083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228022, -0.598621, 0.767893,
		-0.967000, 0.047173, -0.250372,
		0.113654, -0.799643, -0.589623,
		16.985952, 12.677012, 25.825195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.345856, 12.647498, 26.459591>,  <16.906395, 13.236762, 26.237932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.345856, 12.647498, 26.459591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.648947, 12.474398, 26.264215>,  <16.830801, 12.370538, 26.146990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.648947, 12.474398, 26.264215>,  <16.345856, 12.647498, 26.459591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.648947, 12.474398, 26.264215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055639, -0.788604, 0.612380,
		-0.650192, -0.436842, -0.621626,
		0.757730, -0.432751, -0.488439,
		16.876266, 12.344572, 26.117683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.161379, 11.910688, 26.374367>,  <16.345856, 12.647498, 26.459591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.161379, 11.910688, 26.374367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.558100, 11.945835, 26.337252>,  <16.796133, 11.966923, 26.314983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.558100, 11.945835, 26.337252>,  <16.161379, 11.910688, 26.374367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.558100, 11.945835, 26.337252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125158, -0.814469, 0.566547,
		-0.025791, -0.573516, -0.818789,
		0.991801, 0.087867, -0.092786,
		16.855640, 11.972195, 26.309416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.392841, 11.169381, 26.197868>,  <16.161379, 11.910688, 26.374367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.392841, 11.169381, 26.197868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.717505, 11.357474, 26.336489>,  <16.912302, 11.470330, 26.419661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.717505, 11.357474, 26.336489>,  <16.392841, 11.169381, 26.197868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.717505, 11.357474, 26.336489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157414, -0.747397, 0.645459,
		0.562526, -0.469339, -0.680651,
		0.811656, 0.470232, 0.346550,
		16.961000, 11.498544, 26.440454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.890083, 10.703198, 26.213329>,  <16.392841, 11.169381, 26.197868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.890083, 10.703198, 26.213329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.043909, 10.975401, 26.462816>,  <17.136204, 11.138722, 26.612509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.043909, 10.975401, 26.462816>,  <16.890083, 10.703198, 26.213329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.043909, 10.975401, 26.462816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025310, -0.667651, 0.744044,
		0.922752, -0.301918, -0.239529,
		0.384562, 0.680506, 0.623718,
		17.159277, 11.179552, 26.649931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.445190, 10.358451, 26.495417>,  <16.890083, 10.703198, 26.213329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.445190, 10.358451, 26.495417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.340170, 10.662509, 26.733154>,  <17.277157, 10.844944, 26.875797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.340170, 10.662509, 26.733154>,  <17.445190, 10.358451, 26.495417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.340170, 10.662509, 26.733154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071358, -0.629564, 0.773665,
		0.962276, 0.160715, 0.219535,
		-0.262551, 0.760145, 0.594345,
		17.261404, 10.890553, 26.911457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.833393, 10.270765, 27.022202>,  <17.445190, 10.358451, 26.495417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.833393, 10.270765, 27.022202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.554441, 10.520650, 27.162714>,  <17.387070, 10.670580, 27.247021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.554441, 10.520650, 27.162714>,  <17.833393, 10.270765, 27.022202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.554441, 10.520650, 27.162714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107783, -0.575976, 0.810329,
		0.708550, 0.527246, 0.469008,
		-0.697380, 0.624710, 0.351280,
		17.345228, 10.708063, 27.268099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.989840, 10.420959, 27.682976>,  <17.833393, 10.270765, 27.022202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.989840, 10.420959, 27.682976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.598221, 10.494499, 27.647963>,  <17.363249, 10.538623, 27.626955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.598221, 10.494499, 27.647963>,  <17.989840, 10.420959, 27.682976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.598221, 10.494499, 27.647963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183062, -0.606455, 0.773758,
		0.089170, 0.773571, 0.627405,
		-0.979049, 0.183850, -0.087534,
		17.304506, 10.549654, 27.621702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826420, 10.431616, 28.384321>,  <17.989840, 10.420959, 27.682976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.826420, 10.431616, 28.384321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.482681, 10.380342, 28.186295>,  <17.276438, 10.349577, 28.067478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.482681, 10.380342, 28.186295>,  <17.826420, 10.431616, 28.384321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.482681, 10.380342, 28.186295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335401, -0.589511, 0.734835,
		-0.386043, 0.797524, 0.463601,
		-0.859346, -0.128186, -0.495068,
		17.224876, 10.341886, 28.037775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.243526, 10.403117, 28.974730>,  <17.826420, 10.431616, 28.384321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.243526, 10.403117, 28.974730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.063065, 10.247933, 28.653246>,  <16.954788, 10.154823, 28.460356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.063065, 10.247933, 28.653246>,  <17.243526, 10.403117, 28.974730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.063065, 10.247933, 28.653246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421873, -0.700885, 0.575138,
		-0.786438, 0.598539, 0.152537,
		-0.451154, -0.387959, -0.803709,
		16.927719, 10.131546, 28.412132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.357990, 10.297280, 29.684532>,  <17.243526, 10.403117, 28.974730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.357990, 10.297280, 29.684532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.420063, 10.482066, 30.033819>,  <17.457306, 10.592937, 30.243391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.420063, 10.482066, 30.033819>,  <17.357990, 10.297280, 29.684532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.420063, 10.482066, 30.033819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898419, 0.433571, -0.069714,
		-0.410806, -0.773696, 0.482320,
		0.155182, 0.461964, 0.873217,
		17.466618, 10.620655, 30.295784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.016842, 9.992927, 30.265795>,  <17.357990, 10.297280, 29.684532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.016842, 9.992927, 30.265795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.008604, 10.320569, 30.495104>,  <17.003662, 10.517155, 30.632689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.008604, 10.320569, 30.495104>,  <17.016842, 9.992927, 30.265795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.008604, 10.320569, 30.495104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903508, 0.230262, -0.361460,
		-0.428077, -0.525399, 0.735327,
		-0.020593, 0.819106, 0.573272,
		17.002426, 10.566301, 30.667086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.439621, 9.981364, 30.768839>,  <17.016842, 9.992927, 30.265795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.439621, 9.981364, 30.768839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.159338, 10.250266, 30.864405>,  <15.991168, 10.411608, 30.921743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.159338, 10.250266, 30.864405>,  <16.439621, 9.981364, 30.768839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.159338, 10.250266, 30.864405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337998, 0.607706, -0.718645,
		-0.628303, -0.422808, -0.653046,
		-0.700709, 0.672255, 0.238915,
		15.949125, 10.451942, 30.936079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.069910, 10.210378, 30.165205>,  <16.439621, 9.981364, 30.768839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.069910, 10.210378, 30.165205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.037922, 10.511360, 30.426712>,  <16.018728, 10.691950, 30.583616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.037922, 10.511360, 30.426712>,  <16.069910, 10.210378, 30.165205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.037922, 10.511360, 30.426712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168682, 0.656627, -0.735111,
		-0.982421, 0.051491, -0.179437,
		-0.079971, 0.752456, 0.653769,
		16.013931, 10.737097, 30.622843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.830727, 10.746231, 29.726515>,  <16.069910, 10.210378, 30.165205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.830727, 10.746231, 29.726515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.897653, 10.941941, 30.068886>,  <15.937808, 11.059367, 30.274309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.897653, 10.941941, 30.068886>,  <15.830727, 10.746231, 29.726515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.897653, 10.941941, 30.068886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181563, 0.868610, -0.461034,
		-0.969041, -0.078267, 0.234166,
		0.167315, 0.489276, 0.855929,
		15.947847, 11.088724, 30.325665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254656, 11.238750, 29.802811>,  <15.830727, 10.746231, 29.726515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.254656, 11.238750, 29.802811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.561525, 11.370216, 30.023146>,  <15.745646, 11.449097, 30.155348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.561525, 11.370216, 30.023146>,  <15.254656, 11.238750, 29.802811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.561525, 11.370216, 30.023146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141785, 0.924401, -0.354090,
		-0.625574, 0.193548, 0.755775,
		0.767173, 0.328667, 0.550839,
		15.791677, 11.468817, 30.188398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.012313, 11.864332, 30.146332>,  <15.254656, 11.238750, 29.802811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.012313, 11.864332, 30.146332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.411368, 11.883645, 30.126795>,  <15.650802, 11.895233, 30.115072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.411368, 11.883645, 30.126795>,  <15.012313, 11.864332, 30.146332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.411368, 11.883645, 30.126795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065097, 0.891438, -0.448442,
		0.021888, 0.450562, 0.892477,
		0.997639, 0.048282, -0.048842,
		15.710660, 11.898129, 30.112143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.086216, 12.539356, 30.040440>,  <15.012313, 11.864332, 30.146332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.086216, 12.539356, 30.040440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.457805, 12.403075, 29.982567>,  <15.680758, 12.321306, 29.947844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.457805, 12.403075, 29.982567>,  <15.086216, 12.539356, 30.040440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.457805, 12.403075, 29.982567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224000, 0.828627, -0.513031,
		0.294677, 0.444183, 0.846089,
		0.928972, -0.340703, -0.144681,
		15.736496, 12.300864, 29.939163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.526388, 13.134716, 30.162436>,  <15.086216, 12.539356, 30.040440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.526388, 13.134716, 30.162436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.749572, 12.885847, 29.942768>,  <15.883482, 12.736526, 29.810968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.749572, 12.885847, 29.942768>,  <15.526388, 13.134716, 30.162436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.749572, 12.885847, 29.942768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300841, 0.768384, -0.564872,
		0.773418, 0.149963, 0.615902,
		0.557959, -0.622171, -0.549167,
		15.916960, 12.699196, 29.778019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.021132, 13.624208, 30.003117>,  <15.526388, 13.134716, 30.162436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.021132, 13.624208, 30.003117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.086538, 13.300035, 29.778097>,  <16.125782, 13.105532, 29.643085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.086538, 13.300035, 29.778097>,  <16.021132, 13.624208, 30.003117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.086538, 13.300035, 29.778097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243497, 0.585736, -0.773060,
		0.956018, -0.010570, 0.293116,
		0.163517, -0.810433, -0.562548,
		16.135593, 13.056906, 29.609333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.728800, 13.633302, 29.665121>,  <16.021132, 13.624208, 30.003117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.728800, 13.633302, 29.665121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.499887, 13.392996, 29.441845>,  <16.362539, 13.248813, 29.307878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.499887, 13.392996, 29.441845>,  <16.728800, 13.633302, 29.665121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.499887, 13.392996, 29.441845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297570, 0.482150, -0.824004,
		0.764165, -0.637663, -0.097155,
		-0.572280, -0.600764, -0.558192,
		16.328203, 13.212767, 29.274387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.148829, 13.339694, 29.121250>,  <16.728800, 13.633302, 29.665121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.148829, 13.339694, 29.121250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.764647, 13.364806, 29.012741>,  <16.534138, 13.379873, 28.947636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.764647, 13.364806, 29.012741>,  <17.148829, 13.339694, 29.121250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.764647, 13.364806, 29.012741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264168, 0.513392, -0.816482,
		0.088011, -0.855855, -0.509674,
		-0.960453, 0.062781, -0.271274,
		16.476511, 13.383640, 28.931358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.289234, 13.420503, 28.498344>,  <17.148829, 13.339694, 29.121250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.289234, 13.420503, 28.498344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.893093, 13.474138, 28.512310>,  <16.655409, 13.506320, 28.520689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.893093, 13.474138, 28.512310>,  <17.289234, 13.420503, 28.498344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.893093, 13.474138, 28.512310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033993, 0.479392, -0.876942,
		-0.134325, -0.867297, -0.479326,
		-0.990354, 0.134089, 0.034912,
		16.595987, 13.514365, 28.522783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.998985, 13.084141, 27.916613>,  <17.289234, 13.420503, 28.498344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.998985, 13.084141, 27.916613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.752968, 13.380967, 28.023239>,  <16.605356, 13.559063, 28.087215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.752968, 13.380967, 28.023239>,  <16.998985, 13.084141, 27.916613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.752968, 13.380967, 28.023239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005409, 0.342032, -0.939673,
		-0.788473, -0.576499, -0.214379,
		-0.615045, 0.742067, 0.266565,
		16.568455, 13.603587, 28.103209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.588707, 13.028978, 27.448709>,  <16.998985, 13.084141, 27.916613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.588707, 13.028978, 27.448709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.478666, 13.380123, 27.605515>,  <16.412642, 13.590811, 27.699598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.478666, 13.380123, 27.605515>,  <16.588707, 13.028978, 27.448709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.478666, 13.380123, 27.605515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052011, 0.420739, -0.905690,
		-0.960007, -0.228769, -0.161405,
		-0.275103, 0.877863, 0.392014,
		16.396135, 13.643482, 27.723118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.896762, 13.234616, 27.070887>,  <16.588707, 13.028978, 27.448709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.896762, 13.234616, 27.070887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.038431, 13.577307, 27.220861>,  <16.123432, 13.782921, 27.310846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.038431, 13.577307, 27.220861>,  <15.896762, 13.234616, 27.070887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.038431, 13.577307, 27.220861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033755, 0.412378, -0.910388,
		-0.934570, 0.309779, 0.174972,
		0.354174, 0.856727, 0.374939,
		16.144684, 13.834325, 27.333344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.314437, 13.121633, 26.685841>,  <15.896762, 13.234616, 27.070887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.314437, 13.121633, 26.685841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.975956, 13.331671, 26.649578>,  <14.772867, 13.457693, 26.627821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.975956, 13.331671, 26.649578>,  <15.314437, 13.121633, 26.685841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.975956, 13.331671, 26.649578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254237, -0.248332, 0.934717,
		0.468302, 0.814007, 0.343637,
		-0.846201, 0.525095, -0.090656,
		14.722095, 13.489200, 26.622381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.238214, 13.543797, 27.253426>,  <15.314437, 13.121633, 26.685841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.238214, 13.543797, 27.253426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.876225, 13.455666, 27.107832>,  <14.659033, 13.402786, 27.020475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.876225, 13.455666, 27.107832>,  <15.238214, 13.543797, 27.253426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.876225, 13.455666, 27.107832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273550, -0.353940, 0.894369,
		-0.325885, 0.908945, 0.260034,
		-0.904969, -0.220330, -0.363986,
		14.604734, 13.389566, 26.998636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.728661, 13.865078, 27.691320>,  <15.238214, 13.543797, 27.253426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.728661, 13.865078, 27.691320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.548677, 13.552935, 27.517618>,  <14.440688, 13.365648, 27.413397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.548677, 13.552935, 27.517618>,  <14.728661, 13.865078, 27.691320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.548677, 13.552935, 27.517618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262821, -0.349018, 0.899507,
		-0.853501, 0.518871, -0.048051,
		-0.449957, -0.780359, -0.434257,
		14.413691, 13.318827, 27.387341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.279195, 13.756831, 28.080511>,  <14.728661, 13.865078, 27.691320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.279195, 13.756831, 28.080511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.250137, 13.414949, 27.874908>,  <14.232702, 13.209820, 27.751547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.250137, 13.414949, 27.874908>,  <14.279195, 13.756831, 28.080511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.250137, 13.414949, 27.874908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590321, -0.378551, 0.712895,
		-0.803893, 0.355217, -0.477051,
		-0.072644, -0.854705, -0.514006,
		14.228344, 13.158538, 27.720707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.607704, 13.618081, 28.024778>,  <14.279195, 13.756831, 28.080511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.607704, 13.618081, 28.024778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.803248, 13.271749, 27.982157>,  <13.920575, 13.063951, 27.956583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.803248, 13.271749, 27.982157>,  <13.607704, 13.618081, 28.024778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.803248, 13.271749, 27.982157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521851, -0.388131, 0.759622,
		-0.699061, -0.315743, -0.641576,
		0.488861, -0.865830, -0.106556,
		13.949906, 13.012001, 27.950190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.114053, 13.135330, 27.903711>,  <13.607704, 13.618081, 28.024778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.114053, 13.135330, 27.903711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.432203, 12.958334, 28.069399>,  <13.623094, 12.852136, 28.168812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.432203, 12.958334, 28.069399>,  <13.114053, 13.135330, 27.903711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.432203, 12.958334, 28.069399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598606, -0.466218, 0.651392,
		-0.095117, -0.766056, -0.635697,
		0.795376, -0.442491, 0.414221,
		13.670816, 12.825586, 28.193665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.850109, 12.561986, 28.084223>,  <13.114053, 13.135330, 27.903711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.850109, 12.561986, 28.084223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.183084, 12.579449, 28.305180>,  <13.382870, 12.589926, 28.437754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.183084, 12.579449, 28.305180>,  <12.850109, 12.561986, 28.084223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.183084, 12.579449, 28.305180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483646, -0.429273, 0.762765,
		0.270427, -0.902119, -0.336230,
		0.832439, 0.043656, 0.552393,
		13.432817, 12.592546, 28.470898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.059861, 12.002310, 27.615068>,  <12.850109, 12.561986, 28.084223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.059861, 12.002310, 27.615068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.818832, 11.719430, 27.467134>,  <12.674215, 11.549702, 27.378374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.818832, 11.719430, 27.467134>,  <13.059861, 12.002310, 27.615068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.818832, 11.719430, 27.467134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039469, 0.489253, -0.871249,
		0.797089, -0.510392, -0.322722,
		-0.602571, -0.707200, -0.369833,
		12.638061, 11.507270, 27.356184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.338986, 11.744808, 26.917685>,  <13.059861, 12.002310, 27.615068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.338986, 11.744808, 26.917685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.943275, 11.686814, 26.924719>,  <12.705849, 11.652018, 26.928940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.943275, 11.686814, 26.924719>,  <13.338986, 11.744808, 26.917685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.943275, 11.686814, 26.924719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049218, 0.217581, -0.974801,
		0.137502, -0.965214, -0.222384,
		-0.989278, -0.144982, 0.017588,
		12.646492, 11.643318, 26.929995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.121098, 11.279221, 26.323494>,  <13.338986, 11.744808, 26.917685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.121098, 11.279221, 26.323494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.753480, 11.418528, 26.397324>,  <12.532909, 11.502111, 26.441622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.753480, 11.418528, 26.397324>,  <13.121098, 11.279221, 26.323494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.753480, 11.418528, 26.397324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138706, 0.152557, -0.978513,
		-0.368943, -0.924898, -0.091900,
		-0.919044, 0.348268, 0.184574,
		12.477767, 11.523008, 26.452696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.660493, 10.910514, 25.796446>,  <13.121098, 11.279221, 26.323494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.660493, 10.910514, 25.796446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.466219, 11.236441, 25.923052>,  <12.349654, 11.431997, 25.999016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.466219, 11.236441, 25.923052>,  <12.660493, 10.910514, 25.796446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.466219, 11.236441, 25.923052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297920, 0.186115, -0.936272,
		-0.821799, -0.549030, 0.152357,
		-0.485685, 0.814817, 0.316516,
		12.320514, 11.480886, 26.018007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.031967, 10.932142, 25.429871>,  <12.660493, 10.910514, 25.796446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.031967, 10.932142, 25.429871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.087941, 11.312371, 25.540745>,  <12.121526, 11.540508, 25.607269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.087941, 11.312371, 25.540745>,  <12.031967, 10.932142, 25.429871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.087941, 11.312371, 25.540745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203100, 0.301543, -0.931570,
		-0.969107, 0.074063, 0.235257,
		0.139935, 0.950572, 0.277185,
		12.129922, 11.597543, 25.623901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.419367, 11.344162, 25.151939>,  <12.031967, 10.932142, 25.429871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.419367, 11.344162, 25.151939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.678362, 11.628592, 25.261580>,  <11.833759, 11.799251, 25.327364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.678362, 11.628592, 25.261580>,  <11.419367, 11.344162, 25.151939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.678362, 11.628592, 25.261580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221661, 0.519851, -0.824997,
		-0.729127, 0.473418, 0.494215,
		0.647488, 0.711076, 0.274099,
		11.872608, 11.841915, 25.343809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.112717, 11.892223, 24.988272>,  <11.419367, 11.344162, 25.151939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.112717, 11.892223, 24.988272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.495106, 12.005826, 25.017820>,  <11.724539, 12.073988, 25.035549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.495106, 12.005826, 25.017820>,  <11.112717, 11.892223, 24.988272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.495106, 12.005826, 25.017820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095164, 0.538146, -0.837462,
		-0.277598, 0.793561, 0.541479,
		0.955972, 0.284007, 0.073870,
		11.781898, 12.091028, 25.039982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<16.047531, 7.232004, 27.125559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.765788, 6.958776, 27.048317>,  <15.596742, 6.794838, 27.001972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.765788, 6.958776, 27.048317>,  <16.047531, 7.232004, 27.125559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.765788, 6.958776, 27.048317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696806, -0.613447, -0.371677,
		0.135422, -0.396352, 0.908056,
		-0.704360, -0.683072, -0.193106,
		15.554481, 6.753854, 26.990385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.653301, 7.883021, 27.063280>,  <16.047531, 7.232004, 27.125559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.653301, 7.883021, 27.063280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.023741, 8.031609, 27.089670>,  <16.246004, 8.120761, 27.105505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.023741, 8.031609, 27.089670>,  <15.653301, 7.883021, 27.063280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.023741, 8.031609, 27.089670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074936, 0.352494, -0.932809,
		-0.369765, 0.858929, 0.354281,
		0.926098, 0.371469, 0.065975,
		16.301571, 8.143049, 27.109463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.646605, 8.552080, 26.663557>,  <15.653301, 7.883021, 27.063280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.646605, 8.552080, 26.663557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.040211, 8.490710, 26.699718>,  <16.276375, 8.453888, 26.721416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.040211, 8.490710, 26.699718>,  <15.646605, 8.552080, 26.663557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.040211, 8.490710, 26.699718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158385, 0.521968, -0.838131,
		0.081402, 0.839053, 0.537925,
		0.984016, -0.153425, 0.090404,
		16.335415, 8.444683, 26.726839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.074509, 9.251907, 26.713552>,  <15.646605, 8.552080, 26.663557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.074509, 9.251907, 26.713552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.290710, 8.944093, 26.577513>,  <16.420431, 8.759404, 26.495890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.290710, 8.944093, 26.577513>,  <16.074509, 9.251907, 26.713552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.290710, 8.944093, 26.577513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184177, 0.502653, -0.844642,
		0.820934, 0.393895, 0.413418,
		0.540505, -0.769537, -0.340098,
		16.452862, 8.713232, 26.475483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.692663, 9.471139, 26.580404>,  <16.074509, 9.251907, 26.713552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.692663, 9.471139, 26.580404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.675045, 9.145652, 26.348570>,  <16.664474, 8.950359, 26.209469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.675045, 9.145652, 26.348570>,  <16.692663, 9.471139, 26.580404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.675045, 9.145652, 26.348570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375324, 0.524175, -0.764443,
		0.925847, -0.251202, 0.282322,
		-0.044044, -0.813719, -0.579587,
		16.661833, 8.901536, 26.174694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133823, 9.672492, 26.135862>,  <16.692663, 9.471139, 26.580404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.133823, 9.672492, 26.135862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.953802, 9.356269, 25.969744>,  <16.845789, 9.166535, 25.870073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.953802, 9.356269, 25.969744>,  <17.133823, 9.672492, 26.135862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.953802, 9.356269, 25.969744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250080, 0.334872, -0.908472,
		0.857271, -0.512717, 0.046993,
		-0.450052, -0.790558, -0.415296,
		16.818787, 9.119102, 25.845156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.726471, 9.382302, 25.745377>,  <17.133823, 9.672492, 26.135862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.726471, 9.382302, 25.745377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.366930, 9.286035, 25.598873>,  <17.151205, 9.228274, 25.510971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.366930, 9.286035, 25.598873>,  <17.726471, 9.382302, 25.745377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.366930, 9.286035, 25.598873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291560, 0.295561, -0.909745,
		0.327203, -0.924511, -0.195495,
		-0.898850, -0.240673, -0.366259,
		17.097275, 9.213834, 25.488997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.909603, 8.913795, 25.172888>,  <17.726471, 9.382302, 25.745377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.909603, 8.913795, 25.172888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.540859, 9.063252, 25.131771>,  <17.319613, 9.152926, 25.107101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.540859, 9.063252, 25.131771>,  <17.909603, 8.913795, 25.172888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.540859, 9.063252, 25.131771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195672, 0.219848, -0.955709,
		-0.334496, -0.901143, -0.275780,
		-0.921859, 0.373643, -0.102790,
		17.264301, 9.175345, 25.100933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.820179, 8.697159, 24.528345>,  <17.909603, 8.913795, 25.172888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.820179, 8.697159, 24.528345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.532455, 8.969497, 24.583544>,  <17.359821, 9.132899, 24.616663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.532455, 8.969497, 24.583544>,  <17.820179, 8.697159, 24.528345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.532455, 8.969497, 24.583544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141178, 0.337771, -0.930580,
		-0.680192, -0.649894, -0.339083,
		-0.719311, 0.680844, 0.137998,
		17.316662, 9.173750, 24.624943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.526011, 8.774248, 23.873800>,  <17.820179, 8.697159, 24.528345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.526011, 8.774248, 23.873800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.378881, 9.097998, 24.056938>,  <17.290604, 9.292248, 24.166821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.378881, 9.097998, 24.056938>,  <17.526011, 8.774248, 23.873800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.378881, 9.097998, 24.056938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117890, 0.528975, -0.840409,
		-0.922393, -0.255145, -0.289986,
		-0.367822, 0.809374, 0.457844,
		17.268536, 9.340810, 24.194292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.954229, 8.932657, 23.466068>,  <17.526011, 8.774248, 23.873800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.954229, 8.932657, 23.466068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.085112, 9.257095, 23.660000>,  <17.163641, 9.451758, 23.776360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.085112, 9.257095, 23.660000>,  <16.954229, 8.932657, 23.466068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.085112, 9.257095, 23.660000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117697, 0.544058, -0.830752,
		-0.937594, 0.214765, 0.273483,
		0.327207, 0.811096, 0.484828,
		17.183273, 9.500424, 23.805449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564932, 9.392241, 23.123518>,  <16.954229, 8.932657, 23.466068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.564932, 9.392241, 23.123518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.846359, 9.608162, 23.308388>,  <17.015215, 9.737715, 23.419310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.846359, 9.608162, 23.308388>,  <16.564932, 9.392241, 23.123518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.846359, 9.608162, 23.308388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041142, 0.680223, -0.731849,
		-0.709436, 0.495892, 0.500792,
		0.703568, 0.539803, 0.462173,
		17.057430, 9.770103, 23.447039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.101463, 9.163849, 23.557404>,  <16.564932, 9.392241, 23.123518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.101463, 9.163849, 23.557404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.747416, 9.043364, 23.415512>,  <15.534986, 8.971072, 23.330378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.747416, 9.043364, 23.415512>,  <16.101463, 9.163849, 23.557404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.747416, 9.043364, 23.415512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398451, 0.096736, 0.912074,
		-0.240414, 0.948637, -0.205642,
		-0.885120, -0.301214, -0.354729,
		15.481879, 8.952999, 23.309093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.637226, 9.434546, 24.006857>,  <16.101463, 9.163849, 23.557404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.637226, 9.434546, 24.006857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.403490, 9.157113, 23.838337>,  <15.263248, 8.990654, 23.737225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.403490, 9.157113, 23.838337>,  <15.637226, 9.434546, 24.006857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.403490, 9.157113, 23.838337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555116, -0.037057, 0.830947,
		-0.591941, 0.719426, -0.363364,
		-0.584339, -0.693580, -0.421301,
		15.228189, 8.949039, 23.711946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.978102, 9.650726, 24.136314>,  <15.637226, 9.434546, 24.006857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.978102, 9.650726, 24.136314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.926288, 9.259569, 24.070654>,  <14.895199, 9.024875, 24.031258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.926288, 9.259569, 24.070654>,  <14.978102, 9.650726, 24.136314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.926288, 9.259569, 24.070654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597527, -0.055132, 0.799951,
		-0.791316, 0.201708, -0.577176,
		-0.129536, -0.977893, -0.164153,
		14.887427, 8.966202, 24.021408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.229464, 9.466037, 24.244328>,  <14.978102, 9.650726, 24.136314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.229464, 9.466037, 24.244328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.436136, 9.123876, 24.258888>,  <14.560140, 8.918579, 24.267624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.436136, 9.123876, 24.258888>,  <14.229464, 9.466037, 24.244328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.436136, 9.123876, 24.258888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589562, -0.324634, 0.739615,
		-0.620853, -0.403604, -0.672046,
		0.516680, -0.855404, 0.036399,
		14.591141, 8.867254, 24.269808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.789635, 9.001310, 24.437761>,  <14.229464, 9.466037, 24.244328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.789635, 9.001310, 24.437761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.127948, 8.817051, 24.545431>,  <14.330935, 8.706495, 24.610033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.127948, 8.817051, 24.545431>,  <13.789635, 9.001310, 24.437761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.127948, 8.817051, 24.545431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400912, -0.215846, 0.890326,
		-0.352029, -0.860937, -0.367238,
		0.845781, -0.460650, 0.269176,
		14.381682, 8.678857, 24.626184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.528094, 8.380436, 24.676197>,  <13.789635, 9.001310, 24.437761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.528094, 8.380436, 24.676197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.902979, 8.412159, 24.812048>,  <14.127910, 8.431192, 24.893559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.902979, 8.412159, 24.812048>,  <13.528094, 8.380436, 24.676197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.902979, 8.412159, 24.812048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279428, -0.411980, 0.867290,
		0.208702, -0.907735, -0.363952,
		0.937211, 0.079307, 0.339627,
		14.184142, 8.435951, 24.913937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.691851, 7.754519, 25.041340>,  <13.528094, 8.380436, 24.676197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.691851, 7.754519, 25.041340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.958450, 8.008116, 25.198225>,  <14.118410, 8.160274, 25.292356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.958450, 8.008116, 25.198225>,  <13.691851, 7.754519, 25.041340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.958450, 8.008116, 25.198225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299121, -0.254480, 0.919656,
		0.682866, -0.730269, 0.020030,
		0.666499, 0.633993, 0.392215,
		14.158400, 8.198314, 25.315889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.076370, 7.454217, 25.625740>,  <13.691851, 7.754519, 25.041340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.076370, 7.454217, 25.625740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.109478, 7.843448, 25.711781>,  <14.129343, 8.076987, 25.763405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.109478, 7.843448, 25.711781>,  <14.076370, 7.454217, 25.625740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.109478, 7.843448, 25.711781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277449, -0.184806, 0.942798,
		0.957168, -0.137715, 0.254683,
		0.082770, 0.973078, 0.215100,
		14.134309, 8.135371, 25.776310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.438910, 7.434397, 26.241755>,  <14.076370, 7.454217, 25.625740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.438910, 7.434397, 26.241755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.264851, 7.794516, 26.246052>,  <14.160416, 8.010587, 26.248631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.264851, 7.794516, 26.246052>,  <14.438910, 7.434397, 26.241755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.264851, 7.794516, 26.246052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245023, -0.129892, 0.960777,
		0.866379, 0.415446, 0.277115,
		-0.435146, 0.900296, 0.010742,
		14.134307, 8.064605, 26.249275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.596416, 7.771700, 26.947989>,  <14.438910, 7.434397, 26.241755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.596416, 7.771700, 26.947989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.313373, 8.013313, 26.801325>,  <14.143547, 8.158281, 26.713327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.313373, 8.013313, 26.801325>,  <14.596416, 7.771700, 26.947989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.313373, 8.013313, 26.801325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389203, 0.099916, 0.915717,
		0.589757, 0.790672, 0.164389,
		-0.707607, 0.604032, -0.366658,
		14.101090, 8.194523, 26.691328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.508648, 8.295465, 27.427544>,  <14.596416, 7.771700, 26.947989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.508648, 8.295465, 27.427544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.158461, 8.291706, 27.234270>,  <13.948348, 8.289451, 27.118305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.158461, 8.291706, 27.234270>,  <14.508648, 8.295465, 27.427544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.158461, 8.291706, 27.234270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481300, 0.107289, 0.869965,
		0.043666, 0.994184, -0.098451,
		-0.875468, -0.009397, -0.483185,
		13.895821, 8.288887, 27.089315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.074190, 8.921205, 27.594763>,  <14.508648, 8.295465, 27.427544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.074190, 8.921205, 27.594763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.820952, 8.647155, 27.450653>,  <13.669010, 8.482725, 27.364187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.820952, 8.647155, 27.450653>,  <14.074190, 8.921205, 27.594763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.820952, 8.647155, 27.450653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602791, 0.144361, 0.784731,
		-0.485629, 0.713977, -0.504381,
		-0.633093, -0.685125, -0.360273,
		13.631024, 8.441617, 27.342571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.429048, 9.204551, 27.801279>,  <14.074190, 8.921205, 27.594763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.429048, 9.204551, 27.801279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.361626, 8.818083, 27.723198>,  <13.321173, 8.586202, 27.676350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.361626, 8.818083, 27.723198>,  <13.429048, 9.204551, 27.801279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.361626, 8.818083, 27.723198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595680, -0.057936, 0.801130,
		-0.785337, 0.251312, -0.565763,
		-0.168556, -0.966171, -0.195201,
		13.311059, 8.528232, 27.664639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.674432, 9.121997, 27.753536>,  <13.429048, 9.204551, 27.801279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.674432, 9.121997, 27.753536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.827599, 8.767064, 27.856312>,  <12.919498, 8.554105, 27.917976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.827599, 8.767064, 27.856312>,  <12.674432, 9.121997, 27.753536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.827599, 8.767064, 27.856312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616217, -0.038136, 0.786653,
		-0.688224, -0.459551, -0.561392,
		0.382916, -0.887332, 0.256937,
		12.942473, 8.500864, 27.933393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.402546, 8.929840, 28.404737>,  <12.674432, 9.121997, 27.753536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.402546, 8.929840, 28.404737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.098192, 9.091248, 28.608002>,  <11.915580, 9.188092, 28.729959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.098192, 9.091248, 28.608002>,  <12.402546, 8.929840, 28.404737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.098192, 9.091248, 28.608002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188716, 0.886887, -0.421685,
		-0.620838, -0.224956, -0.750969,
		-0.760885, 0.403518, 0.508160,
		11.869926, 9.212303, 28.760450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.834811, 9.184840, 27.919584>,  <12.402546, 8.929840, 28.404737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.834811, 9.184840, 27.919584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.852786, 9.371776, 28.272758>,  <11.863571, 9.483936, 28.484663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.852786, 9.371776, 28.272758>,  <11.834811, 9.184840, 27.919584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.852786, 9.371776, 28.272758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354411, 0.818881, -0.451472,
		-0.934009, 0.333211, -0.128831,
		0.044938, 0.467338, 0.882936,
		11.866267, 9.511977, 28.537640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.471944, 9.921130, 27.872593>,  <11.834811, 9.184840, 27.919584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.471944, 9.921130, 27.872593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.686987, 9.933136, 28.209658>,  <11.816013, 9.940339, 28.411896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.686987, 9.933136, 28.209658>,  <11.471944, 9.921130, 27.872593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.686987, 9.933136, 28.209658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412789, 0.862052, -0.294060,
		-0.735243, 0.505930, 0.451057,
		0.537608, 0.030015, 0.842660,
		11.848269, 9.942141, 28.462456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.362646, 10.577239, 28.078087>,  <11.471944, 9.921130, 27.872593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.362646, 10.577239, 28.078087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.709340, 10.446030, 28.228378>,  <11.917356, 10.367304, 28.318552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.709340, 10.446030, 28.228378>,  <11.362646, 10.577239, 28.078087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.709340, 10.446030, 28.228378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461533, 0.813065, -0.354842,
		-0.189094, 0.480965, 0.856105,
		0.866735, -0.328023, 0.375727,
		11.969360, 10.347623, 28.341097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.527594, 11.164659, 28.469810>,  <11.362646, 10.577239, 28.078087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.527594, 11.164659, 28.469810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.860114, 10.967262, 28.367512>,  <12.059627, 10.848825, 28.306131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.860114, 10.967262, 28.367512>,  <11.527594, 11.164659, 28.469810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.860114, 10.967262, 28.367512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388680, 0.845042, -0.367195,
		0.397325, 0.205846, 0.894293,
		0.831301, -0.493490, -0.255748,
		12.109505, 10.819215, 28.290787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.952956, 11.621201, 28.380829>,  <11.527594, 11.164659, 28.469810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.952956, 11.621201, 28.380829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.152499, 11.321405, 28.206745>,  <12.272225, 11.141528, 28.102295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.152499, 11.321405, 28.206745>,  <11.952956, 11.621201, 28.380829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.152499, 11.321405, 28.206745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210266, 0.591814, -0.778167,
		0.840790, 0.296686, 0.452823,
		0.498859, -0.749489, -0.435209,
		12.302156, 11.096559, 28.076183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.478473, 11.955093, 28.045193>,  <11.952956, 11.621201, 28.380829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.478473, 11.955093, 28.045193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.440436, 11.597685, 27.869659>,  <12.417614, 11.383240, 27.764339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.440436, 11.597685, 27.869659>,  <12.478473, 11.955093, 28.045193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.440436, 11.597685, 27.869659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150135, 0.422917, -0.893645,
		0.984082, -0.150863, 0.093933,
		-0.095092, -0.893522, -0.438834,
		12.411909, 11.329628, 27.738008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.128252, 11.641982, 28.403549>,  <12.478473, 11.955093, 28.045193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.128252, 11.641982, 28.403549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.309881, 11.925829, 28.619053>,  <13.418859, 12.096137, 28.748356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.309881, 11.925829, 28.619053>,  <13.128252, 11.641982, 28.403549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.309881, 11.925829, 28.619053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403025, -0.375699, 0.834518,
		0.794600, -0.596066, 0.115399,
		0.454072, 0.709617, 0.538760,
		13.446103, 12.138714, 28.780682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.466200, 11.310102, 28.946138>,  <13.128252, 11.641982, 28.403549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.466200, 11.310102, 28.946138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.449231, 11.688081, 29.075924>,  <13.439050, 11.914868, 29.153795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.449231, 11.688081, 29.075924>,  <13.466200, 11.310102, 28.946138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.449231, 11.688081, 29.075924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019951, -0.323890, 0.945884,
		0.998901, 0.046599, -0.005113,
		-0.042421, 0.944947, 0.324463,
		13.436504, 11.971565, 29.173264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.957767, 11.309845, 29.457663>,  <13.466200, 11.310102, 28.946138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.957767, 11.309845, 29.457663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.739015, 11.636780, 29.530195>,  <13.607763, 11.832941, 29.573715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.739015, 11.636780, 29.530195>,  <13.957767, 11.309845, 29.457663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.739015, 11.636780, 29.530195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157474, -0.313146, 0.936558,
		0.822268, 0.483630, 0.299962,
		-0.546880, 0.817338, 0.181331,
		13.574950, 11.881981, 29.584595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.238456, 11.623420, 30.047695>,  <13.957767, 11.309845, 29.457663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.238456, 11.623420, 30.047695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.866632, 11.766809, 30.013252>,  <13.643538, 11.852843, 29.992586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.866632, 11.766809, 30.013252>,  <14.238456, 11.623420, 30.047695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.866632, 11.766809, 30.013252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117071, -0.065545, 0.990958,
		0.349589, 0.931236, 0.102895,
		-0.929560, 0.358474, -0.086107,
		13.587764, 11.874352, 29.987421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.296632, 12.057778, 30.547100>,  <14.238456, 11.623420, 30.047695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.296632, 12.057778, 30.547100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.926565, 11.929629, 30.465683>,  <13.704525, 11.852740, 30.416832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.926565, 11.929629, 30.465683>,  <14.296632, 12.057778, 30.547100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.926565, 11.929629, 30.465683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157134, -0.164871, 0.973718,
		-0.345511, 0.932834, 0.102192,
		-0.925165, -0.320372, -0.203545,
		13.649015, 11.833518, 30.404619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.872427, 12.412258, 31.027426>,  <14.296632, 12.057778, 30.547100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.872427, 12.412258, 31.027426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.645159, 12.108265, 30.901182>,  <13.508798, 11.925869, 30.825436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.645159, 12.108265, 30.901182>,  <13.872427, 12.412258, 31.027426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.645159, 12.108265, 30.901182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250817, -0.205346, 0.946004,
		-0.783755, 0.616652, -0.073945,
		-0.568171, -0.759983, -0.315608,
		13.474708, 11.880270, 30.806499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.379566, 12.335881, 31.549131>,  <13.872427, 12.412258, 31.027426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.379566, 12.335881, 31.549131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.365073, 11.985324, 31.357038>,  <13.356378, 11.774989, 31.241783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.365073, 11.985324, 31.357038>,  <13.379566, 12.335881, 31.549131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.365073, 11.985324, 31.357038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486347, -0.404336, 0.774583,
		-0.873014, 0.261624, -0.411581,
		-0.036233, -0.876393, -0.480231,
		13.354203, 11.722406, 31.212969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.729331, 11.946884, 31.668598>,  <13.379566, 12.335881, 31.549131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.729331, 11.946884, 31.668598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.996932, 11.670830, 31.558216>,  <13.157493, 11.505198, 31.491987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.996932, 11.670830, 31.558216>,  <12.729331, 11.946884, 31.668598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.996932, 11.670830, 31.558216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357296, -0.624173, 0.694800,
		-0.651750, -0.366224, -0.664155,
		0.669000, -0.690136, -0.275955,
		13.197633, 11.463789, 31.475430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.318332, 11.339172, 31.769291>,  <12.729331, 11.946884, 31.668598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.318332, 11.339172, 31.769291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.696985, 11.213882, 31.738897>,  <12.924177, 11.138708, 31.720661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.696985, 11.213882, 31.738897>,  <12.318332, 11.339172, 31.769291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.696985, 11.213882, 31.738897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192060, -0.737507, 0.647454,
		-0.258837, -0.598309, -0.758308,
		0.946634, -0.313226, -0.075982,
		12.980975, 11.119915, 31.716103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<16.608479, 17.134537, 16.966558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.928488, 17.134987, 17.206545>,  <17.120493, 17.135258, 17.350536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.928488, 17.134987, 17.206545>,  <16.608479, 17.134537, 16.966558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.928488, 17.134987, 17.206545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577223, -0.271290, 0.770205,
		0.163633, -0.962497, -0.216388,
		0.800024, 0.001127, 0.599967,
		17.168495, 17.135324, 17.386536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.380480, 16.581980, 17.331053>,  <16.608479, 17.134537, 16.966558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.380480, 16.581980, 17.331053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.703905, 16.717644, 17.523386>,  <16.897961, 16.799042, 17.638786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.703905, 16.717644, 17.523386>,  <16.380480, 16.581980, 17.331053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.703905, 16.717644, 17.523386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394112, -0.294630, 0.870557,
		0.436927, -0.893399, -0.104559,
		0.808561, 0.339162, 0.480831,
		16.946474, 16.819391, 17.667635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.688232, 15.974932, 17.639732>,  <16.380480, 16.581980, 17.331053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.688232, 15.974932, 17.639732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.793358, 16.301437, 17.845507>,  <16.856432, 16.497341, 17.968971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.793358, 16.301437, 17.845507>,  <16.688232, 15.974932, 17.639732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.793358, 16.301437, 17.845507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298981, -0.438037, 0.847782,
		0.917355, -0.376614, 0.128925,
		0.262812, 0.816263, 0.514436,
		16.872202, 16.546316, 17.999838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.055052, 15.712607, 18.254782>,  <16.688232, 15.974932, 17.639732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.055052, 15.712607, 18.254782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.948282, 16.084898, 18.354780>,  <16.884220, 16.308273, 18.414780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.948282, 16.084898, 18.354780>,  <17.055052, 15.712607, 18.254782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.948282, 16.084898, 18.354780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452470, -0.350071, 0.820196,
		0.850895, 0.105816, 0.514569,
		-0.266925, 0.930727, 0.249995,
		16.868204, 16.364117, 18.429779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.169947, 15.709301, 18.973286>,  <17.055052, 15.712607, 18.254782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.169947, 15.709301, 18.973286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.895927, 15.993720, 18.909891>,  <16.731516, 16.164371, 18.871855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.895927, 15.993720, 18.909891>,  <17.169947, 15.709301, 18.973286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.895927, 15.993720, 18.909891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434672, -0.224375, 0.872190,
		0.584609, 0.666383, 0.462781,
		-0.685049, 0.711048, -0.158487,
		16.690413, 16.207035, 18.862345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.149979, 16.094284, 19.609703>,  <17.169947, 15.709301, 18.973286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.149979, 16.094284, 19.609703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.810307, 16.163065, 19.409973>,  <16.606503, 16.204334, 19.290134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.810307, 16.163065, 19.409973>,  <17.149979, 16.094284, 19.609703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.810307, 16.163065, 19.409973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524969, -0.172002, 0.833560,
		0.057449, 0.969973, 0.236331,
		-0.849180, 0.171954, -0.499324,
		16.555552, 16.214651, 19.260176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.735178, 16.482382, 20.076056>,  <17.149979, 16.094284, 19.609703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.735178, 16.482382, 20.076056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.474756, 16.350275, 19.802691>,  <16.318504, 16.271011, 19.638672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.474756, 16.350275, 19.802691>,  <16.735178, 16.482382, 20.076056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.474756, 16.350275, 19.802691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717702, -0.025197, 0.695895,
		-0.247050, 0.943552, -0.220628,
		-0.651054, -0.330266, -0.683413,
		16.279440, 16.251196, 19.597666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.053291, 16.854786, 20.213512>,  <16.735178, 16.482382, 20.076056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.053291, 16.854786, 20.213512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.928601, 16.526562, 20.021883>,  <15.853787, 16.329628, 19.906906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.928601, 16.526562, 20.021883>,  <16.053291, 16.854786, 20.213512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.928601, 16.526562, 20.021883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749927, -0.097141, 0.654350,
		-0.583470, 0.563246, -0.585078,
		-0.311725, -0.820559, -0.479072,
		15.835084, 16.280394, 19.878162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.413841, 16.765806, 20.468737>,  <16.053291, 16.854786, 20.213512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.413841, 16.765806, 20.468737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.478924, 16.406506, 20.305433>,  <15.517973, 16.190926, 20.207451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.478924, 16.406506, 20.305433>,  <15.413841, 16.765806, 20.468737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.478924, 16.406506, 20.305433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682610, -0.401244, 0.610775,
		-0.712439, 0.179303, -0.678440,
		0.162706, -0.898250, -0.408257,
		15.527736, 16.137030, 20.182957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.772226, 16.586155, 20.192011>,  <15.413841, 16.765806, 20.468737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.772226, 16.586155, 20.192011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.986252, 16.250122, 20.227711>,  <15.114667, 16.048502, 20.249130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.986252, 16.250122, 20.227711>,  <14.772226, 16.586155, 20.192011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.986252, 16.250122, 20.227711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650604, -0.342368, 0.677863,
		-0.538906, -0.420766, -0.729751,
		0.535065, -0.840084, 0.089248,
		15.146771, 15.998097, 20.254484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.271100, 16.183586, 20.081764>,  <14.772226, 16.586155, 20.192011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.271100, 16.183586, 20.081764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.573954, 15.996547, 20.264236>,  <14.755666, 15.884323, 20.373720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.573954, 15.996547, 20.264236>,  <14.271100, 16.183586, 20.081764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.573954, 15.996547, 20.264236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649455, -0.463544, 0.602773,
		-0.070395, -0.752649, -0.654648,
		0.757134, -0.467597, 0.456181,
		14.801094, 15.856268, 20.401091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.949728, 15.544928, 20.233410>,  <14.271100, 16.183586, 20.081764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.949728, 15.544928, 20.233410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.263835, 15.568579, 20.479940>,  <14.452299, 15.582769, 20.627859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.263835, 15.568579, 20.479940>,  <13.949728, 15.544928, 20.233410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.263835, 15.568579, 20.479940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564998, -0.338717, 0.752362,
		0.253247, -0.939029, -0.232575,
		0.785266, 0.059128, 0.616329,
		14.499414, 15.586317, 20.664839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.911263, 14.848270, 20.094690>,  <13.949728, 15.544928, 20.233410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.911263, 14.848270, 20.094690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.601710, 14.638520, 19.952625>,  <13.415979, 14.512671, 19.867386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.601710, 14.638520, 19.952625>,  <13.911263, 14.848270, 20.094690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.601710, 14.638520, 19.952625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295489, 0.197060, -0.934801,
		0.560175, -0.828371, 0.002446,
		-0.773880, -0.524375, -0.355163,
		13.369546, 14.481208, 19.846077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.184724, 14.519139, 19.498686>,  <13.911263, 14.848270, 20.094690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.184724, 14.519139, 19.498686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.785602, 14.520178, 19.472227>,  <13.546128, 14.520801, 19.456352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.785602, 14.520178, 19.472227>,  <14.184724, 14.519139, 19.498686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.785602, 14.520178, 19.472227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065813, 0.146186, -0.987066,
		0.007106, -0.989254, -0.146036,
		-0.997807, 0.002597, -0.066145,
		13.486259, 14.520956, 19.452383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.953447, 13.992862, 19.032831>,  <14.184724, 14.519139, 19.498686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.953447, 13.992862, 19.032831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.667263, 14.272300, 19.036469>,  <13.495553, 14.439962, 19.038651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.667263, 14.272300, 19.036469>,  <13.953447, 13.992862, 19.032831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.667263, 14.272300, 19.036469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003544, 0.009386, -0.999950,
		-0.698645, -0.715456, -0.004239,
		-0.715460, 0.698595, 0.009093,
		13.452625, 14.481878, 19.039196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.541282, 13.794896, 18.414732>,  <13.953447, 13.992862, 19.032831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.541282, 13.794896, 18.414732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.421449, 14.163281, 18.514395>,  <13.349549, 14.384313, 18.574192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.421449, 14.163281, 18.514395>,  <13.541282, 13.794896, 18.414732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.421449, 14.163281, 18.514395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107188, 0.227009, -0.967976,
		-0.948030, -0.316695, 0.030709,
		-0.299582, 0.920962, 0.249157,
		13.331574, 14.439570, 18.589142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.820792, 13.942161, 18.117023>,  <13.541282, 13.794896, 18.414732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.820792, 13.942161, 18.117023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.017993, 14.285558, 18.173508>,  <13.136313, 14.491596, 18.207399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.017993, 14.285558, 18.173508>,  <12.820792, 13.942161, 18.117023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.017993, 14.285558, 18.173508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192870, 0.266110, -0.944450,
		-0.848381, 0.438380, 0.296770,
		0.493002, 0.858492, 0.141212,
		13.165894, 14.543105, 18.215872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.416575, 14.310050, 17.836672>,  <12.820792, 13.942161, 18.117023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.416575, 14.310050, 17.836672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.757062, 14.519975, 17.836006>,  <12.961354, 14.645929, 17.835606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.757062, 14.519975, 17.836006>,  <12.416575, 14.310050, 17.836672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.757062, 14.519975, 17.836006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109848, 0.175060, -0.978411,
		-0.513190, 0.833022, 0.206664,
		0.851216, 0.524812, -0.001666,
		13.012427, 14.677419, 17.835506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.215075, 14.781774, 17.457853>,  <12.416575, 14.310050, 17.836672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.215075, 14.781774, 17.457853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.614275, 14.804713, 17.447227>,  <12.853795, 14.818477, 17.440851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.614275, 14.804713, 17.447227>,  <12.215075, 14.781774, 17.457853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.614275, 14.804713, 17.447227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038622, 0.220647, -0.974589,
		-0.050030, 0.973666, 0.222421,
		0.998001, 0.057349, -0.026566,
		12.913675, 14.821918, 17.439259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.349015, 15.387467, 17.059347>,  <12.215075, 14.781774, 17.457853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.349015, 15.387467, 17.059347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.689698, 15.178066, 17.050055>,  <12.894108, 15.052425, 17.044479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.689698, 15.178066, 17.050055>,  <12.349015, 15.387467, 17.059347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.689698, 15.178066, 17.050055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035634, 0.102092, -0.994137,
		0.522805, 0.845886, 0.105607,
		0.851707, -0.523503, -0.023232,
		12.945210, 15.021015, 17.043085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.862490, 15.798064, 16.591345>,  <12.349015, 15.387467, 17.059347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.862490, 15.798064, 16.591345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.990164, 15.421404, 16.634079>,  <13.066769, 15.195408, 16.659719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.990164, 15.421404, 16.634079>,  <12.862490, 15.798064, 16.591345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.990164, 15.421404, 16.634079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126475, -0.069400, -0.989539,
		0.939215, 0.329360, 0.096944,
		0.319186, -0.941651, 0.106837,
		13.085919, 15.138908, 16.666130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.492443, 15.696595, 16.138824>,  <12.862490, 15.798064, 16.591345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.492443, 15.696595, 16.138824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.355994, 15.325773, 16.201059>,  <13.274125, 15.103280, 16.238400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.355994, 15.325773, 16.201059>,  <13.492443, 15.696595, 16.138824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.355994, 15.325773, 16.201059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158337, -0.219814, -0.962606,
		0.926588, -0.303731, 0.221771,
		-0.341122, -0.927054, 0.155585,
		13.253657, 15.047657, 16.247734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.765491, 15.294278, 15.541186>,  <13.492443, 15.696595, 16.138824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.765491, 15.294278, 15.541186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.478665, 15.059301, 15.691242>,  <13.306570, 14.918316, 15.781276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.478665, 15.059301, 15.691242>,  <13.765491, 15.294278, 15.541186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.478665, 15.059301, 15.691242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071858, -0.473042, -0.878105,
		0.693292, -0.656615, 0.296990,
		-0.717065, -0.587442, 0.375139,
		13.263546, 14.883069, 15.803784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.063678, 14.509938, 15.493240>,  <13.765491, 15.294278, 15.541186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.063678, 14.509938, 15.493240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.664282, 14.512019, 15.515118>,  <13.424644, 14.513268, 15.528244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.664282, 14.512019, 15.515118>,  <14.063678, 14.509938, 15.493240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.664282, 14.512019, 15.515118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047653, -0.577457, -0.815030,
		0.027342, -0.816405, 0.576832,
		-0.998489, 0.005203, 0.054693,
		13.364735, 14.513580, 15.531526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.883908, 13.874027, 15.269840>,  <14.063678, 14.509938, 15.493240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.883908, 13.874027, 15.269840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.551301, 14.092139, 15.227415>,  <13.351737, 14.223006, 15.201961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.551301, 14.092139, 15.227415>,  <13.883908, 13.874027, 15.269840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.551301, 14.092139, 15.227415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162143, -0.420861, -0.892516,
		-0.531309, -0.724945, 0.438367,
		-0.831517, 0.545280, -0.106063,
		13.301846, 14.255723, 15.195597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.316315, 13.477835, 15.185715>,  <13.883908, 13.874027, 15.269840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.316315, 13.477835, 15.185715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.310250, 13.839634, 15.015232>,  <13.306612, 14.056714, 14.912943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.310250, 13.839634, 15.015232>,  <13.316315, 13.477835, 15.185715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.310250, 13.839634, 15.015232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100829, -0.422699, -0.900644,
		-0.994788, -0.056628, -0.084791,
		-0.015161, 0.904499, -0.426206,
		13.305702, 14.110984, 14.887370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.867333, 13.509541, 14.673693>,  <13.316315, 13.477835, 15.185715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.867333, 13.509541, 14.673693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.114701, 13.810493, 14.582933>,  <13.263122, 13.991064, 14.528478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.114701, 13.810493, 14.582933>,  <12.867333, 13.509541, 14.673693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.114701, 13.810493, 14.582933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041689, -0.319732, -0.946590,
		-0.784742, 0.575930, -0.229094,
		0.618419, 0.752380, -0.226898,
		13.300227, 14.036206, 14.514864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.565521, 13.240846, 14.525600>,  <12.867333, 13.509541, 14.673693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.565521, 13.240846, 14.525600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326149, 12.928455, 14.597105>,  <13.182526, 12.741021, 14.640008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326149, 12.928455, 14.597105>,  <13.565521, 13.240846, 14.525600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.326149, 12.928455, 14.597105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580737, -0.576552, -0.574745,
		0.551928, -0.240131, 0.798569,
		-0.598431, -0.780977, 0.178762,
		13.146620, 12.694162, 14.650734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.983933, 12.691947, 14.458274>,  <13.565521, 13.240846, 14.525600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.983933, 12.691947, 14.458274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.622533, 12.527011, 14.411520>,  <13.405693, 12.428049, 14.383468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.622533, 12.527011, 14.411520>,  <13.983933, 12.691947, 14.458274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.622533, 12.527011, 14.411520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406236, -0.736999, -0.540190,
		0.136599, -0.535545, 0.833386,
		-0.903500, -0.412341, -0.116884,
		13.351482, 12.403309, 14.376454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.928057, 12.314222, 13.788849>,  <13.983933, 12.691947, 14.458274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.928057, 12.314222, 13.788849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.327650, 12.314859, 13.806872>,  <14.567406, 12.315242, 13.817686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.327650, 12.314859, 13.806872>,  <13.928057, 12.314222, 13.788849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.327650, 12.314859, 13.806872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031692, -0.686027, 0.726885,
		0.032070, -0.727574, -0.685279,
		0.998983, 0.001593, 0.045059,
		14.627345, 12.315337, 13.820390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.253950, 11.569719, 13.721580>,  <13.928057, 12.314222, 13.788849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.253950, 11.569719, 13.721580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507491, 11.786316, 13.942493>,  <14.659616, 11.916274, 14.075042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507491, 11.786316, 13.942493>,  <14.253950, 11.569719, 13.721580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507491, 11.786316, 13.942493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052209, -0.682467, 0.729050,
		0.771689, -0.490945, -0.404313,
		0.633853, 0.541491, 0.552284,
		14.697647, 11.948763, 14.108178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.505690, 11.140754, 14.150029>,  <14.253950, 11.569719, 13.721580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.505690, 11.140754, 14.150029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.646407, 11.460692, 14.344549>,  <14.730838, 11.652656, 14.461262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.646407, 11.460692, 14.344549>,  <14.505690, 11.140754, 14.150029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.646407, 11.460692, 14.344549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019138, -0.525546, 0.850550,
		0.935882, -0.289911, -0.200191,
		0.351793, 0.799846, 0.486300,
		14.751945, 11.700646, 14.490439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.071080, 10.804131, 14.409384>,  <14.505690, 11.140754, 14.150029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.071080, 10.804131, 14.409384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.989247, 11.140167, 14.610337>,  <14.940147, 11.341789, 14.730909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.989247, 11.140167, 14.610337>,  <15.071080, 10.804131, 14.409384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.989247, 11.140167, 14.610337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220500, -0.460496, 0.859839,
		0.953691, 0.286684, -0.091031,
		-0.204582, 0.840093, 0.502385,
		14.927873, 11.392195, 14.761053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.674050, 10.999368, 14.939430>,  <15.071080, 10.804131, 14.409384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.674050, 10.999368, 14.939430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338593, 11.183189, 15.056381>,  <15.137318, 11.293483, 15.126552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338593, 11.183189, 15.056381>,  <15.674050, 10.999368, 14.939430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338593, 11.183189, 15.056381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068163, -0.444021, 0.893420,
		0.540398, 0.769191, 0.341051,
		-0.838644, 0.459555, 0.292379,
		15.086999, 11.321056, 15.144094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.812437, 11.167320, 15.572315>,  <15.674050, 10.999368, 14.939430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.812437, 11.167320, 15.572315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.413875, 11.201084, 15.569510>,  <15.174737, 11.221343, 15.567828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.413875, 11.201084, 15.569510>,  <15.812437, 11.167320, 15.572315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.413875, 11.201084, 15.569510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032855, -0.308877, 0.950534,
		0.078069, 0.947349, 0.310540,
		-0.996406, 0.084410, -0.007011,
		15.114953, 11.226407, 15.567408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.756192, 11.500658, 16.145002>,  <15.812437, 11.167320, 15.572315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.756192, 11.500658, 16.145002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.396256, 11.351862, 16.053865>,  <15.180295, 11.262585, 15.999183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.396256, 11.351862, 16.053865>,  <15.756192, 11.500658, 16.145002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.396256, 11.351862, 16.053865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080006, -0.372718, 0.924489,
		-0.428822, 0.850121, 0.305625,
		-0.899839, -0.371990, -0.227844,
		15.126305, 11.240265, 15.985512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.315726, 11.656880, 16.728138>,  <15.756192, 11.500658, 16.145002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.315726, 11.656880, 16.728138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.152154, 11.344540, 16.539227>,  <15.054010, 11.157135, 16.425880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.152154, 11.344540, 16.539227>,  <15.315726, 11.656880, 16.728138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.152154, 11.344540, 16.539227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036986, -0.502921, 0.863541,
		-0.911816, 0.370596, 0.176779,
		-0.408931, -0.780852, -0.472278,
		15.029475, 11.110284, 16.397543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.728376, 11.524286, 17.139217>,  <15.315726, 11.656880, 16.728138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.728376, 11.524286, 17.139217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.812179, 11.190475, 16.935385>,  <14.862460, 10.990189, 16.813086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.812179, 11.190475, 16.935385>,  <14.728376, 11.524286, 17.139217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.812179, 11.190475, 16.935385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065204, -0.531909, 0.844287,
		-0.975631, -0.143656, -0.165853,
		0.209506, -0.834527, -0.509580,
		14.875031, 10.940117, 16.782511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.232531, 11.033861, 17.370480>,  <14.728376, 11.524286, 17.139217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.232531, 11.033861, 17.370480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.526608, 10.813446, 17.212566>,  <14.703053, 10.681197, 17.117819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.526608, 10.813446, 17.212566>,  <14.232531, 11.033861, 17.370480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.526608, 10.813446, 17.212566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068573, -0.518948, 0.852051,
		-0.674383, -0.653492, -0.343740,
		0.735191, -0.551037, -0.394782,
		14.747165, 10.648135, 17.094131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.045040, 10.303660, 17.486931>,  <14.232531, 11.033861, 17.370480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.045040, 10.303660, 17.486931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.440963, 10.305594, 17.429998>,  <14.678516, 10.306755, 17.395840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.440963, 10.305594, 17.429998>,  <14.045040, 10.303660, 17.486931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.440963, 10.305594, 17.429998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117741, -0.590008, 0.798766,
		-0.080112, -0.807383, -0.584564,
		0.989808, 0.004837, -0.142329,
		14.737906, 10.307045, 17.387300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.263114, 9.549726, 17.577517>,  <14.045040, 10.303660, 17.486931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.263114, 9.549726, 17.577517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.589104, 9.779543, 17.607767>,  <14.784698, 9.917433, 17.625917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.589104, 9.779543, 17.607767>,  <14.263114, 9.549726, 17.577517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.589104, 9.779543, 17.607767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350307, -0.592396, 0.725501,
		0.461631, -0.564772, -0.684054,
		0.814973, 0.574543, 0.075625,
		14.833595, 9.951906, 17.630455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.823357, 9.120755, 17.939283>,  <14.263114, 9.549726, 17.577517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.823357, 9.120755, 17.939283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.970949, 9.490823, 17.974873>,  <15.059505, 9.712863, 17.996225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.970949, 9.490823, 17.974873>,  <14.823357, 9.120755, 17.939283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.970949, 9.490823, 17.974873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359259, -0.230257, 0.904387,
		0.857197, -0.301737, -0.417335,
		0.368981, 0.925169, 0.088974,
		15.081643, 9.768373, 18.001564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.469894, 8.997897, 18.255442>,  <14.823357, 9.120755, 17.939283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.469894, 8.997897, 18.255442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.398021, 9.381127, 18.344707>,  <15.354897, 9.611066, 18.398268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.398021, 9.381127, 18.344707>,  <15.469894, 8.997897, 18.255442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.398021, 9.381127, 18.344707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350531, -0.149609, 0.924524,
		0.919153, 0.244349, -0.308953,
		-0.179685, 0.958077, 0.223166,
		15.344115, 9.668550, 18.411657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.060249, 9.137299, 18.603891>,  <15.469894, 8.997897, 18.255442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.060249, 9.137299, 18.603891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.778576, 9.404279, 18.700752>,  <15.609571, 9.564466, 18.758869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.778576, 9.404279, 18.700752>,  <16.060249, 9.137299, 18.603891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.778576, 9.404279, 18.700752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054646, -0.289090, 0.955741,
		0.707912, 0.686249, 0.167099,
		-0.704183, 0.667449, 0.242152,
		15.567321, 9.604513, 18.773397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.335249, 9.529192, 19.059301>,  <16.060249, 9.137299, 18.603891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.335249, 9.529192, 19.059301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.943016, 9.572404, 19.124775>,  <15.707677, 9.598331, 19.164059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.943016, 9.572404, 19.124775>,  <16.335249, 9.529192, 19.059301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.943016, 9.572404, 19.124775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140795, -0.193227, 0.971000,
		0.136525, 0.975189, 0.174264,
		-0.980580, 0.108030, 0.163682,
		15.648842, 9.604813, 19.173880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.182835, 10.113907, 19.741802>,  <16.335249, 9.529192, 19.059301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.182835, 10.113907, 19.741802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.848399, 9.903376, 19.679916>,  <15.647738, 9.777057, 19.642784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.848399, 9.903376, 19.679916>,  <16.182835, 10.113907, 19.741802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.848399, 9.903376, 19.679916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051025, -0.206191, 0.977180,
		-0.546218, 0.824903, 0.145538,
		-0.836088, -0.526327, -0.154716,
		15.597573, 9.745478, 19.633501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.804535, 10.367414, 20.283098>,  <16.182835, 10.113907, 19.741802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.804535, 10.367414, 20.283098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.612814, 10.029662, 20.187357>,  <15.497781, 9.827011, 20.129911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.612814, 10.029662, 20.187357>,  <15.804535, 10.367414, 20.283098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.612814, 10.029662, 20.187357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163737, -0.181903, 0.969589,
		-0.862241, 0.503918, -0.051070,
		-0.479303, -0.844381, -0.239354,
		15.469023, 9.776348, 20.115551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246526, 10.358519, 20.763056>,  <15.804535, 10.367414, 20.283098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.246526, 10.358519, 20.763056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.306748, 9.990638, 20.618015>,  <15.342882, 9.769909, 20.530991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.306748, 9.990638, 20.618015>,  <15.246526, 10.358519, 20.763056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.306748, 9.990638, 20.618015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068082, -0.375556, 0.924296,
		-0.986254, -0.114473, -0.119158,
		0.150557, -0.919703, -0.362600,
		15.351915, 9.714726, 20.509235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.740030, 9.884739, 21.092772>,  <15.246526, 10.358519, 20.763056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.740030, 9.884739, 21.092772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.034058, 9.637166, 20.982069>,  <15.210474, 9.488622, 20.915648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.034058, 9.637166, 20.982069>,  <14.740030, 9.884739, 21.092772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.034058, 9.637166, 20.982069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156767, -0.552299, 0.818774,
		-0.659620, -0.558468, -0.503006,
		0.735069, -0.618934, -0.276758,
		15.254579, 9.451486, 20.899042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.388293, 9.238172, 21.275465>,  <14.740030, 9.884739, 21.092772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.388293, 9.238172, 21.275465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.778290, 9.156960, 21.239307>,  <15.012288, 9.108234, 21.217613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.778290, 9.156960, 21.239307>,  <14.388293, 9.238172, 21.275465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.778290, 9.156960, 21.239307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004065, -0.422968, 0.906136,
		-0.222203, -0.883108, -0.413216,
		0.974992, -0.203025, -0.090395,
		15.070787, 9.096052, 21.212189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.536051, 8.474736, 21.356342>,  <14.388293, 9.238172, 21.275465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.536051, 8.474736, 21.356342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.855970, 8.685917, 21.470596>,  <15.047922, 8.812626, 21.539148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.855970, 8.685917, 21.470596>,  <14.536051, 8.474736, 21.356342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.855970, 8.685917, 21.470596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034993, -0.434031, 0.900218,
		0.599248, -0.729988, -0.328663,
		0.799798, 0.527953, 0.285637,
		15.095910, 8.844303, 21.556288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.980351, 8.014284, 21.561832>,  <14.536051, 8.474736, 21.356342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.980351, 8.014284, 21.561832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.087175, 8.363701, 21.724609>,  <15.151270, 8.573351, 21.822275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.087175, 8.363701, 21.724609>,  <14.980351, 8.014284, 21.561832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.087175, 8.363701, 21.724609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007874, -0.420289, 0.907356,
		0.963648, -0.245523, -0.105363,
		0.267060, 0.873542, 0.406944,
		15.167294, 8.625764, 21.846693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.152006, 7.823152, 22.152004>,  <14.980351, 8.014284, 21.561832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.152006, 7.823152, 22.152004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.184690, 8.208264, 22.255058>,  <15.204301, 8.439332, 22.316891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.184690, 8.208264, 22.255058>,  <15.152006, 7.823152, 22.152004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.184690, 8.208264, 22.255058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028939, -0.260684, 0.964990,
		0.996236, -0.071393, -0.049163,
		0.081710, 0.962781, 0.257637,
		15.209204, 8.497099, 22.332350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.661983, 7.863307, 22.580772>,  <15.152006, 7.823152, 22.152004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.661983, 7.863307, 22.580772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.463343, 8.198274, 22.672094>,  <15.344159, 8.399254, 22.726887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.463343, 8.198274, 22.672094>,  <15.661983, 7.863307, 22.580772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.463343, 8.198274, 22.672094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230790, -0.126168, 0.964789,
		0.836735, 0.531804, -0.130613,
		-0.496599, 0.837416, 0.228304,
		15.314363, 8.449498, 22.740585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
