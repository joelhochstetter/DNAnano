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
	<1.532069, 3.262251, 1.293416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.603954, 3.592316, 1.079197>,  <1.647085, 3.790355, 0.950666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.603954, 3.592316, 1.079197>,  <1.532069, 3.262251, 1.293416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.603954, 3.592316, 1.079197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963415, 0.257673, 0.073728,
		0.198833, 0.502704, 0.841281,
		0.179713, 0.825162, -0.535547,
		1.657868, 3.839864, 0.918533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.317812, 3.899883, 1.676991>,  <1.532069, 3.262251, 1.293416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.317812, 3.899883, 1.676991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.331493, 3.970024, 1.283426>,  <1.339702, 4.012109, 1.047288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.331493, 3.970024, 1.283426>,  <1.317812, 3.899883, 1.676991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.331493, 3.970024, 1.283426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995373, 0.094427, -0.017773,
		0.089791, 0.979967, 0.177772,
		0.034203, 0.175354, -0.983911,
		1.341754, 4.022630, 0.988253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.015263, 4.600288, 1.377634>,  <1.317812, 3.899883, 1.676991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.015263, 4.600288, 1.377634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.981089, 4.267277, 1.158693>,  <0.960584, 4.067470, 1.027329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.981089, 4.267277, 1.158693>,  <1.015263, 4.600288, 1.377634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.981089, 4.267277, 1.158693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992694, 0.118104, -0.024688,
		0.085198, 0.541245, -0.836537,
		-0.085437, -0.832529, -0.547353,
		0.955458, 4.017518, 0.994487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.718823, 4.698137, 0.801602>,  <1.015263, 4.600288, 1.377634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.718823, 4.698137, 0.801602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.616105, 4.338638, 0.943762>,  <0.554474, 4.122939, 1.029058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.616105, 4.338638, 0.943762>,  <0.718823, 4.698137, 0.801602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.616105, 4.338638, 0.943762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966447, 0.241067, -0.088693,
		-0.005963, -0.366252, -0.930497,
		-0.256796, -0.898747, 0.355401,
		0.539066, 4.069014, 1.050382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.284349, 4.367722, 0.296913>,  <0.718823, 4.698137, 0.801602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.284349, 4.367722, 0.296913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.231497, 4.264469, 0.679726>,  <0.199786, 4.202518, 0.909413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.231497, 4.264469, 0.679726>,  <0.284349, 4.367722, 0.296913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.231497, 4.264469, 0.679726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969626, 0.234148, -0.070714,
		-0.205834, -0.937306, -0.281228,
		-0.132129, -0.258131, 0.957032,
		0.191858, 4.187029, 0.966835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.223041, 3.806783, 0.367397>,  <0.284349, 4.367722, 0.296913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.223041, 3.806783, 0.367397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.226770, 4.040962, 0.691660>,  <-0.229008, 4.181469, 0.886218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.226770, 4.040962, 0.691660>,  <-0.223041, 3.806783, 0.367397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.226770, 4.040962, 0.691660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975615, 0.172459, -0.135768,
		-0.219290, -0.792155, 0.569563,
		-0.009323, 0.585447, 0.810657,
		-0.229567, 4.216596, 0.934857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.820590, 3.680222, 0.834384>,  <-0.223041, 3.806783, 0.367397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.820590, 3.680222, 0.834384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.693390, 4.059433, 0.830048>,  <-0.617070, 4.286960, 0.827446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.693390, 4.059433, 0.830048>,  <-0.820590, 3.680222, 0.834384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.693390, 4.059433, 0.830048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912032, 0.302762, -0.276646,
		-0.258986, 0.097861, 0.960911,
		0.318000, 0.948029, -0.010841,
		-0.597990, 4.343842, 0.826795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.116276, 4.145155, 1.367272>,  <-0.820590, 3.680222, 0.834384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.116276, 4.145155, 1.367272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.058628, 4.278282, 0.994507>,  <-1.024039, 4.358159, 0.770848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.058628, 4.278282, 0.994507>,  <-1.116276, 4.145155, 1.367272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.058628, 4.278282, 0.994507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966141, -0.156346, -0.205249,
		-0.214012, 0.929940, 0.299017,
		0.144120, 0.332818, -0.931913,
		-1.015392, 4.378128, 0.714933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.905809, 1.783477, 1.813089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.658279, 1.478447, 1.737686>,  <3.509762, 1.295429, 1.692444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.658279, 1.478447, 1.737686>,  <3.905809, 1.783477, 1.813089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.658279, 1.478447, 1.737686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479808, 0.176930, 0.859349,
		-0.621965, 0.622234, -0.475378,
		-0.618825, -0.762575, -0.188508,
		3.472632, 1.249674, 1.681134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.165443, 1.988079, 1.778435>,  <3.905809, 1.783477, 1.813089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.165443, 1.988079, 1.778435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.182510, 1.598339, 1.866817>,  <3.192751, 1.364495, 1.919846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.182510, 1.598339, 1.866817>,  <3.165443, 1.988079, 1.778435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.182510, 1.598339, 1.866817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594156, 0.153053, 0.789654,
		-0.803217, -0.164975, -0.572386,
		0.042668, -0.974350, 0.220955,
		3.195311, 1.306034, 1.933103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.466209, 1.693179, 2.010535>,  <3.165443, 1.988079, 1.778435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.466209, 1.693179, 2.010535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.762699, 1.463490, 2.149590>,  <2.940593, 1.325675, 2.233022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.762699, 1.463490, 2.149590>,  <2.466209, 1.693179, 2.010535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.762699, 1.463490, 2.149590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454369, -0.047994, 0.889520,
		-0.494101, -0.817289, -0.296485,
		0.741224, -0.574226, 0.347637,
		2.985066, 1.291222, 2.253881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.192251, 1.150077, 2.420409>,  <2.466209, 1.693179, 2.010535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.192251, 1.150077, 2.420409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.550323, 1.227695, 2.580908>,  <2.765167, 1.274266, 2.677207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.550323, 1.227695, 2.580908>,  <2.192251, 1.150077, 2.420409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.550323, 1.227695, 2.580908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297310, -0.410722, 0.861925,
		0.332053, -0.890873, -0.309979,
		0.895180, 0.194045, 0.401246,
		2.818878, 1.285909, 2.701282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.479477, 0.639573, 2.701125>,  <2.192251, 1.150077, 2.420409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.479477, 0.639573, 2.701125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.616249, 0.957188, 2.902158>,  <2.698313, 1.147757, 3.022777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.616249, 0.957188, 2.902158>,  <2.479477, 0.639573, 2.701125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.616249, 0.957188, 2.902158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394934, -0.363870, 0.843579,
		0.852708, -0.486932, 0.189175,
		0.341930, 0.794038, 0.502581,
		2.718828, 1.195399, 3.052932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.842563, 0.490414, 3.313053>,  <2.479477, 0.639573, 2.701125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.842563, 0.490414, 3.313053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.624596, 0.825550, 3.299866>,  <2.493815, 1.026632, 3.291953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.624596, 0.825550, 3.299866>,  <2.842563, 0.490414, 3.313053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.624596, 0.825550, 3.299866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601104, -0.362931, 0.712007,
		0.584584, 0.407803, 0.701397,
		-0.544918, 0.837841, -0.032969,
		2.461120, 1.076902, 3.289975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.847836, 1.038292, 3.798548>,  <2.842563, 0.490414, 3.313053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.847836, 1.038292, 3.798548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.478653, 0.967999, 3.661570>,  <2.257143, 0.925822, 3.579383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.478653, 0.967999, 3.661570>,  <2.847836, 1.038292, 3.798548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.478653, 0.967999, 3.661570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271484, -0.333461, 0.902829,
		-0.272850, 0.926240, 0.260061,
		-0.922957, -0.175734, -0.342445,
		2.201766, 0.915278, 3.558836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.433739, 1.310917, 4.252945>,  <2.847836, 1.038292, 3.798548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.433739, 1.310917, 4.252945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.240063, 1.015862, 4.064712>,  <2.123857, 0.838828, 3.951771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.240063, 1.015862, 4.064712>,  <2.433739, 1.310917, 4.252945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.240063, 1.015862, 4.064712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409362, -0.284357, 0.866928,
		-0.773292, 0.612398, -0.164278,
		-0.484192, -0.737638, -0.470583,
		2.094805, 0.794570, 3.923537>
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
