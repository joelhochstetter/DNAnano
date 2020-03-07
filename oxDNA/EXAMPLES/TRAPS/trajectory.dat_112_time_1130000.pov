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
	<35.797745, 53.389385, 50.094288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830540, 53.439445, 49.698792>,  <35.850216, 53.469482, 49.461494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830540, 53.439445, 49.698792>,  <35.797745, 53.389385, 50.094288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830540, 53.439445, 49.698792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974901, 0.195978, 0.105646,
		0.206994, -0.972589, -0.105942,
		0.081988, 0.125151, -0.988744,
		35.855137, 53.476990, 49.402168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239269, 52.909027, 49.781933>,  <35.797745, 53.389385, 50.094288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239269, 52.909027, 49.781933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225979, 53.231644, 49.545837>,  <36.218006, 53.425213, 49.404179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225979, 53.231644, 49.545837>,  <36.239269, 52.909027, 49.781933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225979, 53.231644, 49.545837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992774, 0.094771, 0.073614,
		0.115310, -0.583530, -0.803864,
		-0.033227, 0.806543, -0.590241,
		36.216011, 53.473606, 49.368767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560982, 52.818310, 49.098042>,  <36.239269, 52.909027, 49.781933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560982, 52.818310, 49.098042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592625, 53.191422, 49.238708>,  <36.611610, 53.415287, 49.323109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592625, 53.191422, 49.238708>,  <36.560982, 52.818310, 49.098042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592625, 53.191422, 49.238708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990034, -0.032281, -0.137082,
		-0.116515, 0.359003, -0.926035,
		0.079107, 0.932778, 0.351664,
		36.616356, 53.471256, 49.344208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150604, 53.030071, 48.556778>,  <36.560982, 52.818310, 49.098042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150604, 53.030071, 48.556778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115452, 53.257385, 48.884026>,  <37.094360, 53.393776, 49.080376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115452, 53.257385, 48.884026>,  <37.150604, 53.030071, 48.556778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115452, 53.257385, 48.884026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965910, -0.152149, 0.209447,
		0.243503, 0.808641, -0.535543,
		-0.087885, 0.568288, 0.818123,
		37.089085, 53.427872, 49.129463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613232, 53.582817, 48.558857>,  <37.150604, 53.030071, 48.556778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613232, 53.582817, 48.558857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536362, 53.442009, 48.925278>,  <37.490238, 53.357525, 49.145130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536362, 53.442009, 48.925278>,  <37.613232, 53.582817, 48.558857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536362, 53.442009, 48.925278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969959, -0.210009, 0.122786,
		0.149156, 0.912129, 0.381802,
		-0.192178, -0.352018, 0.916052,
		37.478706, 53.336403, 49.200092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939671, 53.974728, 49.022804>,  <37.613232, 53.582817, 48.558857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939671, 53.974728, 49.022804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900597, 53.582462, 49.090630>,  <37.877151, 53.347103, 49.131325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900597, 53.582462, 49.090630>,  <37.939671, 53.974728, 49.022804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900597, 53.582462, 49.090630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990116, -0.112991, -0.083078,
		0.100631, 0.159772, 0.982011,
		-0.097685, -0.980666, 0.169563,
		37.871292, 53.288261, 49.141499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069042, 54.568844, 49.337524>,  <37.939671, 53.974728, 49.022804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069042, 54.568844, 49.337524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433430, 54.543617, 49.174477>,  <38.652061, 54.528481, 49.076649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433430, 54.543617, 49.174477>,  <38.069042, 54.568844, 49.337524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433430, 54.543617, 49.174477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298602, 0.782595, 0.546243,
		0.284548, -0.619327, 0.731755,
		0.910972, -0.063071, -0.407618,
		38.706722, 54.524696, 49.052193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646660, 54.784695, 49.821945>,  <38.069042, 54.568844, 49.337524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646660, 54.784695, 49.821945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791676, 54.824852, 49.451328>,  <38.878685, 54.848946, 49.228958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791676, 54.824852, 49.451328>,  <38.646660, 54.784695, 49.821945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791676, 54.824852, 49.451328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454898, 0.848645, 0.269944,
		0.813408, -0.519349, 0.262000,
		0.362540, 0.100391, -0.926545,
		38.900436, 54.854969, 49.173363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412300, 54.882069, 49.650433>,  <38.646660, 54.784695, 49.821945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412300, 54.882069, 49.650433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164570, 55.079453, 49.406158>,  <39.015930, 55.197884, 49.259594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164570, 55.079453, 49.406158>,  <39.412300, 54.882069, 49.650433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164570, 55.079453, 49.406158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407842, 0.866831, 0.286824,
		0.670894, -0.071424, -0.738105,
		-0.619327, 0.493459, -0.610682,
		38.978771, 55.227489, 49.222954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815422, 55.063202, 49.116417>,  <39.412300, 54.882069, 49.650433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815422, 55.063202, 49.116417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516354, 55.310966, 49.212173>,  <39.336910, 55.459625, 49.269627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516354, 55.310966, 49.212173>,  <39.815422, 55.063202, 49.116417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516354, 55.310966, 49.212173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663534, 0.682441, 0.306589,
		0.026534, 0.388075, -0.921246,
		-0.747675, 0.619413, 0.239393,
		39.292049, 55.496792, 49.283993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413464, 55.505512, 49.044132>,  <39.815422, 55.063202, 49.116417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413464, 55.505512, 49.044132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299442, 55.882843, 48.976166>,  <40.231030, 56.109241, 48.935387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299442, 55.882843, 48.976166>,  <40.413464, 55.505512, 49.044132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299442, 55.882843, 48.976166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925740, 0.316905, 0.206340,
		0.248495, -0.098484, -0.963614,
		-0.285053, 0.943330, -0.169920,
		40.213928, 56.165844, 48.925190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866116, 55.771618, 48.493698>,  <40.413464, 55.505512, 49.044132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866116, 55.771618, 48.493698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701595, 56.013248, 48.766731>,  <40.602882, 56.158226, 48.930553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701595, 56.013248, 48.766731>,  <40.866116, 55.771618, 48.493698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701595, 56.013248, 48.766731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908393, 0.333426, 0.252288,
		-0.075191, 0.723823, -0.685877,
		-0.411301, 0.604076, 0.682586,
		40.578205, 56.194469, 48.971508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110035, 56.453827, 48.271004>,  <40.866116, 55.771618, 48.493698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110035, 56.453827, 48.271004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021873, 56.410416, 48.658745>,  <40.968975, 56.384369, 48.891388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021873, 56.410416, 48.658745>,  <41.110035, 56.453827, 48.271004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021873, 56.410416, 48.658745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929917, 0.276575, 0.242407,
		-0.294407, 0.954844, 0.039965,
		-0.220408, -0.108530, 0.969351,
		40.955750, 56.377857, 48.949551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170246, 57.102222, 48.823978>,  <41.110035, 56.453827, 48.271004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170246, 57.102222, 48.823978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259258, 56.747665, 48.986359>,  <41.312664, 56.534931, 49.083786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259258, 56.747665, 48.986359>,  <41.170246, 57.102222, 48.823978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259258, 56.747665, 48.986359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919219, 0.329495, 0.215568,
		-0.324835, 0.325185, 0.888108,
		0.222527, -0.886390, 0.405948,
		41.326015, 56.481747, 49.108143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335140, 57.180168, 49.559921>,  <41.170246, 57.102222, 48.823978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335140, 57.180168, 49.559921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542862, 56.869156, 49.418072>,  <41.667496, 56.682549, 49.332962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542862, 56.869156, 49.418072>,  <41.335140, 57.180168, 49.559921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542862, 56.869156, 49.418072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854427, 0.480428, 0.197847,
		0.016538, -0.405745, 0.913837,
		0.519308, -0.777535, -0.354624,
		41.698654, 56.635895, 49.311684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886990, 57.219639, 49.896080>,  <41.335140, 57.180168, 49.559921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886990, 57.219639, 49.896080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049625, 56.960281, 49.638626>,  <42.147209, 56.804668, 49.484154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049625, 56.960281, 49.638626>,  <41.886990, 57.219639, 49.896080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049625, 56.960281, 49.638626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904909, 0.382808, 0.186005,
		0.125784, -0.658060, 0.742385,
		0.406593, -0.648395, -0.643635,
		42.171604, 56.765762, 49.445534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291664, 56.628658, 50.312408>,  <41.886990, 57.219639, 49.896080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291664, 56.628658, 50.312408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416744, 56.758678, 49.955406>,  <42.491791, 56.836689, 49.741203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416744, 56.758678, 49.955406>,  <42.291664, 56.628658, 50.312408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416744, 56.758678, 49.955406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793894, 0.426436, 0.433456,
		0.521491, -0.844094, -0.124710,
		0.312697, 0.325050, -0.892504,
		42.510551, 56.856194, 49.687656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027203, 56.414814, 50.191593>,  <42.291664, 56.628658, 50.312408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027203, 56.414814, 50.191593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947445, 56.774376, 50.035534>,  <42.899590, 56.990112, 49.941898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947445, 56.774376, 50.035534>,  <43.027203, 56.414814, 50.191593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947445, 56.774376, 50.035534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886266, 0.335288, 0.319554,
		0.418059, -0.282056, -0.863522,
		-0.199396, 0.898903, -0.390147,
		42.887627, 57.044048, 49.918491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.366371, 55.750698, 50.285397>,  <43.027203, 56.414814, 50.191593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.366371, 55.750698, 50.285397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.674412, 55.664276, 50.045311>,  <43.859238, 55.612423, 49.901260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.674412, 55.664276, 50.045311>,  <43.366371, 55.750698, 50.285397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.674412, 55.664276, 50.045311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585177, 0.613881, 0.529828,
		0.253989, -0.759256, 0.599183,
		0.770102, -0.216058, -0.600218,
		43.905441, 55.599461, 49.865246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978142, 55.513996, 50.738487>,  <43.366371, 55.750698, 50.285397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978142, 55.513996, 50.738487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090977, 55.678265, 50.391666>,  <44.158680, 55.776825, 50.183575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090977, 55.678265, 50.391666>,  <43.978142, 55.513996, 50.738487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090977, 55.678265, 50.391666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556800, 0.665892, 0.496549,
		0.781281, -0.622844, -0.040822,
		0.282090, 0.410674, -0.867048,
		44.175602, 55.801468, 50.131554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115234, 54.944820, 50.303036>,  <43.978142, 55.513996, 50.738487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115234, 54.944820, 50.303036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400715, 55.224808, 50.292675>,  <44.572002, 55.392799, 50.286461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400715, 55.224808, 50.292675>,  <44.115234, 54.944820, 50.303036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400715, 55.224808, 50.292675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582004, -0.572041, 0.577962,
		0.389739, -0.427568, -0.815652,
		0.713705, 0.699967, -0.025899,
		44.614826, 55.434799, 50.284904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842670, 54.805943, 49.962547>,  <44.115234, 54.944820, 50.303036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842670, 54.805943, 49.962547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.823357, 55.045387, 50.282379>,  <44.811768, 55.189056, 50.474277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.823357, 55.045387, 50.282379>,  <44.842670, 54.805943, 49.962547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823357, 55.045387, 50.282379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487978, -0.684341, 0.541807,
		0.871519, 0.416339, -0.259067,
		-0.048285, 0.598614, 0.799581,
		44.808872, 55.224972, 50.522255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.609238, 54.997879, 50.014072>,  <44.842670, 54.805943, 49.962547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.609238, 54.997879, 50.014072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.953545, 54.992718, 50.217606>,  <46.160130, 54.989620, 50.339725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.953545, 54.992718, 50.217606>,  <45.609238, 54.997879, 50.014072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.953545, 54.992718, 50.217606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003482, -0.999506, -0.031242,
		0.508987, 0.028664, -0.860297,
		0.860767, -0.012907, 0.508835,
		46.211773, 54.988846, 50.370255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978374, 54.485836, 49.715153>,  <45.609238, 54.997879, 50.014072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978374, 54.485836, 49.715153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127163, 54.554222, 50.080101>,  <46.216434, 54.595253, 50.299068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127163, 54.554222, 50.080101>,  <45.978374, 54.485836, 49.715153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.127163, 54.554222, 50.080101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047913, -0.985119, 0.165062,
		0.927009, -0.017683, -0.374623,
		0.371967, 0.170963, 0.912366,
		46.238754, 54.605511, 50.353809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.555984, 54.034325, 49.735432>,  <45.978374, 54.485836, 49.715153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.555984, 54.034325, 49.735432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.438816, 54.107479, 50.110825>,  <46.368515, 54.151371, 50.336060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.438816, 54.107479, 50.110825>,  <46.555984, 54.034325, 49.735432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.438816, 54.107479, 50.110825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175754, -0.954512, 0.240869,
		0.939845, 0.235498, 0.247452,
		-0.292920, 0.182888, 0.938483,
		46.350941, 54.162346, 50.392368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.003311, 53.896832, 50.481316>,  <46.555984, 54.034325, 49.735432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.003311, 53.896832, 50.481316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609077, 53.830566, 50.467564>,  <46.372536, 53.790810, 50.459312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609077, 53.830566, 50.467564>,  <47.003311, 53.896832, 50.481316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609077, 53.830566, 50.467564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157051, -0.971367, 0.178270,
		-0.062926, 0.170300, 0.983381,
		-0.985583, -0.165659, -0.034378,
		46.313404, 53.780869, 50.457249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.407818, 53.424774, 50.802727>,  <47.003311, 53.896832, 50.481316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.407818, 53.424774, 50.802727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.603554, 53.561749, 51.123547>,  <46.720997, 53.643932, 51.316040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.603554, 53.561749, 51.123547>,  <46.407818, 53.424774, 50.802727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.603554, 53.561749, 51.123547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302150, 0.929293, -0.212414,
		-0.818078, -0.138397, 0.558206,
		0.489340, 0.342433, 0.802051,
		46.750355, 53.664478, 51.364162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.987698, 53.886951, 51.407024>,  <46.407818, 53.424774, 50.802727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.987698, 53.886951, 51.407024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364765, 53.950668, 51.289726>,  <46.591007, 53.988899, 51.219349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364765, 53.950668, 51.289726>,  <45.987698, 53.886951, 51.407024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.364765, 53.950668, 51.289726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267194, 0.886728, -0.377254,
		0.199937, 0.433981, 0.878456,
		0.942673, 0.159291, -0.293247,
		46.647568, 53.998455, 51.201752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.236290, 54.500134, 51.646908>,  <45.987698, 53.886951, 51.407024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.236290, 54.500134, 51.646908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.390747, 54.430458, 51.284569>,  <46.483421, 54.388653, 51.067165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.390747, 54.430458, 51.284569>,  <46.236290, 54.500134, 51.646908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.390747, 54.430458, 51.284569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160792, 0.954266, -0.252037,
		0.908319, 0.242974, 0.340472,
		0.386139, -0.174184, -0.905846,
		46.506588, 54.378204, 51.012814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.856869, 54.871231, 51.483189>,  <46.236290, 54.500134, 51.646908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.856869, 54.871231, 51.483189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.669193, 54.793388, 51.138634>,  <46.556587, 54.746681, 50.931900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.669193, 54.793388, 51.138634>,  <46.856869, 54.871231, 51.483189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.669193, 54.793388, 51.138634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134597, 0.979779, -0.148040,
		0.872779, 0.046482, -0.485897,
		-0.469191, -0.194606, -0.861388,
		46.528435, 54.735008, 50.880219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.511883, 54.849499, 51.815544>,  <46.856869, 54.871231, 51.483189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.511883, 54.849499, 51.815544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.756462, 54.596504, 52.005745>,  <47.903210, 54.444706, 52.119865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.756462, 54.596504, 52.005745>,  <47.511883, 54.849499, 51.815544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.756462, 54.596504, 52.005745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791001, 0.472401, -0.388785,
		0.021275, 0.613840, 0.789144,
		0.611444, -0.632485, 0.475498,
		47.939896, 54.406757, 52.148396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.078415, 55.252258, 52.177792>,  <47.511883, 54.849499, 51.815544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.078415, 55.252258, 52.177792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.166195, 54.885948, 52.043213>,  <48.218861, 54.666161, 51.962467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.166195, 54.885948, 52.043213>,  <48.078415, 55.252258, 52.177792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.166195, 54.885948, 52.043213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727671, 0.383344, -0.568808,
		0.649876, -0.119998, 0.750508,
		0.219447, -0.915777, -0.336445,
		48.232029, 54.611214, 51.942280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.758167, 55.132370, 52.400906>,  <48.078415, 55.252258, 52.177792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.758167, 55.132370, 52.400906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.655453, 54.957874, 52.055943>,  <48.593822, 54.853176, 51.848965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.655453, 54.957874, 52.055943>,  <48.758167, 55.132370, 52.400906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.655453, 54.957874, 52.055943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720705, 0.508098, -0.471615,
		0.643927, -0.742649, 0.183928,
		-0.256791, -0.436244, -0.862409,
		48.578415, 54.827000, 51.797218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.331795, 54.777428, 52.110218>,  <48.758167, 55.132370, 52.400906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.331795, 54.777428, 52.110218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.092384, 54.899273, 51.813847>,  <48.948738, 54.972382, 51.636024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.092384, 54.899273, 51.813847>,  <49.331795, 54.777428, 52.110218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.092384, 54.899273, 51.813847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777428, 0.444061, -0.445440,
		0.193330, -0.842626, -0.502598,
		-0.598523, 0.304617, -0.740931,
		48.912827, 54.990658, 51.591568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.554569, 54.568375, 51.407295>,  <49.331795, 54.777428, 52.110218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.554569, 54.568375, 51.407295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.389084, 54.932434, 51.416077>,  <49.289795, 55.150867, 51.421345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.389084, 54.932434, 51.416077>,  <49.554569, 54.568375, 51.407295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.389084, 54.932434, 51.416077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679404, 0.324695, -0.658014,
		-0.606014, -0.257315, -0.752686,
		-0.413710, 0.910144, 0.021949,
		49.264973, 55.205479, 51.422661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.073822, 55.145660, 51.810059>,  <49.554569, 54.568375, 51.407295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.073822, 55.145660, 51.810059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.396858, 54.934456, 51.915134>,  <50.590679, 54.807732, 51.978180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.396858, 54.934456, 51.915134>,  <50.073822, 55.145660, 51.810059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.396858, 54.934456, 51.915134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167736, -0.632684, -0.756026,
		0.565392, 0.566493, -0.599514,
		0.807586, -0.528012, 0.262693,
		50.639133, 54.776051, 51.993942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.720028, 55.014919, 51.422176>,  <50.073822, 55.145660, 51.810059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.720028, 55.014919, 51.422176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.933498, 54.676643, 51.422619>,  <51.061581, 54.473679, 51.422886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.933498, 54.676643, 51.422619>,  <50.720028, 55.014919, 51.422176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.933498, 54.676643, 51.422619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667302, 0.420298, -0.614864,
		0.519520, 0.328874, 0.788632,
		0.533673, -0.845690, 0.001105,
		51.093601, 54.422935, 51.422951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.453236, 55.059082, 51.493702>,  <50.720028, 55.014919, 51.422176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.453236, 55.059082, 51.493702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.348984, 54.751968, 51.259579>,  <51.286434, 54.567699, 51.119106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.348984, 54.751968, 51.259579>,  <51.453236, 55.059082, 51.493702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.348984, 54.751968, 51.259579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472529, 0.427230, -0.770837,
		0.841896, -0.477477, 0.251451,
		-0.260630, -0.767783, -0.585305,
		51.270794, 54.521633, 51.083988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.015865, 54.781853, 51.102592>,  <51.453236, 55.059082, 51.493702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.015865, 54.781853, 51.102592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.670834, 54.735222, 50.905670>,  <51.463814, 54.707245, 50.787518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.670834, 54.735222, 50.905670>,  <52.015865, 54.781853, 51.102592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.670834, 54.735222, 50.905670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302902, 0.660413, -0.687100,
		0.405229, -0.741798, -0.534346,
		-0.862578, -0.116578, -0.492310,
		51.412060, 54.700249, 50.757977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.608231, 54.534348, 51.442631>,  <52.015865, 54.781853, 51.102592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.608231, 54.534348, 51.442631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.829014, 54.204346, 51.394112>,  <52.961483, 54.006344, 51.365002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.829014, 54.204346, 51.394112>,  <52.608231, 54.534348, 51.442631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.829014, 54.204346, 51.394112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476638, 0.192785, 0.857701,
		-0.684219, -0.531233, 0.499636,
		0.551961, -0.825001, -0.121299,
		52.994602, 53.956844, 51.357723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.637695, 54.100090, 52.114834>,  <52.608231, 54.534348, 51.442631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.637695, 54.100090, 52.114834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.949215, 54.024857, 51.875465>,  <53.136127, 53.979717, 51.731846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.949215, 54.024857, 51.875465>,  <52.637695, 54.100090, 52.114834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.949215, 54.024857, 51.875465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610841, 0.010433, 0.791685,
		-0.142663, -0.982097, 0.123017,
		0.778794, -0.188088, -0.598417,
		53.182854, 53.968430, 51.695942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.061058, 53.513901, 52.421982>,  <52.637695, 54.100090, 52.114834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.061058, 53.513901, 52.421982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.292511, 53.701775, 52.155273>,  <53.431381, 53.814499, 51.995247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.292511, 53.701775, 52.155273>,  <53.061058, 53.513901, 52.421982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.292511, 53.701775, 52.155273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775076, -0.062203, 0.628799,
		0.253859, -0.880642, -0.400031,
		0.578630, 0.469681, -0.666773,
		53.466099, 53.842678, 51.955242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.771465, 53.126762, 52.280785>,  <53.061058, 53.513901, 52.421982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.771465, 53.126762, 52.280785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.762096, 53.525959, 52.257263>,  <53.756474, 53.765476, 52.243153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.762096, 53.525959, 52.257263>,  <53.771465, 53.126762, 52.280785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.762096, 53.525959, 52.257263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653352, 0.059801, 0.754689,
		0.756692, -0.020740, -0.653442,
		-0.023424, 0.997995, -0.058802,
		53.755070, 53.825359, 52.239624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.435394, 53.380886, 52.070282>,  <53.771465, 53.126762, 52.280785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.435394, 53.380886, 52.070282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.277634, 53.645576, 52.325333>,  <54.182980, 53.804390, 52.478363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.277634, 53.645576, 52.325333>,  <54.435394, 53.380886, 52.070282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.277634, 53.645576, 52.325333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783265, -0.120791, 0.609840,
		0.480568, 0.739950, -0.470669,
		-0.394398, 0.661728, 0.637625,
		54.159313, 53.844093, 52.516621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.757214, 54.089336, 52.226482>,  <54.435394, 53.380886, 52.070282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.757214, 54.089336, 52.226482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.598587, 53.883209, 52.530373>,  <54.503410, 53.759533, 52.712708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.598587, 53.883209, 52.530373>,  <54.757214, 54.089336, 52.226482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.598587, 53.883209, 52.530373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909957, -0.111303, 0.399488,
		-0.121305, 0.849738, 0.513059,
		-0.396565, -0.515321, 0.759723,
		54.479618, 53.728611, 52.758289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.340408, 54.339111, 52.600773>,  <54.757214, 54.089336, 52.226482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.340408, 54.339111, 52.600773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.299812, 54.429897, 52.213333>,  <55.275455, 54.484367, 51.980869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.299812, 54.429897, 52.213333>,  <55.340408, 54.339111, 52.600773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.299812, 54.429897, 52.213333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471057, 0.868528, 0.154154,
		0.876245, -0.440622, -0.195059,
		-0.101490, 0.226961, -0.968601,
		55.269363, 54.497986, 51.922752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.009594, 54.302452, 52.141041>,  <55.340408, 54.339111, 52.600773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.009594, 54.302452, 52.141041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.723610, 54.577995, 52.093197>,  <55.552021, 54.743320, 52.064491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.723610, 54.577995, 52.093197>,  <56.009594, 54.302452, 52.141041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.723610, 54.577995, 52.093197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697205, 0.715245, -0.048260,
		0.052307, -0.117897, -0.991647,
		-0.714961, 0.688857, -0.119610,
		55.509121, 54.784653, 52.057312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.176105, 54.901867, 51.656471>,  <56.009594, 54.302452, 52.141041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.176105, 54.901867, 51.656471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.916290, 55.041153, 51.926834>,  <55.760403, 55.124725, 52.089050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.916290, 55.041153, 51.926834>,  <56.176105, 54.901867, 51.656471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.916290, 55.041153, 51.926834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636211, 0.735689, 0.232372,
		-0.416341, 0.580953, -0.699395,
		-0.649535, 0.348217, 0.675906,
		55.721432, 55.145618, 52.129604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.089458, 55.557205, 51.535896>,  <56.176105, 54.901867, 51.656471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.089458, 55.557205, 51.535896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.039597, 55.474747, 51.924114>,  <56.009682, 55.425270, 52.157047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.039597, 55.474747, 51.924114>,  <56.089458, 55.557205, 51.535896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.039597, 55.474747, 51.924114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662633, 0.710764, 0.236076,
		-0.738498, 0.672545, 0.048004,
		-0.124652, -0.206151, 0.970548,
		56.002201, 55.412903, 52.215279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.965542, 56.099106, 51.954494>,  <56.089458, 55.557205, 51.535896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.965542, 56.099106, 51.954494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.111900, 55.858856, 52.238853>,  <56.199715, 55.714706, 52.409470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.111900, 55.858856, 52.238853>,  <55.965542, 56.099106, 51.954494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.111900, 55.858856, 52.238853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550520, 0.755571, 0.355020,
		-0.750365, 0.261460, 0.607117,
		0.365897, -0.600625, 0.710893,
		56.221668, 55.678669, 52.452122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.849663, 56.390678, 52.676407>,  <55.965542, 56.099106, 51.954494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.849663, 56.390678, 52.676407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.174767, 56.157772, 52.684399>,  <56.369827, 56.018028, 52.689194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.174767, 56.157772, 52.684399>,  <55.849663, 56.390678, 52.676407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.174767, 56.157772, 52.684399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555935, 0.785351, 0.272324,
		-0.174256, -0.210224, 0.961998,
		0.812755, -0.582263, 0.019982,
		56.418594, 55.983093, 52.690392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.143608, 56.320148, 53.324337>,  <55.849663, 56.390678, 52.676407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.143608, 56.320148, 53.324337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.421013, 56.284546, 53.038368>,  <56.587456, 56.263184, 52.866787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.421013, 56.284546, 53.038368>,  <56.143608, 56.320148, 53.324337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.421013, 56.284546, 53.038368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389696, 0.880981, 0.268344,
		0.605951, -0.464704, 0.645658,
		0.693513, -0.089007, -0.714925,
		56.629066, 56.257843, 52.823891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.778748, 56.726269, 53.653214>,  <56.143608, 56.320148, 53.324337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.778748, 56.726269, 53.653214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.807098, 56.702995, 53.254898>,  <56.824108, 56.689030, 53.015911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.807098, 56.702995, 53.254898>,  <56.778748, 56.726269, 53.653214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.807098, 56.702995, 53.254898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597637, 0.801755, -0.004309,
		0.798628, -0.594814, 0.091600,
		0.070877, -0.058185, -0.995787,
		56.828362, 56.685539, 52.956161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.502506, 56.578262, 53.418587>,  <56.778748, 56.726269, 53.653214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.502506, 56.578262, 53.418587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.276268, 56.823933, 53.198448>,  <57.140526, 56.971336, 53.066364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.276268, 56.823933, 53.198448>,  <57.502506, 56.578262, 53.418587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.276268, 56.823933, 53.198448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724283, 0.689063, 0.024624,
		0.394349, -0.384682, -0.834571,
		-0.565600, 0.614176, -0.550349,
		57.106586, 57.008186, 53.033344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.667892, 56.659760, 53.989414>,  <57.502506, 56.578262, 53.418587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.667892, 56.659760, 53.989414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.300163, 56.695133, 54.142788>,  <57.079525, 56.716358, 54.234810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.300163, 56.695133, 54.142788>,  <57.667892, 56.659760, 53.989414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.300163, 56.695133, 54.142788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021666, -0.984317, 0.175074,
		0.392902, 0.152642, 0.906823,
		-0.919325, 0.088435, 0.383433,
		57.024364, 56.721664, 54.257816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.061462, 57.143902, 53.379162>,  <57.667892, 56.659760, 53.989414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.061462, 57.143902, 53.379162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.306000, 56.896011, 53.576019>,  <58.452721, 56.747276, 53.694134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.306000, 56.896011, 53.576019>,  <58.061462, 57.143902, 53.379162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.306000, 56.896011, 53.576019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722098, -0.691283, 0.026506,
		0.323781, -0.371577, -0.870113,
		0.611343, -0.619725, 0.492140,
		58.489403, 56.710094, 53.723660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.308231, 56.556396, 52.946423>,  <58.061462, 57.143902, 53.379162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.308231, 56.556396, 52.946423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.265770, 56.465904, 53.333733>,  <58.240295, 56.411610, 53.566116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.265770, 56.465904, 53.333733>,  <58.308231, 56.556396, 52.946423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.265770, 56.465904, 53.333733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574197, -0.781062, -0.245440,
		0.811807, -0.582032, -0.046991,
		-0.106151, -0.226232, 0.968272,
		58.233925, 56.398033, 53.624214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.543064, 55.813847, 53.157871>,  <58.308231, 56.556396, 52.946423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.543064, 55.813847, 53.157871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.229790, 55.921707, 53.381981>,  <58.041824, 55.986423, 53.516445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.229790, 55.921707, 53.381981>,  <58.543064, 55.813847, 53.157871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.229790, 55.921707, 53.381981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328021, -0.944662, -0.003871,
		0.528223, -0.186813, 0.828300,
		-0.783187, 0.269655, 0.560271,
		57.994835, 56.002605, 53.550064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.473061, 55.298752, 53.620407>,  <58.543064, 55.813847, 53.157871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.473061, 55.298752, 53.620407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.106895, 55.454430, 53.579334>,  <57.887196, 55.547836, 53.554691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.106895, 55.454430, 53.579334>,  <58.473061, 55.298752, 53.620407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.106895, 55.454430, 53.579334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380607, -0.919967, -0.093803,
		-0.130970, -0.046788, 0.990282,
		-0.915415, 0.389193, -0.102680,
		57.832272, 55.571186, 53.548531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.685074, 54.722710, 53.101967>,  <58.473061, 55.298752, 53.620407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.685074, 54.722710, 53.101967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.872253, 54.641075, 52.758018>,  <58.984562, 54.592094, 52.551651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.872253, 54.641075, 52.758018>,  <58.685074, 54.722710, 53.101967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.872253, 54.641075, 52.758018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355036, 0.934416, -0.028560,
		0.809303, -0.291919, 0.509718,
		0.467951, -0.204082, -0.859868,
		59.012638, 54.579849, 52.500057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.469334, 54.926781, 53.093945>,  <58.685074, 54.722710, 53.101967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.469334, 54.926781, 53.093945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.303818, 54.953148, 52.730751>,  <59.204510, 54.968967, 52.512836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.303818, 54.953148, 52.730751>,  <59.469334, 54.926781, 53.093945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.303818, 54.953148, 52.730751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306013, 0.949411, -0.070530,
		0.857399, -0.307039, -0.413031,
		-0.413791, 0.065921, -0.907982,
		59.179680, 54.972923, 52.458355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.213604, 55.590588, 52.855068>,  <59.469334, 54.926781, 53.093945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.213604, 55.590588, 52.855068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.606697, 55.550411, 52.917236>,  <59.842552, 55.526306, 52.954536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.606697, 55.550411, 52.917236>,  <59.213604, 55.590588, 52.855068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.606697, 55.550411, 52.917236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122099, -0.279200, -0.952439,
		0.139055, 0.954966, -0.262115,
		0.982729, -0.100437, 0.155425,
		59.901516, 55.520279, 52.963863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.656246, 56.068626, 52.412830>,  <59.213604, 55.590588, 52.855068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.656246, 56.068626, 52.412830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.799309, 55.711830, 52.523422>,  <59.885147, 55.497753, 52.589779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.799309, 55.711830, 52.523422>,  <59.656246, 56.068626, 52.412830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.799309, 55.711830, 52.523422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291415, -0.174673, -0.940514,
		0.887221, 0.416948, 0.197467,
		0.357654, -0.891988, 0.276478,
		59.906605, 55.444233, 52.606365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.413605, 55.961231, 52.251385>,  <59.656246, 56.068626, 52.412830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.413605, 55.961231, 52.251385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.205437, 55.619682, 52.254639>,  <60.080536, 55.414753, 52.256592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.205437, 55.619682, 52.254639>,  <60.413605, 55.961231, 52.251385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.205437, 55.619682, 52.254639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197204, -0.129455, -0.971778,
		0.830827, -0.504127, 0.235758,
		-0.520420, -0.853872, 0.008139,
		60.049313, 55.363522, 52.257080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.914944, 55.501839, 52.533009>,  <60.413605, 55.961231, 52.251385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.914944, 55.501839, 52.533009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.731262, 55.510250, 52.177776>,  <60.621052, 55.515297, 51.964638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.731262, 55.510250, 52.177776>,  <60.914944, 55.501839, 52.533009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.731262, 55.510250, 52.177776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164098, 0.984523, -0.061534,
		0.873043, -0.173989, -0.455547,
		-0.459203, 0.021032, -0.888082,
		60.593502, 55.516560, 51.911350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.101620, 56.060680, 53.052383>,  <60.914944, 55.501839, 52.533009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.101620, 56.060680, 53.052383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.910271, 56.364983, 53.227844>,  <60.795460, 56.547562, 53.333122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.910271, 56.364983, 53.227844>,  <61.101620, 56.060680, 53.052383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.910271, 56.364983, 53.227844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459643, -0.208712, 0.863231,
		0.748257, 0.614569, -0.249833,
		-0.478372, 0.760753, 0.438653,
		60.766758, 56.593208, 53.359440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.619434, 56.558388, 53.340927>,  <61.101620, 56.060680, 53.052383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.619434, 56.558388, 53.340927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.259262, 56.508678, 53.507671>,  <61.043159, 56.478851, 53.607719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.259262, 56.508678, 53.507671>,  <61.619434, 56.558388, 53.340927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.259262, 56.508678, 53.507671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433772, -0.328337, 0.839069,
		0.032594, 0.936349, 0.349553,
		-0.900433, -0.124278, 0.416864,
		60.989132, 56.471394, 53.632732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.411198, 57.130051, 53.057251>,  <61.619434, 56.558388, 53.340927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.411198, 57.130051, 53.057251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.730690, 57.365974, 53.009682>,  <61.922386, 57.507530, 52.981140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.730690, 57.365974, 53.009682>,  <61.411198, 57.130051, 53.057251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.730690, 57.365974, 53.009682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317158, 0.580683, 0.749812,
		0.511305, -0.561184, 0.650876,
		0.798735, 0.589813, -0.118922,
		61.970310, 57.542919, 52.974007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.026703, 57.122311, 53.627769>,  <61.411198, 57.130051, 53.057251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.026703, 57.122311, 53.627769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.972191, 57.486332, 53.471191>,  <61.939484, 57.704746, 53.377243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.972191, 57.486332, 53.471191>,  <62.026703, 57.122311, 53.627769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.972191, 57.486332, 53.471191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277995, 0.344124, 0.896826,
		0.950866, 0.231039, 0.206093,
		-0.136281, 0.910054, -0.391444,
		61.931305, 57.759350, 53.353760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.725384, 57.316017, 53.745403>,  <62.026703, 57.122311, 53.627769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.725384, 57.316017, 53.745403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.627388, 57.651257, 53.940372>,  <62.568592, 57.852398, 54.057354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.627388, 57.651257, 53.940372>,  <62.725384, 57.316017, 53.745403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.627388, 57.651257, 53.940372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765866, -0.140980, 0.627355,
		0.594499, 0.526993, -0.607330,
		-0.244990, 0.838095, 0.487418,
		62.553890, 57.902683, 54.086597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.346718, 57.641701, 53.869930>,  <62.725384, 57.316017, 53.745403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.346718, 57.641701, 53.869930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.072571, 57.805641, 54.110695>,  <62.908081, 57.904003, 54.255154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.072571, 57.805641, 54.110695>,  <63.346718, 57.641701, 53.869930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.072571, 57.805641, 54.110695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570025, -0.212408, 0.793696,
		0.453146, 0.887078, -0.088047,
		-0.685368, 0.409849, 0.601909,
		62.866959, 57.928596, 54.291267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.615829, 58.224865, 54.377148>,  <63.346718, 57.641701, 53.869930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.615829, 58.224865, 54.377148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.329948, 57.961929, 54.472733>,  <63.158421, 57.804169, 54.530083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.329948, 57.961929, 54.472733>,  <63.615829, 58.224865, 54.377148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.329948, 57.961929, 54.472733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522436, -0.274566, 0.807263,
		-0.465038, 0.701794, 0.539652,
		-0.714703, -0.657342, 0.238959,
		63.115536, 57.764729, 54.544418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.891956, 58.740036, 54.823071>,  <63.615829, 58.224865, 54.377148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.891956, 58.740036, 54.823071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.030792, 59.102264, 54.920609>,  <64.114098, 59.319603, 54.979134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.030792, 59.102264, 54.920609>,  <63.891956, 58.740036, 54.823071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.030792, 59.102264, 54.920609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898384, -0.395673, 0.190654,
		0.269136, 0.152895, -0.950889,
		0.347090, 0.905575, 0.243848,
		64.134918, 59.373936, 54.993763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.423523, 58.868126, 54.409016>,  <63.891956, 58.740036, 54.823071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.423523, 58.868126, 54.409016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.501266, 59.095055, 54.729111>,  <64.547913, 59.231213, 54.921165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.501266, 59.095055, 54.729111>,  <64.423523, 58.868126, 54.409016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.501266, 59.095055, 54.729111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980927, -0.114810, -0.156845,
		0.002894, 0.815454, -0.578814,
		0.194354, 0.567321, 0.800234,
		64.559570, 59.265251, 54.969181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.923790, 59.444191, 54.353790>,  <64.423523, 58.868126, 54.409016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.923790, 59.444191, 54.353790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.973152, 59.323700, 54.732002>,  <65.002769, 59.251404, 54.958931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.973152, 59.323700, 54.732002>,  <64.923790, 59.444191, 54.353790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.973152, 59.323700, 54.732002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990320, -0.023616, -0.136779,
		0.063531, 0.953260, 0.295397,
		0.123409, -0.301227, 0.945533,
		65.010178, 59.233334, 55.015663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.351562, 59.969944, 54.810989>,  <64.923790, 59.444191, 54.353790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.351562, 59.969944, 54.810989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.361298, 59.583778, 54.914825>,  <65.367142, 59.352077, 54.977127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.361298, 59.583778, 54.914825>,  <65.351562, 59.969944, 54.810989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.361298, 59.583778, 54.914825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981037, -0.026872, -0.191950,
		0.192287, 0.259337, 0.946451,
		0.024347, -0.965413, 0.259586,
		65.368599, 59.294155, 54.992702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.796921, 59.742153, 55.374027>,  <65.351562, 59.969944, 54.810989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.796921, 59.742153, 55.374027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.750938, 59.422531, 55.137962>,  <65.723351, 59.230759, 54.996323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.750938, 59.422531, 55.137962>,  <65.796921, 59.742153, 55.374027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.750938, 59.422531, 55.137962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987472, -0.027276, -0.155423,
		0.108095, -0.600633, 0.792184,
		-0.114959, -0.799060, -0.590159,
		65.716454, 59.182812, 54.960915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.223274, 59.089722, 55.537949>,  <65.796921, 59.742153, 55.374027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.223274, 59.089722, 55.537949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.133049, 59.188667, 55.161026>,  <66.078918, 59.248035, 54.934872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.133049, 59.188667, 55.161026>,  <66.223274, 59.089722, 55.537949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.133049, 59.188667, 55.161026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950328, -0.157070, -0.268709,
		-0.214477, -0.956107, -0.199649,
		-0.225556, 0.247364, -0.942303,
		66.065384, 59.262875, 54.878334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.639977, 58.734650, 55.216789>,  <66.223274, 59.089722, 55.537949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.639977, 58.734650, 55.216789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.544983, 59.013031, 54.945717>,  <66.487984, 59.180061, 54.783073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.544983, 59.013031, 54.945717>,  <66.639977, 58.734650, 55.216789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.544983, 59.013031, 54.945717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884085, -0.134209, -0.447640,
		-0.402487, -0.705435, -0.583409,
		-0.237482, 0.695952, -0.677682,
		66.473740, 59.221817, 54.742413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.558220, 58.425838, 54.533512>,  <66.639977, 58.734650, 55.216789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.558220, 58.425838, 54.533512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.661133, 58.808655, 54.480034>,  <66.722878, 59.038345, 54.447945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.661133, 58.808655, 54.480034>,  <66.558220, 58.425838, 54.533512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.661133, 58.808655, 54.480034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852788, -0.289931, -0.434387,
		-0.454492, -0.002261, -0.890748,
		0.257273, 0.957045, -0.133700,
		66.738312, 59.095768, 54.439922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.145798, 58.214615, 54.958744>,  <66.558220, 58.425838, 54.533512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.145798, 58.214615, 54.958744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.406593, 58.514149, 55.006340>,  <67.563072, 58.693867, 55.034897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.406593, 58.514149, 55.006340>,  <67.145798, 58.214615, 54.958744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.406593, 58.514149, 55.006340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263197, -0.076345, -0.961717,
		-0.711080, 0.658347, -0.246866,
		0.651991, 0.748832, 0.118988,
		67.602188, 58.738800, 55.042038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.857498, 57.822151, 54.912220>,  <67.145798, 58.214615, 54.958744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.857498, 57.822151, 54.912220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.974899, 57.984638, 55.258362>,  <68.045341, 58.082130, 55.466045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.974899, 57.984638, 55.258362>,  <67.857498, 57.822151, 54.912220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.974899, 57.984638, 55.258362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575991, 0.797606, -0.179050,
		-0.762945, -0.445883, 0.468084,
		0.293512, 0.406217, 0.865355,
		68.062950, 58.106503, 55.517967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.750740, 57.480270, 55.631042>,  <67.857498, 57.822151, 54.912220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.750740, 57.480270, 55.631042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.975418, 57.316734, 55.343338>,  <68.110229, 57.218613, 55.170715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.975418, 57.316734, 55.343338>,  <67.750740, 57.480270, 55.631042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.975418, 57.316734, 55.343338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774175, -0.046889, 0.631232,
		-0.291800, -0.911400, 0.290177,
		0.561699, -0.408842, -0.719265,
		68.143929, 57.194080, 55.127560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.148132, 57.208725, 56.051788>,  <67.750740, 57.480270, 55.631042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.148132, 57.208725, 56.051788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.326469, 57.182751, 55.694687>,  <68.433472, 57.167164, 55.480427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.326469, 57.182751, 55.694687>,  <68.148132, 57.208725, 56.051788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.326469, 57.182751, 55.694687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894438, -0.006459, 0.447145,
		-0.034803, -0.997869, 0.055203,
		0.445835, -0.064938, -0.892757,
		68.460220, 57.163269, 55.426861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.486443, 56.570160, 55.876118>,  <68.148132, 57.208725, 56.051788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.486443, 56.570160, 55.876118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.654503, 56.902828, 55.730904>,  <68.755341, 57.102428, 55.643776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.654503, 56.902828, 55.730904>,  <68.486443, 56.570160, 55.876118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.654503, 56.902828, 55.730904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800102, -0.150765, 0.580609,
		0.428140, -0.534415, -0.728764,
		0.420158, 0.831668, -0.363038,
		68.780548, 57.152328, 55.621994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.188072, 56.455566, 55.620720>,  <68.486443, 56.570160, 55.876118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.188072, 56.455566, 55.620720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.101990, 56.811493, 55.781670>,  <69.050339, 57.025051, 55.878239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.101990, 56.811493, 55.781670>,  <69.188072, 56.455566, 55.620720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.101990, 56.811493, 55.781670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789993, -0.083599, 0.607390,
		0.574106, 0.448589, -0.684961,
		-0.215206, 0.889820, 0.402377,
		69.037430, 57.078438, 55.902382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.844666, 56.725853, 55.701103>,  <69.188072, 56.455566, 55.620720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.844666, 56.725853, 55.701103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.595261, 56.937531, 55.931297>,  <69.445618, 57.064537, 56.069416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.595261, 56.937531, 55.931297>,  <69.844666, 56.725853, 55.701103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.595261, 56.937531, 55.931297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711098, 0.077944, 0.698759,
		0.324924, 0.844912, -0.424909,
		-0.623509, 0.529196, 0.575490,
		69.408211, 57.096291, 56.103943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.015465, 57.528473, 55.943729>,  <69.844666, 56.725853, 55.701103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.015465, 57.528473, 55.943729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.826042, 57.301624, 56.213280>,  <69.712387, 57.165516, 56.375011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.826042, 57.301624, 56.213280>,  <70.015465, 57.528473, 55.943729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.826042, 57.301624, 56.213280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743592, 0.152608, 0.650985,
		-0.472025, 0.809375, 0.349435,
		-0.473565, -0.567118, 0.673879,
		69.683975, 57.131489, 56.415443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.140747, 57.874710, 56.550854>,  <70.015465, 57.528473, 55.943729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.140747, 57.874710, 56.550854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.038216, 57.506763, 56.669609>,  <69.976692, 57.285995, 56.740864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.038216, 57.506763, 56.669609>,  <70.140747, 57.874710, 56.550854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.038216, 57.506763, 56.669609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727534, 0.018612, 0.685819,
		-0.636386, 0.391796, 0.664461,
		-0.256334, -0.919864, 0.296889,
		69.961319, 57.230804, 56.758675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.423706, 57.840145, 57.218651>,  <70.140747, 57.874710, 56.550854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.423706, 57.840145, 57.218651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.374863, 57.454758, 57.123306>,  <70.345558, 57.223526, 57.066097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.374863, 57.454758, 57.123306>,  <70.423706, 57.840145, 57.218651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.374863, 57.454758, 57.123306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841589, -0.227825, 0.489718,
		-0.526133, -0.140805, 0.838664,
		-0.122114, -0.963468, -0.238366,
		70.338226, 57.165718, 57.051796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.509384, 57.438805, 57.848366>,  <70.423706, 57.840145, 57.218651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.509384, 57.438805, 57.848366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.610725, 57.215904, 57.532066>,  <70.671532, 57.082165, 57.342285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.610725, 57.215904, 57.532066>,  <70.509384, 57.438805, 57.848366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.610725, 57.215904, 57.532066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835176, -0.286488, 0.469474,
		-0.488156, -0.779354, 0.392824,
		0.253347, -0.557254, -0.790749,
		70.686729, 57.048729, 57.294842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.661263, 56.677822, 57.885113>,  <70.509384, 57.438805, 57.848366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.661263, 56.677822, 57.885113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.891754, 56.890514, 57.636848>,  <71.030052, 57.018131, 57.487888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.891754, 56.890514, 57.636848>,  <70.661263, 56.677822, 57.885113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.891754, 56.890514, 57.636848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718172, 0.033064, 0.695080,
		0.390119, -0.846266, -0.362824,
		0.576226, 0.531734, -0.620663,
		71.064621, 57.050034, 57.450649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.313980, 56.245594, 57.862507>,  <70.661263, 56.677822, 57.885113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.313980, 56.245594, 57.862507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.349991, 56.639805, 57.805061>,  <71.371597, 56.876331, 57.770596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.349991, 56.639805, 57.805061>,  <71.313980, 56.245594, 57.862507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.349991, 56.639805, 57.805061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640946, 0.053031, 0.765752,
		0.762288, -0.160988, -0.626897,
		0.090032, 0.985531, -0.143610,
		71.376999, 56.935463, 57.761978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.049042, 56.456470, 58.015182>,  <71.313980, 56.245594, 57.862507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.049042, 56.456470, 58.015182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.815056, 56.778500, 58.054512>,  <71.674660, 56.971718, 58.078110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.815056, 56.778500, 58.054512>,  <72.049042, 56.456470, 58.015182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.815056, 56.778500, 58.054512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524067, 0.282669, 0.803400,
		0.619004, 0.521492, -0.587265,
		-0.584969, 0.805074, 0.098324,
		71.639565, 57.020023, 58.084007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.388168, 57.115067, 57.954147>,  <72.049042, 56.456470, 58.015182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.388168, 57.115067, 57.954147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.076782, 57.084728, 58.203384>,  <71.889954, 57.066525, 58.352928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.076782, 57.084728, 58.203384>,  <72.388168, 57.115067, 57.954147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.076782, 57.084728, 58.203384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602139, 0.190134, 0.775421,
		-0.177286, 0.978824, -0.102340,
		-0.778459, -0.075848, 0.623096,
		71.843246, 57.061974, 58.390312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.355064, 57.749535, 58.347153>,  <72.388168, 57.115067, 57.954147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.355064, 57.749535, 58.347153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.190704, 57.445686, 58.548798>,  <72.092087, 57.263378, 58.669785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.190704, 57.445686, 58.548798>,  <72.355064, 57.749535, 58.347153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.190704, 57.445686, 58.548798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473142, 0.294973, 0.830137,
		-0.779290, 0.579626, 0.238203,
		-0.410905, -0.759622, 0.504115,
		72.067436, 57.217800, 58.700031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.223915, 57.961895, 59.037754>,  <72.355064, 57.749535, 58.347153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.223915, 57.961895, 59.037754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.254906, 57.567764, 59.098579>,  <72.273499, 57.331284, 59.135075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.254906, 57.567764, 59.098579>,  <72.223915, 57.961895, 59.037754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.254906, 57.567764, 59.098579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569916, 0.168910, 0.804155,
		-0.818043, 0.024366, 0.574641,
		0.077468, -0.985330, 0.152062,
		72.278145, 57.272163, 59.144199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.132202, 57.816593, 59.731384>,  <72.223915, 57.961895, 59.037754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.132202, 57.816593, 59.731384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.361458, 57.526634, 59.578529>,  <72.499008, 57.352657, 59.486816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.361458, 57.526634, 59.578529>,  <72.132202, 57.816593, 59.731384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.361458, 57.526634, 59.578529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754211, 0.284296, 0.591896,
		-0.320427, -0.627451, 0.709670,
		0.573142, -0.724901, -0.382134,
		72.533401, 57.309162, 59.463890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.195312, 57.447189, 60.256138>,  <72.132202, 57.816593, 59.731384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.195312, 57.447189, 60.256138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.494499, 57.360886, 60.005058>,  <72.674011, 57.309101, 59.854412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.494499, 57.360886, 60.005058>,  <72.195312, 57.447189, 60.256138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.494499, 57.360886, 60.005058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663313, 0.208908, 0.718591,
		-0.023914, -0.953836, 0.299373,
		0.747960, -0.215762, -0.627696,
		72.718887, 57.296158, 59.816750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.641891, 57.120720, 60.649002>,  <72.195312, 57.447189, 60.256138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.641891, 57.120720, 60.649002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.872437, 57.213089, 60.335449>,  <73.010765, 57.268509, 60.147316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.872437, 57.213089, 60.335449>,  <72.641891, 57.120720, 60.649002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.872437, 57.213089, 60.335449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756550, 0.211840, 0.618672,
		0.308923, -0.949631, -0.052605,
		0.576366, 0.230920, -0.783886,
		73.045349, 57.282364, 60.100285>
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
