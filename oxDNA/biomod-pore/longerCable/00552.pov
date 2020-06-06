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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.538260, 34.583878, 34.905045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.226250, 34.834126, 34.910110>,  <24.039043, 34.984276, 34.913151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.226250, 34.834126, 34.910110>,  <24.538260, 34.583878, 34.905045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.226250, 34.834126, 34.910110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607716, 0.752566, 0.253627,
		0.149143, 0.205532, -0.967219,
		-0.780024, 0.625621, 0.012665,
		23.992243, 35.021812, 34.913910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.008829, 34.383366, 34.381054>,  <24.538260, 34.583878, 34.905045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.008829, 34.383366, 34.381054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915859, 34.712566, 34.588375>,  <24.860077, 34.910088, 34.712769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915859, 34.712566, 34.588375>,  <25.008829, 34.383366, 34.381054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.915859, 34.712566, 34.588375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071557, -0.516986, 0.852998,
		0.969978, 0.235348, 0.061270,
		-0.232427, 0.823005, 0.518305,
		24.846130, 34.959469, 34.743866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701735, 34.627659, 34.193077>,  <25.008829, 34.383366, 34.381054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701735, 34.627659, 34.193077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700191, 34.965908, 34.406582>,  <25.699266, 35.168858, 34.534683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700191, 34.965908, 34.406582>,  <25.701735, 34.627659, 34.193077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.700191, 34.965908, 34.406582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751129, -0.349915, 0.559790,
		0.660144, 0.403082, -0.633825,
		-0.003857, 0.845627, 0.533761,
		25.699034, 35.219597, 34.566711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242460, 35.144184, 34.240311>,  <25.701735, 34.627659, 34.193077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242460, 35.144184, 34.240311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085255, 34.960205, 34.558804>,  <25.990932, 34.849819, 34.749901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085255, 34.960205, 34.558804>,  <26.242460, 35.144184, 34.240311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085255, 34.960205, 34.558804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886521, -0.419463, 0.195271,
		0.244176, 0.782623, 0.572608,
		-0.393012, -0.459948, 0.796234,
		25.967352, 34.822220, 34.797672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701462, 35.330692, 34.799538>,  <26.242460, 35.144184, 34.240311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.701462, 35.330692, 34.799538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534525, 34.968178, 34.826313>,  <26.434362, 34.750671, 34.842377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534525, 34.968178, 34.826313>,  <26.701462, 35.330692, 34.799538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534525, 34.968178, 34.826313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905947, -0.409141, 0.108923,
		-0.071328, 0.106099, 0.991794,
		-0.417340, -0.906282, 0.066937,
		26.409323, 34.696293, 34.846394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011482, 34.908566, 35.450798>,  <26.701462, 35.330692, 34.799538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011482, 34.908566, 35.450798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851974, 34.679886, 35.163982>,  <26.756269, 34.542679, 34.991894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851974, 34.679886, 35.163982>,  <27.011482, 34.908566, 35.450798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851974, 34.679886, 35.163982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825985, -0.563603, -0.009994,
		-0.398412, -0.596249, 0.696962,
		-0.398769, -0.571698, -0.717039,
		26.732344, 34.508377, 34.948872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931973, 34.271503, 35.750782>,  <27.011482, 34.908566, 35.450798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931973, 34.271503, 35.750782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937832, 34.198101, 35.357616>,  <26.941347, 34.154060, 35.121719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937832, 34.198101, 35.357616>,  <26.931973, 34.271503, 35.750782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937832, 34.198101, 35.357616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840388, -0.530384, 0.111543,
		-0.541788, -0.827659, 0.146443,
		0.014648, -0.183502, -0.982910,
		26.942226, 34.143051, 35.062744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953049, 33.510490, 35.661518>,  <26.931973, 34.271503, 35.750782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953049, 33.510490, 35.661518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136278, 33.665577, 35.341557>,  <27.246216, 33.758629, 35.149578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136278, 33.665577, 35.341557>,  <26.953049, 33.510490, 35.661518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136278, 33.665577, 35.341557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605966, -0.794577, -0.038117,
		-0.650365, -0.467255, -0.598914,
		0.458072, 0.387712, -0.799906,
		27.273701, 33.781891, 35.101585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218401, 32.981991, 35.201874>,  <26.953049, 33.510490, 35.661518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218401, 32.981991, 35.201874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394590, 33.292744, 35.021904>,  <27.500305, 33.479195, 34.913921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394590, 33.292744, 35.021904>,  <27.218401, 32.981991, 35.201874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394590, 33.292744, 35.021904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767672, -0.585772, -0.259904,
		-0.465470, -0.230914, -0.854410,
		0.440474, 0.776884, -0.449926,
		27.526733, 33.525810, 34.886925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340342, 32.890644, 34.500515>,  <27.218401, 32.981991, 35.201874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340342, 32.890644, 34.500515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619860, 33.128098, 34.660156>,  <27.787571, 33.270569, 34.755943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619860, 33.128098, 34.660156>,  <27.340342, 32.890644, 34.500515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619860, 33.128098, 34.660156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706759, -0.659048, -0.257193,
		0.110352, 0.461797, -0.880094,
		0.698795, 0.593633, 0.399107,
		27.829498, 33.306187, 34.779888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863091, 33.058567, 34.028080>,  <27.340342, 32.890644, 34.500515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863091, 33.058567, 34.028080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060173, 33.108257, 34.372593>,  <28.178423, 33.138073, 34.579300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060173, 33.108257, 34.372593>,  <27.863091, 33.058567, 34.028080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060173, 33.108257, 34.372593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772954, -0.517128, -0.367588,
		0.399731, 0.846845, -0.350811,
		0.492705, 0.124225, 0.861284,
		28.207985, 33.145523, 34.630978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491814, 32.853661, 33.814602>,  <27.863091, 33.058567, 34.028080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491814, 32.853661, 33.814602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564924, 32.863865, 34.207729>,  <28.608791, 32.869987, 34.443607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564924, 32.863865, 34.207729>,  <28.491814, 32.853661, 33.814602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564924, 32.863865, 34.207729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873997, -0.462022, -0.150547,
		0.450245, 0.886502, -0.106743,
		0.182778, 0.025509, 0.982823,
		28.619757, 32.871517, 34.502575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901022, 32.179073, 33.681431>,  <28.491814, 32.853661, 33.814602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901022, 32.179073, 33.681431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092186, 32.060352, 34.012131>,  <29.206884, 31.989119, 34.210548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092186, 32.060352, 34.012131>,  <28.901022, 32.179073, 33.681431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092186, 32.060352, 34.012131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415851, 0.752587, 0.510569,
		-0.773738, -0.587809, 0.236242,
		0.477909, -0.296805, 0.826746,
		29.235559, 31.971312, 34.260155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529266, 32.034958, 34.239033>,  <28.901022, 32.179073, 33.681431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529266, 32.034958, 34.239033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857645, 32.201881, 34.394932>,  <29.054672, 32.302036, 34.488472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857645, 32.201881, 34.394932>,  <28.529266, 32.034958, 34.239033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857645, 32.201881, 34.394932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569325, 0.545885, 0.614718,
		0.043768, -0.726544, 0.685725,
		0.820947, 0.417305, 0.389747,
		29.103930, 32.327072, 34.511856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496885, 32.192242, 34.934376>,  <28.529266, 32.034958, 34.239033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496885, 32.192242, 34.934376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779350, 32.464817, 34.857456>,  <28.948830, 32.628361, 34.811302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779350, 32.464817, 34.857456>,  <28.496885, 32.192242, 34.934376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779350, 32.464817, 34.857456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498977, 0.671634, 0.547659,
		0.502352, -0.290781, 0.814303,
		0.706162, 0.681435, -0.192303,
		28.991199, 32.669247, 34.799767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738047, 32.539223, 35.576504>,  <28.496885, 32.192242, 34.934376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738047, 32.539223, 35.576504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753935, 32.776089, 35.254570>,  <28.763468, 32.918209, 35.061409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753935, 32.776089, 35.254570>,  <28.738047, 32.539223, 35.576504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753935, 32.776089, 35.254570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602314, 0.656874, 0.453579,
		0.797271, 0.466745, 0.382765,
		0.039722, 0.592170, -0.804834,
		28.765852, 32.953739, 35.013119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890528, 33.329300, 35.740143>,  <28.738047, 32.539223, 35.576504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890528, 33.329300, 35.740143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672760, 33.276817, 35.408749>,  <28.542099, 33.245327, 35.209911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672760, 33.276817, 35.408749>,  <28.890528, 33.329300, 35.740143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672760, 33.276817, 35.408749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687601, 0.635506, 0.351194,
		0.480430, 0.760865, -0.436201,
		-0.544420, -0.131208, -0.828487,
		28.509434, 33.237453, 35.160202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663244, 34.034714, 35.637642>,  <28.890528, 33.329300, 35.740143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663244, 34.034714, 35.637642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442297, 33.795410, 35.405445>,  <28.309729, 33.651829, 35.266129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442297, 33.795410, 35.405445>,  <28.663244, 34.034714, 35.637642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442297, 33.795410, 35.405445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800874, 0.574067, 0.170436,
		0.231276, 0.559044, -0.796229,
		-0.552370, -0.598261, -0.580491,
		28.276587, 33.615932, 35.231297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126303, 34.457031, 35.278271>,  <28.663244, 34.034714, 35.637642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126303, 34.457031, 35.278271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966101, 34.090801, 35.263763>,  <27.869980, 33.871063, 35.255058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966101, 34.090801, 35.263763>,  <28.126303, 34.457031, 35.278271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966101, 34.090801, 35.263763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887401, 0.377709, 0.264301,
		-0.228290, 0.138037, -0.963758,
		-0.400503, -0.915578, -0.036267,
		27.845949, 33.816128, 35.252884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649048, 34.926117, 34.968105>,  <28.126303, 34.457031, 35.278271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649048, 34.926117, 34.968105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526161, 35.229813, 34.738613>,  <28.452429, 35.412029, 34.600918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526161, 35.229813, 34.738613>,  <28.649048, 34.926117, 34.968105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526161, 35.229813, 34.738613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063610, -0.617926, -0.783659,
		-0.949512, -0.204256, 0.238132,
		-0.307215, 0.759241, -0.573735,
		28.433996, 35.457584, 34.566494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919699, 34.932934, 34.654598>,  <28.649048, 34.926117, 34.968105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919699, 34.932934, 34.654598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178938, 35.089100, 34.393051>,  <28.334480, 35.182800, 34.236122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178938, 35.089100, 34.393051>,  <27.919699, 34.932934, 34.654598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178938, 35.089100, 34.393051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335384, -0.624535, -0.705318,
		-0.683731, 0.676413, -0.273821,
		0.648097, 0.390412, -0.653872,
		28.373367, 35.206223, 34.196888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583961, 35.219765, 34.023815>,  <27.919699, 34.932934, 34.654598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583961, 35.219765, 34.023815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946404, 35.073994, 33.937866>,  <28.163868, 34.986530, 33.886299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946404, 35.073994, 33.937866>,  <27.583961, 35.219765, 34.023815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946404, 35.073994, 33.937866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422686, -0.758671, -0.495737,
		0.017646, 0.540011, -0.841473,
		0.906105, -0.364427, -0.214868,
		28.218235, 34.964664, 33.873405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638329, 35.127998, 33.290154>,  <27.583961, 35.219765, 34.023815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638329, 35.127998, 33.290154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867809, 34.865883, 33.486710>,  <28.005497, 34.708614, 33.604641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867809, 34.865883, 33.486710>,  <27.638329, 35.127998, 33.290154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867809, 34.865883, 33.486710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389886, -0.746092, -0.539755,
		0.720317, 0.118073, -0.683522,
		0.573701, -0.655291, 0.491387,
		28.039919, 34.669296, 33.634125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372343, 34.505646, 33.096954>,  <27.638329, 35.127998, 33.290154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372343, 34.505646, 33.096954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635042, 34.357792, 33.359879>,  <27.792662, 34.269081, 33.517632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635042, 34.357792, 33.359879>,  <27.372343, 34.505646, 33.096954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635042, 34.357792, 33.359879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267245, -0.929144, -0.255481,
		0.705170, -0.007876, -0.708994,
		0.656746, -0.369633, 0.657310,
		27.832066, 34.246902, 33.557072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824949, 33.916893, 32.788113>,  <27.372343, 34.505646, 33.096954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824949, 33.916893, 32.788113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784576, 33.874489, 33.183804>,  <27.760353, 33.849049, 33.421219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784576, 33.874489, 33.183804>,  <27.824949, 33.916893, 32.788113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784576, 33.874489, 33.183804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424941, -0.894453, -0.139208,
		0.899577, -0.434414, 0.045230,
		-0.100930, -0.106008, 0.989230,
		27.754297, 33.842686, 33.480572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500919, 34.345291, 32.885086>,  <27.824949, 33.916893, 32.788113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500919, 34.345291, 32.885086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635918, 34.716438, 32.821648>,  <28.716917, 34.939129, 32.783585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635918, 34.716438, 32.821648>,  <28.500919, 34.345291, 32.885086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635918, 34.716438, 32.821648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792047, -0.370961, -0.484819,
		-0.508682, 0.038009, -0.860115,
		0.337497, 0.927870, -0.158597,
		28.737167, 34.994801, 32.774067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766262, 34.528301, 32.078503>,  <28.500919, 34.345291, 32.885086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766262, 34.528301, 32.078503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949110, 34.708305, 32.385365>,  <29.058819, 34.816307, 32.569481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949110, 34.708305, 32.385365>,  <28.766262, 34.528301, 32.078503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949110, 34.708305, 32.385365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862378, -0.435280, -0.258526,
		0.217588, 0.779756, -0.587057,
		0.457121, 0.450013, 0.767156,
		29.086246, 34.843307, 32.615513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257658, 34.948334, 31.792158>,  <28.766262, 34.528301, 32.078503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257658, 34.948334, 31.792158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338615, 34.774693, 32.143291>,  <29.387190, 34.670509, 32.353970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338615, 34.774693, 32.143291>,  <29.257658, 34.948334, 31.792158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338615, 34.774693, 32.143291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913038, -0.240487, -0.329436,
		0.354117, 0.868171, 0.347679,
		0.202394, -0.434103, 0.877833,
		29.399334, 34.644463, 32.406643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899734, 35.047478, 32.098911>,  <29.257658, 34.948334, 31.792158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899734, 35.047478, 32.098911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834784, 34.666977, 32.203789>,  <29.795813, 34.438675, 32.266716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834784, 34.666977, 32.203789>,  <29.899734, 35.047478, 32.098911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834784, 34.666977, 32.203789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904497, -0.249692, -0.345744,
		0.394358, 0.181010, 0.900953,
		-0.162378, -0.951257, 0.262191,
		29.786070, 34.381599, 32.282448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425232, 35.648426, 31.750500>,  <29.899734, 35.047478, 32.098911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425232, 35.648426, 31.750500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643972, 35.313595, 31.744184>,  <30.775217, 35.112694, 31.740396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643972, 35.313595, 31.744184>,  <30.425232, 35.648426, 31.750500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643972, 35.313595, 31.744184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554268, 0.347832, 0.756175,
		-0.627489, -0.422263, 0.654180,
		0.546849, -0.837082, -0.015786,
		30.808027, 35.062469, 31.739449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550037, 35.494904, 32.392277>,  <30.425232, 35.648426, 31.750500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550037, 35.494904, 32.392277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860394, 35.320244, 32.210140>,  <31.046606, 35.215446, 32.100861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860394, 35.320244, 32.210140>,  <30.550037, 35.494904, 32.392277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860394, 35.320244, 32.210140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607588, 0.322939, 0.725636,
		-0.169802, -0.839671, 0.515868,
		0.775889, -0.436650, -0.455338,
		31.093161, 35.189247, 32.073540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963549, 35.057667, 32.863628>,  <30.550037, 35.494904, 32.392277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963549, 35.057667, 32.863628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201538, 35.178898, 32.565865>,  <31.344332, 35.251637, 32.387207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201538, 35.178898, 32.565865>,  <30.963549, 35.057667, 32.863628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201538, 35.178898, 32.565865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604276, 0.442010, 0.662931,
		0.529960, -0.844256, 0.079839,
		0.594973, 0.303082, -0.744411,
		31.380030, 35.269821, 32.342541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603874, 34.691814, 32.979076>,  <30.963549, 35.057667, 32.863628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603874, 34.691814, 32.979076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692957, 35.011383, 32.755608>,  <31.746407, 35.203125, 32.621525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692957, 35.011383, 32.755608>,  <31.603874, 34.691814, 32.979076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692957, 35.011383, 32.755608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718373, 0.252920, 0.648052,
		0.659046, -0.545664, -0.517599,
		0.222708, 0.798925, -0.558676,
		31.759769, 35.251060, 32.588005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415257, 34.792679, 32.971130>,  <31.603874, 34.691814, 32.979076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415257, 34.792679, 32.971130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283955, 35.156544, 32.869335>,  <32.205173, 35.374863, 32.808258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283955, 35.156544, 32.869335>,  <32.415257, 34.792679, 32.971130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283955, 35.156544, 32.869335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625686, 0.411229, 0.662879,
		0.707646, 0.058369, -0.704152,
		-0.328259, 0.909661, -0.254484,
		32.185478, 35.429443, 32.792992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960941, 35.252548, 32.950726>,  <32.415257, 34.792679, 32.971130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960941, 35.252548, 32.950726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637108, 35.473164, 33.031101>,  <32.442806, 35.605534, 33.079327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637108, 35.473164, 33.031101>,  <32.960941, 35.252548, 32.950726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637108, 35.473164, 33.031101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527864, 0.534299, 0.660215,
		0.256768, 0.640572, -0.723697,
		-0.809586, 0.551536, 0.200944,
		32.394234, 35.638626, 33.091385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211189, 35.936790, 32.916790>,  <32.960941, 35.252548, 32.950726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211189, 35.936790, 32.916790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897324, 35.893234, 33.160900>,  <32.709003, 35.867100, 33.307365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897324, 35.893234, 33.160900>,  <33.211189, 35.936790, 32.916790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897324, 35.893234, 33.160900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496709, 0.478585, 0.724041,
		-0.370915, 0.871262, -0.321441,
		-0.784667, -0.108895, 0.610279,
		32.661922, 35.860565, 33.343983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313824, 36.642796, 33.136696>,  <33.211189, 35.936790, 32.916790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313824, 36.642796, 33.136696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961716, 36.475273, 33.225895>,  <32.750450, 36.374760, 33.279415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961716, 36.475273, 33.225895>,  <33.313824, 36.642796, 33.136696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961716, 36.475273, 33.225895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096586, 0.301987, 0.948406,
		-0.464538, 0.856393, -0.225380,
		-0.880270, -0.418802, 0.223000,
		32.697636, 36.349632, 33.292793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972324, 37.152775, 33.476902>,  <33.313824, 36.642796, 33.136696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972324, 37.152775, 33.476902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796154, 36.814121, 33.596390>,  <32.690453, 36.610928, 33.668083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796154, 36.814121, 33.596390>,  <32.972324, 37.152775, 33.476902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796154, 36.814121, 33.596390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046965, 0.310547, 0.949397,
		-0.896559, 0.432169, -0.097011,
		-0.440427, -0.846635, 0.298720,
		32.664024, 36.560131, 33.686005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628170, 37.361702, 34.071636>,  <32.972324, 37.152775, 33.476902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628170, 37.361702, 34.071636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654961, 36.963852, 34.103233>,  <32.671036, 36.725143, 34.122192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654961, 36.963852, 34.103233>,  <32.628170, 37.361702, 34.071636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654961, 36.963852, 34.103233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069674, 0.074312, 0.994798,
		-0.995319, -0.072134, -0.064322,
		0.066979, -0.994623, 0.078990,
		32.675053, 36.665466, 34.126930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931126, 37.150845, 34.749126>,  <32.628170, 37.361702, 34.071636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931126, 37.150845, 34.749126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836391, 36.891342, 35.038410>,  <32.779552, 36.735641, 35.211979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836391, 36.891342, 35.038410>,  <32.931126, 37.150845, 34.749126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836391, 36.891342, 35.038410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112706, -0.721013, -0.683695,
		0.964990, -0.243433, 0.097644,
		-0.236836, -0.648754, 0.723206,
		32.765339, 36.696716, 35.255371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350727, 36.584957, 34.679821>,  <32.931126, 37.150845, 34.749126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350727, 36.584957, 34.679821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986317, 36.497303, 34.819542>,  <32.767670, 36.444710, 34.903374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986317, 36.497303, 34.819542>,  <33.350727, 36.584957, 34.679821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986317, 36.497303, 34.819542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182437, -0.545494, -0.818018,
		0.369798, -0.808961, 0.456980,
		-0.911025, -0.219132, 0.349307,
		32.713009, 36.431564, 34.924335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121498, 35.835869, 34.690773>,  <33.350727, 36.584957, 34.679821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121498, 35.835869, 34.690773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812115, 36.080509, 34.624184>,  <32.626484, 36.227295, 34.584229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812115, 36.080509, 34.624184>,  <33.121498, 35.835869, 34.690773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812115, 36.080509, 34.624184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223957, -0.509388, -0.830883,
		-0.592972, -0.605365, 0.530960,
		-0.773452, 0.611602, -0.166477,
		32.580078, 36.263988, 34.574242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836216, 35.467903, 34.213375>,  <33.121498, 35.835869, 34.690773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836216, 35.467903, 34.213375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699570, 35.843548, 34.198532>,  <32.617584, 36.068935, 34.189625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699570, 35.843548, 34.198532>,  <32.836216, 35.467903, 34.213375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699570, 35.843548, 34.198532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223695, -0.119594, -0.967294,
		-0.912832, -0.322139, 0.250929,
		-0.341612, 0.939108, -0.037109,
		32.597084, 36.125278, 34.187401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073112, 35.512276, 34.128555>,  <32.836216, 35.467903, 34.213375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073112, 35.512276, 34.128555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231796, 35.843723, 33.970562>,  <32.327007, 36.042591, 33.875767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231796, 35.843723, 33.970562>,  <32.073112, 35.512276, 34.128555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231796, 35.843723, 33.970562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291572, -0.294261, -0.910163,
		-0.870406, 0.476237, 0.124866,
		0.396710, 0.828619, -0.394984,
		32.350811, 36.092308, 33.852066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562792, 35.858421, 33.642200>,  <32.073112, 35.512276, 34.128555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562792, 35.858421, 33.642200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928242, 35.983414, 33.538162>,  <32.147511, 36.058411, 33.475739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928242, 35.983414, 33.538162>,  <31.562792, 35.858421, 33.642200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928242, 35.983414, 33.538162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228218, -0.135272, -0.964167,
		-0.336466, 0.940244, -0.052274,
		0.913623, 0.312480, -0.260095,
		32.202328, 36.077156, 33.460133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513933, 36.418076, 33.155807>,  <31.562792, 35.858421, 33.642200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513933, 36.418076, 33.155807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853210, 36.210758, 33.112095>,  <32.056778, 36.086369, 33.085869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853210, 36.210758, 33.112095>,  <31.513933, 36.418076, 33.155807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853210, 36.210758, 33.112095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284677, -0.272065, -0.919206,
		0.446684, 0.810775, -0.378309,
		0.848194, -0.518290, -0.109282,
		32.107670, 36.055271, 33.079311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812935, 36.610905, 32.509899>,  <31.513933, 36.418076, 33.155807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812935, 36.610905, 32.509899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901175, 36.238903, 32.627491>,  <31.954119, 36.015701, 32.698044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901175, 36.238903, 32.627491>,  <31.812935, 36.610905, 32.509899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901175, 36.238903, 32.627491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295711, -0.350986, -0.888462,
		0.929458, 0.109061, -0.352440,
		0.220597, -0.930008, 0.293976,
		31.967354, 35.959900, 32.715683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101944, 36.323433, 31.907900>,  <31.812935, 36.610905, 32.509899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101944, 36.323433, 31.907900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967627, 36.018822, 32.129646>,  <31.887037, 35.836056, 32.262695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967627, 36.018822, 32.129646>,  <32.101944, 36.323433, 31.907900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967627, 36.018822, 32.129646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392719, -0.421760, -0.817245,
		0.856163, -0.492135, -0.157442,
		-0.335792, -0.761526, 0.554367,
		31.866888, 35.790363, 32.295956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257484, 35.745140, 31.488962>,  <32.101944, 36.323433, 31.907900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257484, 35.745140, 31.488962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967680, 35.646580, 31.746447>,  <31.793797, 35.587444, 31.900938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967680, 35.646580, 31.746447>,  <32.257484, 35.745140, 31.488962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967680, 35.646580, 31.746447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472323, -0.502682, -0.724031,
		0.501984, -0.828612, 0.247820,
		-0.724516, -0.246401, 0.643711,
		31.750326, 35.572659, 31.939560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202137, 34.983749, 31.482653>,  <32.257484, 35.745140, 31.488962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202137, 34.983749, 31.482653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864697, 35.183060, 31.562714>,  <31.662233, 35.302647, 31.610750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864697, 35.183060, 31.562714>,  <32.202137, 34.983749, 31.482653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864697, 35.183060, 31.562714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457634, -0.472140, -0.753428,
		-0.280917, -0.727187, 0.626326,
		-0.843597, 0.498279, 0.200153,
		31.611618, 35.332542, 31.622759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389164, 34.924950, 30.754478>,  <32.202137, 34.983749, 31.482653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389164, 34.924950, 30.754478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452789, 34.570038, 30.581305>,  <32.490963, 34.357090, 30.477400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452789, 34.570038, 30.581305>,  <32.389164, 34.924950, 30.754478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452789, 34.570038, 30.581305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733911, 0.399578, -0.549282,
		0.660359, -0.230365, 0.714743,
		0.159061, -0.887282, -0.432932,
		32.500507, 34.303852, 30.451426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152828, 34.778057, 30.776186>,  <32.389164, 34.924950, 30.754478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152828, 34.778057, 30.776186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944851, 34.608166, 30.479734>,  <32.820065, 34.506233, 30.301865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944851, 34.608166, 30.479734>,  <33.152828, 34.778057, 30.776186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944851, 34.608166, 30.479734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642027, 0.377981, -0.667032,
		0.563439, -0.822640, 0.076159,
		-0.519940, -0.424727, -0.741127,
		32.788868, 34.480747, 30.257397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524025, 34.131870, 30.505880>,  <33.152828, 34.778057, 30.776186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524025, 34.131870, 30.505880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305351, 34.313469, 30.224451>,  <33.174145, 34.422428, 30.055593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305351, 34.313469, 30.224451>,  <33.524025, 34.131870, 30.505880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305351, 34.313469, 30.224451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834190, 0.368071, -0.410672,
		0.072521, -0.811425, -0.579940,
		-0.546689, 0.453997, -0.703575,
		33.141346, 34.449669, 30.013378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873917, 34.023685, 29.856422>,  <33.524025, 34.131870, 30.505880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873917, 34.023685, 29.856422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646591, 34.344246, 29.781824>,  <33.510197, 34.536583, 29.737066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646591, 34.344246, 29.781824>,  <33.873917, 34.023685, 29.856422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646591, 34.344246, 29.781824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703950, 0.356218, -0.614462,
		-0.425996, -0.480490, -0.766588,
		-0.568315, 0.801398, -0.186493,
		33.476097, 34.584663, 29.725876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717384, 34.195480, 29.105083>,  <33.873917, 34.023685, 29.856422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717384, 34.195480, 29.105083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760132, 34.519787, 29.335295>,  <33.785782, 34.714371, 29.473421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760132, 34.519787, 29.335295>,  <33.717384, 34.195480, 29.105083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760132, 34.519787, 29.335295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829848, 0.246098, -0.500788,
		-0.547660, 0.531120, -0.646514,
		0.106873, 0.810770, 0.575527,
		33.792194, 34.763020, 29.507954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726803, 34.768101, 28.664410>,  <33.717384, 34.195480, 29.105083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726803, 34.768101, 28.664410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916801, 34.854206, 29.005711>,  <34.030800, 34.905869, 29.210491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916801, 34.854206, 29.005711>,  <33.726803, 34.768101, 28.664410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916801, 34.854206, 29.005711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797405, 0.304806, -0.520805,
		-0.372188, 0.927768, -0.026873,
		0.474996, 0.215266, 0.853252,
		34.059299, 34.918785, 29.261686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003605, 35.388779, 28.458313>,  <33.726803, 34.768101, 28.664410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003605, 35.388779, 28.458313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187939, 35.229637, 28.775639>,  <34.298538, 35.134151, 28.966034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187939, 35.229637, 28.775639>,  <34.003605, 35.388779, 28.458313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187939, 35.229637, 28.775639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875267, 0.351572, -0.332121,
		-0.146770, 0.847412, 0.510246,
		0.460832, -0.397857, 0.793312,
		34.326187, 35.110279, 29.013632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521412, 35.922089, 28.757700>,  <34.003605, 35.388779, 28.458313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521412, 35.922089, 28.757700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661671, 35.601917, 28.952169>,  <34.745827, 35.409817, 29.068851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661671, 35.601917, 28.952169>,  <34.521412, 35.922089, 28.757700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661671, 35.601917, 28.952169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932569, 0.250878, -0.259568,
		0.085794, 0.544408, 0.834421,
		0.350648, -0.800425, 0.486174,
		34.766865, 35.361790, 29.098022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172138, 36.082542, 28.967224>,  <34.521412, 35.922089, 28.757700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172138, 36.082542, 28.967224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207043, 35.684124, 28.960529>,  <35.227985, 35.445072, 28.956512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207043, 35.684124, 28.960529>,  <35.172138, 36.082542, 28.967224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207043, 35.684124, 28.960529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875884, 0.084720, -0.475027,
		0.474566, 0.026794, 0.879812,
		0.087266, -0.996045, -0.016737,
		35.233223, 35.385311, 28.955509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876389, 35.914574, 29.018995>,  <35.172138, 36.082542, 28.967224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876389, 35.914574, 29.018995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731506, 35.595036, 28.826887>,  <35.644577, 35.403313, 28.711622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731506, 35.595036, 28.826887>,  <35.876389, 35.914574, 29.018995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731506, 35.595036, 28.826887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690142, 0.116489, -0.714237,
		0.626509, -0.590154, 0.509122,
		-0.362202, -0.798842, -0.480271,
		35.622845, 35.355381, 28.682806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492317, 35.387749, 28.987728>,  <35.876389, 35.914574, 29.018995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492317, 35.387749, 28.987728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225132, 35.294064, 28.705175>,  <36.064819, 35.237854, 28.535645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225132, 35.294064, 28.705175>,  <36.492317, 35.387749, 28.987728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225132, 35.294064, 28.705175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720683, 0.033129, -0.692473,
		0.185586, -0.971621, 0.146662,
		-0.667963, -0.234210, -0.706379,
		36.024742, 35.223801, 28.493261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648930, 34.718197, 28.620186>,  <36.492317, 35.387749, 28.987728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648930, 34.718197, 28.620186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453239, 34.966038, 28.374666>,  <36.335827, 35.114742, 28.227354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453239, 34.966038, 28.374666>,  <36.648930, 34.718197, 28.620186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453239, 34.966038, 28.374666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744852, -0.069288, -0.663623,
		-0.453712, -0.781850, -0.427616,
		-0.489225, 0.619604, -0.613799,
		36.306473, 35.151920, 28.190527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360603, 34.382542, 28.053637>,  <36.648930, 34.718197, 28.620186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360603, 34.382542, 28.053637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445499, 34.761135, 27.956371>,  <36.496437, 34.988289, 27.898012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445499, 34.761135, 27.956371>,  <36.360603, 34.382542, 28.053637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445499, 34.761135, 27.956371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643573, -0.322627, -0.694065,
		-0.735370, -0.009185, -0.677603,
		0.212238, 0.946482, -0.243162,
		36.509171, 35.045078, 27.883423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799614, 34.382099, 27.522919>,  <36.360603, 34.382542, 28.053637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799614, 34.382099, 27.522919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109806, 34.135258, 27.469530>,  <37.295921, 33.987152, 27.437498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109806, 34.135258, 27.469530>,  <36.799614, 34.382099, 27.522919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109806, 34.135258, 27.469530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051890, 0.148388, -0.987567,
		0.629235, 0.772765, 0.083051,
		0.775481, -0.617102, -0.133470,
		37.342449, 33.950127, 27.429489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221191, 34.628426, 26.958822>,  <36.799614, 34.382099, 27.522919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221191, 34.628426, 26.958822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329811, 34.243591, 26.969042>,  <37.394985, 34.012691, 26.975174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329811, 34.243591, 26.969042>,  <37.221191, 34.628426, 26.958822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329811, 34.243591, 26.969042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167676, 0.021156, -0.985615,
		0.947705, 0.271930, 0.167063,
		0.271552, -0.962085, 0.025547,
		37.411278, 33.954967, 26.976706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948490, 34.351025, 26.795738>,  <37.221191, 34.628426, 26.958822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948490, 34.351025, 26.795738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653385, 34.109661, 26.674679>,  <37.476322, 33.964844, 26.602043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653385, 34.109661, 26.674679>,  <37.948490, 34.351025, 26.795738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653385, 34.109661, 26.674679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173055, 0.264288, -0.948791,
		0.652498, -0.752360, -0.090559,
		-0.737766, -0.603412, -0.302647,
		37.432056, 33.928638, 26.583885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158352, 34.029346, 26.232578>,  <37.948490, 34.351025, 26.795738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158352, 34.029346, 26.232578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768101, 33.942829, 26.217823>,  <37.533951, 33.890919, 26.208969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768101, 33.942829, 26.217823>,  <38.158352, 34.029346, 26.232578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768101, 33.942829, 26.217823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051398, -0.061842, -0.996762,
		0.213310, -0.974368, 0.071452,
		-0.975632, -0.216292, -0.036889,
		37.475410, 33.877941, 26.206757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946712, 33.228916, 26.074823>,  <38.158352, 34.029346, 26.232578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946712, 33.228916, 26.074823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690376, 33.511219, 25.954002>,  <37.536575, 33.680599, 25.881510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690376, 33.511219, 25.954002>,  <37.946712, 33.228916, 26.074823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690376, 33.511219, 25.954002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035091, -0.366121, -0.929906,
		-0.766871, -0.606520, 0.209860,
		-0.640841, 0.705754, -0.302051,
		37.498123, 33.722946, 25.863388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419434, 32.853588, 25.640705>,  <37.946712, 33.228916, 26.074823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419434, 32.853588, 25.640705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407490, 33.239193, 25.535040>,  <37.400326, 33.470558, 25.471640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407490, 33.239193, 25.535040>,  <37.419434, 32.853588, 25.640705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407490, 33.239193, 25.535040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060455, -0.265541, -0.962203,
		-0.997724, -0.012759, 0.066207,
		-0.029857, 0.964015, -0.264165,
		37.398533, 33.528397, 25.455790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032902, 32.806614, 25.114225>,  <37.419434, 32.853588, 25.640705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032902, 32.806614, 25.114225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241405, 33.147820, 25.103966>,  <37.366508, 33.352543, 25.097809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241405, 33.147820, 25.103966>,  <37.032902, 32.806614, 25.114225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241405, 33.147820, 25.103966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140368, -0.115347, -0.983357,
		-0.841773, 0.508986, -0.179861,
		0.521262, 0.853011, -0.025650,
		37.397785, 33.403725, 25.096272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826061, 33.141327, 24.503401>,  <37.032902, 32.806614, 25.114225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826061, 33.141327, 24.503401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161297, 33.350597, 24.565233>,  <37.362438, 33.476158, 24.602333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161297, 33.350597, 24.565233>,  <36.826061, 33.141327, 24.503401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161297, 33.350597, 24.565233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168832, 0.020703, -0.985427,
		-0.518748, 0.851976, -0.070977,
		0.838091, 0.523172, 0.154580,
		37.412724, 33.507549, 24.611607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834282, 33.660084, 23.987345>,  <36.826061, 33.141327, 24.503401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834282, 33.660084, 23.987345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204533, 33.638050, 24.137108>,  <37.426682, 33.624828, 24.226965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204533, 33.638050, 24.137108>,  <36.834282, 33.660084, 23.987345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204533, 33.638050, 24.137108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371797, -0.052141, -0.926849,
		0.070578, 0.997119, -0.027783,
		0.925627, -0.055085, 0.374406,
		37.482220, 33.621525, 24.249430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244282, 34.168606, 23.599028>,  <36.834282, 33.660084, 23.987345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244282, 34.168606, 23.599028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504799, 33.909763, 23.757557>,  <37.661110, 33.754459, 23.852674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504799, 33.909763, 23.757557>,  <37.244282, 34.168606, 23.599028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504799, 33.909763, 23.757557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411552, -0.137570, -0.900944,
		0.637526, 0.749887, 0.176719,
		0.651295, -0.647104, 0.396322,
		37.700188, 33.715633, 23.876453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834644, 34.398323, 23.313673>,  <37.244282, 34.168606, 23.599028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834644, 34.398323, 23.313673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903336, 34.020287, 23.424892>,  <37.944550, 33.793465, 23.491625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903336, 34.020287, 23.424892>,  <37.834644, 34.398323, 23.313673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903336, 34.020287, 23.424892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575432, -0.132861, -0.806986,
		0.799617, 0.298582, 0.521019,
		0.171728, -0.945091, 0.278051,
		37.954853, 33.736759, 23.508308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518066, 34.289749, 23.133999>,  <37.834644, 34.398323, 23.313673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518066, 34.289749, 23.133999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367401, 33.919746, 23.153917>,  <38.277000, 33.697742, 23.165869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367401, 33.919746, 23.153917>,  <38.518066, 34.289749, 23.133999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367401, 33.919746, 23.153917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628994, -0.294848, -0.719327,
		0.680067, -0.239624, 0.692885,
		-0.376663, -0.925011, 0.049795,
		38.254402, 33.642242, 23.168856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043873, 33.857876, 23.112104>,  <38.518066, 34.289749, 23.133999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043873, 33.857876, 23.112104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736485, 33.639858, 22.978016>,  <38.552052, 33.509048, 22.897562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736485, 33.639858, 22.978016>,  <39.043873, 33.857876, 23.112104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736485, 33.639858, 22.978016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560162, -0.319802, -0.764163,
		0.309300, -0.775017, 0.551074,
		-0.768474, -0.545046, -0.335221,
		38.505943, 33.476345, 22.877449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309715, 33.282578, 22.946541>,  <39.043873, 33.857876, 23.112104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309715, 33.282578, 22.946541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970490, 33.247822, 22.737450>,  <38.766956, 33.226971, 22.611996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970490, 33.247822, 22.737450>,  <39.309715, 33.282578, 22.946541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970490, 33.247822, 22.737450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519616, -0.329755, -0.788201,
		-0.103889, -0.940060, 0.324799,
		-0.848060, -0.086886, -0.522728,
		38.716072, 33.221756, 22.580631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296402, 32.609344, 22.787193>,  <39.309715, 33.282578, 22.946541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296402, 32.609344, 22.787193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075245, 32.829597, 22.537039>,  <38.942551, 32.961750, 22.386946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075245, 32.829597, 22.537039>,  <39.296402, 32.609344, 22.787193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075245, 32.829597, 22.537039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542265, -0.332084, -0.771796,
		-0.632658, -0.765848, -0.114982,
		-0.552894, 0.550633, -0.625388,
		38.909378, 32.994789, 22.349422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185387, 32.224854, 22.220415>,  <39.296402, 32.609344, 22.787193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185387, 32.224854, 22.220415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067837, 32.575687, 22.068436>,  <38.997307, 32.786186, 21.977247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067837, 32.575687, 22.068436>,  <39.185387, 32.224854, 22.220415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067837, 32.575687, 22.068436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225334, -0.322730, -0.919277,
		-0.928905, -0.355764, -0.102797,
		-0.293870, 0.877085, -0.379951,
		38.979675, 32.838814, 21.954451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812119, 32.125679, 21.662628>,  <39.185387, 32.224854, 22.220415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812119, 32.125679, 21.662628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941044, 32.502800, 21.628601>,  <39.018398, 32.729073, 21.608185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941044, 32.502800, 21.628601>,  <38.812119, 32.125679, 21.662628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941044, 32.502800, 21.628601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304010, -0.188196, -0.933895,
		-0.896488, 0.275149, -0.347280,
		0.322317, 0.942802, -0.085067,
		39.037739, 32.785641, 21.603081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656303, 32.269009, 20.935888>,  <38.812119, 32.125679, 21.662628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656303, 32.269009, 20.935888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881855, 32.583435, 21.037184>,  <39.017185, 32.772091, 21.097961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881855, 32.583435, 21.037184>,  <38.656303, 32.269009, 20.935888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881855, 32.583435, 21.037184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292238, 0.096874, -0.951426,
		-0.772420, 0.610499, -0.175094,
		0.563883, 0.786070, 0.253239,
		39.051022, 32.819256, 21.113155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395767, 32.795990, 20.569263>,  <38.656303, 32.269009, 20.935888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395767, 32.795990, 20.569263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774830, 32.877251, 20.667791>,  <39.002270, 32.926006, 20.726908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774830, 32.877251, 20.667791>,  <38.395767, 32.795990, 20.569263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774830, 32.877251, 20.667791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216963, 0.156258, -0.963593,
		-0.234241, 0.966599, 0.104004,
		0.947659, 0.203148, 0.246318,
		39.059128, 32.938194, 20.741686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549408, 33.312450, 20.107595>,  <38.395767, 32.795990, 20.569263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549408, 33.312450, 20.107595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914536, 33.190411, 20.216173>,  <39.133610, 33.117188, 20.281319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914536, 33.190411, 20.216173>,  <38.549408, 33.312450, 20.107595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914536, 33.190411, 20.216173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294292, 0.030633, -0.955224,
		0.283128, 0.951826, 0.117752,
		0.912815, -0.305104, 0.271442,
		39.188381, 33.098881, 20.297606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105576, 33.799011, 19.955257>,  <38.549408, 33.312450, 20.107595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105576, 33.799011, 19.955257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290813, 33.444550, 19.961861>,  <39.401955, 33.231873, 19.965822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290813, 33.444550, 19.961861>,  <39.105576, 33.799011, 19.955257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290813, 33.444550, 19.961861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392271, 0.188222, -0.900387,
		0.794776, 0.423438, 0.434777,
		0.463093, -0.886156, 0.016508,
		39.429741, 33.178703, 19.966814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618988, 33.980850, 19.575962>,  <39.105576, 33.799011, 19.955257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618988, 33.980850, 19.575962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636143, 33.581234, 19.579576>,  <39.646435, 33.341465, 19.581745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636143, 33.581234, 19.579576>,  <39.618988, 33.980850, 19.575962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636143, 33.581234, 19.579576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353354, 0.006709, -0.935466,
		0.934506, 0.043310, 0.353302,
		0.042886, -0.999039, 0.009034,
		39.649010, 33.281521, 19.582287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221138, 33.800533, 19.523823>,  <39.618988, 33.980850, 19.575962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221138, 33.800533, 19.523823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053970, 33.454666, 19.412331>,  <39.953671, 33.247147, 19.345434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053970, 33.454666, 19.412331>,  <40.221138, 33.800533, 19.523823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053970, 33.454666, 19.412331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513467, 0.028292, -0.857643,
		0.749462, -0.501548, 0.432154,
		-0.417922, -0.864667, -0.278732,
		39.928593, 33.195267, 19.328711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787823, 33.312405, 19.372936>,  <40.221138, 33.800533, 19.523823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787823, 33.312405, 19.372936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471218, 33.171638, 19.173073>,  <40.281254, 33.087177, 19.053154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471218, 33.171638, 19.173073>,  <40.787823, 33.312405, 19.372936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471218, 33.171638, 19.173073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527476, 0.019548, -0.849345,
		0.308666, -0.935827, 0.170155,
		-0.791514, -0.351917, -0.499660,
		40.233765, 33.066063, 19.023174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044945, 32.827789, 18.881046>,  <40.787823, 33.312405, 19.372936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044945, 32.827789, 18.881046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670738, 32.904064, 18.762079>,  <40.446217, 32.949829, 18.690699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670738, 32.904064, 18.762079>,  <41.044945, 32.827789, 18.881046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670738, 32.904064, 18.762079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300845, -0.011402, -0.953605,
		-0.185230, -0.981585, -0.046700,
		-0.935512, 0.190686, -0.297417,
		40.390083, 32.961269, 18.672853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023609, 32.416725, 18.303989>,  <41.044945, 32.827789, 18.881046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023609, 32.416725, 18.303989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712288, 32.658962, 18.237656>,  <40.525494, 32.804302, 18.197855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712288, 32.658962, 18.237656>,  <41.023609, 32.416725, 18.303989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712288, 32.658962, 18.237656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259443, 0.069661, -0.963243,
		-0.571779, -0.792721, -0.211334,
		-0.778305, 0.605591, -0.165835,
		40.478798, 32.840641, 18.187904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564072, 32.170319, 17.733009>,  <41.023609, 32.416725, 18.303989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564072, 32.170319, 17.733009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470924, 32.559303, 17.736883>,  <40.415035, 32.792694, 17.739206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470924, 32.559303, 17.736883>,  <40.564072, 32.170319, 17.733009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470924, 32.559303, 17.736883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027833, 0.003289, -0.999607,
		-0.972110, -0.233047, 0.026301,
		-0.232869, 0.972460, 0.009684,
		40.401062, 32.851040, 17.739788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843018, 32.252689, 17.350973>,  <40.564072, 32.170319, 17.733009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843018, 32.252689, 17.350973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070930, 32.581387, 17.347401>,  <40.207680, 32.778606, 17.345257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070930, 32.581387, 17.347401>,  <39.843018, 32.252689, 17.350973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070930, 32.581387, 17.347401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096904, 0.056392, -0.993695,
		-0.816061, 0.567057, 0.111761,
		0.569784, 0.821746, -0.008931,
		40.241867, 32.827911, 17.344721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458912, 32.637005, 16.896114>,  <39.843018, 32.252689, 17.350973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458912, 32.637005, 16.896114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794258, 32.854797, 16.885632>,  <39.995464, 32.985474, 16.879341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794258, 32.854797, 16.885632>,  <39.458912, 32.637005, 16.896114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794258, 32.854797, 16.885632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222997, 0.298692, -0.927931,
		-0.497417, 0.783785, 0.371830,
		0.838361, 0.544485, -0.026207,
		40.045765, 33.018143, 16.877769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227898, 33.273922, 16.672089>,  <39.458912, 32.637005, 16.896114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227898, 33.273922, 16.672089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623821, 33.292667, 16.618315>,  <39.861378, 33.303913, 16.586050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623821, 33.292667, 16.618315>,  <39.227898, 33.273922, 16.672089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623821, 33.292667, 16.618315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142045, 0.388821, -0.910297,
		0.009613, 0.920121, 0.391517,
		0.989814, 0.046862, -0.134437,
		39.920765, 33.306725, 16.577984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398342, 34.017067, 16.536591>,  <39.227898, 33.273922, 16.672089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398342, 34.017067, 16.536591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714817, 33.807873, 16.409777>,  <39.904701, 33.682358, 16.333689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714817, 33.807873, 16.409777>,  <39.398342, 34.017067, 16.536591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714817, 33.807873, 16.409777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094151, 0.616374, -0.781805,
		0.604282, 0.588705, 0.536907,
		0.791188, -0.522981, -0.317036,
		39.952175, 33.650978, 16.314667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919613, 34.487335, 16.355314>,  <39.398342, 34.017067, 16.536591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919613, 34.487335, 16.355314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990044, 34.157310, 16.140551>,  <40.032303, 33.959297, 16.011692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990044, 34.157310, 16.140551>,  <39.919613, 34.487335, 16.355314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990044, 34.157310, 16.140551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119871, 0.559345, -0.820222,
		0.977050, 0.080065, 0.197390,
		0.176080, -0.825059, -0.536911,
		40.042870, 33.909794, 15.979477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447632, 34.708515, 15.918036>,  <39.919613, 34.487335, 16.355314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447632, 34.708515, 15.918036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250568, 34.396095, 15.764543>,  <40.132332, 34.208645, 15.672446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250568, 34.396095, 15.764543>,  <40.447632, 34.708515, 15.918036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250568, 34.396095, 15.764543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061441, 0.471079, -0.879948,
		0.868052, -0.409935, -0.280069,
		-0.492657, -0.781049, -0.383734,
		40.102772, 34.161781, 15.649423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786037, 34.568645, 15.292970>,  <40.447632, 34.708515, 15.918036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786037, 34.568645, 15.292970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418159, 34.418072, 15.248338>,  <40.197433, 34.327728, 15.221559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418159, 34.418072, 15.248338>,  <40.786037, 34.568645, 15.292970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418159, 34.418072, 15.248338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032786, 0.356830, -0.933594,
		0.391256, -0.854966, -0.340518,
		-0.919698, -0.376439, -0.111581,
		40.142250, 34.305141, 15.214864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793247, 34.187820, 14.573171>,  <40.786037, 34.568645, 15.292970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793247, 34.187820, 14.573171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410576, 34.261288, 14.663527>,  <40.180973, 34.305367, 14.717740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410576, 34.261288, 14.663527>,  <40.793247, 34.187820, 14.573171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410576, 34.261288, 14.663527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172525, 0.267328, -0.948035,
		-0.234509, -0.945940, -0.224061,
		-0.956682, 0.183666, 0.225889,
		40.123569, 34.316387, 14.731293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483208, 34.028191, 13.952631>,  <40.793247, 34.187820, 14.573171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483208, 34.028191, 13.952631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197224, 34.226208, 14.150125>,  <40.025635, 34.345016, 14.268620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197224, 34.226208, 14.150125>,  <40.483208, 34.028191, 13.952631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197224, 34.226208, 14.150125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295347, 0.426235, -0.855040,
		-0.633726, -0.757139, -0.158531,
		-0.714956, 0.495039, 0.493735,
		39.982738, 34.374718, 14.298245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880318, 33.783394, 13.638968>,  <40.483208, 34.028191, 13.952631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880318, 33.783394, 13.638968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793983, 34.133896, 13.811291>,  <39.742184, 34.344196, 13.914684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793983, 34.133896, 13.811291>,  <39.880318, 33.783394, 13.638968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793983, 34.133896, 13.811291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292904, 0.362782, -0.884645,
		-0.931461, -0.317126, 0.178355,
		-0.215840, 0.876253, 0.430805,
		39.729233, 34.396770, 13.940533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264542, 33.981808, 13.403966>,  <39.880318, 33.783394, 13.638968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264542, 33.981808, 13.403966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461166, 34.315731, 13.503134>,  <39.579140, 34.516087, 13.562634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461166, 34.315731, 13.503134>,  <39.264542, 33.981808, 13.403966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461166, 34.315731, 13.503134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273185, 0.418139, -0.866331,
		-0.826885, 0.358126, 0.433598,
		0.491560, 0.834809, 0.247918,
		39.608635, 34.566174, 13.577509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899529, 34.565796, 13.155349>,  <39.264542, 33.981808, 13.403966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899529, 34.565796, 13.155349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233612, 34.770119, 13.236833>,  <39.434063, 34.892712, 13.285723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233612, 34.770119, 13.236833>,  <38.899529, 34.565796, 13.155349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233612, 34.770119, 13.236833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193450, 0.619658, -0.760658,
		-0.514779, 0.595904, 0.616362,
		0.835213, 0.510806, 0.203709,
		39.484177, 34.923359, 13.297945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702808, 35.333508, 13.213962>,  <38.899529, 34.565796, 13.155349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702808, 35.333508, 13.213962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081913, 35.282131, 13.097176>,  <39.309376, 35.251305, 13.027104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081913, 35.282131, 13.097176>,  <38.702808, 35.333508, 13.213962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081913, 35.282131, 13.097176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202218, 0.465936, -0.861401,
		0.246673, 0.875447, 0.415626,
		0.947766, -0.128437, -0.291965,
		39.366241, 35.243599, 13.009586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931808, 35.994434, 12.855144>,  <38.702808, 35.333508, 13.213962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931808, 35.994434, 12.855144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188023, 35.711880, 12.734656>,  <39.341751, 35.542347, 12.662364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188023, 35.711880, 12.734656>,  <38.931808, 35.994434, 12.855144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188023, 35.711880, 12.734656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066602, 0.441868, -0.894604,
		0.765037, 0.552963, 0.330078,
		0.640534, -0.706389, -0.301217,
		39.380184, 35.499962, 12.644291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432446, 36.435059, 12.434846>,  <38.931808, 35.994434, 12.855144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432446, 36.435059, 12.434846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474598, 36.056366, 12.313132>,  <39.499889, 35.829151, 12.240105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474598, 36.056366, 12.313132>,  <39.432446, 36.435059, 12.434846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474598, 36.056366, 12.313132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193159, 0.319647, -0.927640,
		0.975492, 0.038980, 0.216554,
		0.105380, -0.946735, -0.304284,
		39.506210, 35.772346, 12.221848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935886, 36.549667, 11.925665>,  <39.432446, 36.435059, 12.434846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935886, 36.549667, 11.925665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810051, 36.171745, 11.889038>,  <39.734550, 35.944992, 11.867063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810051, 36.171745, 11.889038>,  <39.935886, 36.549667, 11.925665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810051, 36.171745, 11.889038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060855, 0.076191, -0.995234,
		0.947276, -0.318661, 0.033527,
		-0.314588, -0.944802, -0.091566,
		39.715675, 35.888306, 11.861568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483444, 36.154118, 11.473451>,  <39.935886, 36.549667, 11.925665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483444, 36.154118, 11.473451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110699, 36.009094, 11.468102>,  <39.887051, 35.922081, 11.464892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110699, 36.009094, 11.468102>,  <40.483444, 36.154118, 11.473451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110699, 36.009094, 11.468102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056589, 0.181657, -0.981732,
		0.358364, -0.914085, -0.189797,
		-0.931865, -0.362558, -0.013372,
		39.831139, 35.900326, 11.464090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452576, 35.945816, 10.829561>,  <40.483444, 36.154118, 11.473451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452576, 35.945816, 10.829561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062641, 35.922600, 10.915659>,  <39.828682, 35.908669, 10.967318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062641, 35.922600, 10.915659>,  <40.452576, 35.945816, 10.829561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062641, 35.922600, 10.915659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220125, 0.097855, -0.970551,
		0.035272, -0.993507, -0.108169,
		-0.974834, -0.058044, 0.215245,
		39.770191, 35.905186, 10.980232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230232, 35.543388, 10.273580>,  <40.452576, 35.945816, 10.829561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230232, 35.543388, 10.273580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894703, 35.708511, 10.415545>,  <39.693386, 35.807583, 10.500725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894703, 35.708511, 10.415545>,  <40.230232, 35.543388, 10.273580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894703, 35.708511, 10.415545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209145, 0.357549, -0.910174,
		-0.502622, -0.837707, -0.213585,
		-0.838826, 0.412804, 0.354914,
		39.643055, 35.832352, 10.522019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623737, 35.377060, 9.794474>,  <40.230232, 35.543388, 10.273580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623737, 35.377060, 9.794474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535057, 35.711384, 9.995378>,  <39.481850, 35.911980, 10.115921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535057, 35.711384, 9.995378>,  <39.623737, 35.377060, 9.794474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535057, 35.711384, 9.995378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403448, 0.390300, -0.827584,
		-0.887737, -0.386115, 0.250676,
		-0.221704, 0.835812, 0.502262,
		39.468544, 35.962128, 10.146057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918926, 35.401142, 9.636292>,  <39.623737, 35.377060, 9.794474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918926, 35.401142, 9.636292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060036, 35.764278, 9.726962>,  <39.144703, 35.982159, 9.781363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060036, 35.764278, 9.726962>,  <38.918926, 35.401142, 9.636292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060036, 35.764278, 9.726962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592590, 0.404237, -0.696727,
		-0.724145, 0.111465, 0.680580,
		0.352777, 0.907837, 0.226673,
		39.165867, 36.036629, 9.794964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387497, 35.791588, 9.493179>,  <38.918926, 35.401142, 9.636292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387497, 35.791588, 9.493179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689861, 36.051819, 9.522418>,  <38.871281, 36.207958, 9.539961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689861, 36.051819, 9.522418>,  <38.387497, 35.791588, 9.493179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689861, 36.051819, 9.522418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479579, 0.626286, -0.614630,
		-0.445643, 0.429552, 0.785422,
		0.755914, 0.650577, 0.073096,
		38.916637, 36.246990, 9.544347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319176, 36.529312, 9.560718>,  <38.387497, 35.791588, 9.493179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319176, 36.529312, 9.560718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298058, 36.904572, 9.697590>,  <38.285385, 37.129726, 9.779714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298058, 36.904572, 9.697590>,  <38.319176, 36.529312, 9.560718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298058, 36.904572, 9.697590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296849, 0.341913, -0.891614,
		-0.953464, 0.054504, -0.296540,
		-0.052795, 0.938150, 0.342181,
		38.282219, 37.186016, 9.800244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897736, 36.917820, 9.084817>,  <38.319176, 36.529312, 9.560718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897736, 36.917820, 9.084817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177197, 37.094280, 9.310126>,  <38.344872, 37.200157, 9.445312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177197, 37.094280, 9.310126>,  <37.897736, 36.917820, 9.084817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177197, 37.094280, 9.310126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507784, 0.248887, -0.824749,
		-0.504027, 0.862232, -0.050123,
		0.698650, 0.441147, 0.563273,
		38.386791, 37.226624, 9.479109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168896, 37.387169, 8.660117>,  <37.897736, 36.917820, 9.084817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168896, 37.387169, 8.660117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427845, 37.421066, 8.963096>,  <38.583214, 37.441402, 9.144883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427845, 37.421066, 8.963096>,  <38.168896, 37.387169, 8.660117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427845, 37.421066, 8.963096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591776, 0.570407, -0.569593,
		-0.480321, 0.816979, 0.319119,
		0.647374, 0.084740, 0.757447,
		38.622059, 37.446487, 9.190330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320580, 38.087269, 8.584533>,  <38.168896, 37.387169, 8.660117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320580, 38.087269, 8.584533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594486, 37.913906, 8.818887>,  <38.758831, 37.809891, 8.959499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594486, 37.913906, 8.818887>,  <38.320580, 38.087269, 8.584533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594486, 37.913906, 8.818887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667120, 0.696391, -0.264557,
		-0.293346, 0.572015, 0.765994,
		0.684763, -0.433403, 0.585886,
		38.799915, 37.783886, 8.994653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615707, 38.549763, 9.205969>,  <38.320580, 38.087269, 8.584533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615707, 38.549763, 9.205969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814426, 38.273460, 8.995809>,  <38.933659, 38.107677, 8.869713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814426, 38.273460, 8.995809>,  <38.615707, 38.549763, 9.205969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814426, 38.273460, 8.995809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630798, 0.703190, -0.328052,
		0.596061, -0.168447, 0.785071,
		0.496795, -0.690760, -0.525400,
		38.963467, 38.066231, 8.838188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908421, 38.183968, 9.875813>,  <38.615707, 38.549763, 9.205969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908421, 38.183968, 9.875813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576794, 37.997555, 9.752227>,  <38.377815, 37.885708, 9.678076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576794, 37.997555, 9.752227>,  <38.908421, 38.183968, 9.875813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576794, 37.997555, 9.752227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201165, -0.266961, 0.942478,
		-0.521705, 0.843532, 0.127580,
		-0.829070, -0.466031, -0.308964,
		38.328072, 37.857746, 9.659537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268990, 38.378162, 10.254688>,  <38.908421, 38.183968, 9.875813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268990, 38.378162, 10.254688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249199, 38.002213, 10.119523>,  <38.237324, 37.776642, 10.038424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249199, 38.002213, 10.119523>,  <38.268990, 38.378162, 10.254688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249199, 38.002213, 10.119523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365736, -0.297779, 0.881797,
		-0.929403, 0.167211, -0.329014,
		-0.049472, -0.939877, -0.337912,
		38.234356, 37.720249, 10.018149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559875, 38.192562, 10.418724>,  <38.268990, 38.378162, 10.254688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559875, 38.192562, 10.418724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802567, 37.876526, 10.383762>,  <37.948181, 37.686905, 10.362785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802567, 37.876526, 10.383762>,  <37.559875, 38.192562, 10.418724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802567, 37.876526, 10.383762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199784, -0.257990, 0.945266,
		-0.769395, -0.556057, -0.314377,
		0.606728, -0.790090, -0.087405,
		37.984585, 37.639500, 10.357541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108963, 37.523872, 10.610198>,  <37.559875, 38.192562, 10.418724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108963, 37.523872, 10.610198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498806, 37.445942, 10.654352>,  <37.732712, 37.399185, 10.680845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498806, 37.445942, 10.654352>,  <37.108963, 37.523872, 10.610198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498806, 37.445942, 10.654352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166873, -0.303204, 0.938201,
		-0.149313, -0.932798, -0.328015,
		0.974607, -0.194822, 0.110387,
		37.791187, 37.387493, 10.687468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187622, 36.815338, 10.837031>,  <37.108963, 37.523872, 10.610198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187622, 36.815338, 10.837031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526470, 36.992050, 10.955164>,  <37.729778, 37.098080, 11.026044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526470, 36.992050, 10.955164>,  <37.187622, 36.815338, 10.837031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526470, 36.992050, 10.955164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187330, -0.271820, 0.943939,
		0.497294, -0.854951, -0.147504,
		0.847117, 0.441783, 0.295333,
		37.780605, 37.124584, 11.043764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390816, 36.387581, 11.430848>,  <37.187622, 36.815338, 10.837031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390816, 36.387581, 11.430848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617519, 36.715607, 11.462526>,  <37.753540, 36.912422, 11.481533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617519, 36.715607, 11.462526>,  <37.390816, 36.387581, 11.430848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617519, 36.715607, 11.462526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101915, -0.165170, 0.980986,
		0.817556, -0.547911, -0.177189,
		0.566759, 0.820069, 0.079195,
		37.787548, 36.961628, 11.486285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999397, 36.212242, 11.817992>,  <37.390816, 36.387581, 11.430848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999397, 36.212242, 11.817992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908428, 36.599331, 11.861429>,  <37.853848, 36.831585, 11.887491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908428, 36.599331, 11.861429>,  <37.999397, 36.212242, 11.817992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908428, 36.599331, 11.861429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131371, -0.080005, 0.988100,
		0.964894, 0.238984, -0.108936,
		-0.227425, 0.967722, 0.108592,
		37.840202, 36.889648, 11.894007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324417, 36.360062, 12.333180>,  <37.999397, 36.212242, 11.817992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324417, 36.360062, 12.333180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082390, 36.678486, 12.338461>,  <37.937172, 36.869541, 12.341629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082390, 36.678486, 12.338461>,  <38.324417, 36.360062, 12.333180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082390, 36.678486, 12.338461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019425, -0.031335, 0.999320,
		0.795934, 0.604404, 0.034423,
		-0.605072, 0.796061, 0.013200,
		37.900867, 36.917305, 12.342421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596264, 36.719395, 12.833338>,  <38.324417, 36.360062, 12.333180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596264, 36.719395, 12.833338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229385, 36.866821, 12.772780>,  <38.009258, 36.955276, 12.736446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229385, 36.866821, 12.772780>,  <38.596264, 36.719395, 12.833338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229385, 36.866821, 12.772780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149121, 0.034826, 0.988206,
		0.369489, 0.928950, 0.023019,
		-0.917192, 0.368564, -0.151394,
		37.954227, 36.977390, 12.727363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476471, 37.279430, 13.301318>,  <38.596264, 36.719395, 12.833338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476471, 37.279430, 13.301318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090260, 37.208553, 13.225055>,  <37.858532, 37.166027, 13.179296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090260, 37.208553, 13.225055>,  <38.476471, 37.279430, 13.301318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090260, 37.208553, 13.225055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165234, -0.148701, 0.974980,
		-0.201114, 0.972877, 0.114296,
		-0.965531, -0.177197, -0.190659,
		37.800602, 37.155396, 13.167857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119038, 37.740288, 13.741859>,  <38.476471, 37.279430, 13.301318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119038, 37.740288, 13.741859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853897, 37.463543, 13.627352>,  <37.694813, 37.297497, 13.558647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853897, 37.463543, 13.627352>,  <38.119038, 37.740288, 13.741859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853897, 37.463543, 13.627352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449597, 0.062049, 0.891074,
		-0.598738, 0.719357, -0.352189,
		-0.662853, -0.691863, -0.286270,
		37.655041, 37.255985, 13.541471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447472, 37.939133, 14.007972>,  <38.119038, 37.740288, 13.741859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447472, 37.939133, 14.007972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396015, 37.548119, 13.941179>,  <37.365143, 37.313511, 13.901104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396015, 37.548119, 13.941179>,  <37.447472, 37.939133, 14.007972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396015, 37.548119, 13.941179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276137, -0.126411, 0.952769,
		-0.952470, 0.168674, -0.253672,
		-0.128641, -0.977532, -0.166980,
		37.357422, 37.254860, 13.891086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832214, 37.729343, 14.337677>,  <37.447472, 37.939133, 14.007972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832214, 37.729343, 14.337677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030052, 37.382149, 14.319889>,  <37.148754, 37.173832, 14.309216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030052, 37.382149, 14.319889>,  <36.832214, 37.729343, 14.337677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030052, 37.382149, 14.319889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253471, -0.192997, 0.947895,
		-0.831341, -0.457552, -0.315464,
		0.494595, -0.867985, -0.044471,
		37.178432, 37.121754, 14.306548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435242, 37.376007, 14.627072>,  <36.832214, 37.729343, 14.337677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435242, 37.376007, 14.627072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780811, 37.177258, 14.659949>,  <36.988152, 37.058006, 14.679676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780811, 37.177258, 14.659949>,  <36.435242, 37.376007, 14.627072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780811, 37.177258, 14.659949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093969, 0.001302, 0.995574,
		-0.494782, -0.867822, -0.045566,
		0.863922, -0.496874, 0.082193,
		37.039989, 37.028194, 14.684608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242218, 36.810898, 14.952664>,  <36.435242, 37.376007, 14.627072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242218, 36.810898, 14.952664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638424, 36.806931, 15.007476>,  <36.876148, 36.804550, 15.040363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638424, 36.806931, 15.007476>,  <36.242218, 36.810898, 14.952664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638424, 36.806931, 15.007476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133120, -0.315973, 0.939383,
		0.033982, -0.948716, -0.314297,
		0.990517, -0.009917, 0.137030,
		36.935577, 36.803955, 15.048585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468952, 36.052368, 15.021793>,  <36.242218, 36.810898, 14.952664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468952, 36.052368, 15.021793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755051, 36.283779, 15.178631>,  <36.926708, 36.422626, 15.272734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755051, 36.283779, 15.178631>,  <36.468952, 36.052368, 15.021793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755051, 36.283779, 15.178631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183769, -0.385607, 0.904177,
		0.674284, -0.718759, -0.169487,
		0.715241, 0.578525, 0.392095,
		36.969624, 36.457336, 15.296259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914425, 35.674042, 15.455170>,  <36.468952, 36.052368, 15.021793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914425, 35.674042, 15.455170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933990, 36.043400, 15.607454>,  <36.945732, 36.265015, 15.698825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933990, 36.043400, 15.607454>,  <36.914425, 35.674042, 15.455170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933990, 36.043400, 15.607454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165834, -0.368370, 0.914769,
		0.984940, -0.107882, 0.135111,
		0.048917, 0.923399, 0.380712,
		36.948666, 36.320419, 15.721668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312046, 35.589111, 16.213341>,  <36.914425, 35.674042, 15.455170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312046, 35.589111, 16.213341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144138, 35.952091, 16.220509>,  <37.043392, 36.169880, 16.224810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144138, 35.952091, 16.220509>,  <37.312046, 35.589111, 16.213341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144138, 35.952091, 16.220509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134282, -0.081616, 0.987576,
		0.897641, 0.412151, 0.156115,
		-0.419772, 0.907453, 0.017917,
		37.018208, 36.224327, 16.225883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577942, 36.012306, 16.814312>,  <37.312046, 35.589111, 16.213341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577942, 36.012306, 16.814312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234299, 36.199139, 16.730623>,  <37.028114, 36.311237, 16.680410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234299, 36.199139, 16.730623>,  <37.577942, 36.012306, 16.814312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234299, 36.199139, 16.730623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264362, -0.054946, 0.962857,
		0.438239, 0.882504, 0.170684,
		-0.859104, 0.467084, -0.209221,
		36.976566, 36.339264, 16.667856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576012, 36.529385, 17.316734>,  <37.577942, 36.012306, 16.814312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576012, 36.529385, 17.316734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198997, 36.554729, 17.185514>,  <36.972790, 36.569939, 17.106783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198997, 36.554729, 17.185514>,  <37.576012, 36.529385, 17.316734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198997, 36.554729, 17.185514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331369, -0.302857, 0.893573,
		-0.042730, 0.950927, 0.306450,
		-0.942533, 0.063366, -0.328049,
		36.916237, 36.573738, 17.087099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163300, 36.840961, 17.917852>,  <37.576012, 36.529385, 17.316734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163300, 36.840961, 17.917852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876064, 36.662006, 17.704611>,  <36.703724, 36.554634, 17.576666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876064, 36.662006, 17.704611>,  <37.163300, 36.840961, 17.917852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876064, 36.662006, 17.704611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431805, -0.314332, 0.845423,
		-0.545802, 0.837282, 0.032534,
		-0.718084, -0.447385, -0.533106,
		36.660641, 36.527790, 17.544680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578056, 37.073582, 18.204609>,  <37.163300, 36.840961, 17.917852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578056, 37.073582, 18.204609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496864, 36.740154, 17.999098>,  <36.448151, 36.540100, 17.875792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496864, 36.740154, 17.999098>,  <36.578056, 37.073582, 18.204609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496864, 36.740154, 17.999098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580540, -0.320090, 0.748677,
		-0.788525, 0.450237, -0.418945,
		-0.202982, -0.833564, -0.513779,
		36.435970, 36.490086, 17.844965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820217, 37.043865, 18.064215>,  <36.578056, 37.073582, 18.204609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820217, 37.043865, 18.064215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988792, 36.681374, 18.050697>,  <36.089939, 36.463879, 18.042587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988792, 36.681374, 18.050697>,  <35.820217, 37.043865, 18.064215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988792, 36.681374, 18.050697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590977, -0.302714, 0.747737,
		-0.687849, -0.295154, -0.663135,
		0.421438, -0.906227, -0.033792,
		36.115223, 36.409504, 18.040560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283607, 36.614281, 18.206684>,  <35.820217, 37.043865, 18.064215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283607, 36.614281, 18.206684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580616, 36.350883, 18.255733>,  <35.758823, 36.192844, 18.285162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580616, 36.350883, 18.255733>,  <35.283607, 36.614281, 18.206684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580616, 36.350883, 18.255733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452940, -0.358755, 0.816174,
		-0.493459, -0.661569, -0.564645,
		0.742525, -0.658499, 0.122620,
		35.803375, 36.153336, 18.292521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001835, 35.952648, 18.428711>,  <35.283607, 36.614281, 18.206684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001835, 35.952648, 18.428711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385384, 35.958866, 18.542080>,  <35.615513, 35.962597, 18.610102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385384, 35.958866, 18.542080>,  <35.001835, 35.952648, 18.428711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385384, 35.958866, 18.542080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272954, -0.223491, 0.935707,
		0.077885, -0.974582, -0.210057,
		0.958869, 0.015541, 0.283423,
		35.673046, 35.963528, 18.627108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175446, 35.358658, 18.729088>,  <35.001835, 35.952648, 18.428711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175446, 35.358658, 18.729088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436783, 35.612637, 18.894003>,  <35.593586, 35.765022, 18.992952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436783, 35.612637, 18.894003>,  <35.175446, 35.358658, 18.729088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436783, 35.612637, 18.894003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265381, -0.317948, 0.910210,
		0.709021, -0.704095, -0.039227,
		0.653346, 0.634948, 0.412286,
		35.632786, 35.803120, 19.017689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619427, 35.015373, 19.207245>,  <35.175446, 35.358658, 18.729088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619427, 35.015373, 19.207245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645302, 35.395763, 19.328220>,  <35.660828, 35.623997, 19.400805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645302, 35.395763, 19.328220>,  <35.619427, 35.015373, 19.207245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645302, 35.395763, 19.328220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100331, -0.295338, 0.950110,
		0.992849, -0.091805, 0.076307,
		0.064689, 0.950971, 0.302437,
		35.664707, 35.681053, 19.418951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667690, 34.910755, 19.794662>,  <35.619427, 35.015373, 19.207245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667690, 34.910755, 19.794662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637012, 35.309132, 19.813520>,  <35.618607, 35.548157, 19.824835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637012, 35.309132, 19.813520>,  <35.667690, 34.910755, 19.794662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637012, 35.309132, 19.813520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180685, -0.060386, 0.981685,
		0.980546, 0.066768, 0.184583,
		-0.076692, 0.995940, 0.047147,
		35.614006, 35.607914, 19.827665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100540, 35.097355, 20.255850>,  <35.667690, 34.910755, 19.794662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100540, 35.097355, 20.255850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887081, 35.435360, 20.269548>,  <35.759007, 35.638161, 20.277767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887081, 35.435360, 20.269548>,  <36.100540, 35.097355, 20.255850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887081, 35.435360, 20.269548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083216, 0.012167, 0.996457,
		0.841600, 0.534611, -0.076812,
		-0.533651, 0.845011, 0.034248,
		35.726986, 35.688862, 20.279823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488743, 35.676777, 20.589617>,  <36.100540, 35.097355, 20.255850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488743, 35.676777, 20.589617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098858, 35.757866, 20.627220>,  <35.864925, 35.806519, 20.649782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098858, 35.757866, 20.627220>,  <36.488743, 35.676777, 20.589617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098858, 35.757866, 20.627220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064969, -0.145429, 0.987233,
		0.213803, 0.968378, 0.128581,
		-0.974714, 0.202720, 0.094008,
		35.806442, 35.818684, 20.655422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414101, 35.926468, 21.262337>,  <36.488743, 35.676777, 20.589617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414101, 35.926468, 21.262337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029549, 35.863903, 21.171757>,  <35.798817, 35.826363, 21.117409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029549, 35.863903, 21.171757>,  <36.414101, 35.926468, 21.262337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029549, 35.863903, 21.171757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213979, -0.092647, 0.972435,
		-0.173084, 0.983336, 0.055600,
		-0.961382, -0.156416, -0.226449,
		35.741135, 35.816978, 21.103823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121700, 36.467308, 21.615385>,  <36.414101, 35.926468, 21.262337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121700, 36.467308, 21.615385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868591, 36.162354, 21.561176>,  <35.716724, 35.979382, 21.528652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868591, 36.162354, 21.561176>,  <36.121700, 36.467308, 21.615385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868591, 36.162354, 21.561176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198832, -0.009174, 0.979991,
		-0.748374, 0.647057, -0.145782,
		-0.632773, -0.762386, -0.135521,
		35.678761, 35.933640, 21.520519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468742, 36.666756, 21.957104>,  <36.121700, 36.467308, 21.615385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468742, 36.666756, 21.957104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503700, 36.269474, 21.926336>,  <35.524677, 36.031105, 21.907875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503700, 36.269474, 21.926336>,  <35.468742, 36.666756, 21.957104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503700, 36.269474, 21.926336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296281, -0.099636, 0.949889,
		-0.951094, -0.060228, -0.302974,
		0.087397, -0.993199, -0.076919,
		35.529919, 35.971516, 21.903261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007275, 36.393814, 22.415606>,  <35.468742, 36.666756, 21.957104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007275, 36.393814, 22.415606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211296, 36.059429, 22.334591>,  <35.333710, 35.858799, 22.285982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211296, 36.059429, 22.334591>,  <35.007275, 36.393814, 22.415606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211296, 36.059429, 22.334591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204524, -0.346586, 0.915449,
		-0.835475, -0.425502, -0.347750,
		0.510051, -0.835958, -0.202538,
		35.364311, 35.808643, 22.273829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823174, 35.937325, 22.930782>,  <35.007275, 36.393814, 22.415606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823174, 35.937325, 22.930782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138710, 35.746197, 22.776167>,  <35.328033, 35.631519, 22.683397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138710, 35.746197, 22.776167>,  <34.823174, 35.937325, 22.930782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138710, 35.746197, 22.776167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092347, -0.529638, 0.843182,
		-0.607618, -0.700833, -0.373676,
		0.788843, -0.477824, -0.386537,
		35.375362, 35.602848, 22.660206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719231, 35.252537, 22.944118>,  <34.823174, 35.937325, 22.930782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719231, 35.252537, 22.944118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114075, 35.316437, 22.947834>,  <35.350983, 35.354778, 22.950064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114075, 35.316437, 22.947834>,  <34.719231, 35.252537, 22.944118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114075, 35.316437, 22.947834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064969, -0.453155, 0.889061,
		0.146237, -0.877001, -0.457694,
		0.987114, 0.159749, 0.009290,
		35.410210, 35.364361, 22.950621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081760, 34.594860, 23.194483>,  <34.719231, 35.252537, 22.944118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081760, 34.594860, 23.194483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368568, 34.867798, 23.251457>,  <35.540653, 35.031563, 23.285643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368568, 34.867798, 23.251457>,  <35.081760, 34.594860, 23.194483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368568, 34.867798, 23.251457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165478, -0.365124, 0.916134,
		0.677129, -0.633314, -0.374714,
		0.717017, 0.682348, 0.142436,
		35.583675, 35.072502, 23.294188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515354, 34.259266, 23.638645>,  <35.081760, 34.594860, 23.194483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515354, 34.259266, 23.638645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615173, 34.644196, 23.681833>,  <35.675064, 34.875153, 23.707747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615173, 34.644196, 23.681833>,  <35.515354, 34.259266, 23.638645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615173, 34.644196, 23.681833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293280, -0.181370, 0.938665,
		0.922882, -0.202579, -0.327491,
		0.249551, 0.962324, 0.107970,
		35.690037, 34.932892, 23.714224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225109, 34.347008, 24.097595>,  <35.515354, 34.259266, 23.638645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225109, 34.347008, 24.097595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052975, 34.707985, 24.105766>,  <35.949696, 34.924572, 24.110668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052975, 34.707985, 24.105766>,  <36.225109, 34.347008, 24.097595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052975, 34.707985, 24.105766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221195, 0.083486, 0.971649,
		0.875149, 0.422652, -0.235542,
		-0.430334, 0.902439, 0.020426,
		35.923874, 34.978718, 24.111895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515408, 34.626873, 24.585148>,  <36.225109, 34.347008, 24.097595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515408, 34.626873, 24.585148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206261, 34.877708, 24.546282>,  <36.020775, 35.028210, 24.522963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206261, 34.877708, 24.546282>,  <36.515408, 34.626873, 24.585148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206261, 34.877708, 24.546282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092466, 0.262772, 0.960417,
		0.627801, 0.733286, -0.261070,
		-0.772862, 0.627091, -0.097164,
		35.974403, 35.065834, 24.517132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764076, 35.260921, 24.749289>,  <36.515408, 34.626873, 24.585148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764076, 35.260921, 24.749289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370583, 35.269474, 24.820635>,  <36.134487, 35.274605, 24.863443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370583, 35.269474, 24.820635>,  <36.764076, 35.260921, 24.749289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370583, 35.269474, 24.820635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172618, 0.387430, 0.905594,
		-0.049745, 0.921651, -0.384817,
		-0.983732, 0.021377, 0.178366,
		36.075462, 35.275887, 24.874146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597519, 35.881645, 25.021057>,  <36.764076, 35.260921, 24.749289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597519, 35.881645, 25.021057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326183, 35.621704, 25.158197>,  <36.163383, 35.465740, 25.240482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326183, 35.621704, 25.158197>,  <36.597519, 35.881645, 25.021057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326183, 35.621704, 25.158197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185308, 0.300224, 0.935696,
		-0.711000, 0.698249, -0.083229,
		-0.678336, -0.649857, 0.342850,
		36.122681, 35.426746, 25.261053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406548, 36.531170, 25.375608>,  <36.597519, 35.881645, 25.021057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406548, 36.531170, 25.375608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356915, 36.910610, 25.492065>,  <36.327137, 37.138275, 25.561939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356915, 36.910610, 25.492065>,  <36.406548, 36.531170, 25.375608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356915, 36.910610, 25.492065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239416, 0.256120, -0.936527,
		-0.962956, -0.185906, 0.195331,
		-0.124078, 0.948600, 0.291141,
		36.319691, 37.195190, 25.579409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740189, 36.665283, 25.236473>,  <36.406548, 36.531170, 25.375608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740189, 36.665283, 25.236473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923100, 37.020985, 25.231831>,  <36.032845, 37.234406, 25.229046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923100, 37.020985, 25.231831>,  <35.740189, 36.665283, 25.236473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923100, 37.020985, 25.231831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294613, 0.139160, -0.945430,
		-0.839108, 0.435740, 0.325618,
		0.457275, 0.889250, -0.011605,
		36.060284, 37.287758, 25.228350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378456, 37.059765, 24.973763>,  <35.740189, 36.665283, 25.236473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378456, 37.059765, 24.973763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701912, 37.292866, 24.941521>,  <35.895985, 37.432728, 24.922176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701912, 37.292866, 24.941521>,  <35.378456, 37.059765, 24.973763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701912, 37.292866, 24.941521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316075, 0.314804, -0.894984,
		-0.496179, 0.749199, 0.438757,
		0.808643, 0.582752, -0.080604,
		35.944504, 37.467690, 24.917339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151039, 37.797047, 24.658150>,  <35.378456, 37.059765, 24.973763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151039, 37.797047, 24.658150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544628, 37.749031, 24.605408>,  <35.780781, 37.720222, 24.573763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544628, 37.749031, 24.605408>,  <35.151039, 37.797047, 24.658150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544628, 37.749031, 24.605408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071382, 0.412463, -0.908173,
		0.163399, 0.903031, 0.397285,
		0.983974, -0.120035, -0.131856,
		35.839821, 37.713020, 24.565851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368805, 38.392002, 24.190760>,  <35.151039, 37.797047, 24.658150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368805, 38.392002, 24.190760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677891, 38.138554, 24.175665>,  <35.863342, 37.986485, 24.166609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677891, 38.138554, 24.175665>,  <35.368805, 38.392002, 24.190760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677891, 38.138554, 24.175665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249231, 0.357543, -0.900026,
		0.583771, 0.686063, 0.434200,
		0.772719, -0.633625, -0.037735,
		35.909706, 37.948467, 24.164345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886219, 38.824585, 23.967264>,  <35.368805, 38.392002, 24.190760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886219, 38.824585, 23.967264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983860, 38.444935, 23.887686>,  <36.042446, 38.217144, 23.839939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983860, 38.444935, 23.887686>,  <35.886219, 38.824585, 23.967264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983860, 38.444935, 23.887686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331367, 0.274440, -0.902706,
		0.911377, 0.154431, 0.381501,
		0.244105, -0.949123, -0.198945,
		36.057091, 38.160198, 23.828003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517799, 38.926880, 23.584532>,  <35.886219, 38.824585, 23.967264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517799, 38.926880, 23.584532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391457, 38.555454, 23.506554>,  <36.315651, 38.332600, 23.459766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391457, 38.555454, 23.506554>,  <36.517799, 38.926880, 23.584532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391457, 38.555454, 23.506554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140549, 0.157407, -0.977481,
		0.938338, -0.336146, 0.080790,
		-0.315859, -0.928563, -0.194946,
		36.296700, 38.276886, 23.448071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052971, 38.630520, 23.172333>,  <36.517799, 38.926880, 23.584532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052971, 38.630520, 23.172333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713852, 38.428032, 23.109104>,  <36.510380, 38.306541, 23.071167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713852, 38.428032, 23.109104>,  <37.052971, 38.630520, 23.172333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713852, 38.428032, 23.109104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068163, 0.191581, -0.979107,
		0.525923, -0.840858, -0.127916,
		-0.847797, -0.506216, -0.158072,
		36.459515, 38.276169, 23.061682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225254, 38.280724, 22.640503>,  <37.052971, 38.630520, 23.172333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225254, 38.280724, 22.640503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829872, 38.239487, 22.596077>,  <36.592644, 38.214745, 22.569422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829872, 38.239487, 22.596077>,  <37.225254, 38.280724, 22.640503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829872, 38.239487, 22.596077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115346, -0.036502, -0.992655,
		0.098285, -0.994001, 0.047973,
		-0.988451, -0.103097, -0.111066,
		36.533337, 38.208557, 22.562757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170059, 37.962490, 21.970848>,  <37.225254, 38.280724, 22.640503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170059, 37.962490, 21.970848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818802, 38.134621, 22.054453>,  <36.608047, 38.237900, 22.104616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818802, 38.134621, 22.054453>,  <37.170059, 37.962490, 21.970848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818802, 38.134621, 22.054453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161816, 0.143968, -0.976263,
		-0.450207, -0.891117, -0.056790,
		-0.878140, 0.430331, 0.209012,
		36.555359, 38.263721, 22.117157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783920, 37.632881, 21.495661>,  <37.170059, 37.962490, 21.970848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783920, 37.632881, 21.495661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600075, 37.971691, 21.602470>,  <36.489765, 38.174976, 21.666555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600075, 37.971691, 21.602470>,  <36.783920, 37.632881, 21.495661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600075, 37.971691, 21.602470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137287, 0.229289, -0.963628,
		-0.877442, -0.479558, 0.010900,
		-0.459617, 0.847024, 0.267024,
		36.462189, 38.225800, 21.682577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186512, 37.716518, 21.030979>,  <36.783920, 37.632881, 21.495661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186512, 37.716518, 21.030979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297215, 38.069904, 21.182186>,  <36.363636, 38.281937, 21.272909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297215, 38.069904, 21.182186>,  <36.186512, 37.716518, 21.030979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297215, 38.069904, 21.182186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035910, 0.383598, -0.922802,
		-0.960270, 0.268962, 0.074436,
		0.276752, 0.883466, 0.378016,
		36.380241, 38.334946, 21.295591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671730, 38.216854, 20.853220>,  <36.186512, 37.716518, 21.030979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671730, 38.216854, 20.853220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012493, 38.411057, 20.931744>,  <36.216949, 38.527576, 20.978859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012493, 38.411057, 20.931744>,  <35.671730, 38.216854, 20.853220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012493, 38.411057, 20.931744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008693, 0.387919, -0.921652,
		-0.523619, 0.783457, 0.334692,
		0.851908, 0.485504, 0.196311,
		36.268066, 38.556709, 20.990637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522022, 38.747353, 20.316317>,  <35.671730, 38.216854, 20.853220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522022, 38.747353, 20.316317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907036, 38.771187, 20.422125>,  <36.138046, 38.785488, 20.485611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907036, 38.771187, 20.422125>,  <35.522022, 38.747353, 20.316317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907036, 38.771187, 20.422125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252317, 0.160405, -0.954257,
		-0.099289, 0.985251, 0.139362,
		0.962537, 0.059583, 0.264522,
		36.195797, 38.789062, 20.501482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841637, 39.475525, 19.983955>,  <35.522022, 38.747353, 20.316317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841637, 39.475525, 19.983955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150814, 39.232182, 20.056034>,  <36.336319, 39.086178, 20.099281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150814, 39.232182, 20.056034>,  <35.841637, 39.475525, 19.983955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150814, 39.232182, 20.056034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453549, 0.331171, -0.827417,
		0.443688, 0.721270, 0.531894,
		0.772939, -0.608355, 0.180195,
		36.382694, 39.049675, 20.110092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380608, 39.815186, 19.685974>,  <35.841637, 39.475525, 19.983955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380608, 39.815186, 19.685974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525787, 39.445774, 19.735546>,  <36.612896, 39.224129, 19.765289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525787, 39.445774, 19.735546>,  <36.380608, 39.815186, 19.685974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525787, 39.445774, 19.735546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400074, 0.034335, -0.915839,
		0.841549, 0.381988, 0.381942,
		0.362953, -0.923529, 0.123929,
		36.634674, 39.168716, 19.772724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952129, 39.888794, 19.257385>,  <36.380608, 39.815186, 19.685974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952129, 39.888794, 19.257385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930374, 39.502274, 19.358023>,  <36.917320, 39.270359, 19.418406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930374, 39.502274, 19.358023>,  <36.952129, 39.888794, 19.257385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930374, 39.502274, 19.358023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260778, -0.256970, -0.930570,
		0.963865, 0.014996, 0.265967,
		-0.054391, -0.966303, 0.251595,
		36.914059, 39.212383, 19.433502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651344, 39.518787, 19.091379>,  <36.952129, 39.888794, 19.257385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651344, 39.518787, 19.091379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347851, 39.258266, 19.095919>,  <37.165756, 39.101952, 19.098642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347851, 39.258266, 19.095919>,  <37.651344, 39.518787, 19.091379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347851, 39.258266, 19.095919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157406, -0.200218, -0.967024,
		0.632101, -0.731924, 0.254431,
		-0.758730, -0.651306, 0.011349,
		37.120232, 39.062874, 19.099323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915520, 38.862076, 18.818224>,  <37.651344, 39.518787, 19.091379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915520, 38.862076, 18.818224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517830, 38.879608, 18.779058>,  <37.279213, 38.890125, 18.755558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517830, 38.879608, 18.779058>,  <37.915520, 38.862076, 18.818224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517830, 38.879608, 18.779058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073937, -0.381363, -0.921464,
		-0.077727, -0.923386, 0.375921,
		-0.994229, 0.043828, -0.097914,
		37.219563, 38.892757, 18.749683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704582, 38.226089, 18.593508>,  <37.915520, 38.862076, 18.818224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704582, 38.226089, 18.593508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419205, 38.484165, 18.484161>,  <37.247978, 38.639011, 18.418554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419205, 38.484165, 18.484161>,  <37.704582, 38.226089, 18.593508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419205, 38.484165, 18.484161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116528, -0.275449, -0.954227,
		-0.690953, -0.712644, 0.121335,
		-0.713446, 0.645187, -0.273366,
		37.205170, 38.677723, 18.402151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279457, 37.887794, 18.041019>,  <37.704582, 38.226089, 18.593508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279457, 37.887794, 18.041019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215679, 38.280872, 18.003311>,  <37.177414, 38.516720, 17.980686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215679, 38.280872, 18.003311>,  <37.279457, 37.887794, 18.041019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215679, 38.280872, 18.003311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181925, -0.123104, -0.975576,
		-0.970300, -0.138397, 0.198405,
		-0.159442, 0.982696, -0.094270,
		37.167847, 38.575680, 17.975031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737347, 37.995781, 17.476316>,  <37.279457, 37.887794, 18.041019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737347, 37.995781, 17.476316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935623, 38.340904, 17.516016>,  <37.054588, 38.547977, 17.539835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935623, 38.340904, 17.516016>,  <36.737347, 37.995781, 17.476316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935623, 38.340904, 17.516016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022832, 0.127181, -0.991616,
		-0.868199, 0.489269, 0.082743,
		0.495691, 0.862809, 0.099247,
		37.084332, 38.599747, 17.545790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451920, 38.516808, 16.924431>,  <36.737347, 37.995781, 17.476316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451920, 38.516808, 16.924431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811508, 38.647057, 17.041615>,  <37.027260, 38.725208, 17.111925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811508, 38.647057, 17.041615>,  <36.451920, 38.516808, 16.924431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811508, 38.647057, 17.041615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239383, 0.194869, -0.951168,
		-0.366813, 0.925199, 0.097232,
		0.898968, 0.325626, 0.292958,
		37.081200, 38.744743, 17.129501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550137, 39.098488, 16.411207>,  <36.451920, 38.516808, 16.924431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550137, 39.098488, 16.411207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908806, 39.031006, 16.574924>,  <37.124008, 38.990517, 16.673155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908806, 39.031006, 16.574924>,  <36.550137, 39.098488, 16.411207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908806, 39.031006, 16.574924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423888, 0.060527, -0.903690,
		0.127686, 0.983806, 0.125785,
		0.896669, -0.168707, 0.409295,
		37.177807, 38.980392, 16.697714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964348, 39.618881, 16.172943>,  <36.550137, 39.098488, 16.411207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964348, 39.618881, 16.172943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222534, 39.330750, 16.274536>,  <37.377445, 39.157871, 16.335491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222534, 39.330750, 16.274536>,  <36.964348, 39.618881, 16.172943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222534, 39.330750, 16.274536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468183, 0.110405, -0.876707,
		0.603477, 0.684790, 0.408508,
		0.645461, -0.720329, 0.253980,
		37.416172, 39.114651, 16.350731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528545, 39.860653, 15.924061>,  <36.964348, 39.618881, 16.172943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528545, 39.860653, 15.924061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612766, 39.476379, 15.996454>,  <37.663300, 39.245815, 16.039890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612766, 39.476379, 15.996454>,  <37.528545, 39.860653, 15.924061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612766, 39.476379, 15.996454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575491, -0.027850, -0.817334,
		0.790240, 0.276244, 0.547001,
		0.210550, -0.960684, 0.180984,
		37.675930, 39.188175, 16.050749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251049, 39.824425, 15.894837>,  <37.528545, 39.860653, 15.924061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251049, 39.824425, 15.894837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096401, 39.465778, 15.808480>,  <38.003613, 39.250591, 15.756666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096401, 39.465778, 15.808480>,  <38.251049, 39.824425, 15.894837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096401, 39.465778, 15.808480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548530, -0.035376, -0.835382,
		0.741378, -0.441397, 0.505497,
		-0.386617, -0.896615, -0.215893,
		37.980415, 39.196793, 15.743712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814819, 39.467236, 15.658303>,  <38.251049, 39.824425, 15.894837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814819, 39.467236, 15.658303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509945, 39.240917, 15.532481>,  <38.327019, 39.105125, 15.456988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509945, 39.240917, 15.532481>,  <38.814819, 39.467236, 15.658303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509945, 39.240917, 15.532481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421768, -0.065398, -0.904343,
		0.491100, -0.821949, 0.288479,
		-0.762189, -0.565794, -0.314554,
		38.281288, 39.071178, 15.438115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132626, 38.921196, 15.288504>,  <38.814819, 39.467236, 15.658303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132626, 38.921196, 15.288504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748482, 38.942684, 15.179083>,  <38.517998, 38.955578, 15.113431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748482, 38.942684, 15.179083>,  <39.132626, 38.921196, 15.288504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748482, 38.942684, 15.179083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261410, -0.167390, -0.950603,
		-0.096851, -0.984426, 0.146712,
		-0.960356, 0.053715, -0.273551,
		38.460377, 38.958797, 15.097017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947857, 38.407352, 14.830382>,  <39.132626, 38.921196, 15.288504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947857, 38.407352, 14.830382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653030, 38.664494, 14.746979>,  <38.476135, 38.818779, 14.696937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653030, 38.664494, 14.746979>,  <38.947857, 38.407352, 14.830382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653030, 38.664494, 14.746979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218847, -0.064866, -0.973601,
		-0.639409, -0.763237, -0.092876,
		-0.737063, 0.642855, -0.208508,
		38.431911, 38.857349, 14.684426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972569, 38.227276, 14.137700>,  <38.947857, 38.407352, 14.830382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972569, 38.227276, 14.137700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758904, 38.562157, 14.184622>,  <38.630703, 38.763084, 14.212775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758904, 38.562157, 14.184622>,  <38.972569, 38.227276, 14.137700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758904, 38.562157, 14.184622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193368, 0.256082, -0.947117,
		-0.822967, -0.483236, -0.298678,
		-0.534167, 0.837201, 0.117305,
		38.598652, 38.813316, 14.219813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542576, 38.298824, 13.561685>,  <38.972569, 38.227276, 14.137700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542576, 38.298824, 13.561685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504524, 38.676540, 13.687706>,  <38.481693, 38.903172, 13.763319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504524, 38.676540, 13.687706>,  <38.542576, 38.298824, 13.561685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504524, 38.676540, 13.687706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219584, 0.328598, -0.918589,
		-0.970945, -0.018203, -0.238611,
		-0.095128, 0.944295, 0.315053,
		38.475986, 38.959827, 13.782222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290985, 38.709259, 12.962479>,  <38.542576, 38.298824, 13.561685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290985, 38.709259, 12.962479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450211, 38.980820, 13.209261>,  <38.545746, 39.143757, 13.357330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450211, 38.980820, 13.209261>,  <38.290985, 38.709259, 12.962479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450211, 38.980820, 13.209261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313433, 0.531408, -0.786998,
		-0.862150, 0.506651, -0.001255,
		0.398066, 0.678904, 0.616955,
		38.569630, 39.184490, 13.394347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997105, 39.365654, 12.741253>,  <38.290985, 38.709259, 12.962479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997105, 39.365654, 12.741253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356110, 39.396568, 12.914922>,  <38.571510, 39.415115, 13.019123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356110, 39.396568, 12.914922>,  <37.997105, 39.365654, 12.741253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356110, 39.396568, 12.914922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367256, 0.414035, -0.832885,
		-0.244133, 0.906974, 0.343217,
		0.897509, 0.077287, 0.434171,
		38.625362, 39.419754, 13.045173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165466, 40.007576, 12.521526>,  <37.997105, 39.365654, 12.741253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165466, 40.007576, 12.521526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511086, 39.855145, 12.653103>,  <38.718456, 39.763683, 12.732049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511086, 39.855145, 12.653103>,  <38.165466, 40.007576, 12.521526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511086, 39.855145, 12.653103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480160, 0.427556, -0.765926,
		0.151240, 0.819739, 0.552408,
		0.864045, -0.381083, 0.328942,
		38.770298, 39.740818, 12.751785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574543, 40.503639, 12.399168>,  <38.165466, 40.007576, 12.521526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574543, 40.503639, 12.399168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843765, 40.208065, 12.411590>,  <39.005299, 40.030720, 12.419043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843765, 40.208065, 12.411590>,  <38.574543, 40.503639, 12.399168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843765, 40.208065, 12.411590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436168, 0.362670, -0.823545,
		0.597288, 0.567837, 0.566400,
		0.673056, -0.738940, 0.031054,
		39.045681, 39.986382, 12.420906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253555, 40.845657, 12.157362>,  <38.574543, 40.503639, 12.399168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253555, 40.845657, 12.157362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309494, 40.450581, 12.129316>,  <39.343060, 40.213535, 12.112489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309494, 40.450581, 12.129316>,  <39.253555, 40.845657, 12.157362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309494, 40.450581, 12.129316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428109, 0.124162, -0.895157,
		0.892841, 0.095171, 0.440202,
		0.139849, -0.987687, -0.070113,
		39.351448, 40.154274, 12.108282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983315, 40.726875, 11.999405>,  <39.253555, 40.845657, 12.157362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983315, 40.726875, 11.999405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772774, 40.401318, 11.900990>,  <39.646450, 40.205982, 11.841942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772774, 40.401318, 11.900990>,  <39.983315, 40.726875, 11.999405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772774, 40.401318, 11.900990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538496, -0.095157, -0.837238,
		0.658010, -0.573170, 0.488364,
		-0.526351, -0.813893, -0.246036,
		39.614868, 40.157150, 11.827180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345242, 41.251553, 12.349767>,  <39.983315, 40.726875, 11.999405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345242, 41.251553, 12.349767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731754, 41.354549, 12.350224>,  <40.963661, 41.416348, 12.350499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731754, 41.354549, 12.350224>,  <40.345242, 41.251553, 12.349767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731754, 41.354549, 12.350224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008218, -0.035282, 0.999344,
		0.257365, -0.965636, -0.036208,
		0.966279, 0.257494, 0.001145,
		41.021637, 41.431797, 12.350568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748878, 40.778370, 12.775909>,  <40.345242, 41.251553, 12.349767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748878, 40.778370, 12.775909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990700, 41.096928, 12.769184>,  <41.135792, 41.288063, 12.765149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990700, 41.096928, 12.769184>,  <40.748878, 40.778370, 12.775909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990700, 41.096928, 12.769184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110389, -0.062856, 0.991899,
		0.788882, -0.601508, -0.125913,
		0.604550, 0.796390, -0.016814,
		41.172066, 41.335846, 12.764140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328564, 40.634922, 13.229330>,  <40.748878, 40.778370, 12.775909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328564, 40.634922, 13.229330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327446, 41.034275, 13.206606>,  <41.326775, 41.273888, 13.192971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327446, 41.034275, 13.206606>,  <41.328564, 40.634922, 13.229330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327446, 41.034275, 13.206606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141078, 0.056636, 0.988377,
		0.989995, -0.005251, -0.141008,
		-0.002796, 0.998381, -0.056810,
		41.326607, 41.333790, 13.189563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757473, 40.789539, 13.749542>,  <41.328564, 40.634922, 13.229330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757473, 40.789539, 13.749542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560612, 41.135139, 13.707036>,  <41.442493, 41.342499, 13.681533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560612, 41.135139, 13.707036>,  <41.757473, 40.789539, 13.749542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560612, 41.135139, 13.707036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008269, 0.117426, 0.993047,
		0.870470, 0.489610, -0.050647,
		-0.492153, 0.863999, -0.106265,
		41.412968, 41.394341, 13.675157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973579, 41.309536, 14.281343>,  <41.757473, 40.789539, 13.749542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973579, 41.309536, 14.281343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632011, 41.467003, 14.145198>,  <41.427071, 41.561481, 14.063511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632011, 41.467003, 14.145198>,  <41.973579, 41.309536, 14.281343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632011, 41.467003, 14.145198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260230, 0.243374, 0.934371,
		0.450667, 0.886451, -0.105377,
		-0.853920, 0.393668, -0.340362,
		41.375835, 41.585102, 14.043089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903893, 41.969044, 14.625798>,  <41.973579, 41.309536, 14.281343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903893, 41.969044, 14.625798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542896, 41.834282, 14.518461>,  <41.326298, 41.753426, 14.454059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542896, 41.834282, 14.518461>,  <41.903893, 41.969044, 14.625798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542896, 41.834282, 14.518461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362134, 0.256249, 0.896212,
		-0.233173, 0.905999, -0.353266,
		-0.902491, -0.336902, -0.268342,
		41.272148, 41.733212, 14.437959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403645, 42.403027, 14.881943>,  <41.903893, 41.969044, 14.625798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403645, 42.403027, 14.881943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180531, 42.074104, 14.836894>,  <41.046661, 41.876751, 14.809865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180531, 42.074104, 14.836894>,  <41.403645, 42.403027, 14.881943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180531, 42.074104, 14.836894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299875, 0.073140, 0.951170,
		-0.773919, 0.564321, -0.287387,
		-0.557785, -0.822309, -0.112621,
		41.013195, 41.827412, 14.803107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957001, 42.440556, 15.399466>,  <41.403645, 42.403027, 14.881943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957001, 42.440556, 15.399466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895779, 42.058044, 15.299778>,  <40.859047, 41.828537, 15.239965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895779, 42.058044, 15.299778>,  <40.957001, 42.440556, 15.399466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895779, 42.058044, 15.299778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337895, -0.186350, 0.922551,
		-0.928656, 0.225407, -0.294600,
		-0.153051, -0.956277, -0.249219,
		40.849865, 41.771160, 15.225013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306568, 42.319416, 15.617355>,  <40.957001, 42.440556, 15.399466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306568, 42.319416, 15.617355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464527, 41.952263, 15.601646>,  <40.559303, 41.731972, 15.592221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464527, 41.952263, 15.601646>,  <40.306568, 42.319416, 15.617355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464527, 41.952263, 15.601646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382408, -0.203091, 0.901398,
		-0.835354, -0.340945, -0.431207,
		0.394901, -0.917884, -0.039273,
		40.582996, 41.676899, 15.589865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749451, 41.859119, 15.605912>,  <40.306568, 42.319416, 15.617355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749451, 41.859119, 15.605912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074940, 41.672722, 15.744881>,  <40.270233, 41.560883, 15.828261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074940, 41.672722, 15.744881>,  <39.749451, 41.859119, 15.605912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074940, 41.672722, 15.744881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467741, -0.170131, 0.867337,
		-0.345070, -0.868275, -0.356406,
		0.813723, -0.465997, 0.347421,
		40.319057, 41.532921, 15.849107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454330, 41.257385, 15.846457>,  <39.749451, 41.859119, 15.605912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454330, 41.257385, 15.846457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813892, 41.279594, 16.020302>,  <40.029629, 41.292919, 16.124609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813892, 41.279594, 16.020302>,  <39.454330, 41.257385, 15.846457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813892, 41.279594, 16.020302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412174, -0.229267, 0.881788,
		0.148600, -0.971779, -0.183205,
		0.898905, 0.055522, 0.434611,
		40.083565, 41.296249, 16.150684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521458, 40.609058, 16.192244>,  <39.454330, 41.257385, 15.846457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521458, 40.609058, 16.192244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780777, 40.864853, 16.357544>,  <39.936367, 41.018330, 16.456724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780777, 40.864853, 16.357544>,  <39.521458, 40.609058, 16.192244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780777, 40.864853, 16.357544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316286, -0.267527, 0.910161,
		0.692588, -0.720757, 0.028824,
		0.648294, 0.639483, 0.413252,
		39.975266, 41.056698, 16.481520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743790, 40.158974, 16.706738>,  <39.521458, 40.609058, 16.192244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743790, 40.158974, 16.706738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851154, 40.528316, 16.816551>,  <39.915573, 40.749924, 16.882439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851154, 40.528316, 16.816551>,  <39.743790, 40.158974, 16.706738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851154, 40.528316, 16.816551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194844, -0.227061, 0.954190,
		0.943394, -0.309604, 0.118965,
		0.268409, 0.923357, 0.274532,
		39.931679, 40.805325, 16.898911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242756, 40.089539, 17.310812>,  <39.743790, 40.158974, 16.706738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242756, 40.089539, 17.310812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102497, 40.462967, 17.340481>,  <40.018341, 40.687023, 17.358282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102497, 40.462967, 17.340481>,  <40.242756, 40.089539, 17.310812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102497, 40.462967, 17.340481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214326, -0.157094, 0.964047,
		0.911654, 0.322141, 0.255171,
		-0.350645, 0.933567, 0.074172,
		39.997303, 40.743038, 17.362732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403805, 40.213818, 17.940474>,  <40.242756, 40.089539, 17.310812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403805, 40.213818, 17.940474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133293, 40.497803, 17.861895>,  <39.970985, 40.668194, 17.814747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133293, 40.497803, 17.861895>,  <40.403805, 40.213818, 17.940474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133293, 40.497803, 17.861895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333440, -0.057235, 0.941032,
		0.656857, 0.701906, 0.275438,
		-0.676281, 0.709966, -0.196449,
		39.930408, 40.710793, 17.802959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415604, 40.640720, 18.441900>,  <40.403805, 40.213818, 17.940474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415604, 40.640720, 18.441900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061218, 40.727245, 18.277817>,  <39.848587, 40.779160, 18.179367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061218, 40.727245, 18.277817>,  <40.415604, 40.640720, 18.441900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061218, 40.727245, 18.277817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419926, 0.001139, 0.907557,
		0.196784, 0.976323, 0.089827,
		-0.885967, 0.216313, -0.410208,
		39.795429, 40.792141, 18.154755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158520, 41.291050, 18.748386>,  <40.415604, 40.640720, 18.441900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158520, 41.291050, 18.748386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834358, 41.106762, 18.603622>,  <39.639862, 40.996189, 18.516764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834358, 41.106762, 18.603622>,  <40.158520, 41.291050, 18.748386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834358, 41.106762, 18.603622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429093, 0.046168, 0.902080,
		-0.398898, 0.886343, -0.235107,
		-0.810407, -0.460721, -0.361908,
		39.591236, 40.968544, 18.495050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442116, 41.737099, 19.018944>,  <40.158520, 41.291050, 18.748386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442116, 41.737099, 19.018944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322910, 41.364391, 18.936001>,  <39.251389, 41.140766, 18.886236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322910, 41.364391, 18.936001>,  <39.442116, 41.737099, 19.018944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322910, 41.364391, 18.936001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409882, -0.071272, 0.909350,
		-0.862082, 0.355990, -0.360675,
		-0.298013, -0.931768, -0.207356,
		39.233505, 41.084862, 18.873795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663147, 41.687431, 19.247923>,  <39.442116, 41.737099, 19.018944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663147, 41.687431, 19.247923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825432, 41.323017, 19.218508>,  <38.922802, 41.104366, 19.200859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825432, 41.323017, 19.218508>,  <38.663147, 41.687431, 19.247923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825432, 41.323017, 19.218508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542896, -0.304927, 0.782486,
		-0.735299, -0.277538, -0.618311,
		0.405709, -0.911039, -0.073539,
		38.947144, 41.049706, 19.196445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162685, 41.227253, 19.397642>,  <38.663147, 41.687431, 19.247923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162685, 41.227253, 19.397642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456810, 40.964977, 19.466217>,  <38.633286, 40.807613, 19.507362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456810, 40.964977, 19.466217>,  <38.162685, 41.227253, 19.397642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456810, 40.964977, 19.466217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523539, -0.388909, 0.758062,
		-0.430381, -0.647163, -0.629248,
		0.735310, -0.655691, 0.171436,
		38.677402, 40.768269, 19.517647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890495, 40.636719, 19.588968>,  <38.162685, 41.227253, 19.397642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890495, 40.636719, 19.588968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254959, 40.542130, 19.723944>,  <38.473637, 40.485374, 19.804930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254959, 40.542130, 19.723944>,  <37.890495, 40.636719, 19.588968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254959, 40.542130, 19.723944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411993, -0.509036, 0.755740,
		-0.006946, -0.827624, -0.561240,
		0.911161, -0.236476, 0.337439,
		38.528309, 40.471188, 19.825176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750072, 39.960022, 19.939823>,  <37.890495, 40.636719, 19.588968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750072, 39.960022, 19.939823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104576, 40.088638, 20.073183>,  <38.317280, 40.165806, 20.153198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104576, 40.088638, 20.073183>,  <37.750072, 39.960022, 19.939823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104576, 40.088638, 20.073183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194472, -0.394971, 0.897874,
		0.420385, -0.860587, -0.287517,
		0.886260, 0.321539, 0.333400,
		38.370453, 40.185101, 20.173203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007099, 39.395916, 20.228922>,  <37.750072, 39.960022, 19.939823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007099, 39.395916, 20.228922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168457, 39.716343, 20.405815>,  <38.265270, 39.908600, 20.511951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168457, 39.716343, 20.405815>,  <38.007099, 39.395916, 20.228922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168457, 39.716343, 20.405815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188157, -0.400356, 0.896835,
		0.895474, -0.444984, -0.010773,
		0.403390, 0.801065, 0.442235,
		38.289474, 39.956661, 20.538486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423588, 39.145840, 20.817877>,  <38.007099, 39.395916, 20.228922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423588, 39.145840, 20.817877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390190, 39.538586, 20.885948>,  <38.370152, 39.774235, 20.926790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390190, 39.538586, 20.885948>,  <38.423588, 39.145840, 20.817877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390190, 39.538586, 20.885948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025373, -0.168624, 0.985354,
		0.996185, 0.086593, -0.010833,
		-0.083498, 0.981869, 0.170178,
		38.365139, 39.833145, 20.937002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890400, 39.167595, 21.429420>,  <38.423588, 39.145840, 20.817877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890400, 39.167595, 21.429420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654667, 39.490383, 21.414034>,  <38.513226, 39.684055, 21.404802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654667, 39.490383, 21.414034>,  <38.890400, 39.167595, 21.429420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654667, 39.490383, 21.414034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023428, 0.030524, 0.999259,
		0.807548, 0.589801, 0.000917,
		-0.589336, 0.806972, -0.038468,
		38.477867, 39.732475, 21.402494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229343, 39.512074, 21.892336>,  <38.890400, 39.167595, 21.429420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229343, 39.512074, 21.892336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850857, 39.640842, 21.879488>,  <38.623764, 39.718105, 21.871778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850857, 39.640842, 21.879488>,  <39.229343, 39.512074, 21.892336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850857, 39.640842, 21.879488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012898, 0.136741, 0.990523,
		0.323265, 0.936839, -0.133539,
		-0.946220, 0.321924, -0.032120,
		38.566990, 39.737419, 21.869852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217655, 40.177402, 22.297604>,  <39.229343, 39.512074, 21.892336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217655, 40.177402, 22.297604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852394, 40.014462, 22.291731>,  <38.633236, 39.916698, 22.288208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852394, 40.014462, 22.291731>,  <39.217655, 40.177402, 22.297604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852394, 40.014462, 22.291731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130687, 0.258467, 0.957139,
		-0.386095, 0.875935, -0.289255,
		-0.913155, -0.407348, -0.014680,
		38.578449, 39.892258, 22.287327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924999, 40.520580, 22.863010>,  <39.217655, 40.177402, 22.297604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924999, 40.520580, 22.863010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663235, 40.227390, 22.788725>,  <38.506176, 40.051476, 22.744154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663235, 40.227390, 22.788725>,  <38.924999, 40.520580, 22.863010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663235, 40.227390, 22.788725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347822, 0.073727, 0.934657,
		-0.671392, 0.676244, -0.303194,
		-0.654410, -0.732979, -0.185713,
		38.466911, 40.007496, 22.733011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326355, 40.761242, 23.111103>,  <38.924999, 40.520580, 22.863010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326355, 40.761242, 23.111103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285973, 40.363476, 23.123348>,  <38.261742, 40.124817, 23.130695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285973, 40.363476, 23.123348>,  <38.326355, 40.761242, 23.111103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285973, 40.363476, 23.123348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262932, 0.056343, 0.963168,
		-0.959518, 0.089189, -0.267153,
		-0.100957, -0.994420, 0.030611,
		38.255684, 40.065151, 23.132532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692284, 40.663326, 23.538479>,  <38.326355, 40.761242, 23.111103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692284, 40.663326, 23.538479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878239, 40.309444, 23.524782>,  <37.989811, 40.097115, 23.516565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878239, 40.309444, 23.524782>,  <37.692284, 40.663326, 23.538479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878239, 40.309444, 23.524782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005679, -0.035693, 0.999347,
		-0.885350, -0.464781, -0.011569,
		0.464890, -0.884706, -0.034241,
		38.017704, 40.044033, 23.514509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342255, 40.173462, 23.979267>,  <37.692284, 40.663326, 23.538479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342255, 40.173462, 23.979267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704304, 40.006153, 23.948790>,  <37.921532, 39.905766, 23.930504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704304, 40.006153, 23.948790>,  <37.342255, 40.173462, 23.979267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704304, 40.006153, 23.948790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032073, -0.245874, 0.968771,
		-0.423947, -0.874409, -0.235961,
		0.905119, -0.418276, -0.076193,
		37.975838, 39.880669, 23.925932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309826, 39.641968, 24.550581>,  <37.342255, 40.173462, 23.979267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309826, 39.641968, 24.550581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696239, 39.610874, 24.452005>,  <37.928089, 39.592220, 24.392860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696239, 39.610874, 24.452005>,  <37.309826, 39.641968, 24.550581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696239, 39.610874, 24.452005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235803, -0.124885, 0.963743,
		-0.105685, -0.989122, -0.102316,
		0.966037, -0.077727, -0.246436,
		37.986050, 39.587555, 24.378075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673656, 38.943714, 24.738558>,  <37.309826, 39.641968, 24.550581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673656, 38.943714, 24.738558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970375, 39.211357, 24.720564>,  <38.148407, 39.371944, 24.709768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970375, 39.211357, 24.720564>,  <37.673656, 38.943714, 24.738558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970375, 39.211357, 24.720564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290030, -0.259610, 0.921133,
		0.604661, -0.696343, -0.386641,
		0.741800, 0.669111, -0.044984,
		38.192917, 39.412090, 24.707069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365154, 38.572979, 24.972830>,  <37.673656, 38.943714, 24.738558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365154, 38.572979, 24.972830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415840, 38.965038, 25.033831>,  <38.446251, 39.200272, 25.070431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415840, 38.965038, 25.033831>,  <38.365154, 38.572979, 24.972830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415840, 38.965038, 25.033831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557884, -0.197542, 0.806066,
		0.820188, -0.017063, -0.571839,
		0.126716, 0.980146, 0.152502,
		38.453854, 39.259083, 25.079582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129345, 38.683594, 25.263124>,  <38.365154, 38.572979, 24.972830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129345, 38.683594, 25.263124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952911, 39.031109, 25.353157>,  <38.847054, 39.239616, 25.407177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952911, 39.031109, 25.353157>,  <39.129345, 38.683594, 25.263124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952911, 39.031109, 25.353157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603024, 0.101150, 0.791284,
		0.664688, 0.484751, -0.568513,
		-0.441080, 0.868784, 0.225083,
		38.820587, 39.291744, 25.420683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654346, 39.204277, 25.349485>,  <39.129345, 38.683594, 25.263124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654346, 39.204277, 25.349485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330494, 39.328083, 25.548964>,  <39.136181, 39.402367, 25.668652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330494, 39.328083, 25.548964>,  <39.654346, 39.204277, 25.349485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330494, 39.328083, 25.548964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554905, 0.126784, 0.822196,
		0.191257, 0.942404, -0.274401,
		-0.809630, 0.309518, 0.498696,
		39.087605, 39.420937, 25.698572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932415, 39.699223, 25.735996>,  <39.654346, 39.204277, 25.349485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932415, 39.699223, 25.735996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582027, 39.627861, 25.915264>,  <39.371796, 39.585045, 26.022825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582027, 39.627861, 25.915264>,  <39.932415, 39.699223, 25.735996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582027, 39.627861, 25.915264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440390, 0.083325, 0.893932,
		-0.196826, 0.980423, 0.005578,
		-0.875966, -0.178405, 0.448169,
		39.319237, 39.574341, 26.049715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946545, 40.072906, 26.368048>,  <39.932415, 39.699223, 25.735996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946545, 40.072906, 26.368048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636288, 39.841553, 26.469130>,  <39.450134, 39.702740, 26.529779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636288, 39.841553, 26.469130>,  <39.946545, 40.072906, 26.368048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636288, 39.841553, 26.469130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293527, 0.023908, 0.955652,
		-0.558772, 0.815417, 0.151226,
		-0.775639, -0.578381, 0.252706,
		39.403595, 39.668037, 26.544941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611526, 40.327095, 27.080090>,  <39.946545, 40.072906, 26.368048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611526, 40.327095, 27.080090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485210, 39.955818, 27.001375>,  <39.409420, 39.733051, 26.954145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485210, 39.955818, 27.001375>,  <39.611526, 40.327095, 27.080090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485210, 39.955818, 27.001375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169329, -0.259203, 0.950863,
		-0.933596, 0.266956, 0.239026,
		-0.315795, -0.928196, -0.196788,
		39.390472, 39.677361, 26.942339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280304, 40.126488, 27.606512>,  <39.611526, 40.327095, 27.080090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280304, 40.126488, 27.606512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400322, 39.789360, 27.427795>,  <39.472332, 39.587082, 27.320566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400322, 39.789360, 27.427795>,  <39.280304, 40.126488, 27.606512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400322, 39.789360, 27.427795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396439, -0.315838, 0.862022,
		-0.867647, -0.435769, 0.239363,
		0.300042, -0.842824, -0.446792,
		39.490334, 39.536514, 27.293758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010876, 39.524563, 27.940470>,  <39.280304, 40.126488, 27.606512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010876, 39.524563, 27.940470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374161, 39.421555, 27.808512>,  <39.592133, 39.359749, 27.729336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374161, 39.421555, 27.808512>,  <39.010876, 39.524563, 27.940470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374161, 39.421555, 27.808512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148115, -0.539469, 0.828876,
		-0.391418, -0.801660, -0.451812,
		0.908215, -0.257517, -0.329895,
		39.646626, 39.344299, 27.709543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302139, 39.564182, 27.986631>,  <39.010876, 39.524563, 27.940470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302139, 39.564182, 27.986631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952244, 39.520149, 28.175400>,  <37.742306, 39.493729, 28.288660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952244, 39.520149, 28.175400>,  <38.302139, 39.564182, 27.986631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952244, 39.520149, 28.175400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122653, -0.891851, -0.435382,
		0.468810, -0.438729, 0.766638,
		-0.874742, -0.110082, 0.471920,
		37.689819, 39.487125, 28.316977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220764, 38.965237, 28.260984>,  <38.302139, 39.564182, 27.986631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220764, 38.965237, 28.260984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844860, 39.063812, 28.166227>,  <37.619316, 39.122955, 28.109373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844860, 39.063812, 28.166227>,  <38.220764, 38.965237, 28.260984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844860, 39.063812, 28.166227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138207, -0.907764, -0.396060,
		-0.312645, -0.339462, 0.887141,
		-0.939762, 0.246435, -0.236892,
		37.562931, 39.137741, 28.095160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674480, 38.457069, 28.572815>,  <38.220764, 38.965237, 28.260984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674480, 38.457069, 28.572815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505108, 38.632812, 28.255913>,  <37.403484, 38.738258, 28.065771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505108, 38.632812, 28.255913>,  <37.674480, 38.457069, 28.572815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505108, 38.632812, 28.255913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169928, -0.897523, -0.406912,
		-0.889847, -0.037674, 0.454700,
		-0.423434, 0.439356, -0.792256,
		37.378078, 38.764618, 28.018236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985325, 38.213196, 28.468838>,  <37.674480, 38.457069, 28.572815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985325, 38.213196, 28.468838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112648, 38.322582, 28.105762>,  <37.189041, 38.388214, 27.887917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112648, 38.322582, 28.105762>,  <36.985325, 38.213196, 28.468838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112648, 38.322582, 28.105762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017464, -0.959019, -0.282802,
		-0.947826, 0.074167, -0.310040,
		0.318309, 0.273462, -0.907689,
		37.208141, 38.404621, 27.833456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497559, 38.227753, 27.880144>,  <36.985325, 38.213196, 28.468838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497559, 38.227753, 27.880144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533260, 38.590168, 27.714672>,  <36.554680, 38.807617, 27.615389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533260, 38.590168, 27.714672>,  <36.497559, 38.227753, 27.880144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533260, 38.590168, 27.714672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818807, -0.169730, -0.548404,
		-0.567088, 0.387671, 0.726721,
		0.089254, 0.906037, -0.413680,
		36.560036, 38.861980, 27.590569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740063, 38.662968, 27.911825>,  <36.497559, 38.227753, 27.880144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740063, 38.662968, 27.911825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961540, 38.764786, 27.594681>,  <36.094425, 38.825878, 27.404394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961540, 38.764786, 27.594681>,  <35.740063, 38.662968, 27.911825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961540, 38.764786, 27.594681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806613, -0.072605, -0.586603,
		-0.206885, 0.964330, 0.165123,
		0.553691, 0.254550, -0.792863,
		36.127647, 38.841152, 27.356823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427074, 39.270355, 27.527367>,  <35.740063, 38.662968, 27.911825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427074, 39.270355, 27.527367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631840, 39.019398, 27.292654>,  <35.754700, 38.868824, 27.151827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631840, 39.019398, 27.292654>,  <35.427074, 39.270355, 27.527367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631840, 39.019398, 27.292654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762447, -0.017160, -0.646823,
		0.395746, 0.778511, -0.487141,
		0.511918, -0.627397, -0.586782,
		35.785416, 38.831177, 27.116619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437088, 39.470367, 26.895464>,  <35.427074, 39.270355, 27.527367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437088, 39.470367, 26.895464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478149, 39.072823, 26.911949>,  <35.502785, 38.834297, 26.921841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478149, 39.072823, 26.911949>,  <35.437088, 39.470367, 26.895464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478149, 39.072823, 26.911949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699851, -0.101601, -0.707026,
		0.706875, 0.043732, -0.705985,
		0.102649, -0.993863, 0.041213,
		35.508945, 38.774662, 26.924313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781803, 39.194382, 26.214283>,  <35.437088, 39.470367, 26.895464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781803, 39.194382, 26.214283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520084, 38.956402, 26.401016>,  <35.363052, 38.813614, 26.513056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520084, 38.956402, 26.401016>,  <35.781803, 39.194382, 26.214283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520084, 38.956402, 26.401016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600116, 0.032844, -0.799239,
		0.460174, -0.803092, -0.378528,
		-0.654294, -0.594949, 0.466834,
		35.323795, 38.777916, 26.541067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294174, 39.062695, 25.635084>,  <35.781803, 39.194382, 26.214283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294174, 39.062695, 25.635084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149029, 38.820030, 25.918009>,  <35.061943, 38.674431, 26.087765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149029, 38.820030, 25.918009>,  <35.294174, 39.062695, 25.635084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149029, 38.820030, 25.918009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856792, -0.081236, -0.509223,
		0.366386, -0.790798, -0.490306,
		-0.362862, -0.606662, 0.707313,
		35.040169, 38.638031, 26.130203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031925, 38.609650, 25.353836>,  <35.294174, 39.062695, 25.635084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031925, 38.609650, 25.353836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813293, 38.601326, 25.688696>,  <34.682114, 38.596333, 25.889612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813293, 38.601326, 25.688696>,  <35.031925, 38.609650, 25.353836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813293, 38.601326, 25.688696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834617, -0.068026, -0.546614,
		0.068321, -0.997467, 0.019816,
		-0.546577, -0.020807, 0.837150,
		34.649319, 38.595081, 25.939840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465313, 38.159611, 25.297070>,  <35.031925, 38.609650, 25.353836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465313, 38.159611, 25.297070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343700, 38.393108, 25.598215>,  <34.270733, 38.533207, 25.778902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343700, 38.393108, 25.598215>,  <34.465313, 38.159611, 25.297070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343700, 38.393108, 25.598215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934196, -0.027850, -0.355670,
		-0.186653, -0.811461, 0.553797,
		-0.304036, 0.583742, 0.752866,
		34.252491, 38.568230, 25.824076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965233, 37.894138, 25.924545>,  <34.465313, 38.159611, 25.297070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965233, 37.894138, 25.924545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343132, 38.022827, 25.949644>,  <34.569874, 38.100040, 25.964703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343132, 38.022827, 25.949644>,  <33.965233, 37.894138, 25.924545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343132, 38.022827, 25.949644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011006, -0.222448, 0.974883,
		0.327603, -0.920331, -0.213699,
		0.944751, 0.321726, 0.062746,
		34.626556, 38.119347, 25.968468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489227, 37.412384, 26.091703>,  <33.965233, 37.894138, 25.924545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489227, 37.412384, 26.091703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569916, 37.782791, 26.219328>,  <34.618328, 38.005035, 26.295902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569916, 37.782791, 26.219328>,  <34.489227, 37.412384, 26.091703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569916, 37.782791, 26.219328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052100, -0.315152, 0.947610,
		0.978056, -0.207776, -0.015327,
		0.201721, 0.926017, 0.319062,
		34.630432, 38.060596, 26.315046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080681, 37.466537, 26.429882>,  <34.489227, 37.412384, 26.091703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080681, 37.466537, 26.429882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798035, 37.716206, 26.563208>,  <34.628448, 37.866009, 26.643204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798035, 37.716206, 26.563208>,  <35.080681, 37.466537, 26.429882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798035, 37.716206, 26.563208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072452, -0.404755, 0.911550,
		0.703878, 0.668266, 0.240783,
		-0.706616, 0.624175, 0.333315,
		34.586048, 37.903458, 26.663202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214909, 37.005993, 27.091024>,  <35.080681, 37.466537, 26.429882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214909, 37.005993, 27.091024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873058, 36.808987, 27.156803>,  <34.667950, 36.690781, 27.196270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873058, 36.808987, 27.156803>,  <35.214909, 37.005993, 27.091024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873058, 36.808987, 27.156803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226347, -0.638395, -0.735676,
		0.467317, -0.591504, 0.657068,
		-0.854624, -0.492519, 0.164448,
		34.616673, 36.661232, 27.206137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414619, 36.313641, 27.338823>,  <35.214909, 37.005993, 27.091024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414619, 36.313641, 27.338823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073071, 36.342262, 27.132607>,  <34.868141, 36.359436, 27.008877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073071, 36.342262, 27.132607>,  <35.414619, 36.313641, 27.338823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073071, 36.342262, 27.132607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390588, -0.566579, -0.725554,
		-0.344010, -0.820895, 0.455838,
		-0.853872, 0.071553, -0.515541,
		34.816910, 36.363728, 26.977943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104462, 35.650227, 27.191730>,  <35.414619, 36.313641, 27.338823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104462, 35.650227, 27.191730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978386, 35.901825, 26.907471>,  <34.902740, 36.052784, 26.736916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978386, 35.901825, 26.907471>,  <35.104462, 35.650227, 27.191730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978386, 35.901825, 26.907471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132171, -0.712427, -0.689187,
		-0.939780, -0.311152, 0.141415,
		-0.315190, 0.628993, -0.710650,
		34.883827, 36.090523, 26.694275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618336, 35.096996, 27.179075>,  <35.104462, 35.650227, 27.191730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618336, 35.096996, 27.179075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797279, 35.048626, 27.533533>,  <35.904644, 35.019604, 27.746208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797279, 35.048626, 27.533533>,  <35.618336, 35.096996, 27.179075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797279, 35.048626, 27.533533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893895, -0.028682, 0.447357,
		-0.028682, -0.992247, -0.120927,
		-0.447357, 0.120927, -0.886142,
		35.931488, 35.012348, 27.799376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070152, 34.829372, 27.721966>,  <35.618336, 35.096996, 27.179075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070152, 34.829372, 27.721966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379181, 34.905254, 27.964334>,  <35.564598, 34.950783, 28.109756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379181, 34.905254, 27.964334>,  <35.070152, 34.829372, 27.721966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379181, 34.905254, 27.964334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617572, 0.002933, 0.786509,
		0.147432, -0.981836, 0.119426,
		0.772573, 0.189710, 0.605922,
		35.610954, 34.962166, 28.146111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176525, 34.288975, 28.162165>,  <35.070152, 34.829372, 27.721966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176525, 34.288975, 28.162165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307426, 34.624725, 28.335760>,  <35.385967, 34.826176, 28.439919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307426, 34.624725, 28.335760>,  <35.176525, 34.288975, 28.162165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307426, 34.624725, 28.335760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622611, -0.153948, 0.767239,
		0.710816, -0.521291, 0.472225,
		0.327256, 0.839378, 0.433990,
		35.405605, 34.876537, 28.465958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267830, 34.083477, 28.880190>,  <35.176525, 34.288975, 28.162165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267830, 34.083477, 28.880190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229019, 34.481590, 28.879734>,  <35.205734, 34.720459, 28.879461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229019, 34.481590, 28.879734>,  <35.267830, 34.083477, 28.880190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229019, 34.481590, 28.879734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665073, -0.063985, 0.744032,
		0.740448, 0.072948, 0.668143,
		-0.097027, 0.995281, -0.001138,
		35.199909, 34.780174, 28.879393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400959, 34.265556, 29.552576>,  <35.267830, 34.083477, 28.880190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400959, 34.265556, 29.552576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195175, 34.557434, 29.372406>,  <35.071705, 34.732559, 29.264305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195175, 34.557434, 29.372406>,  <35.400959, 34.265556, 29.552576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195175, 34.557434, 29.372406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700452, -0.054583, 0.711609,
		0.494670, 0.681594, 0.539195,
		-0.514459, 0.729692, -0.450424,
		35.040836, 34.776340, 29.237278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228119, 34.767853, 30.023241>,  <35.400959, 34.265556, 29.552576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228119, 34.767853, 30.023241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967129, 34.822140, 29.725019>,  <34.810535, 34.854713, 29.546085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967129, 34.822140, 29.725019>,  <35.228119, 34.767853, 30.023241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967129, 34.822140, 29.725019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754693, -0.205483, 0.623069,
		-0.068637, 0.969204, 0.236499,
		-0.652478, 0.135718, -0.745556,
		34.771385, 34.862854, 29.501352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797272, 35.170013, 30.281591>,  <35.228119, 34.767853, 30.023241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797272, 35.170013, 30.281591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599873, 34.992073, 29.982641>,  <34.481434, 34.885311, 29.803270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599873, 34.992073, 29.982641>,  <34.797272, 35.170013, 30.281591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599873, 34.992073, 29.982641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596608, -0.452126, 0.663055,
		-0.632867, 0.773106, -0.042277,
		-0.493497, -0.444848, -0.747376,
		34.451824, 34.858620, 29.758429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109001, 35.206829, 30.907070>,  <34.797272, 35.170013, 30.281591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109001, 35.206829, 30.907070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327831, 35.530960, 30.823082>,  <35.459129, 35.725437, 30.772690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327831, 35.530960, 30.823082>,  <35.109001, 35.206829, 30.907070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327831, 35.530960, 30.823082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362991, 0.455670, 0.812775,
		0.754288, -0.368428, 0.543424,
		0.547071, 0.810325, -0.209971,
		35.491951, 35.774059, 30.760090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451698, 35.424477, 31.549511>,  <35.109001, 35.206829, 30.907070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451698, 35.424477, 31.549511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339016, 35.691364, 31.273695>,  <35.271408, 35.851498, 31.108206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339016, 35.691364, 31.273695>,  <35.451698, 35.424477, 31.549511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339016, 35.691364, 31.273695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628433, 0.414752, 0.658067,
		0.725061, 0.618710, 0.302464,
		-0.281705, 0.667217, -0.689539,
		35.254505, 35.891529, 31.066833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644356, 36.229012, 31.573475>,  <35.451698, 35.424477, 31.549511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644356, 36.229012, 31.573475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279339, 36.133709, 31.440514>,  <35.060329, 36.076527, 31.360737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279339, 36.133709, 31.440514>,  <35.644356, 36.229012, 31.573475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279339, 36.133709, 31.440514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406186, 0.622725, 0.668750,
		0.047659, 0.745282, -0.665043,
		-0.912547, -0.238259, -0.332401,
		35.005573, 36.062233, 31.340794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445660, 36.996605, 31.387682>,  <35.644356, 36.229012, 31.573475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445660, 36.996605, 31.387682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793316, 37.002888, 31.189959>,  <36.001911, 37.006657, 31.071325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793316, 37.002888, 31.189959>,  <35.445660, 36.996605, 31.387682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793316, 37.002888, 31.189959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137650, 0.952317, 0.272296,
		0.475014, -0.304706, 0.825540,
		0.869146, 0.015709, -0.494307,
		36.054058, 37.007599, 31.041666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015018, 37.245747, 31.793291>,  <35.445660, 36.996605, 31.387682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015018, 37.245747, 31.793291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082535, 37.340096, 31.410486>,  <36.123047, 37.396706, 31.180803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082535, 37.340096, 31.410486>,  <36.015018, 37.245747, 31.793291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082535, 37.340096, 31.410486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158006, 0.951911, 0.262486,
		0.972904, -0.195520, 0.123407,
		0.168793, 0.235875, -0.957012,
		36.133175, 37.410858, 31.123383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720974, 37.628399, 31.597809>,  <36.015018, 37.245747, 31.793291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720974, 37.628399, 31.597809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402122, 37.733662, 31.380432>,  <36.210812, 37.796822, 31.250006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402122, 37.733662, 31.380432>,  <36.720974, 37.628399, 31.597809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402122, 37.733662, 31.380432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130158, 0.953757, 0.270936,
		0.589609, 0.145239, -0.794523,
		-0.797132, 0.263160, -0.543440,
		36.162983, 37.812611, 31.217400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026489, 37.587311, 30.887732>,  <36.720974, 37.628399, 31.597809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026489, 37.587311, 30.887732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325493, 37.332340, 30.812988>,  <37.504894, 37.179359, 30.768143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325493, 37.332340, 30.812988>,  <37.026489, 37.587311, 30.887732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325493, 37.332340, 30.812988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104746, -0.390906, 0.914451,
		-0.655940, -0.663988, -0.358974,
		0.747510, -0.637426, -0.186860,
		37.549747, 37.141113, 30.756929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822231, 36.914040, 31.168610>,  <37.026489, 37.587311, 30.887732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822231, 36.914040, 31.168610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220257, 36.887836, 31.138769>,  <37.459072, 36.872112, 31.120865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220257, 36.887836, 31.138769>,  <36.822231, 36.914040, 31.168610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220257, 36.887836, 31.138769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019171, -0.610469, 0.791808,
		-0.097413, -0.789326, -0.606197,
		0.995059, -0.065511, -0.074599,
		37.518776, 36.868183, 31.116388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076622, 36.201244, 31.406986>,  <36.822231, 36.914040, 31.168610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076622, 36.201244, 31.406986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388130, 36.451809, 31.420397>,  <37.575035, 36.602146, 31.428444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388130, 36.451809, 31.420397>,  <37.076622, 36.201244, 31.406986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388130, 36.451809, 31.420397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435499, -0.578348, 0.689822,
		0.451501, -0.522614, -0.723202,
		0.778773, 0.626409, 0.033527,
		37.621761, 36.639732, 31.430454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151836, 36.096584, 32.150528>,  <37.076622, 36.201244, 31.406986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151836, 36.096584, 32.150528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302582, 35.841629, 31.881691>,  <37.393028, 35.688656, 31.720388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302582, 35.841629, 31.881691>,  <37.151836, 36.096584, 32.150528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302582, 35.841629, 31.881691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799798, -0.142081, 0.583211,
		-0.467224, -0.757331, 0.456237,
		0.376861, -0.637388, -0.672095,
		37.415642, 35.650414, 31.680061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459179, 35.595428, 32.532734>,  <37.151836, 36.096584, 32.150528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459179, 35.595428, 32.532734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614780, 35.583935, 32.164417>,  <37.708141, 35.577038, 31.943428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614780, 35.583935, 32.164417>,  <37.459179, 35.595428, 32.532734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614780, 35.583935, 32.164417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917509, -0.077751, 0.390042,
		-0.082801, -0.996559, -0.003879,
		0.389001, -0.028737, -0.920789,
		37.731480, 35.575314, 31.888180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011936, 34.997429, 32.357353>,  <37.459179, 35.595428, 32.532734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011936, 34.997429, 32.357353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056145, 35.331974, 32.142586>,  <38.082668, 35.532700, 32.013725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056145, 35.331974, 32.142586>,  <38.011936, 34.997429, 32.357353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056145, 35.331974, 32.142586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977604, 0.005865, 0.210370,
		0.179095, -0.548143, -0.816985,
		0.110521, 0.836364, -0.536917,
		38.089302, 35.582882, 31.981510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594933, 35.041626, 31.885372>,  <38.011936, 34.997429, 32.357353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594933, 35.041626, 31.885372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544098, 35.435276, 31.934935>,  <38.513599, 35.671467, 31.964672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544098, 35.435276, 31.934935>,  <38.594933, 35.041626, 31.885372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544098, 35.435276, 31.934935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989201, 0.134940, -0.057198,
		-0.073010, 0.115299, -0.990644,
		-0.127082, 0.984123, 0.123905,
		38.505974, 35.730515, 31.972107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091633, 35.390690, 31.343245>,  <38.594933, 35.041626, 31.885372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091633, 35.390690, 31.343245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994953, 35.613297, 31.661207>,  <38.936947, 35.746861, 31.851984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994953, 35.613297, 31.661207>,  <39.091633, 35.390690, 31.343245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994953, 35.613297, 31.661207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955254, 0.280408, 0.094139,
		-0.170508, 0.782089, -0.599386,
		-0.241697, 0.556514, 0.794905,
		38.922443, 35.780251, 31.899679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341759, 36.080990, 31.197924>,  <39.091633, 35.390690, 31.343245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341759, 36.080990, 31.197924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319500, 35.983700, 31.585272>,  <39.306145, 35.925327, 31.817680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319500, 35.983700, 31.585272>,  <39.341759, 36.080990, 31.197924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319500, 35.983700, 31.585272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953946, 0.273384, 0.123484,
		-0.294772, 0.930646, 0.216812,
		-0.055647, -0.243226, 0.968372,
		39.302807, 35.910732, 31.875784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565639, 36.659901, 31.524273>,  <39.341759, 36.080990, 31.197924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565639, 36.659901, 31.524273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633015, 36.381962, 31.803932>,  <39.673439, 36.215199, 31.971727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633015, 36.381962, 31.803932>,  <39.565639, 36.659901, 31.524273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633015, 36.381962, 31.803932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891143, 0.410496, 0.193279,
		-0.421299, 0.590487, 0.688355,
		0.168438, -0.694851, 0.699150,
		39.683544, 36.173508, 32.013676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615372, 36.948814, 32.161488>,  <39.565639, 36.659901, 31.524273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615372, 36.948814, 32.161488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834072, 36.615955, 32.124432>,  <39.965294, 36.416241, 32.102200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834072, 36.615955, 32.124432>,  <39.615372, 36.948814, 32.161488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834072, 36.615955, 32.124432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833391, 0.530198, 0.156045,
		-0.080737, -0.162521, 0.983396,
		0.546756, -0.832152, -0.092637,
		39.998100, 36.366310, 32.096642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107040, 37.060902, 32.726349>,  <39.615372, 36.948814, 32.161488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107040, 37.060902, 32.726349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290504, 36.772919, 32.518005>,  <40.400581, 36.600128, 32.393002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290504, 36.772919, 32.518005>,  <40.107040, 37.060902, 32.726349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290504, 36.772919, 32.518005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882837, 0.435911, 0.174870,
		0.101147, -0.540036, 0.835542,
		0.458658, -0.719960, -0.520855,
		40.428101, 36.556931, 32.361748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850998, 37.203220, 32.790703>,  <40.107040, 37.060902, 32.726349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850998, 37.203220, 32.790703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950020, 36.900631, 32.548557>,  <41.009434, 36.719078, 32.403271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950020, 36.900631, 32.548557>,  <40.850998, 37.203220, 32.790703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950020, 36.900631, 32.548557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953060, 0.302558, 0.011664,
		0.174334, -0.579835, 0.795864,
		0.247558, -0.756472, -0.605364,
		41.024288, 36.673691, 32.366947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487759, 36.974255, 33.004707>,  <40.850998, 37.203220, 32.790703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487759, 36.974255, 33.004707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492413, 36.836952, 32.629040>,  <41.495205, 36.754570, 32.403641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492413, 36.836952, 32.629040>,  <41.487759, 36.974255, 33.004707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492413, 36.836952, 32.629040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997701, -0.058725, 0.033825,
		-0.066763, -0.937404, 0.341784,
		0.011636, -0.343256, -0.939170,
		41.495903, 36.733974, 32.347290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115589, 36.547871, 33.049950>,  <41.487759, 36.974255, 33.004707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115589, 36.547871, 33.049950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030205, 36.640041, 32.670197>,  <41.978973, 36.695343, 32.442345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030205, 36.640041, 32.670197>,  <42.115589, 36.547871, 33.049950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030205, 36.640041, 32.670197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973925, -0.026241, -0.225349,
		-0.076840, -0.972735, -0.218820,
		-0.213463, 0.230430, -0.949387,
		41.966167, 36.709171, 32.385380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290314, 35.981930, 32.454891>,  <42.115589, 36.547871, 33.049950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290314, 35.981930, 32.454891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284916, 36.361454, 32.328663>,  <42.281677, 36.589169, 32.252926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284916, 36.361454, 32.328663>,  <42.290314, 35.981930, 32.454891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284916, 36.361454, 32.328663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898937, -0.126687, -0.419360,
		-0.437870, -0.289336, -0.851208,
		-0.013499, 0.948807, -0.315567,
		42.280865, 36.646095, 32.233994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292816, 35.985554, 31.777243>,  <42.290314, 35.981930, 32.454891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292816, 35.985554, 31.777243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471783, 36.323082, 31.895760>,  <42.579163, 36.525600, 31.966869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471783, 36.323082, 31.895760>,  <42.292816, 35.985554, 31.777243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471783, 36.323082, 31.895760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840558, -0.283622, -0.461542,
		-0.305424, 0.455551, -0.836176,
		0.447414, 0.843820, 0.296292,
		42.606007, 36.576229, 31.984648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525204, 36.500294, 31.258917>,  <42.292816, 35.985554, 31.777243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525204, 36.500294, 31.258917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778847, 36.464127, 31.566093>,  <42.931030, 36.442425, 31.750399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778847, 36.464127, 31.566093>,  <42.525204, 36.500294, 31.258917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778847, 36.464127, 31.566093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754088, -0.147396, -0.640020,
		0.171062, 0.984936, -0.025281,
		0.634105, -0.090419, 0.767942,
		42.969078, 36.437000, 31.796476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984558, 37.062653, 31.279827>,  <42.525204, 36.500294, 31.258917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984558, 37.062653, 31.279827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124523, 36.721569, 31.434982>,  <43.208500, 36.516918, 31.528076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124523, 36.721569, 31.434982>,  <42.984558, 37.062653, 31.279827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124523, 36.721569, 31.434982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865860, 0.136345, -0.481348,
		0.357562, 0.504284, 0.786032,
		0.349908, -0.852706, 0.387888,
		43.229496, 36.465755, 31.551348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747871, 36.788216, 31.253992>,  <42.984558, 37.062653, 31.279827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747871, 36.788216, 31.253992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950066, 36.639606, 31.565495>,  <44.071381, 36.550442, 31.752396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950066, 36.639606, 31.565495>,  <43.747871, 36.788216, 31.253992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950066, 36.639606, 31.565495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775979, -0.198907, -0.598575,
		0.377284, 0.906866, 0.187750,
		0.505483, -0.371523, 0.778754,
		44.101711, 36.528149, 31.799120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.459618, 37.093525, 31.410313>,  <43.747871, 36.788216, 31.253992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.459618, 37.093525, 31.410313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444439, 36.710476, 31.524515>,  <44.435333, 36.480644, 31.593037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444439, 36.710476, 31.524515>,  <44.459618, 37.093525, 31.410313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444439, 36.710476, 31.524515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801495, -0.199804, -0.563635,
		0.596796, 0.207445, 0.775114,
		-0.037947, -0.957625, 0.285508,
		44.433056, 36.423187, 31.610168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.067871, 36.660439, 31.448032>,  <44.459618, 37.093525, 31.410313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.067871, 36.660439, 31.448032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.102539, 36.813324, 31.816032>,  <45.123341, 36.905056, 32.036835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.102539, 36.813324, 31.816032>,  <45.067871, 36.660439, 31.448032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.102539, 36.813324, 31.816032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758333, -0.624205, 0.187881,
		0.646080, 0.681383, -0.343944,
		0.086672, 0.382211, 0.920002,
		45.128540, 36.927986, 32.092033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.733212, 37.112549, 31.686831>,  <45.067871, 36.660439, 31.448032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.733212, 37.112549, 31.686831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581867, 36.874737, 31.970627>,  <45.491062, 36.732048, 32.140903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581867, 36.874737, 31.970627>,  <45.733212, 37.112549, 31.686831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581867, 36.874737, 31.970627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825618, -0.563335, -0.031770,
		0.418569, 0.573748, 0.703998,
		-0.378359, -0.594531, 0.709491,
		45.468361, 36.696377, 32.183475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.571613, 37.569981, 32.190556>,  <45.733212, 37.112549, 31.686831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.571613, 37.569981, 32.190556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.297054, 37.702049, 32.449741>,  <45.132320, 37.781292, 32.605251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.297054, 37.702049, 32.449741>,  <45.571613, 37.569981, 32.190556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.297054, 37.702049, 32.449741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439119, -0.522060, 0.731183,
		0.579689, 0.786410, 0.213354,
		-0.686393, 0.330171, 0.647960,
		45.091137, 37.801102, 32.644131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.884354, 37.979729, 32.642139>,  <45.571613, 37.569981, 32.190556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.884354, 37.979729, 32.642139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.567753, 37.776505, 32.778019>,  <45.377792, 37.654568, 32.859547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.567753, 37.776505, 32.778019>,  <45.884354, 37.979729, 32.642139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.567753, 37.776505, 32.778019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574397, -0.428525, 0.697448,
		-0.208780, 0.747153, 0.631010,
		-0.791504, -0.508063, 0.339695,
		45.330303, 37.624084, 32.879929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.730854, 38.190907, 33.418285>,  <45.884354, 37.979729, 32.642139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.730854, 38.190907, 33.418285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592987, 37.831924, 33.308170>,  <45.510269, 37.616535, 33.242104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592987, 37.831924, 33.308170>,  <45.730854, 38.190907, 33.418285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592987, 37.831924, 33.308170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411548, -0.408030, 0.814948,
		-0.843703, 0.167591, 0.509979,
		-0.344664, -0.897455, -0.275284,
		45.489590, 37.562687, 33.225586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.302574, 37.838921, 33.906395>,  <45.730854, 38.190907, 33.418285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.302574, 37.838921, 33.906395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491924, 37.561073, 33.689720>,  <45.605534, 37.394363, 33.559715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491924, 37.561073, 33.689720>,  <45.302574, 37.838921, 33.906395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491924, 37.561073, 33.689720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291262, -0.456931, 0.840464,
		-0.831315, -0.555625, -0.013982,
		0.473372, -0.694618, -0.541686,
		45.633938, 37.352688, 33.527214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136131, 37.313839, 34.201637>,  <45.302574, 37.838921, 33.906395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136131, 37.313839, 34.201637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454132, 37.192650, 33.991425>,  <45.644932, 37.119934, 33.865299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454132, 37.192650, 33.991425>,  <45.136131, 37.313839, 34.201637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454132, 37.192650, 33.991425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191067, -0.697173, 0.690972,
		-0.575733, -0.649734, -0.496364,
		0.795000, -0.302977, -0.525528,
		45.692631, 37.101757, 33.833767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093899, 36.611488, 34.122631>,  <45.136131, 37.313839, 34.201637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093899, 36.611488, 34.122631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.474846, 36.733303, 34.116184>,  <45.703415, 36.806393, 34.112316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.474846, 36.733303, 34.116184>,  <45.093899, 36.611488, 34.122631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.474846, 36.733303, 34.116184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213745, -0.628875, 0.747549,
		0.217518, -0.715385, -0.664011,
		0.952365, 0.304535, -0.016118,
		45.760555, 36.824665, 34.111347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549564, 36.021511, 34.068081>,  <45.093899, 36.611488, 34.122631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549564, 36.021511, 34.068081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.652836, 36.326809, 34.304996>,  <45.714798, 36.509987, 34.447144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.652836, 36.326809, 34.304996>,  <45.549564, 36.021511, 34.068081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.652836, 36.326809, 34.304996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229311, -0.643963, 0.729882,
		0.938488, -0.052623, -0.341279,
		0.258179, 0.763244, 0.592285,
		45.730289, 36.555782, 34.482681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251057, 35.985325, 34.378345>,  <45.549564, 36.021511, 34.068081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251057, 35.985325, 34.378345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052876, 36.221992, 34.632732>,  <45.933968, 36.363991, 34.785366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052876, 36.221992, 34.632732>,  <46.251057, 35.985325, 34.378345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.052876, 36.221992, 34.632732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280741, -0.583785, 0.761826,
		0.822018, 0.555990, 0.123132,
		-0.495451, 0.591667, 0.635971,
		45.904240, 36.399494, 34.823524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.639481, 35.739891, 34.921558>,  <46.251057, 35.985325, 34.378345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.639481, 35.739891, 34.921558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.366859, 36.013336, 35.025986>,  <46.203285, 36.177402, 35.088642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.366859, 36.013336, 35.025986>,  <46.639481, 35.739891, 34.921558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.366859, 36.013336, 35.025986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030108, -0.330261, 0.943409,
		0.731149, 0.650844, 0.204508,
		-0.681553, 0.683616, 0.261065,
		46.162392, 36.218422, 35.104305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.889881, 35.967186, 35.490425>,  <46.639481, 35.739891, 34.921558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.889881, 35.967186, 35.490425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.491318, 35.999996, 35.481998>,  <46.252178, 36.019680, 35.476944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.491318, 35.999996, 35.481998>,  <46.889881, 35.967186, 35.490425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.491318, 35.999996, 35.481998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042748, -0.272474, 0.961213,
		0.073104, 0.958660, 0.275002,
		-0.996408, 0.082024, -0.021062,
		46.192394, 36.024605, 35.475681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.462814, 35.455589, 35.536575>,  <46.889881, 35.967186, 35.490425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.462814, 35.455589, 35.536575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.522560, 35.850636, 35.555809>,  <47.558407, 36.087662, 35.567348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.522560, 35.850636, 35.555809>,  <47.462814, 35.455589, 35.536575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.522560, 35.850636, 35.555809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902151, 0.156022, -0.402220,
		-0.404741, 0.016694, 0.914279,
		0.149362, 0.987612, 0.048088,
		47.567368, 36.146919, 35.570236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.472034, 34.930538, 35.007217>,  <47.462814, 35.455589, 35.536575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.472034, 34.930538, 35.007217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.842533, 34.781620, 35.030731>,  <48.064835, 34.692268, 35.044842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.842533, 34.781620, 35.030731>,  <47.472034, 34.930538, 35.007217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.842533, 34.781620, 35.030731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263010, -0.750156, -0.606705,
		0.269973, 0.546500, -0.792750,
		0.926251, -0.372295, 0.058787,
		48.120407, 34.669933, 35.048367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.309746, 36.301239, 17.661703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.379208, 35.907520, 17.648977>,  <41.420883, 35.671291, 17.641342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.379208, 35.907520, 17.648977>,  <41.309746, 36.301239, 17.661703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379208, 35.907520, 17.648977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276681, -0.079769, 0.957645,
		-0.945141, -0.157496, -0.286187,
		0.173654, -0.984293, -0.031817,
		41.431305, 35.612232, 17.639433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735195, 36.021145, 17.962202>,  <41.309746, 36.301239, 17.661703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735195, 36.021145, 17.962202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.997681, 35.719547, 17.973993>,  <41.155170, 35.538589, 17.981068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.997681, 35.719547, 17.973993>,  <40.735195, 36.021145, 17.962202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997681, 35.719547, 17.973993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329039, -0.250774, 0.910410,
		-0.679055, -0.607124, -0.412656,
		0.656215, -0.753998, 0.029478,
		41.194546, 35.493347, 17.982838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417694, 35.361050, 18.182732>,  <40.735195, 36.021145, 17.962202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417694, 35.361050, 18.182732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.804844, 35.327991, 18.277710>,  <41.037136, 35.308155, 18.334698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.804844, 35.327991, 18.277710>,  <40.417694, 35.361050, 18.182732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804844, 35.327991, 18.277710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250960, -0.260667, 0.932240,
		-0.015151, -0.961885, -0.273035,
		0.967879, -0.082645, 0.237446,
		41.095207, 35.303196, 18.348944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393822, 34.714489, 18.439278>,  <40.417694, 35.361050, 18.182732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393822, 34.714489, 18.439278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.725895, 34.888817, 18.578331>,  <40.925140, 34.993416, 18.661762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.725895, 34.888817, 18.578331>,  <40.393822, 34.714489, 18.439278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725895, 34.888817, 18.578331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232698, -0.295753, 0.926489,
		0.506599, -0.850052, -0.144115,
		0.830186, 0.435823, 0.347633,
		40.974953, 35.019562, 18.682621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682400, 34.264900, 18.922012>,  <40.393822, 34.714489, 18.439278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682400, 34.264900, 18.922012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.826443, 34.623657, 19.024696>,  <40.912868, 34.838913, 19.086306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.826443, 34.623657, 19.024696>,  <40.682400, 34.264900, 18.922012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826443, 34.623657, 19.024696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186080, -0.200585, 0.961842,
		0.914164, -0.394137, 0.094662,
		0.360110, 0.896895, 0.256709,
		40.934475, 34.892727, 19.101709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163082, 34.184162, 19.456144>,  <40.682400, 34.264900, 18.922012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163082, 34.184162, 19.456144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.095875, 34.575768, 19.502272>,  <41.055550, 34.810730, 19.529947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.095875, 34.575768, 19.502272>,  <41.163082, 34.184162, 19.456144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095875, 34.575768, 19.502272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059561, -0.126848, 0.990132,
		0.983983, 0.159490, 0.079623,
		-0.168016, 0.979016, 0.115317,
		41.045471, 34.869473, 19.536867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633133, 34.405712, 19.890617>,  <41.163082, 34.184162, 19.456144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633133, 34.405712, 19.890617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.349464, 34.685127, 19.928810>,  <41.179264, 34.852776, 19.951725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.349464, 34.685127, 19.928810>,  <41.633133, 34.405712, 19.890617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349464, 34.685127, 19.928810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021576, -0.113862, 0.993262,
		0.704707, 0.706453, 0.065676,
		-0.709171, 0.698542, 0.095482,
		41.136715, 34.894691, 19.957455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691750, 34.711651, 20.514114>,  <41.633133, 34.405712, 19.890617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691750, 34.711651, 20.514114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.314369, 34.829086, 20.452532>,  <41.087940, 34.899548, 20.415583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.314369, 34.829086, 20.452532>,  <41.691750, 34.711651, 20.514114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314369, 34.829086, 20.452532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196490, -0.121200, 0.972986,
		0.266994, 0.948219, 0.172033,
		-0.943454, 0.293585, -0.153956,
		41.031334, 34.917160, 20.406345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546818, 35.208973, 21.061796>,  <41.691750, 34.711651, 20.514114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546818, 35.208973, 21.061796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.190643, 35.086113, 20.927465>,  <40.976940, 35.012398, 20.846867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.190643, 35.086113, 20.927465>,  <41.546818, 35.208973, 21.061796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190643, 35.086113, 20.927465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245997, -0.295991, 0.922970,
		-0.382896, 0.904459, 0.188003,
		-0.890436, -0.307153, -0.335828,
		40.923512, 34.993965, 20.826717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023483, 35.602467, 21.436729>,  <41.546818, 35.208973, 21.061796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023483, 35.602467, 21.436729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.848457, 35.264988, 21.312330>,  <40.743443, 35.062500, 21.237690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.848457, 35.264988, 21.312330>,  <41.023483, 35.602467, 21.436729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848457, 35.264988, 21.312330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343040, -0.163080, 0.925056,
		-0.831180, 0.511457, -0.218062,
		-0.437565, -0.843692, -0.310999,
		40.717190, 35.011879, 21.219030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325058, 35.715534, 21.550756>,  <41.023483, 35.602467, 21.436729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325058, 35.715534, 21.550756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.392776, 35.321911, 21.528990>,  <40.433407, 35.085735, 21.515930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.392776, 35.321911, 21.528990>,  <40.325058, 35.715534, 21.550756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392776, 35.321911, 21.528990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345372, -0.110952, 0.931884,
		-0.923068, -0.138973, -0.358652,
		0.169300, -0.984061, -0.054419,
		40.443565, 35.026691, 21.512665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702694, 35.448452, 21.843220>,  <40.325058, 35.715534, 21.550756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702694, 35.448452, 21.843220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.978844, 35.160210, 21.868887>,  <40.144531, 34.987267, 21.884287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.978844, 35.160210, 21.868887>,  <39.702694, 35.448452, 21.843220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978844, 35.160210, 21.868887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366796, -0.272195, 0.889590,
		-0.623576, -0.637685, -0.452230,
		0.690373, -0.720603, 0.064166,
		40.185955, 34.944031, 21.888136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376945, 34.960945, 22.354685>,  <39.702694, 35.448452, 21.843220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376945, 34.960945, 22.354685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.765896, 34.867863, 22.361998>,  <39.999268, 34.812016, 22.366385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.765896, 34.867863, 22.361998>,  <39.376945, 34.960945, 22.354685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765896, 34.867863, 22.361998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090378, -0.303133, 0.948653,
		-0.215210, -0.924100, -0.315791,
		0.972377, -0.232700, 0.018282,
		40.057610, 34.798050, 22.367481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430843, 34.387215, 22.729937>,  <39.376945, 34.960945, 22.354685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430843, 34.387215, 22.729937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.808468, 34.519051, 22.734175>,  <40.035042, 34.598152, 22.736717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.808468, 34.519051, 22.734175>,  <39.430843, 34.387215, 22.729937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808468, 34.519051, 22.734175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086095, -0.277369, 0.956898,
		0.318320, -0.902463, -0.290230,
		0.944066, 0.329587, 0.010595,
		40.091686, 34.617928, 22.737352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921318, 33.881130, 22.903109>,  <39.430843, 34.387215, 22.729937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921318, 33.881130, 22.903109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.093548, 34.223255, 23.018383>,  <40.196884, 34.428528, 23.087547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.093548, 34.223255, 23.018383>,  <39.921318, 33.881130, 22.903109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093548, 34.223255, 23.018383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157182, -0.385480, 0.909230,
		0.888763, -0.346194, -0.300418,
		0.430575, 0.855310, 0.288184,
		40.222721, 34.479847, 23.104837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343369, 33.656902, 23.395947>,  <39.921318, 33.881130, 22.903109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343369, 33.656902, 23.395947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.380085, 34.050686, 23.455841>,  <40.402115, 34.286957, 23.491777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.380085, 34.050686, 23.455841>,  <40.343369, 33.656902, 23.395947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380085, 34.050686, 23.455841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137333, -0.161452, 0.977278,
		0.986263, -0.069141, -0.150018,
		0.091790, 0.984456, 0.149739,
		40.407623, 34.346024, 23.500763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819546, 33.699326, 23.972303>,  <40.343369, 33.656902, 23.395947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819546, 33.699326, 23.972303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.641556, 34.057358, 23.960785>,  <40.534763, 34.272179, 23.953875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.641556, 34.057358, 23.960785>,  <40.819546, 33.699326, 23.972303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641556, 34.057358, 23.960785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178351, 0.120083, 0.976612,
		0.877606, 0.429428, -0.213072,
		-0.444970, 0.895082, -0.028796,
		40.508064, 34.325882, 23.952147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268806, 34.335556, 24.301813>,  <40.819546, 33.699326, 23.972303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268806, 34.335556, 24.301813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.876202, 34.393627, 24.351704>,  <40.640640, 34.428471, 24.381638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.876202, 34.393627, 24.351704>,  <41.268806, 34.335556, 24.301813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876202, 34.393627, 24.351704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167319, 0.334420, 0.927452,
		0.092931, 0.931175, -0.352528,
		-0.981513, 0.145174, 0.124725,
		40.581749, 34.437180, 24.389122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283245, 34.887794, 24.822559>,  <41.268806, 34.335556, 24.301813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283245, 34.887794, 24.822559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.905903, 34.756882, 24.844322>,  <40.679497, 34.678333, 24.857380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.905903, 34.756882, 24.844322>,  <41.283245, 34.887794, 24.822559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905903, 34.756882, 24.844322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058922, 0.326649, 0.943307,
		-0.326499, 0.886672, -0.327431,
		-0.943359, -0.327282, 0.054406,
		40.622894, 34.658699, 24.860643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877048, 35.465740, 25.020834>,  <41.283245, 34.887794, 24.822559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877048, 35.465740, 25.020834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.668850, 35.137428, 25.114988>,  <40.543930, 34.940441, 25.171482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.668850, 35.137428, 25.114988>,  <40.877048, 35.465740, 25.020834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668850, 35.137428, 25.114988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087298, 0.223075, 0.970884,
		-0.849392, 0.525887, -0.044456,
		-0.520492, -0.820780, 0.235387,
		40.512703, 34.891193, 25.185604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443127, 35.714985, 25.433619>,  <40.877048, 35.465740, 25.020834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443127, 35.714985, 25.433619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.454052, 35.323559, 25.515272>,  <40.460609, 35.088703, 25.564264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.454052, 35.323559, 25.515272>,  <40.443127, 35.714985, 25.433619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454052, 35.323559, 25.515272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035177, 0.205024, 0.978124,
		-0.999008, -0.019537, 0.040023,
		0.027316, -0.978562, 0.204134,
		40.462246, 35.029991, 25.576511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859352, 35.483246, 25.952097>,  <40.443127, 35.714985, 25.433619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859352, 35.483246, 25.952097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.187519, 35.255932, 25.977297>,  <40.384418, 35.119541, 25.992416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.187519, 35.255932, 25.977297>,  <39.859352, 35.483246, 25.952097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187519, 35.255932, 25.977297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065787, 0.015635, 0.997711,
		-0.567973, -0.822681, -0.024559,
		0.820414, -0.568289, 0.063002,
		40.433643, 35.085445, 25.996197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639530, 36.154339, 25.836233>,  <39.859352, 35.483246, 25.952097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639530, 36.154339, 25.836233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.704449, 36.533852, 25.944654>,  <39.743401, 36.761559, 26.009708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.704449, 36.533852, 25.944654>,  <39.639530, 36.154339, 25.836233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704449, 36.533852, 25.944654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086296, 0.259996, -0.961746,
		-0.982961, 0.179480, -0.039679,
		0.162298, 0.948783, 0.271054,
		39.753139, 36.818485, 26.025970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174095, 36.579201, 25.433964>,  <39.639530, 36.154339, 25.836233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174095, 36.579201, 25.433964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.489780, 36.798508, 25.544624>,  <39.679192, 36.930092, 25.611021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.489780, 36.798508, 25.544624>,  <39.174095, 36.579201, 25.433964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489780, 36.798508, 25.544624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149511, 0.265396, -0.952477,
		-0.595636, 0.793073, 0.127483,
		0.789217, 0.548270, 0.276652,
		39.726547, 36.962990, 25.627621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079037, 37.191437, 25.050251>,  <39.174095, 36.579201, 25.433964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079037, 37.191437, 25.050251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.462147, 37.206367, 25.164289>,  <39.692013, 37.215328, 25.232712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.462147, 37.206367, 25.164289>,  <39.079037, 37.191437, 25.050251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462147, 37.206367, 25.164289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230508, 0.492986, -0.838946,
		-0.171866, 0.869236, 0.463563,
		0.957772, 0.037332, 0.285094,
		39.749477, 37.217567, 25.249817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228889, 37.851826, 24.986414>,  <39.079037, 37.191437, 25.050251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228889, 37.851826, 24.986414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.585438, 37.670994, 24.973240>,  <39.799366, 37.562496, 24.965336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.585438, 37.670994, 24.973240>,  <39.228889, 37.851826, 24.986414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585438, 37.670994, 24.973240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176379, 0.412869, -0.893549,
		0.417555, 0.790672, 0.447756,
		0.891369, -0.452081, -0.032937,
		39.852848, 37.535370, 24.963358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672440, 38.355648, 24.770060>,  <39.228889, 37.851826, 24.986414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672440, 38.355648, 24.770060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.877602, 38.023697, 24.682219>,  <40.000698, 37.824524, 24.629513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.877602, 38.023697, 24.682219>,  <39.672440, 38.355648, 24.770060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877602, 38.023697, 24.682219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226249, 0.377454, -0.897965,
		0.828093, 0.410887, 0.381358,
		0.512906, -0.829880, -0.219604,
		40.031475, 37.774734, 24.616337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428921, 38.603825, 24.551697>,  <39.672440, 38.355648, 24.770060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428921, 38.603825, 24.551697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.384659, 38.228451, 24.420797>,  <40.358101, 38.003227, 24.342258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.384659, 38.228451, 24.420797>,  <40.428921, 38.603825, 24.551697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384659, 38.228451, 24.420797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521550, 0.225457, -0.822895,
		0.846015, -0.261736, 0.464493,
		-0.110658, -0.938437, -0.327248,
		40.351463, 37.946918, 24.322622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059620, 38.465954, 24.130383>,  <40.428921, 38.603825, 24.551697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059620, 38.465954, 24.130383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.788601, 38.191624, 24.024115>,  <40.625992, 38.027027, 23.960354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.788601, 38.191624, 24.024115>,  <41.059620, 38.465954, 24.130383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788601, 38.191624, 24.024115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359971, 0.005774, -0.932945,
		0.641370, -0.727745, 0.242965,
		-0.677543, -0.685824, -0.265671,
		40.585339, 37.985878, 23.944414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419823, 37.994499, 23.765474>,  <41.059620, 38.465954, 24.130383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419823, 37.994499, 23.765474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.049789, 37.904312, 23.643236>,  <40.827770, 37.850201, 23.569893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.049789, 37.904312, 23.643236>,  <41.419823, 37.994499, 23.765474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049789, 37.904312, 23.643236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339417, -0.129891, -0.931625,
		0.170360, -0.965553, 0.196688,
		-0.925081, -0.225471, -0.305597,
		40.772266, 37.836670, 23.551558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462898, 37.379124, 23.355324>,  <41.419823, 37.994499, 23.765474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462898, 37.379124, 23.355324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.122295, 37.560364, 23.249765>,  <40.917934, 37.669109, 23.186430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.122295, 37.560364, 23.249765>,  <41.462898, 37.379124, 23.355324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122295, 37.560364, 23.249765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234583, -0.120929, -0.964545,
		-0.468948, -0.883219, -0.003318,
		-0.851504, 0.453100, -0.263898,
		40.866844, 37.696293, 23.170595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055378, 37.031784, 22.811451>,  <41.462898, 37.379124, 23.355324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055378, 37.031784, 22.811451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.852409, 37.376282, 22.800327>,  <40.730629, 37.582981, 22.793653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.852409, 37.376282, 22.800327>,  <41.055378, 37.031784, 22.811451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852409, 37.376282, 22.800327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014018, -0.024020, -0.999613,
		-0.861582, -0.507619, 0.000116,
		-0.507426, 0.861247, -0.027811,
		40.700180, 37.634655, 22.791985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653610, 36.888752, 22.287645>,  <41.055378, 37.031784, 22.811451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653610, 36.888752, 22.287645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.642109, 37.287319, 22.319443>,  <40.635208, 37.526459, 22.338522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.642109, 37.287319, 22.319443>,  <40.653610, 36.888752, 22.287645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642109, 37.287319, 22.319443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003351, 0.079431, -0.996835,
		-0.999581, -0.028927, 0.001055,
		-0.028752, 0.996421, 0.079495,
		40.633484, 37.586246, 22.343290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140999, 37.208031, 21.863766>,  <40.653610, 36.888752, 22.287645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140999, 37.208031, 21.863766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.373894, 37.529896, 21.910276>,  <40.513630, 37.723015, 21.938183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.373894, 37.529896, 21.910276>,  <40.140999, 37.208031, 21.863766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373894, 37.529896, 21.910276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025060, 0.125187, -0.991817,
		-0.812636, 0.580382, 0.052724,
		0.582233, 0.804664, 0.116276,
		40.548565, 37.771294, 21.945160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813271, 37.815613, 21.530582>,  <40.140999, 37.208031, 21.863766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813271, 37.815613, 21.530582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.209641, 37.858238, 21.563356>,  <40.447464, 37.883816, 21.583021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.209641, 37.858238, 21.563356>,  <39.813271, 37.815613, 21.530582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209641, 37.858238, 21.563356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052846, 0.251620, -0.966382,
		-0.123601, 0.961941, 0.243705,
		0.990924, 0.106567, 0.081936,
		40.506916, 37.890209, 21.587936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909332, 38.396446, 21.151787>,  <39.813271, 37.815613, 21.530582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909332, 38.396446, 21.151787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.272190, 38.228321, 21.160105>,  <40.489902, 38.127445, 21.165096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.272190, 38.228321, 21.160105>,  <39.909332, 38.396446, 21.151787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272190, 38.228321, 21.160105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102827, 0.173462, -0.979458,
		0.408072, 0.890644, 0.200574,
		0.907140, -0.420314, 0.020797,
		40.544331, 38.102226, 21.166344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437305, 38.896240, 20.835941>,  <39.909332, 38.396446, 21.151787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437305, 38.896240, 20.835941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.557030, 38.514816, 20.822409>,  <40.628864, 38.285961, 20.814289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.557030, 38.514816, 20.822409>,  <40.437305, 38.896240, 20.835941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557030, 38.514816, 20.822409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201529, 0.097835, -0.974584,
		0.932631, 0.284883, 0.221452,
		0.299308, -0.953557, -0.033831,
		40.646824, 38.228748, 20.812260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932842, 38.902775, 20.270670>,  <40.437305, 38.896240, 20.835941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932842, 38.902775, 20.270670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.833038, 38.518887, 20.322338>,  <40.773155, 38.288555, 20.353338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.833038, 38.518887, 20.322338>,  <40.932842, 38.902775, 20.270670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833038, 38.518887, 20.322338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155761, -0.091877, -0.983513,
		0.955763, -0.265515, -0.126563,
		-0.249509, -0.959719, 0.129170,
		40.758186, 38.230972, 20.361090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310188, 38.468124, 19.968208>,  <40.932842, 38.902775, 20.270670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310188, 38.468124, 19.968208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.985371, 38.236156, 19.994389>,  <40.790482, 38.096977, 20.010098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.985371, 38.236156, 19.994389>,  <41.310188, 38.468124, 19.968208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985371, 38.236156, 19.994389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086284, -0.230221, -0.969306,
		0.577185, -0.781470, 0.236986,
		-0.812042, -0.579917, 0.065452,
		40.741756, 38.062180, 20.014025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434902, 37.916138, 19.516851>,  <41.310188, 38.468124, 19.968208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434902, 37.916138, 19.516851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.047333, 37.833725, 19.571611>,  <40.814793, 37.784275, 19.604467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.047333, 37.833725, 19.571611>,  <41.434902, 37.916138, 19.516851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047333, 37.833725, 19.571611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075110, -0.282265, -0.956391,
		0.235693, -0.936950, 0.258018,
		-0.968921, -0.206035, 0.136902,
		40.756657, 37.771915, 19.612682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.198605, 37.238457, 19.041521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.877991, 37.465435, 19.116934>,  <40.685623, 37.601624, 19.162182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.877991, 37.465435, 19.116934>,  <41.198605, 37.238457, 19.041521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877991, 37.465435, 19.116934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181198, 0.069968, -0.980955,
		-0.569830, -0.820432, 0.046738,
		-0.801536, 0.567446, 0.188530,
		40.637531, 37.635670, 19.173492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741421, 36.892384, 18.598362>,  <41.198605, 37.238457, 19.041521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741421, 36.892384, 18.598362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.579510, 37.250935, 18.670649>,  <40.482365, 37.466064, 18.714020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.579510, 37.250935, 18.670649>,  <40.741421, 36.892384, 18.598362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579510, 37.250935, 18.670649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137050, 0.254868, -0.957215,
		-0.904086, -0.362692, -0.226014,
		-0.404778, 0.896380, 0.180715,
		40.458076, 37.519848, 18.724863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192348, 37.003387, 18.145027>,  <40.741421, 36.892384, 18.598362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192348, 37.003387, 18.145027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.259373, 37.385628, 18.241982>,  <40.299587, 37.614971, 18.300154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.259373, 37.385628, 18.241982>,  <40.192348, 37.003387, 18.145027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259373, 37.385628, 18.241982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129298, 0.222435, -0.966336,
		-0.977345, 0.193264, -0.086285,
		0.167565, 0.955600, 0.242384,
		40.309643, 37.672306, 18.314697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911167, 37.274597, 17.547331>,  <40.192348, 37.003387, 18.145027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911167, 37.274597, 17.547331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.121422, 37.561821, 17.729803>,  <40.247574, 37.734154, 17.839287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.121422, 37.561821, 17.729803>,  <39.911167, 37.274597, 17.547331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121422, 37.561821, 17.729803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296095, 0.348285, -0.889396,
		-0.797517, 0.602572, -0.029541,
		0.525636, 0.718056, 0.456182,
		40.279114, 37.777237, 17.866657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648148, 37.900059, 17.288151>,  <39.911167, 37.274597, 17.547331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648148, 37.900059, 17.288151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022617, 37.905514, 17.428663>,  <40.247299, 37.908787, 17.512972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022617, 37.905514, 17.428663>,  <39.648148, 37.900059, 17.288151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022617, 37.905514, 17.428663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341950, 0.196580, -0.918927,
		-0.081583, 0.980393, 0.179371,
		0.936170, 0.013633, 0.351283,
		40.303467, 37.909603, 17.534048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876976, 38.358967, 16.793831>,  <39.648148, 37.900059, 17.288151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876976, 38.358967, 16.793831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.210243, 38.221825, 16.967400>,  <40.410202, 38.139542, 17.071541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.210243, 38.221825, 16.967400>,  <39.876976, 38.358967, 16.793831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210243, 38.221825, 16.967400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520622, 0.221624, -0.824522,
		0.186521, 0.912872, 0.363146,
		0.833165, -0.342852, 0.433923,
		40.460194, 38.118969, 17.097576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443951, 38.816723, 16.570663>,  <39.876976, 38.358967, 16.793831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443951, 38.816723, 16.570663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.650410, 38.490906, 16.676573>,  <40.774284, 38.295414, 16.740118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.650410, 38.490906, 16.676573>,  <40.443951, 38.816723, 16.570663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650410, 38.490906, 16.676573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634379, 0.155871, -0.757144,
		0.575457, 0.558769, 0.597183,
		0.516152, -0.814544, 0.264774,
		40.805256, 38.246544, 16.756004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208244, 39.027214, 16.644131>,  <40.443951, 38.816723, 16.570663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208244, 39.027214, 16.644131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.181953, 38.634411, 16.573324>,  <41.166180, 38.398727, 16.530840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.181953, 38.634411, 16.573324>,  <41.208244, 39.027214, 16.644131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181953, 38.634411, 16.573324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646209, 0.093284, -0.757438,
		0.760325, -0.164171, 0.628454,
		-0.065725, -0.982011, -0.177015,
		41.162235, 38.339806, 16.520220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910271, 38.721020, 16.605211>,  <41.208244, 39.027214, 16.644131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910271, 38.721020, 16.605211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.685982, 38.444729, 16.422573>,  <41.551407, 38.278954, 16.312990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.685982, 38.444729, 16.422573>,  <41.910271, 38.721020, 16.605211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685982, 38.444729, 16.422573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598416, 0.043059, -0.800028,
		0.572263, -0.721830, 0.389199,
		-0.560725, -0.690729, -0.456596,
		41.517765, 38.237511, 16.285595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366749, 38.301048, 16.403955>,  <41.910271, 38.721020, 16.605211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366749, 38.301048, 16.403955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.035946, 38.229149, 16.190886>,  <41.837463, 38.186008, 16.063044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.035946, 38.229149, 16.190886>,  <42.366749, 38.301048, 16.403955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035946, 38.229149, 16.190886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543133, -0.010888, -0.839576,
		0.145116, -0.983651, 0.106635,
		-0.827011, -0.179753, -0.532674,
		41.787842, 38.175224, 16.031084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605076, 37.933937, 15.946096>,  <42.366749, 38.301048, 16.403955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605076, 37.933937, 15.946096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.266190, 38.062660, 15.777020>,  <42.062859, 38.139893, 15.675575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.266190, 38.062660, 15.777020>,  <42.605076, 37.933937, 15.946096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266190, 38.062660, 15.777020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451373, 0.016449, -0.892184,
		-0.280158, -0.946662, -0.159191,
		-0.847215, 0.321807, -0.422690,
		42.012024, 38.159203, 15.650213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491089, 37.504936, 15.329342>,  <42.605076, 37.933937, 15.946096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491089, 37.504936, 15.329342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.274715, 37.835262, 15.265556>,  <42.144890, 38.033459, 15.227285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.274715, 37.835262, 15.265556>,  <42.491089, 37.504936, 15.329342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.274715, 37.835262, 15.265556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311503, 0.020596, -0.950022,
		-0.781254, -0.563572, -0.268383,
		-0.540933, 0.825811, -0.159463,
		42.112434, 38.083004, 15.217717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184021, 37.419590, 14.675557>,  <42.491089, 37.504936, 15.329342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184021, 37.419590, 14.675557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.192741, 37.812813, 14.748352>,  <42.197975, 38.048748, 14.792029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.192741, 37.812813, 14.748352>,  <42.184021, 37.419590, 14.675557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192741, 37.812813, 14.748352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022956, 0.182475, -0.982943,
		-0.999499, 0.017254, 0.026546,
		0.021803, 0.983059, 0.181988,
		42.199284, 38.107731, 14.802948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611691, 37.760769, 14.250930>,  <42.184021, 37.419590, 14.675557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611691, 37.760769, 14.250930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.894958, 38.025928, 14.348140>,  <42.064919, 38.185024, 14.406466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.894958, 38.025928, 14.348140>,  <41.611691, 37.760769, 14.250930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894958, 38.025928, 14.348140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033791, 0.375633, -0.926152,
		-0.705235, 0.647659, 0.288411,
		0.708168, 0.662901, 0.243025,
		42.107410, 38.224800, 14.421047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352894, 38.376789, 13.917013>,  <41.611691, 37.760769, 14.250930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352894, 38.376789, 13.917013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.740685, 38.452435, 13.979429>,  <41.973358, 38.497822, 14.016879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.740685, 38.452435, 13.979429>,  <41.352894, 38.376789, 13.917013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740685, 38.452435, 13.979429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064312, 0.418000, -0.906168,
		-0.236596, 0.888544, 0.393079,
		0.969477, 0.189116, 0.156041,
		42.031528, 38.509171, 14.026241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425297, 39.108944, 13.681642>,  <41.352894, 38.376789, 13.917013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425297, 39.108944, 13.681642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.793606, 38.954525, 13.704064>,  <42.014591, 38.861874, 13.717518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.793606, 38.954525, 13.704064>,  <41.425297, 39.108944, 13.681642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793606, 38.954525, 13.704064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213575, 0.378630, -0.900569,
		0.326438, 0.841193, 0.431083,
		0.920774, -0.386048, 0.056058,
		42.069839, 38.838711, 13.720881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852203, 39.647552, 13.502448>,  <41.425297, 39.108944, 13.681642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852203, 39.647552, 13.502448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.062992, 39.316071, 13.427033>,  <42.189465, 39.117180, 13.381784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.062992, 39.316071, 13.427033>,  <41.852203, 39.647552, 13.502448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062992, 39.316071, 13.427033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242263, 0.359111, -0.901303,
		0.814620, 0.429289, 0.390007,
		0.526976, -0.828704, -0.188538,
		42.221085, 39.067459, 13.370472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521793, 39.872540, 13.223966>,  <41.852203, 39.647552, 13.502448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521793, 39.872540, 13.223966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.439049, 39.503769, 13.092963>,  <42.389404, 39.282505, 13.014361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.439049, 39.503769, 13.092963>,  <42.521793, 39.872540, 13.223966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439049, 39.503769, 13.092963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283442, 0.263919, -0.921959,
		0.936413, -0.283544, 0.206719,
		-0.206859, -0.921927, -0.327506,
		42.376991, 39.227192, 12.994712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027672, 39.681179, 12.748159>,  <42.521793, 39.872540, 13.223966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027672, 39.681179, 12.748159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.752567, 39.408554, 12.648188>,  <42.587505, 39.244980, 12.588204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.752567, 39.408554, 12.648188>,  <43.027672, 39.681179, 12.748159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752567, 39.408554, 12.648188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078646, 0.272304, -0.958992,
		0.721667, -0.679211, -0.133677,
		-0.687759, -0.681559, -0.249930,
		42.546238, 39.204086, 12.573209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297504, 39.393318, 12.136052>,  <43.027672, 39.681179, 12.748159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297504, 39.393318, 12.136052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.918575, 39.266960, 12.157151>,  <42.691216, 39.191147, 12.169811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.918575, 39.266960, 12.157151>,  <43.297504, 39.393318, 12.136052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918575, 39.266960, 12.157151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047345, -0.024759, -0.998572,
		0.316752, -0.948470, 0.008499,
		-0.947326, -0.315897, 0.052748,
		42.634377, 39.172192, 12.172976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.335716, 38.808498, 11.812297>,  <43.297504, 39.393318, 12.136052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.335716, 38.808498, 11.812297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.957890, 38.939110, 11.798614>,  <42.731194, 39.017479, 11.790403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.957890, 38.939110, 11.798614>,  <43.335716, 38.808498, 11.812297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957890, 38.939110, 11.798614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008103, -0.127344, -0.991825,
		-0.328220, -0.936568, 0.122931,
		-0.944566, 0.326533, -0.034208,
		42.674519, 39.037071, 11.788351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035851, 38.423550, 11.285012>,  <43.335716, 38.808498, 11.812297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035851, 38.423550, 11.285012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.781517, 38.730988, 11.313207>,  <42.628918, 38.915451, 11.330124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.781517, 38.730988, 11.313207>,  <43.035851, 38.423550, 11.285012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781517, 38.730988, 11.313207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052685, 0.134334, -0.989535,
		-0.770023, -0.625469, -0.125908,
		-0.635837, 0.768598, 0.070487,
		42.590767, 38.961567, 11.334352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243263, 37.774220, 11.125358>,  <43.035851, 38.423550, 11.285012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243263, 37.774220, 11.125358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.463509, 37.860764, 10.802865>,  <43.595657, 37.912689, 10.609369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.463509, 37.860764, 10.802865>,  <43.243263, 37.774220, 11.125358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463509, 37.860764, 10.802865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409580, -0.771554, -0.486773,
		-0.727369, 0.598242, -0.336215,
		0.550617, 0.216357, -0.806233,
		43.628693, 37.925671, 10.560995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797512, 37.814182, 10.473407>,  <43.243263, 37.774220, 11.125358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797512, 37.814182, 10.473407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.175652, 37.688179, 10.439734>,  <43.402534, 37.612576, 10.419531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.175652, 37.688179, 10.439734>,  <42.797512, 37.814182, 10.473407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175652, 37.688179, 10.439734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324376, -0.882372, -0.340879,
		0.033100, 0.349556, -0.936330,
		0.945349, -0.315007, -0.084181,
		43.459255, 37.593678, 10.414480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475040, 37.362484, 10.055987>,  <42.797512, 37.814182, 10.473407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475040, 37.362484, 10.055987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.446949, 36.977180, 9.952298>,  <42.430096, 36.745998, 9.890084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.446949, 36.977180, 9.952298>,  <42.475040, 37.362484, 10.055987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446949, 36.977180, 9.952298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358731, -0.218092, 0.907606,
		-0.930796, 0.156730, -0.330235,
		-0.070227, -0.963261, -0.259223,
		42.425880, 36.688202, 9.874531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773998, 37.079113, 10.151456>,  <42.475040, 37.362484, 10.055987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773998, 37.079113, 10.151456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.026165, 36.771309, 10.192302>,  <42.177464, 36.586624, 10.216809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.026165, 36.771309, 10.192302>,  <41.773998, 37.079113, 10.151456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026165, 36.771309, 10.192302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338386, -0.154030, 0.928315,
		-0.698623, -0.619776, -0.357496,
		0.630413, -0.769514, 0.102115,
		42.215290, 36.540455, 10.222937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325462, 36.537655, 10.256089>,  <41.773998, 37.079113, 10.151456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325462, 36.537655, 10.256089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.692963, 36.452759, 10.389270>,  <41.913464, 36.401821, 10.469178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.692963, 36.452759, 10.389270>,  <41.325462, 36.537655, 10.256089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692963, 36.452759, 10.389270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384961, -0.293997, 0.874855,
		-0.087791, -0.931945, -0.351813,
		0.918748, -0.212239, 0.332952,
		41.968586, 36.389088, 10.489156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245651, 35.928333, 10.668400>,  <41.325462, 36.537655, 10.256089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245651, 35.928333, 10.668400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.600899, 36.080406, 10.771711>,  <41.814049, 36.171650, 10.833698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.600899, 36.080406, 10.771711>,  <41.245651, 35.928333, 10.668400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600899, 36.080406, 10.771711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155263, -0.280745, 0.947141,
		0.432596, -0.881274, -0.190307,
		0.888119, 0.380182, 0.258278,
		41.867332, 36.194462, 10.849195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607258, 35.502766, 11.178540>,  <41.245651, 35.928333, 10.668400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607258, 35.502766, 11.178540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.798477, 35.851269, 11.223059>,  <41.913208, 36.060371, 11.249770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.798477, 35.851269, 11.223059>,  <41.607258, 35.502766, 11.178540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798477, 35.851269, 11.223059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087131, -0.079049, 0.993056,
		0.874003, -0.484423, 0.038125,
		0.478045, 0.871255, 0.111297,
		41.941891, 36.112644, 11.256448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243355, 35.372566, 11.717747>,  <41.607258, 35.502766, 11.178540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243355, 35.372566, 11.717747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.150097, 35.761543, 11.718635>,  <42.094143, 35.994930, 11.719167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.150097, 35.761543, 11.718635>,  <42.243355, 35.372566, 11.717747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150097, 35.761543, 11.718635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040430, -0.011973, 0.999111,
		0.971600, 0.232852, 0.042108,
		-0.233149, 0.972439, 0.002219,
		42.080151, 36.053276, 11.719300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580761, 35.669888, 12.313243>,  <42.243355, 35.372566, 11.717747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580761, 35.669888, 12.313243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.282696, 35.927551, 12.244197>,  <42.103859, 36.082150, 12.202769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.282696, 35.927551, 12.244197>,  <42.580761, 35.669888, 12.313243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282696, 35.927551, 12.244197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213951, 0.014240, 0.976741,
		0.631633, 0.764760, 0.127207,
		-0.745161, 0.644158, -0.172615,
		42.059147, 36.120800, 12.192412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707756, 36.103313, 12.819431>,  <42.580761, 35.669888, 12.313243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707756, 36.103313, 12.819431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.330524, 36.174534, 12.707080>,  <42.104183, 36.217266, 12.639668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.330524, 36.174534, 12.707080>,  <42.707756, 36.103313, 12.819431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330524, 36.174534, 12.707080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221502, 0.293685, 0.929885,
		0.248055, 0.939174, -0.237531,
		-0.943083, 0.178049, -0.280879,
		42.047600, 36.227947, 12.622816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546028, 36.739357, 13.100872>,  <42.707756, 36.103313, 12.819431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546028, 36.739357, 13.100872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.212307, 36.531052, 13.028492>,  <42.012074, 36.406071, 12.985065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.212307, 36.531052, 13.028492>,  <42.546028, 36.739357, 13.100872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212307, 36.531052, 13.028492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324022, 0.197643, 0.925174,
		-0.446030, 0.830510, -0.333632,
		-0.834306, -0.520760, -0.180949,
		41.962013, 36.374825, 12.974207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952625, 37.145130, 13.370831>,  <42.546028, 36.739357, 13.100872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952625, 37.145130, 13.370831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.809288, 36.773438, 13.334787>,  <41.723286, 36.550423, 13.313162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.809288, 36.773438, 13.334787>,  <41.952625, 37.145130, 13.370831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809288, 36.773438, 13.334787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423908, 0.075955, 0.902515,
		-0.831802, 0.361604, -0.421127,
		-0.358340, -0.929233, -0.090108,
		41.701786, 36.494667, 13.307755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327602, 37.180439, 13.770136>,  <41.952625, 37.145130, 13.370831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327602, 37.180439, 13.770136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.413956, 36.790905, 13.741732>,  <41.465767, 36.557186, 13.724689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.413956, 36.790905, 13.741732>,  <41.327602, 37.180439, 13.770136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413956, 36.790905, 13.741732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094137, -0.093146, 0.991192,
		-0.971871, -0.207298, -0.111783,
		0.215884, -0.973834, -0.071012,
		41.478722, 36.498756, 13.720428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761559, 36.838848, 14.149514>,  <41.327602, 37.180439, 13.770136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761559, 36.838848, 14.149514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.085690, 36.604763, 14.137609>,  <41.280170, 36.464310, 14.130465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.085690, 36.604763, 14.137609>,  <40.761559, 36.838848, 14.149514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085690, 36.604763, 14.137609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045810, -0.113909, 0.992435,
		-0.584181, -0.802836, -0.119113,
		0.810330, -0.585218, -0.029765,
		41.328789, 36.429199, 14.128679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504768, 36.164558, 14.442917>,  <40.761559, 36.838848, 14.149514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504768, 36.164558, 14.442917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.902782, 36.189091, 14.474253>,  <41.141590, 36.203812, 14.493054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.902782, 36.189091, 14.474253>,  <40.504768, 36.164558, 14.442917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902782, 36.189091, 14.474253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050128, -0.371110, 0.927235,
		0.085943, -0.926561, -0.366194,
		0.995038, 0.061333, 0.078341,
		41.201294, 36.207489, 14.497755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741364, 35.536045, 14.832990>,  <40.504768, 36.164558, 14.442917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741364, 35.536045, 14.832990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.067459, 35.766899, 14.852173>,  <41.263115, 35.905411, 14.863683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.067459, 35.766899, 14.852173>,  <40.741364, 35.536045, 14.832990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067459, 35.766899, 14.852173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200090, -0.358413, 0.911868,
		0.543461, -0.733794, -0.407672,
		0.815239, 0.577136, 0.047958,
		41.312031, 35.940041, 14.866560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287022, 35.042221, 15.011909>,  <40.741364, 35.536045, 14.832990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287022, 35.042221, 15.011909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.392586, 35.415192, 15.110643>,  <41.455925, 35.638973, 15.169884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.392586, 35.415192, 15.110643>,  <41.287022, 35.042221, 15.011909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392586, 35.415192, 15.110643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144890, -0.291330, 0.945587,
		0.953602, -0.213790, -0.211986,
		0.263914, 0.932428, 0.246836,
		41.471760, 35.694920, 15.184694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866211, 34.910786, 15.339210>,  <41.287022, 35.042221, 15.011909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866211, 34.910786, 15.339210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.779659, 35.282116, 15.460134>,  <41.727726, 35.504913, 15.532688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.779659, 35.282116, 15.460134>,  <41.866211, 34.910786, 15.339210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779659, 35.282116, 15.460134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129162, -0.279705, 0.951358,
		0.967727, 0.244903, -0.059381,
		-0.216381, 0.928325, 0.302310,
		41.714745, 35.560612, 15.550827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348312, 34.971333, 15.942282>,  <41.866211, 34.910786, 15.339210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348312, 34.971333, 15.942282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.071552, 35.257942, 15.977777>,  <41.905495, 35.429909, 15.999074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.071552, 35.257942, 15.977777>,  <42.348312, 34.971333, 15.942282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071552, 35.257942, 15.977777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198090, 0.070204, 0.977666,
		0.694288, 0.694024, -0.190510,
		-0.691899, 0.716520, 0.088738,
		41.863983, 35.472897, 16.004398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639435, 35.502869, 16.441008>,  <42.348312, 34.971333, 15.942282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639435, 35.502869, 16.441008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.240124, 35.526215, 16.443422>,  <42.000538, 35.540222, 16.444872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.240124, 35.526215, 16.443422>,  <42.639435, 35.502869, 16.441008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240124, 35.526215, 16.443422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007128, 0.018486, 0.999804,
		0.058242, 0.998124, -0.018870,
		-0.998277, 0.058365, 0.006038,
		41.940639, 35.543724, 16.445234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512634, 35.797039, 17.022762>,  <42.639435, 35.502869, 16.441008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512634, 35.797039, 17.022762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.138763, 35.690361, 16.928743>,  <41.914440, 35.626354, 16.872332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.138763, 35.690361, 16.928743>,  <42.512634, 35.797039, 17.022762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138763, 35.690361, 16.928743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271007, 0.106659, 0.956650,
		-0.230067, 0.957860, -0.171969,
		-0.934678, -0.266699, -0.235048,
		41.858360, 35.610352, 16.858229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084053, 36.280205, 17.429928>,  <42.512634, 35.797039, 17.022762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084053, 36.280205, 17.429928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.889297, 35.938511, 17.357018>,  <41.772442, 35.733494, 17.313271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.889297, 35.938511, 17.357018>,  <42.084053, 36.280205, 17.429928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889297, 35.938511, 17.357018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304414, -0.029644, 0.952078,
		-0.818698, 0.519048, -0.245606,
		-0.486894, -0.854231, -0.182275,
		41.743229, 35.682243, 17.302336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.468521, 38.663967, 22.012466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.170528, 38.398495, 21.985552>,  <40.991734, 38.239212, 21.969404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.170528, 38.398495, 21.985552>,  <41.468521, 38.663967, 22.012466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170528, 38.398495, 21.985552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310606, 0.255847, 0.915459,
		-0.590357, 0.702903, -0.396745,
		-0.744985, -0.663679, -0.067285,
		40.947033, 38.199390, 21.965366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850182, 38.908436, 22.310715>,  <41.468521, 38.663967, 22.012466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850182, 38.908436, 22.310715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.772881, 38.517036, 22.339516>,  <40.726498, 38.282196, 22.356796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.772881, 38.517036, 22.339516>,  <40.850182, 38.908436, 22.310715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772881, 38.517036, 22.339516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341077, 0.135808, 0.930174,
		-0.919956, 0.155205, -0.359991,
		-0.193257, -0.978503, 0.072000,
		40.714905, 38.223484, 22.361116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295910, 38.860661, 22.746384>,  <40.850182, 38.908436, 22.310715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295910, 38.860661, 22.746384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.402512, 38.475334, 22.733751>,  <40.466473, 38.244137, 22.726171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.402512, 38.475334, 22.733751>,  <40.295910, 38.860661, 22.746384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402512, 38.475334, 22.733751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506757, -0.167919, 0.845577,
		-0.819860, -0.209348, -0.532919,
		0.266507, -0.963315, -0.031582,
		40.482464, 38.186340, 22.724277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734333, 38.322887, 22.789097>,  <40.295910, 38.860661, 22.746384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734333, 38.322887, 22.789097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.076191, 38.166592, 22.925858>,  <40.281307, 38.072815, 23.007914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.076191, 38.166592, 22.925858>,  <39.734333, 38.322887, 22.789097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076191, 38.166592, 22.925858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486924, -0.374621, 0.789027,
		-0.180221, -0.840822, -0.510430,
		0.854649, -0.390740, 0.341902,
		40.332584, 38.049370, 23.028427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590775, 37.665386, 23.109074>,  <39.734333, 38.322887, 22.789097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590775, 37.665386, 23.109074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.947060, 37.769894, 23.257862>,  <40.160831, 37.832600, 23.347136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.947060, 37.769894, 23.257862>,  <39.590775, 37.665386, 23.109074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947060, 37.769894, 23.257862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230852, -0.444918, 0.865306,
		0.391577, -0.856612, -0.335980,
		0.890716, 0.261272, 0.371971,
		40.214275, 37.848274, 23.369453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771687, 37.103004, 23.517353>,  <39.590775, 37.665386, 23.109074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771687, 37.103004, 23.517353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.012688, 37.389027, 23.659163>,  <40.157288, 37.560642, 23.744247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.012688, 37.389027, 23.659163>,  <39.771687, 37.103004, 23.517353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012688, 37.389027, 23.659163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129925, -0.350401, 0.927544,
		0.787474, -0.604905, -0.118212,
		0.602498, 0.715059, 0.354524,
		40.193436, 37.603542, 23.765520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222778, 36.752739, 23.905977>,  <39.771687, 37.103004, 23.517353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222778, 36.752739, 23.905977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.276684, 37.130825, 24.024912>,  <40.309029, 37.357677, 24.096272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.276684, 37.130825, 24.024912>,  <40.222778, 36.752739, 23.905977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276684, 37.130825, 24.024912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020161, -0.297395, 0.954541,
		0.990672, -0.134634, -0.021023,
		0.134766, 0.945214, 0.297336,
		40.317112, 37.414391, 24.114113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730328, 36.738132, 24.371519>,  <40.222778, 36.752739, 23.905977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730328, 36.738132, 24.371519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.524055, 37.063198, 24.480076>,  <40.400291, 37.258236, 24.545210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.524055, 37.063198, 24.480076>,  <40.730328, 36.738132, 24.371519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524055, 37.063198, 24.480076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016208, -0.325955, 0.945246,
		0.856630, 0.483043, 0.181259,
		-0.515677, 0.812664, 0.271393,
		40.369354, 37.306999, 24.561493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019321, 37.004345, 25.050547>,  <40.730328, 36.738132, 24.371519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019321, 37.004345, 25.050547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.663567, 37.185085, 25.022751>,  <40.450115, 37.293530, 25.006073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.663567, 37.185085, 25.022751>,  <41.019321, 37.004345, 25.050547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663567, 37.185085, 25.022751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195359, -0.238223, 0.951359,
		0.413320, 0.859697, 0.300145,
		-0.889382, 0.451852, -0.069487,
		40.396751, 37.320641, 25.001905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984062, 37.499668, 25.622730>,  <41.019321, 37.004345, 25.050547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984062, 37.499668, 25.622730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.607677, 37.433151, 25.504795>,  <40.381847, 37.393242, 25.434034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.607677, 37.433151, 25.504795>,  <40.984062, 37.499668, 25.622730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607677, 37.433151, 25.504795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264489, -0.182398, 0.946983,
		-0.211253, 0.969060, 0.127648,
		-0.940966, -0.166292, -0.294838,
		40.325386, 37.383263, 25.416344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542854, 37.918434, 26.018919>,  <40.984062, 37.499668, 25.622730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542854, 37.918434, 26.018919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.286884, 37.639507, 25.889774>,  <40.133301, 37.472153, 25.812286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.286884, 37.639507, 25.889774>,  <40.542854, 37.918434, 26.018919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286884, 37.639507, 25.889774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258389, -0.200428, 0.945020,
		-0.723689, 0.688170, -0.051920,
		-0.639929, -0.697317, -0.322863,
		40.094906, 37.430313, 25.792915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835533, 38.075504, 26.339394>,  <40.542854, 37.918434, 26.018919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835533, 38.075504, 26.339394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.837891, 37.690163, 26.232126>,  <39.839306, 37.458958, 26.167767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.837891, 37.690163, 26.232126>,  <39.835533, 38.075504, 26.339394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837891, 37.690163, 26.232126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382523, -0.249948, 0.889496,
		-0.923927, 0.097341, -0.369977,
		0.005891, -0.963354, -0.268169,
		39.839657, 37.401157, 26.151676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259350, 37.758251, 26.303452>,  <39.835533, 38.075504, 26.339394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259350, 37.758251, 26.303452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.560398, 37.531891, 26.438103>,  <39.741028, 37.396076, 26.518892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.560398, 37.531891, 26.438103>,  <39.259350, 37.758251, 26.303452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560398, 37.531891, 26.438103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339015, 0.105237, 0.934876,
		-0.564472, -0.817730, -0.112646,
		0.752622, -0.565901, 0.336626,
		39.786186, 37.362122, 26.539091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003902, 37.272888, 26.778730>,  <39.259350, 37.758251, 26.303452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003902, 37.272888, 26.778730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.393288, 37.303646, 26.864946>,  <39.626919, 37.322102, 26.916676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.393288, 37.303646, 26.864946>,  <39.003902, 37.272888, 26.778730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393288, 37.303646, 26.864946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220403, 0.061582, 0.973463,
		0.061582, -0.995135, 0.076896,
		-0.973463, -0.076896, -0.215539,
		39.685326, 37.326714, 26.929607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997959, 37.822945, 27.327946>,  <39.003902, 37.272888, 26.778730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997959, 37.822945, 27.327946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.929615, 37.811588, 27.721901>,  <38.888607, 37.804775, 27.958273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.929615, 37.811588, 27.721901>,  <38.997959, 37.822945, 27.327946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929615, 37.811588, 27.721901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239833, -0.968322, -0.069522,
		0.955661, -0.248086, 0.158638,
		-0.170860, -0.028393, 0.984886,
		38.878357, 37.803070, 28.017366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990845, 38.422436, 26.784378>,  <38.997959, 37.822945, 27.327946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990845, 38.422436, 26.784378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.096752, 38.803089, 26.846718>,  <39.160297, 39.031483, 26.884121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.096752, 38.803089, 26.846718>,  <38.990845, 38.422436, 26.784378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096752, 38.803089, 26.846718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556023, 0.282700, -0.781613,
		-0.787870, 0.120289, 0.603980,
		0.264764, 0.951636, 0.155848,
		39.176182, 39.088581, 26.893473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435226, 38.866013, 26.503834>,  <38.990845, 38.422436, 26.784378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435226, 38.866013, 26.503834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.740902, 39.120888, 26.543854>,  <38.924305, 39.273815, 26.567865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.740902, 39.120888, 26.543854>,  <38.435226, 38.866013, 26.503834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740902, 39.120888, 26.543854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365676, 0.555780, -0.746585,
		-0.531323, 0.533943, 0.657724,
		0.764184, 0.637192, 0.100049,
		38.970158, 39.312046, 26.573868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099579, 39.370113, 26.568138>,  <38.435226, 38.866013, 26.503834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099579, 39.370113, 26.568138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462772, 39.459084, 26.426098>,  <38.680687, 39.512466, 26.340874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462772, 39.459084, 26.426098>,  <38.099579, 39.370113, 26.568138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462772, 39.459084, 26.426098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417810, 0.416602, -0.807390,
		-0.031646, 0.881460, 0.471197,
		0.907983, 0.222421, -0.355099,
		38.735168, 39.525810, 26.319569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041821, 39.989979, 26.321014>,  <38.099579, 39.370113, 26.568138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041821, 39.989979, 26.321014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.354080, 39.827312, 26.131187>,  <38.541435, 39.729713, 26.017290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.354080, 39.827312, 26.131187>,  <38.041821, 39.989979, 26.321014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354080, 39.827312, 26.131187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394922, 0.267549, -0.878894,
		0.484384, 0.873523, 0.048261,
		0.780647, -0.406663, -0.474570,
		38.588276, 39.705315, 25.988817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289162, 40.439049, 25.723261>,  <38.041821, 39.989979, 26.321014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289162, 40.439049, 25.723261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.427170, 40.074165, 25.634855>,  <38.509975, 39.855236, 25.581812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.427170, 40.074165, 25.634855>,  <38.289162, 40.439049, 25.723261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427170, 40.074165, 25.634855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229862, 0.146185, -0.962182,
		0.910015, 0.382772, -0.159245,
		0.345017, -0.912204, -0.221015,
		38.530674, 39.800503, 25.568550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660091, 40.526104, 25.102720>,  <38.289162, 40.439049, 25.723261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660091, 40.526104, 25.102720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.594387, 40.131546, 25.100231>,  <38.554966, 39.894810, 25.098738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.594387, 40.131546, 25.100231>,  <38.660091, 40.526104, 25.102720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594387, 40.131546, 25.100231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261112, 0.049563, -0.964036,
		0.951231, -0.156728, -0.265701,
		-0.164260, -0.986398, -0.006222,
		38.545109, 39.835629, 25.098364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990467, 40.349541, 24.557854>,  <38.660091, 40.526104, 25.102720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990467, 40.349541, 24.557854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.748569, 40.035744, 24.612774>,  <38.603432, 39.847466, 24.645725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.748569, 40.035744, 24.612774>,  <38.990467, 40.349541, 24.557854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748569, 40.035744, 24.612774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221646, 0.000195, -0.975127,
		0.764958, -0.620132, -0.173999,
		-0.604742, -0.784497, 0.137300,
		38.567146, 39.800396, 24.653965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304718, 39.853447, 24.158306>,  <38.990467, 40.349541, 24.557854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304718, 39.853447, 24.158306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.917660, 39.780090, 24.227633>,  <38.685425, 39.736076, 24.269228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.917660, 39.780090, 24.227633>,  <39.304718, 39.853447, 24.158306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917660, 39.780090, 24.227633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169250, -0.037715, -0.984851,
		0.187147, -0.982317, 0.005456,
		-0.967642, -0.183388, 0.173315,
		38.627369, 39.725075, 24.279627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148453, 39.278046, 23.732559>,  <39.304718, 39.853447, 24.158306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148453, 39.278046, 23.732559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.795555, 39.455585, 23.795357>,  <38.583817, 39.562107, 23.833036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.795555, 39.455585, 23.795357>,  <39.148453, 39.278046, 23.732559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795555, 39.455585, 23.795357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086431, 0.175106, -0.980749,
		-0.462794, -0.878827, -0.116124,
		-0.882243, 0.443848, 0.156996,
		38.530884, 39.588741, 23.842455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621059, 38.906296, 23.334843>,  <39.148453, 39.278046, 23.732559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621059, 38.906296, 23.334843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.470234, 39.268967, 23.410479>,  <38.379738, 39.486568, 23.455860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.470234, 39.268967, 23.410479>,  <38.621059, 38.906296, 23.334843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470234, 39.268967, 23.410479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260852, 0.091935, -0.960991,
		-0.888696, -0.411677, 0.201844,
		-0.377062, 0.906681, 0.189089,
		38.357117, 39.540970, 23.467205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947094, 38.826389, 23.130404>,  <38.621059, 38.906296, 23.334843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947094, 38.826389, 23.130404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068378, 39.207176, 23.113335>,  <38.141148, 39.435650, 23.103092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068378, 39.207176, 23.113335>,  <37.947094, 38.826389, 23.130404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068378, 39.207176, 23.113335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224487, 0.027836, -0.974079,
		-0.926103, 0.304933, 0.222145,
		0.303213, 0.951967, -0.042674,
		38.159344, 39.492767, 23.100533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560768, 39.051983, 22.544340>,  <37.947094, 38.826389, 23.130404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560768, 39.051983, 22.544340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.827297, 39.346844, 22.589289>,  <37.987213, 39.523758, 22.616259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.827297, 39.346844, 22.589289>,  <37.560768, 39.051983, 22.544340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827297, 39.346844, 22.589289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053059, 0.197190, -0.978928,
		-0.743774, 0.646319, 0.170504,
		0.666322, 0.737149, 0.112371,
		38.027195, 39.567989, 22.622999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308941, 39.549660, 22.149681>,  <37.560768, 39.051983, 22.544340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308941, 39.549660, 22.149681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.699383, 39.628456, 22.186373>,  <37.933647, 39.675735, 22.208387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.699383, 39.628456, 22.186373>,  <37.308941, 39.549660, 22.149681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699383, 39.628456, 22.186373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066085, 0.133026, -0.988907,
		-0.207013, 0.971338, 0.116828,
		0.976104, 0.196996, 0.091729,
		37.992214, 39.687553, 22.213892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624226, 39.482723, 21.878908>,  <37.308941, 39.549660, 22.149681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624226, 39.482723, 21.878908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.548271, 39.135635, 21.695166>,  <36.502701, 38.927383, 21.584921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.548271, 39.135635, 21.695166>,  <36.624226, 39.482723, 21.878908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548271, 39.135635, 21.695166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259216, -0.406960, 0.875894,
		-0.946970, 0.285388, -0.147652,
		-0.189881, -0.867719, -0.459356,
		36.491306, 38.875320, 21.557358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951847, 39.307018, 22.115879>,  <36.624226, 39.482723, 21.878908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951847, 39.307018, 22.115879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.097538, 38.962364, 21.974504>,  <36.184952, 38.755569, 21.889679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.097538, 38.962364, 21.974504>,  <35.951847, 39.307018, 22.115879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097538, 38.962364, 21.974504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269705, -0.460830, 0.845514,
		-0.891403, -0.212635, -0.400235,
		0.364226, -0.861639, -0.353437,
		36.206806, 38.703873, 21.868473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353352, 38.833790, 22.244652>,  <35.951847, 39.307018, 22.115879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353352, 38.833790, 22.244652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.720390, 38.676800, 22.219425>,  <35.940613, 38.582603, 22.204288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.720390, 38.676800, 22.219425>,  <35.353352, 38.833790, 22.244652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720390, 38.676800, 22.219425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169796, -0.530437, 0.830545,
		-0.359422, -0.751398, -0.553369,
		0.917597, -0.392476, -0.063066,
		35.995670, 38.559055, 22.200504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242485, 38.089039, 22.419954>,  <35.353352, 38.833790, 22.244652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242485, 38.089039, 22.419954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.638271, 38.095791, 22.477461>,  <35.875744, 38.099842, 22.511965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.638271, 38.095791, 22.477461>,  <35.242485, 38.089039, 22.419954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638271, 38.095791, 22.477461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118346, -0.477604, 0.870568,
		0.083357, -0.878413, -0.470576,
		0.989468, 0.016878, 0.143768,
		35.935112, 38.100853, 22.520592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433258, 37.543694, 22.738047>,  <35.242485, 38.089039, 22.419954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433258, 37.543694, 22.738047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.760410, 37.751011, 22.837999>,  <35.956703, 37.875401, 22.897970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.760410, 37.751011, 22.837999>,  <35.433258, 37.543694, 22.738047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760410, 37.751011, 22.837999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115570, -0.277456, 0.953762,
		0.563664, -0.808941, -0.167026,
		0.817880, 0.518298, 0.249881,
		36.005775, 37.906502, 22.912964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942265, 37.093742, 23.114597>,  <35.433258, 37.543694, 22.738047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942265, 37.093742, 23.114597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.030125, 37.466911, 23.228731>,  <36.082840, 37.690811, 23.297211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.030125, 37.466911, 23.228731>,  <35.942265, 37.093742, 23.114597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030125, 37.466911, 23.228731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061212, -0.305078, 0.950358,
		0.973656, -0.191281, -0.124116,
		0.219651, 0.932920, 0.285333,
		36.096020, 37.746788, 23.314331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442696, 36.935951, 23.480726>,  <35.942265, 37.093742, 23.114597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442696, 36.935951, 23.480726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.344406, 37.306938, 23.593452>,  <36.285431, 37.529530, 23.661087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.344406, 37.306938, 23.593452>,  <36.442696, 36.935951, 23.480726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344406, 37.306938, 23.593452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251705, -0.219704, 0.942536,
		0.936089, 0.302540, -0.179462,
		-0.245727, 0.927469, 0.281814,
		36.270687, 37.585178, 23.677996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865021, 37.085266, 24.056725>,  <36.442696, 36.935951, 23.480726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865021, 37.085266, 24.056725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.586143, 37.367870, 24.105328>,  <36.418816, 37.537434, 24.134489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.586143, 37.367870, 24.105328>,  <36.865021, 37.085266, 24.056725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586143, 37.367870, 24.105328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063962, -0.107510, 0.992144,
		0.714025, 0.699487, 0.029765,
		-0.697192, 0.706512, 0.121505,
		36.376987, 37.579823, 24.141779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168217, 37.658920, 24.523119>,  <36.865021, 37.085266, 24.056725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168217, 37.658920, 24.523119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.768429, 37.649860, 24.532442>,  <36.528557, 37.644424, 24.538036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.768429, 37.649860, 24.532442>,  <37.168217, 37.658920, 24.523119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768429, 37.649860, 24.532442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029825, -0.354478, 0.934589,
		-0.012903, 0.934790, 0.354966,
		-0.999472, -0.022646, 0.023306,
		36.468586, 37.643066, 24.539434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067474, 38.128677, 24.950459>,  <37.168217, 37.658920, 24.523119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067474, 38.128677, 24.950459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.710152, 37.950253, 24.928434>,  <36.495758, 37.843197, 24.915220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.710152, 37.950253, 24.928434>,  <37.067474, 38.128677, 24.950459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710152, 37.950253, 24.928434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069185, 0.015429, 0.997485,
		-0.444092, 0.894868, -0.044644,
		-0.893306, -0.446063, -0.055059,
		36.442162, 37.816433, 24.911917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530853, 38.499947, 25.400196>,  <37.067474, 38.128677, 24.950459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530853, 38.499947, 25.400196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.421833, 38.116463, 25.367708>,  <36.356419, 37.886372, 25.348215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.421833, 38.116463, 25.367708>,  <36.530853, 38.499947, 25.400196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421833, 38.116463, 25.367708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094318, -0.057386, 0.993887,
		-0.957507, 0.278547, -0.074783,
		-0.272553, -0.958707, -0.081219,
		36.340069, 37.828850, 25.343342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030415, 38.355042, 25.994846>,  <36.530853, 38.499947, 25.400196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030415, 38.355042, 25.994846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.148827, 37.998405, 25.857767>,  <36.219872, 37.784424, 25.775520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.148827, 37.998405, 25.857767>,  <36.030415, 38.355042, 25.994846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148827, 37.998405, 25.857767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001978, -0.358204, 0.933641,
		-0.955178, -0.277060, -0.104274,
		0.296026, -0.891587, -0.342697,
		36.237633, 37.730930, 25.754957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.821941, 39.809917, 17.874443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932137, 39.425972, 17.895479>,  <36.998253, 39.195606, 17.908100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932137, 39.425972, 17.895479>,  <36.821941, 39.809917, 17.874443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932137, 39.425972, 17.895479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420035, -0.070985, 0.904728,
		-0.864684, -0.271331, -0.422732,
		0.275488, -0.959865, 0.052589,
		37.014782, 39.138012, 17.911255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203201, 39.443127, 18.050312>,  <36.821941, 39.809917, 17.874443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203201, 39.443127, 18.050312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504723, 39.198673, 18.146896>,  <36.685635, 39.052002, 18.204847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504723, 39.198673, 18.146896>,  <36.203201, 39.443127, 18.050312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504723, 39.198673, 18.146896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382029, -0.108606, 0.917746,
		-0.534641, -0.784042, -0.315337,
		0.753799, -0.611133, 0.241462,
		36.730862, 39.015335, 18.219336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938553, 38.806168, 18.473925>,  <36.203201, 39.443127, 18.050312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938553, 38.806168, 18.473925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325787, 38.856796, 18.560450>,  <36.558128, 38.887173, 18.612364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325787, 38.856796, 18.560450>,  <35.938553, 38.806168, 18.473925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325787, 38.856796, 18.560450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204947, -0.096968, 0.973958,
		0.144250, -0.987207, -0.067933,
		0.968085, 0.126571, 0.216312,
		36.616211, 38.894768, 18.625343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111393, 38.334728, 19.062332>,  <35.938553, 38.806168, 18.473925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111393, 38.334728, 19.062332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441452, 38.560658, 19.058205>,  <36.639488, 38.696213, 19.055727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441452, 38.560658, 19.058205>,  <36.111393, 38.334728, 19.062332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441452, 38.560658, 19.058205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020812, 0.048650, 0.998599,
		0.564532, -0.823778, 0.051899,
		0.825149, 0.564822, -0.010320,
		36.688995, 38.730103, 19.055109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417343, 37.984924, 19.609037>,  <36.111393, 38.334728, 19.062332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417343, 37.984924, 19.609037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582146, 38.344879, 19.551842>,  <36.681026, 38.560852, 19.517525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582146, 38.344879, 19.551842>,  <36.417343, 37.984924, 19.609037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582146, 38.344879, 19.551842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034452, 0.141429, 0.989349,
		0.910529, -0.412544, 0.027266,
		0.412006, 0.899892, -0.142988,
		36.705746, 38.614845, 19.508945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102158, 37.984676, 19.916208>,  <36.417343, 37.984924, 19.609037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102158, 37.984676, 19.916208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963936, 38.359940, 19.907722>,  <36.881004, 38.585098, 19.902632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963936, 38.359940, 19.907722>,  <37.102158, 37.984676, 19.916208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963936, 38.359940, 19.907722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066169, 0.046911, 0.996705,
		0.936064, 0.343008, -0.078288,
		-0.345550, 0.938160, -0.021215,
		36.860271, 38.641388, 19.901358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510475, 38.472946, 20.384329>,  <37.102158, 37.984676, 19.916208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510475, 38.472946, 20.384329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154564, 38.643723, 20.319815>,  <36.941017, 38.746189, 20.281105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154564, 38.643723, 20.319815>,  <37.510475, 38.472946, 20.384329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154564, 38.643723, 20.319815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140285, 0.080435, 0.986839,
		0.434293, 0.900696, -0.011676,
		-0.889780, 0.426940, -0.161287,
		36.887630, 38.771805, 20.271429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457981, 39.094067, 20.706450>,  <37.510475, 38.472946, 20.384329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457981, 39.094067, 20.706450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081024, 38.963997, 20.675070>,  <36.854851, 38.885956, 20.656242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081024, 38.963997, 20.675070>,  <37.457981, 39.094067, 20.706450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081024, 38.963997, 20.675070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113737, 0.090943, 0.989340,
		-0.314574, 0.941271, -0.122688,
		-0.942394, -0.325175, -0.078449,
		36.798306, 38.866444, 20.651535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105530, 39.462719, 21.181742>,  <37.457981, 39.094067, 20.706450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105530, 39.462719, 21.181742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866962, 39.143429, 21.147976>,  <36.723824, 38.951855, 21.127716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866962, 39.143429, 21.147976>,  <37.105530, 39.462719, 21.181742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866962, 39.143429, 21.147976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355972, 0.168773, 0.919130,
		-0.719423, 0.578235, -0.384804,
		-0.596418, -0.798223, -0.084416,
		36.688038, 38.903961, 21.122652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345493, 40.063255, 21.587650>,  <37.105530, 39.462719, 21.181742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345493, 40.063255, 21.587650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722870, 39.999561, 21.703964>,  <37.949295, 39.961346, 21.773752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722870, 39.999561, 21.703964>,  <37.345493, 40.063255, 21.587650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722870, 39.999561, 21.703964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329804, 0.361429, -0.872123,
		0.033770, 0.918703, 0.393504,
		0.943445, -0.159231, 0.290786,
		38.005905, 39.951794, 21.791201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636200, 40.731964, 21.368111>,  <37.345493, 40.063255, 21.587650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636200, 40.731964, 21.368111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925102, 40.455791, 21.384398>,  <38.098442, 40.290089, 21.394171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925102, 40.455791, 21.384398>,  <37.636200, 40.731964, 21.368111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925102, 40.455791, 21.384398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340727, 0.303962, -0.889670,
		0.601879, 0.656439, 0.454786,
		0.722251, -0.690431, 0.040718,
		38.141777, 40.248661, 21.396612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164490, 41.099930, 21.224571>,  <37.636200, 40.731964, 21.368111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164490, 41.099930, 21.224571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277267, 40.722107, 21.157265>,  <38.344933, 40.495411, 21.116880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277267, 40.722107, 21.157265>,  <38.164490, 41.099930, 21.224571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277267, 40.722107, 21.157265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400383, 0.275215, -0.874042,
		0.871896, 0.179057, 0.455781,
		0.281941, -0.944561, -0.168268,
		38.361851, 40.438740, 21.106785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847622, 41.127876, 20.980858>,  <38.164490, 41.099930, 21.224571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847622, 41.127876, 20.980858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702896, 40.775532, 20.858761>,  <38.616062, 40.564125, 20.785501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702896, 40.775532, 20.858761>,  <38.847622, 41.127876, 20.980858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702896, 40.775532, 20.858761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420239, 0.138166, -0.896833,
		0.832160, -0.452761, 0.320183,
		-0.361813, -0.880862, -0.305244,
		38.594353, 40.511272, 20.767187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445717, 40.718880, 20.691908>,  <38.847622, 41.127876, 20.980858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445717, 40.718880, 20.691908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108727, 40.573528, 20.532814>,  <38.906532, 40.486317, 20.437357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108727, 40.573528, 20.532814>,  <39.445717, 40.718880, 20.691908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108727, 40.573528, 20.532814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382137, 0.117327, -0.916627,
		0.379748, -0.924224, 0.040015,
		-0.842474, -0.363378, -0.397735,
		38.855984, 40.464516, 20.413494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692665, 40.267906, 20.249012>,  <39.445717, 40.718880, 20.691908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692665, 40.267906, 20.249012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323082, 40.344643, 20.116644>,  <39.101334, 40.390686, 20.037224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323082, 40.344643, 20.116644>,  <39.692665, 40.267906, 20.249012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323082, 40.344643, 20.116644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373772, 0.269004, -0.887655,
		-0.081271, -0.943840, -0.320252,
		-0.923953, 0.191842, -0.330918,
		39.045895, 40.402195, 20.017368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729416, 39.972065, 19.597893>,  <39.692665, 40.267906, 20.249012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729416, 39.972065, 19.597893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407326, 40.208946, 19.585825>,  <39.214073, 40.351074, 19.578585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407326, 40.208946, 19.585825>,  <39.729416, 39.972065, 19.597893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407326, 40.208946, 19.585825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193133, 0.213820, -0.957591,
		-0.560640, -0.776900, -0.286547,
		-0.805222, 0.592206, -0.030169,
		39.165760, 40.386608, 19.576775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392597, 39.764992, 18.968220>,  <39.729416, 39.972065, 19.597893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392597, 39.764992, 18.968220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253658, 40.134022, 19.035398>,  <39.170296, 40.355438, 19.075705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253658, 40.134022, 19.035398>,  <39.392597, 39.764992, 18.968220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253658, 40.134022, 19.035398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240277, 0.260681, -0.935047,
		-0.906429, -0.284437, -0.312221,
		-0.347352, 0.922573, 0.167946,
		39.149452, 40.410793, 19.085783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954716, 39.914413, 18.409271>,  <39.392597, 39.764992, 18.968220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954716, 39.914413, 18.409271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038429, 40.280056, 18.548182>,  <39.088657, 40.499443, 18.631529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038429, 40.280056, 18.548182>,  <38.954716, 39.914413, 18.409271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038429, 40.280056, 18.548182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006464, 0.353841, -0.935283,
		-0.977833, 0.197986, 0.068145,
		0.209285, 0.914111, 0.347277,
		39.101215, 40.554291, 18.652365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557297, 40.343208, 18.026314>,  <38.954716, 39.914413, 18.409271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557297, 40.343208, 18.026314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883102, 40.527039, 18.167936>,  <39.078587, 40.637337, 18.252911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883102, 40.527039, 18.167936>,  <38.557297, 40.343208, 18.026314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883102, 40.527039, 18.167936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156809, 0.413173, -0.897050,
		-0.558550, 0.786179, 0.264469,
		0.814514, 0.459576, 0.354058,
		39.127457, 40.664913, 18.274153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567917, 40.958805, 17.762564>,  <38.557297, 40.343208, 18.026314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567917, 40.958805, 17.762564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954136, 40.915237, 17.857094>,  <39.185867, 40.889095, 17.913811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954136, 40.915237, 17.857094>,  <38.567917, 40.958805, 17.762564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954136, 40.915237, 17.857094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258471, 0.296442, -0.919410,
		0.030085, 0.948820, 0.314382,
		0.965550, -0.108920, 0.236324,
		39.243801, 40.882561, 17.927992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901024, 41.488293, 17.479406>,  <38.567917, 40.958805, 17.762564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901024, 41.488293, 17.479406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216702, 41.260300, 17.570871>,  <39.406109, 41.123505, 17.625750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216702, 41.260300, 17.570871>,  <38.901024, 41.488293, 17.479406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216702, 41.260300, 17.570871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496567, 0.373144, -0.783700,
		0.361373, 0.732039, 0.577519,
		0.789197, -0.569985, 0.228663,
		39.453461, 41.089306, 17.639471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503864, 41.911121, 17.463284>,  <38.901024, 41.488293, 17.479406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503864, 41.911121, 17.463284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646111, 41.540112, 17.417250>,  <39.731457, 41.317505, 17.389629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646111, 41.540112, 17.417250>,  <39.503864, 41.911121, 17.463284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646111, 41.540112, 17.417250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275315, 0.221626, -0.935459,
		0.893164, 0.300977, 0.334174,
		0.355613, -0.927521, -0.115085,
		39.752796, 41.261856, 17.382725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251560, 41.992664, 17.351160>,  <39.503864, 41.911121, 17.463284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251560, 41.992664, 17.351160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159424, 41.636597, 17.193913>,  <40.104141, 41.422955, 17.099564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159424, 41.636597, 17.193913>,  <40.251560, 41.992664, 17.351160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159424, 41.636597, 17.193913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472192, 0.250988, -0.845008,
		0.850869, -0.380267, 0.362519,
		-0.230341, -0.890170, -0.393117,
		40.090321, 41.369545, 17.075977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.327839, 32.844677, 15.352517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.212414, 33.177704, 15.541644>,  <40.143158, 33.377522, 15.655120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.212414, 33.177704, 15.541644>,  <40.327839, 32.844677, 15.352517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212414, 33.177704, 15.541644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367247, -0.359807, 0.857711,
		0.884228, 0.421147, -0.201931,
		-0.288566, 0.832571, 0.472817,
		40.125843, 33.427475, 15.683489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916164, 32.954952, 15.798234>,  <40.327839, 32.844677, 15.352517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916164, 32.954952, 15.798234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.607948, 33.155521, 15.955633>,  <40.423019, 33.275864, 16.050074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.607948, 33.155521, 15.955633>,  <40.916164, 32.954952, 15.798234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607948, 33.155521, 15.955633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239891, -0.343825, 0.907875,
		0.590526, 0.793951, 0.144644,
		-0.770540, 0.501425, 0.393499,
		40.376785, 33.305950, 16.073683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187103, 33.334648, 16.338783>,  <40.916164, 32.954952, 15.798234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187103, 33.334648, 16.338783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.793777, 33.344532, 16.410877>,  <40.557781, 33.350464, 16.454134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.793777, 33.344532, 16.410877>,  <41.187103, 33.334648, 16.338783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793777, 33.344532, 16.410877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177710, -0.081416, 0.980709,
		0.038911, 0.996374, 0.075665,
		-0.983313, 0.024714, 0.180234,
		40.498783, 33.351948, 16.464947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145748, 33.746479, 16.918800>,  <41.187103, 33.334648, 16.338783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145748, 33.746479, 16.918800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.810215, 33.528961, 16.908550>,  <40.608894, 33.398453, 16.902401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.810215, 33.528961, 16.908550>,  <41.145748, 33.746479, 16.918800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810215, 33.528961, 16.908550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016373, -0.021847, 0.999627,
		-0.544147, 0.838937, 0.009422,
		-0.838830, -0.543790, -0.025624,
		40.558567, 33.365826, 16.900864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663036, 34.037788, 17.411873>,  <41.145748, 33.746479, 16.918800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663036, 34.037788, 17.411873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.501884, 33.674355, 17.367760>,  <40.405193, 33.456295, 17.341291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.501884, 33.674355, 17.367760>,  <40.663036, 34.037788, 17.411873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501884, 33.674355, 17.367760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258012, -0.002861, 0.966138,
		-0.878132, 0.417695, -0.233273,
		-0.402883, -0.908583, -0.110283,
		40.381020, 33.401779, 17.334675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973583, 34.083511, 17.656940>,  <40.663036, 34.037788, 17.411873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973583, 34.083511, 17.656940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122139, 33.715866, 17.709547>,  <40.211273, 33.495277, 17.741110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122139, 33.715866, 17.709547>,  <39.973583, 34.083511, 17.656940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122139, 33.715866, 17.709547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464308, -0.061186, 0.883558,
		-0.804045, -0.389207, -0.449477,
		0.371388, -0.919116, 0.131515,
		40.233555, 33.440132, 17.749002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426701, 33.629520, 17.987911>,  <39.973583, 34.083511, 17.656940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426701, 33.629520, 17.987911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.758251, 33.413315, 18.045609>,  <39.957184, 33.283592, 18.080227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.758251, 33.413315, 18.045609>,  <39.426701, 33.629520, 17.987911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758251, 33.413315, 18.045609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342383, -0.286231, 0.894900,
		-0.442420, -0.791148, -0.422313,
		0.828878, -0.540515, 0.144241,
		40.006916, 33.251160, 18.088881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158440, 33.089733, 18.278900>,  <39.426701, 33.629520, 17.987911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158440, 33.089733, 18.278900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.543648, 33.054306, 18.380684>,  <39.774773, 33.033051, 18.441753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.543648, 33.054306, 18.380684>,  <39.158440, 33.089733, 18.278900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543648, 33.054306, 18.380684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268615, -0.389141, 0.881144,
		0.020979, -0.916910, -0.398541,
		0.963019, -0.088568, 0.254460,
		39.832554, 33.027737, 18.457022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182045, 32.442059, 18.562063>,  <39.158440, 33.089733, 18.278900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182045, 32.442059, 18.562063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.491558, 32.653564, 18.701586>,  <39.677265, 32.780468, 18.785299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.491558, 32.653564, 18.701586>,  <39.182045, 32.442059, 18.562063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491558, 32.653564, 18.701586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237256, -0.268641, 0.933564,
		0.587339, -0.805134, -0.082418,
		0.773785, 0.528764, 0.348806,
		39.723694, 32.812195, 18.806227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203751, 32.127026, 19.171925>,  <39.182045, 32.442059, 18.562063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203751, 32.127026, 19.171925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.472610, 32.421078, 19.207251>,  <39.633926, 32.597507, 19.228447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.472610, 32.421078, 19.207251>,  <39.203751, 32.127026, 19.171925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472610, 32.421078, 19.207251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048801, -0.075034, 0.995986,
		0.738808, -0.673759, -0.014559,
		0.672147, 0.735132, 0.088316,
		39.674255, 32.641617, 19.233746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846100, 31.943806, 19.559795>,  <39.203751, 32.127026, 19.171925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846100, 31.943806, 19.559795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.784855, 32.337753, 19.592274>,  <39.748108, 32.574120, 19.611761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.784855, 32.337753, 19.592274>,  <39.846100, 31.943806, 19.559795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784855, 32.337753, 19.592274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033438, -0.087282, 0.995622,
		0.987643, 0.149729, 0.046296,
		-0.153114, 0.984867, 0.081197,
		39.738922, 32.633213, 19.616632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038212, 32.105236, 20.174885>,  <39.846100, 31.943806, 19.559795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038212, 32.105236, 20.174885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871426, 32.459969, 20.095211>,  <39.771355, 32.672806, 20.047407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871426, 32.459969, 20.095211>,  <40.038212, 32.105236, 20.174885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871426, 32.459969, 20.095211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155817, 0.146158, 0.976913,
		0.895465, 0.438379, 0.077240,
		-0.416969, 0.886827, -0.199186,
		39.746334, 32.726017, 20.035456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315891, 32.577900, 20.646437>,  <40.038212, 32.105236, 20.174885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315891, 32.577900, 20.646437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.974716, 32.755089, 20.535965>,  <39.770012, 32.861401, 20.469683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.974716, 32.755089, 20.535965>,  <40.315891, 32.577900, 20.646437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974716, 32.755089, 20.535965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204033, 0.204078, 0.957456,
		0.480486, 0.873000, -0.083685,
		-0.852938, 0.442970, -0.276177,
		39.718834, 32.887981, 20.453112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250488, 33.352829, 20.837973>,  <40.315891, 32.577900, 20.646437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250488, 33.352829, 20.837973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.879696, 33.203506, 20.823318>,  <39.657219, 33.113914, 20.814526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.879696, 33.203506, 20.823318>,  <40.250488, 33.352829, 20.837973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879696, 33.203506, 20.823318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118092, 0.197750, 0.973113,
		-0.356023, 0.906388, -0.227395,
		-0.926985, -0.373304, -0.036634,
		39.601601, 33.091515, 20.812328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025974, 34.082478, 20.725248>,  <40.250488, 33.352829, 20.837973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025974, 34.082478, 20.725248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.213974, 34.396076, 20.887459>,  <40.326775, 34.584236, 20.984785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.213974, 34.396076, 20.887459>,  <40.025974, 34.082478, 20.725248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213974, 34.396076, 20.887459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025164, 0.447345, -0.894008,
		-0.882307, 0.430389, 0.190524,
		0.470001, 0.783995, 0.405526,
		40.354973, 34.631275, 21.009117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748398, 34.548004, 20.429916>,  <40.025974, 34.082478, 20.725248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748398, 34.548004, 20.429916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.099018, 34.688507, 20.561539>,  <40.309391, 34.772808, 20.640512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.099018, 34.688507, 20.561539>,  <39.748398, 34.548004, 20.429916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099018, 34.688507, 20.561539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170231, 0.413226, -0.894576,
		-0.450200, 0.840157, 0.302419,
		0.876551, 0.351256, 0.329055,
		40.361984, 34.793884, 20.660255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783939, 35.151669, 20.194126>,  <39.748398, 34.548004, 20.429916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783939, 35.151669, 20.194126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.174416, 35.097244, 20.261709>,  <40.408699, 35.064590, 20.302259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.174416, 35.097244, 20.261709>,  <39.783939, 35.151669, 20.194126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174416, 35.097244, 20.261709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216256, 0.548985, -0.807372,
		0.017094, 0.824684, 0.565336,
		0.976187, -0.136058, 0.168958,
		40.467270, 35.056427, 20.312397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092121, 35.762100, 19.892622>,  <39.783939, 35.151669, 20.194126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092121, 35.762100, 19.892622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.397457, 35.507023, 19.933910>,  <40.580658, 35.353977, 19.958683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.397457, 35.507023, 19.933910>,  <40.092121, 35.762100, 19.892622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397457, 35.507023, 19.933910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376968, 0.309958, -0.872824,
		0.524601, 0.705174, 0.476994,
		0.763341, -0.637696, 0.103223,
		40.626461, 35.315716, 19.964878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809177, 36.104378, 19.656971>,  <40.092121, 35.762100, 19.892622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809177, 36.104378, 19.656971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.881420, 35.713963, 19.608423>,  <40.924767, 35.479713, 19.579294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.881420, 35.713963, 19.608423>,  <40.809177, 36.104378, 19.656971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881420, 35.713963, 19.608423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446509, 0.191313, -0.874087,
		0.876362, 0.103673, 0.470363,
		0.180606, -0.976038, -0.121369,
		40.935600, 35.421150, 19.572012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443756, 36.011635, 19.413172>,  <40.809177, 36.104378, 19.656971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443756, 36.011635, 19.413172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.286839, 35.659801, 19.305508>,  <41.192688, 35.448704, 19.240910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.286839, 35.659801, 19.305508>,  <41.443756, 36.011635, 19.413172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286839, 35.659801, 19.305508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444883, 0.074688, -0.892469,
		0.805102, -0.469850, 0.362011,
		-0.392289, -0.879581, -0.269159,
		41.169151, 35.395927, 19.224760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003536, 35.634987, 19.088486>,  <41.443756, 36.011635, 19.413172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003536, 35.634987, 19.088486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.675102, 35.455753, 18.947044>,  <41.478043, 35.348213, 18.862179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.675102, 35.455753, 18.947044>,  <42.003536, 35.634987, 19.088486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675102, 35.455753, 18.947044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423340, -0.062500, -0.903813,
		0.382885, -0.891803, 0.241010,
		-0.821086, -0.448086, -0.353605,
		41.428776, 35.321327, 18.840963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294834, 34.988960, 18.664291>,  <42.003536, 35.634987, 19.088486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294834, 34.988960, 18.664291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.920830, 35.086163, 18.560987>,  <41.696426, 35.144485, 18.499004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.920830, 35.086163, 18.560987>,  <42.294834, 34.988960, 18.664291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920830, 35.086163, 18.560987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283348, 0.074060, -0.956153,
		-0.213228, -0.967192, -0.138103,
		-0.935012, 0.243010, -0.258260,
		41.640327, 35.159065, 18.483509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107567, 34.569397, 18.037426>,  <42.294834, 34.988960, 18.664291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107567, 34.569397, 18.037426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.856102, 34.880325, 18.028051>,  <41.705223, 35.066883, 18.022427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.856102, 34.880325, 18.028051>,  <42.107567, 34.569397, 18.037426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856102, 34.880325, 18.028051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078151, 0.033166, -0.996390,
		-0.773739, -0.628227, -0.081599,
		-0.628665, 0.777323, -0.023435,
		41.667503, 35.113522, 18.021021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696373, 34.372963, 17.432131>,  <42.107567, 34.569397, 18.037426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696373, 34.372963, 17.432131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.605995, 34.756092, 17.503153>,  <41.551769, 34.985970, 17.545767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.605995, 34.756092, 17.503153>,  <41.696373, 34.372963, 17.432131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605995, 34.756092, 17.503153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053443, 0.169808, -0.984027,
		-0.972673, -0.231823, 0.012822,
		-0.225943, 0.957822, 0.177557,
		41.538212, 35.043438, 17.556419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115543, 34.586449, 17.038364>,  <41.696373, 34.372963, 17.432131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115543, 34.586449, 17.038364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.313835, 34.927746, 17.103148>,  <41.432808, 35.132523, 17.142017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.313835, 34.927746, 17.103148>,  <41.115543, 34.586449, 17.038364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313835, 34.927746, 17.103148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092508, 0.237302, -0.967021,
		-0.863538, 0.464396, 0.196569,
		0.495726, 0.853244, 0.161959,
		41.462555, 35.183720, 17.151735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695492, 35.015038, 16.639685>,  <41.115543, 34.586449, 17.038364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695492, 35.015038, 16.639685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.041073, 35.202271, 16.713974>,  <41.248421, 35.314610, 16.758547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.041073, 35.202271, 16.713974>,  <40.695492, 35.015038, 16.639685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041073, 35.202271, 16.713974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080346, 0.235958, -0.968436,
		-0.497128, 0.851602, 0.166247,
		0.863950, 0.468079, 0.185724,
		41.300259, 35.342693, 16.769691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647758, 35.693390, 16.460728>,  <40.695492, 35.015038, 16.639685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647758, 35.693390, 16.460728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.045105, 35.651539, 16.441652>,  <41.283512, 35.626427, 16.430206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.045105, 35.651539, 16.441652>,  <40.647758, 35.693390, 16.460728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045105, 35.651539, 16.441652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025792, 0.201422, -0.979165,
		0.112056, 0.973900, 0.197388,
		0.993367, -0.104630, -0.047690,
		41.343117, 35.620152, 16.427345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888931, 36.237995, 16.088501>,  <40.647758, 35.693390, 16.460728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888931, 36.237995, 16.088501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.198689, 35.985527, 16.070904>,  <41.384544, 35.834045, 16.060347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.198689, 35.985527, 16.070904>,  <40.888931, 36.237995, 16.088501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198689, 35.985527, 16.070904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213163, 0.325733, -0.921119,
		0.595714, 0.703932, 0.386788,
		0.774394, -0.631172, -0.043992,
		41.431007, 35.796177, 16.057707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974728, 37.024067, 16.446596>,  <40.888931, 36.237995, 16.088501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974728, 37.024067, 16.446596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.059830, 37.412605, 16.488962>,  <41.110893, 37.645729, 16.514381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.059830, 37.412605, 16.488962>,  <40.974728, 37.024067, 16.446596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059830, 37.412605, 16.488962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376008, -0.018657, 0.926429,
		0.901860, -0.236929, 0.361265,
		0.212758, 0.971348, 0.105913,
		41.123657, 37.704010, 16.520737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265587, 37.094093, 17.090036>,  <40.974728, 37.024067, 16.446596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265587, 37.094093, 17.090036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.137238, 37.457047, 16.981447>,  <41.060226, 37.674820, 16.916294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.137238, 37.457047, 16.981447>,  <41.265587, 37.094093, 17.090036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137238, 37.457047, 16.981447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352795, 0.151492, 0.923356,
		0.878962, 0.392057, 0.271510,
		-0.320877, 0.907381, -0.271471,
		41.040974, 37.729259, 16.900005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574356, 37.613186, 17.632816>,  <41.265587, 37.094093, 17.090036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574356, 37.613186, 17.632816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.235584, 37.750000, 17.469982>,  <41.032322, 37.832088, 17.372282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.235584, 37.750000, 17.469982>,  <41.574356, 37.613186, 17.632816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235584, 37.750000, 17.469982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383163, 0.138204, 0.913283,
		0.368640, 0.929467, 0.014008,
		-0.846930, 0.342040, -0.407085,
		40.981506, 37.852612, 17.347857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500431, 38.281368, 17.987116>,  <41.574356, 37.613186, 17.632816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500431, 38.281368, 17.987116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.143208, 38.173595, 17.842974>,  <40.928875, 38.108932, 17.756489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.143208, 38.173595, 17.842974>,  <41.500431, 38.281368, 17.987116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143208, 38.173595, 17.842974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411729, 0.166360, 0.895993,
		-0.181457, 0.948543, -0.259501,
		-0.893058, -0.269428, -0.360355,
		40.875290, 38.092766, 17.734867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056358, 38.686234, 18.387590>,  <41.500431, 38.281368, 17.987116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056358, 38.686234, 18.387590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.808010, 38.421627, 18.219345>,  <40.659000, 38.262863, 18.118399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.808010, 38.421627, 18.219345>,  <41.056358, 38.686234, 18.387590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808010, 38.421627, 18.219345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430474, -0.160711, 0.888180,
		-0.655145, 0.732506, -0.184987,
		-0.620868, -0.661519, -0.420614,
		40.621750, 38.223171, 18.093161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457939, 38.921619, 18.568022>,  <41.056358, 38.686234, 18.387590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457939, 38.921619, 18.568022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.405663, 38.532658, 18.490717>,  <40.374294, 38.299282, 18.444334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.405663, 38.532658, 18.490717>,  <40.457939, 38.921619, 18.568022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405663, 38.532658, 18.490717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419815, -0.122314, 0.899330,
		-0.898151, 0.198673, -0.392243,
		-0.130696, -0.972403, -0.193262,
		40.366455, 38.240936, 18.432737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999237, 38.699417, 19.038589>,  <40.457939, 38.921619, 18.568022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999237, 38.699417, 19.038589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.106171, 38.327744, 18.936493>,  <40.170330, 38.104740, 18.875235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.106171, 38.327744, 18.936493>,  <39.999237, 38.699417, 19.038589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106171, 38.327744, 18.936493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072137, -0.283436, 0.956274,
		-0.960899, -0.237236, -0.142801,
		0.267338, -0.929184, -0.255240,
		40.186371, 38.048988, 18.859921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518223, 38.231941, 19.320889>,  <39.999237, 38.699417, 19.038589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518223, 38.231941, 19.320889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.874886, 38.053432, 19.290466>,  <40.088882, 37.946327, 19.272213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.874886, 38.053432, 19.290466>,  <39.518223, 38.231941, 19.320889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874886, 38.053432, 19.290466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042851, -0.250446, 0.967182,
		-0.450671, -0.859139, -0.242436,
		0.891661, -0.446270, -0.076054,
		40.142384, 37.919552, 19.267651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508671, 37.680664, 19.838860>,  <39.518223, 38.231941, 19.320889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508671, 37.680664, 19.838860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.899570, 37.685066, 19.754141>,  <40.134109, 37.687710, 19.703310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.899570, 37.685066, 19.754141>,  <39.508671, 37.680664, 19.838860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899570, 37.685066, 19.754141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211904, -0.009721, 0.977242,
		0.008711, -0.999892, -0.011835,
		0.977252, 0.011020, -0.211796,
		40.192745, 37.688370, 19.690601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860268, 37.169998, 20.327429>,  <39.508671, 37.680664, 19.838860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860268, 37.169998, 20.327429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.104557, 37.461105, 20.202610>,  <40.251129, 37.635769, 20.127718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.104557, 37.461105, 20.202610>,  <39.860268, 37.169998, 20.327429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104557, 37.461105, 20.202610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363373, 0.092558, 0.927035,
		0.703550, -0.679547, -0.207925,
		0.610719, 0.727770, -0.312049,
		40.287773, 37.679436, 20.108995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570393, 36.976704, 20.559868>,  <39.860268, 37.169998, 20.327429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570393, 36.976704, 20.559868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.616726, 37.367123, 20.486198>,  <40.644524, 37.601372, 20.441998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.616726, 37.367123, 20.486198>,  <40.570393, 36.976704, 20.559868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616726, 37.367123, 20.486198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480856, 0.107140, 0.870229,
		0.869115, -0.189359, -0.456927,
		0.115831, 0.976045, -0.184171,
		40.651474, 37.659935, 20.430946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282455, 37.084045, 20.711376>,  <40.570393, 36.976704, 20.559868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282455, 37.084045, 20.711376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.077183, 37.423744, 20.761051>,  <40.954018, 37.627563, 20.790857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.077183, 37.423744, 20.761051>,  <41.282455, 37.084045, 20.711376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077183, 37.423744, 20.761051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267385, 0.020698, 0.963368,
		0.815566, 0.527590, -0.237698,
		-0.513183, 0.849247, 0.124189,
		40.923229, 37.678520, 20.798307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650166, 37.462917, 21.200476>,  <41.282455, 37.084045, 20.711376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650166, 37.462917, 21.200476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.294811, 37.646549, 21.202078>,  <41.081600, 37.756729, 21.203039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.294811, 37.646549, 21.202078>,  <41.650166, 37.462917, 21.200476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294811, 37.646549, 21.202078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068251, 0.123441, 0.990002,
		0.453998, 0.879776, -0.140996,
		-0.888385, 0.459082, 0.004004,
		41.028297, 37.784275, 21.203279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795921, 37.938709, 21.780338>,  <41.650166, 37.462917, 21.200476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795921, 37.938709, 21.780338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.401627, 37.946693, 21.713503>,  <41.165051, 37.951485, 21.673403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.401627, 37.946693, 21.713503>,  <41.795921, 37.938709, 21.780338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401627, 37.946693, 21.713503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162499, 0.145031, 0.975992,
		0.043711, 0.989226, -0.139720,
		-0.985740, 0.019957, -0.167088,
		41.105904, 37.952679, 21.663376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.848415, 41.938953, 16.874159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.580425, 41.659016, 16.775074>,  <40.419632, 41.491055, 16.715622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.580425, 41.659016, 16.775074>,  <40.848415, 41.938953, 16.874159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580425, 41.659016, 16.775074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400208, -0.059434, -0.914495,
		0.625278, -0.711822, 0.319901,
		-0.669971, -0.699840, -0.247714,
		40.379433, 41.449062, 16.700760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243877, 41.228954, 16.746943>,  <40.848415, 41.938953, 16.874159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243877, 41.228954, 16.746943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898201, 41.261642, 16.548347>,  <40.690796, 41.281254, 16.429190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898201, 41.261642, 16.548347>,  <41.243877, 41.228954, 16.746943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898201, 41.261642, 16.548347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478858, -0.169427, -0.861388,
		-0.154511, -0.982149, 0.107284,
		-0.864188, 0.081720, -0.496488,
		40.638943, 41.286156, 16.399401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344749, 40.818920, 16.185354>,  <41.243877, 41.228954, 16.746943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344749, 40.818920, 16.185354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.026588, 41.038418, 16.082422>,  <40.835693, 41.170116, 16.020662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.026588, 41.038418, 16.082422>,  <41.344749, 40.818920, 16.185354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026588, 41.038418, 16.082422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311651, 0.006152, -0.950177,
		-0.519821, -0.835968, -0.175911,
		-0.795399, 0.548744, -0.257332,
		40.787968, 41.203041, 16.005222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058006, 40.460503, 15.570737>,  <41.344749, 40.818920, 16.185354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058006, 40.460503, 15.570737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.931038, 40.839127, 15.593634>,  <40.854858, 41.066299, 15.607371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.931038, 40.839127, 15.593634>,  <41.058006, 40.460503, 15.570737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931038, 40.839127, 15.593634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243171, 0.139593, -0.959886,
		-0.916578, -0.290764, -0.274484,
		-0.317417, 0.946557, 0.057242,
		40.835812, 41.123093, 15.610806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649517, 40.550083, 14.941671>,  <41.058006, 40.460503, 15.570737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649517, 40.550083, 14.941671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.719028, 40.932171, 15.037469>,  <40.760735, 41.161423, 15.094948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.719028, 40.932171, 15.037469>,  <40.649517, 40.550083, 14.941671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719028, 40.932171, 15.037469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127695, 0.219284, -0.967269,
		-0.976471, 0.198669, -0.083871,
		0.173775, 0.955220, 0.239494,
		40.771160, 41.218739, 15.109317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327267, 40.807499, 14.418458>,  <40.649517, 40.550083, 14.941671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327267, 40.807499, 14.418458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.539303, 41.115768, 14.559918>,  <40.666523, 41.300732, 14.644794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.539303, 41.115768, 14.559918>,  <40.327267, 40.807499, 14.418458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539303, 41.115768, 14.559918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107192, 0.352820, -0.929531,
		-0.841139, 0.530643, 0.104416,
		0.530089, 0.770672, 0.353651,
		40.698330, 41.346970, 14.666014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076870, 41.331768, 14.081568>,  <40.327267, 40.807499, 14.418458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076870, 41.331768, 14.081568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.437294, 41.460426, 14.197933>,  <40.653549, 41.537621, 14.267753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.437294, 41.460426, 14.197933>,  <40.076870, 41.331768, 14.081568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437294, 41.460426, 14.197933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275837, 0.092586, -0.956735,
		-0.334668, 0.942321, -0.005297,
		0.901061, 0.321650, 0.290913,
		40.707611, 41.556923, 14.285207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210770, 41.927841, 13.666900>,  <40.076870, 41.331768, 14.081568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210770, 41.927841, 13.666900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.578701, 41.837444, 13.795178>,  <40.799458, 41.783207, 13.872146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.578701, 41.837444, 13.795178>,  <40.210770, 41.927841, 13.666900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578701, 41.837444, 13.795178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363711, 0.184750, -0.913007,
		0.147086, 0.956448, 0.252135,
		0.919826, -0.225995, 0.320696,
		40.854649, 41.769646, 13.891387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653858, 42.405571, 13.481105>,  <40.210770, 41.927841, 13.666900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653858, 42.405571, 13.481105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.927715, 42.119560, 13.537669>,  <41.092030, 41.947952, 13.571608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.927715, 42.119560, 13.537669>,  <40.653858, 42.405571, 13.481105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927715, 42.119560, 13.537669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214861, 0.012597, -0.976564,
		0.696488, 0.698983, 0.162255,
		0.684646, -0.715027, 0.141411,
		41.133110, 41.905052, 13.580092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245937, 42.626354, 13.093157>,  <40.653858, 42.405571, 13.481105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245937, 42.626354, 13.093157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.260620, 42.228809, 13.134890>,  <41.269428, 41.990280, 13.159929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.260620, 42.228809, 13.134890>,  <41.245937, 42.626354, 13.093157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260620, 42.228809, 13.134890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402343, -0.080869, -0.911910,
		0.914753, 0.075452, 0.396906,
		0.036708, -0.993865, 0.104333,
		41.271633, 41.930649, 13.166189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866920, 42.437134, 12.742980>,  <41.245937, 42.626354, 13.093157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866920, 42.437134, 12.742980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.626469, 42.117580, 12.751376>,  <41.482197, 41.925850, 12.756413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.626469, 42.117580, 12.751376>,  <41.866920, 42.437134, 12.742980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626469, 42.117580, 12.751376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218980, -0.189919, -0.957068,
		0.768568, -0.570721, 0.289103,
		-0.601125, -0.798879, 0.020989,
		41.446133, 41.877918, 12.757673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262814, 41.874916, 12.496050>,  <41.866920, 42.437134, 12.742980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262814, 41.874916, 12.496050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.881149, 41.764771, 12.449148>,  <41.652149, 41.698685, 12.421007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.881149, 41.764771, 12.449148>,  <42.262814, 41.874916, 12.496050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881149, 41.764771, 12.449148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195304, -0.276006, -0.941104,
		0.226783, -0.920867, 0.317134,
		-0.954163, -0.275364, -0.117255,
		41.594902, 41.682163, 12.413972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230675, 41.171089, 12.348401>,  <42.262814, 41.874916, 12.496050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230675, 41.171089, 12.348401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.925682, 41.363785, 12.175638>,  <41.742687, 41.479401, 12.071980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.925682, 41.363785, 12.175638>,  <42.230675, 41.171089, 12.348401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925682, 41.363785, 12.175638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310000, -0.313921, -0.897415,
		-0.567904, -0.818157, 0.090021,
		-0.762486, 0.481739, -0.431906,
		41.696938, 41.508305, 12.046066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799259, 40.675583, 11.948215>,  <42.230675, 41.171089, 12.348401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799259, 40.675583, 11.948215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.782669, 41.046024, 11.798219>,  <41.772717, 41.268288, 11.708220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.782669, 41.046024, 11.798219>,  <41.799259, 40.675583, 11.948215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782669, 41.046024, 11.798219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291723, -0.347737, -0.891054,
		-0.955603, -0.146349, -0.255742,
		-0.041474, 0.926100, -0.374992,
		41.770226, 41.323853, 11.685721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783993, 39.944828, 11.614104>,  <41.799259, 40.675583, 11.948215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783993, 39.944828, 11.614104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.995052, 39.625343, 11.498419>,  <42.121689, 39.433651, 11.429008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.995052, 39.625343, 11.498419>,  <41.783993, 39.944828, 11.614104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995052, 39.625343, 11.498419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048347, -0.311678, 0.948957,
		-0.848086, -0.514698, -0.125841,
		0.527648, -0.798713, -0.289214,
		42.153347, 39.385731, 11.411654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397503, 39.440781, 11.829851>,  <41.783993, 39.944828, 11.614104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397503, 39.440781, 11.829851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.779835, 39.323971, 11.816547>,  <42.009235, 39.253883, 11.808565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.779835, 39.323971, 11.816547>,  <41.397503, 39.440781, 11.829851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779835, 39.323971, 11.816547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063675, -0.316224, 0.946545,
		-0.286927, -0.902622, -0.320852,
		0.955834, -0.292019, -0.033258,
		42.066586, 39.236362, 11.806569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354156, 38.828415, 12.196932>,  <41.397503, 39.440781, 11.829851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354156, 38.828415, 12.196932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.738026, 38.940441, 12.187160>,  <41.968346, 39.007656, 12.181296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.738026, 38.940441, 12.187160>,  <41.354156, 38.828415, 12.196932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738026, 38.940441, 12.187160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127691, -0.356822, 0.925404,
		0.250458, -0.891202, -0.378193,
		0.959670, 0.280067, -0.024430,
		42.025925, 39.024460, 12.179831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745552, 38.172440, 12.388914>,  <41.354156, 38.828415, 12.196932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745552, 38.172440, 12.388914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.974476, 38.497990, 12.429069>,  <42.111828, 38.693317, 12.453161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.974476, 38.497990, 12.429069>,  <41.745552, 38.172440, 12.388914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974476, 38.497990, 12.429069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229737, -0.276643, 0.933107,
		0.787202, -0.510960, -0.345301,
		0.572306, 0.813872, 0.100387,
		42.146168, 38.742153, 12.459185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299141, 37.943306, 12.673615>,  <41.745552, 38.172440, 12.388914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299141, 37.943306, 12.673615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.318512, 38.335514, 12.749754>,  <42.330135, 38.570839, 12.795438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.318512, 38.335514, 12.749754>,  <42.299141, 37.943306, 12.673615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318512, 38.335514, 12.749754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096380, -0.194271, 0.976202,
		0.994166, -0.028932, -0.103912,
		0.048430, 0.980521, 0.190349,
		42.333042, 38.629669, 12.806859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960907, 38.081631, 13.090302>,  <42.299141, 37.943306, 12.673615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960907, 38.081631, 13.090302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.709789, 38.381836, 13.172868>,  <42.559120, 38.561958, 13.222406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.709789, 38.381836, 13.172868>,  <42.960907, 38.081631, 13.090302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709789, 38.381836, 13.172868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035241, -0.237504, 0.970747,
		0.777584, 0.616700, 0.122654,
		-0.627791, 0.750515, 0.206412,
		42.521454, 38.606991, 13.234792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266926, 38.288063, 13.673963>,  <42.960907, 38.081631, 13.090302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266926, 38.288063, 13.673963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.889259, 38.417606, 13.698199>,  <42.662659, 38.495331, 13.712742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.889259, 38.417606, 13.698199>,  <43.266926, 38.288063, 13.673963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889259, 38.417606, 13.698199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012295, -0.218409, 0.975780,
		0.329248, 0.920551, 0.210195,
		-0.944164, 0.323858, 0.060593,
		42.606010, 38.514763, 13.716377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221325, 38.823841, 14.262955>,  <43.266926, 38.288063, 13.673963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221325, 38.823841, 14.262955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.843884, 38.707314, 14.200041>,  <42.617416, 38.637398, 14.162292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.843884, 38.707314, 14.200041>,  <43.221325, 38.823841, 14.262955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843884, 38.707314, 14.200041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158560, -0.019383, 0.987159,
		-0.290625, 0.956430, -0.027901,
		-0.943608, -0.291317, -0.157285,
		42.560802, 38.619919, 14.152855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715076, 39.322540, 14.691196>,  <43.221325, 38.823841, 14.262955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715076, 39.322540, 14.691196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.546627, 38.974125, 14.590042>,  <42.445557, 38.765076, 14.529349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.546627, 38.974125, 14.590042>,  <42.715076, 39.322540, 14.691196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546627, 38.974125, 14.590042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403246, -0.069942, 0.912415,
		-0.812434, 0.486213, -0.321788,
		-0.421122, -0.871037, -0.252887,
		42.420292, 38.712814, 14.514176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044819, 39.399330, 14.921513>,  <42.715076, 39.322540, 14.691196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044819, 39.399330, 14.921513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.086460, 39.001907, 14.903581>,  <42.111443, 38.763454, 14.892821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.086460, 39.001907, 14.903581>,  <42.044819, 39.399330, 14.921513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086460, 39.001907, 14.903581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433825, -0.085921, 0.896891,
		-0.894963, -0.073918, -0.439974,
		0.104100, -0.993556, -0.044829,
		42.117691, 38.703842, 14.890132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386314, 39.181477, 14.960501>,  <42.044819, 39.399330, 14.921513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386314, 39.181477, 14.960501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.588039, 38.841522, 15.021646>,  <41.709076, 38.637550, 15.058332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.588039, 38.841522, 15.021646>,  <41.386314, 39.181477, 14.960501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588039, 38.841522, 15.021646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661829, -0.266712, 0.700605,
		-0.554662, -0.454493, -0.696983,
		0.504314, -0.849883, 0.152862,
		41.739334, 38.586555, 15.067504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945999, 38.641045, 15.034517>,  <41.386314, 39.181477, 14.960501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945999, 38.641045, 15.034517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.265385, 38.485313, 15.218199>,  <41.457016, 38.391872, 15.328408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.265385, 38.485313, 15.218199>,  <40.945999, 38.641045, 15.034517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265385, 38.485313, 15.218199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580820, -0.297457, 0.757739,
		-0.158415, -0.871747, -0.463640,
		0.798469, -0.389328, 0.459206,
		41.504925, 38.368515, 15.355960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811153, 37.948509, 15.130668>,  <40.945999, 38.641045, 15.034517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811153, 37.948509, 15.130668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.083103, 38.011307, 15.417197>,  <41.246273, 38.048985, 15.589115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.083103, 38.011307, 15.417197>,  <40.811153, 37.948509, 15.130668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083103, 38.011307, 15.417197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692792, -0.182752, 0.697596,
		0.240428, -0.970544, -0.015485,
		0.679878, 0.156994, 0.716324,
		41.287067, 38.058403, 15.632094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828667, 37.332905, 15.691751>,  <40.811153, 37.948509, 15.130668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828667, 37.332905, 15.691751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.027485, 37.629185, 15.872557>,  <41.146774, 37.806953, 15.981040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.027485, 37.629185, 15.872557>,  <40.828667, 37.332905, 15.691751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027485, 37.629185, 15.872557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451034, -0.224482, 0.863815,
		0.741293, -0.633228, 0.222501,
		0.497044, 0.740696, 0.452014,
		41.176598, 37.851395, 16.008162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263428, 36.758812, 15.790405>,  <40.828667, 37.332905, 15.691751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263428, 36.758812, 15.790405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.420128, 36.395737, 15.730225>,  <41.514149, 36.177891, 15.694116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.420128, 36.395737, 15.730225>,  <41.263428, 36.758812, 15.790405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420128, 36.395737, 15.730225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254444, 0.264027, -0.930348,
		0.884187, 0.326187, 0.334389,
		0.391755, -0.907685, -0.150453,
		41.537655, 36.123432, 15.685089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975136, 36.867096, 15.534519>,  <41.263428, 36.758812, 15.790405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975136, 36.867096, 15.534519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.820965, 36.513542, 15.428539>,  <41.728462, 36.301411, 15.364951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.820965, 36.513542, 15.428539>,  <41.975136, 36.867096, 15.534519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820965, 36.513542, 15.428539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014976, 0.281106, -0.959560,
		0.922617, -0.373809, -0.095109,
		-0.385427, -0.883882, -0.264951,
		41.705338, 36.248379, 15.349054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309586, 36.729973, 14.877197>,  <41.975136, 36.867096, 15.534519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309586, 36.729973, 14.877197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.002369, 36.473957, 14.885807>,  <41.818039, 36.320347, 14.890973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.002369, 36.473957, 14.885807>,  <42.309586, 36.729973, 14.877197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002369, 36.473957, 14.885807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049409, 0.025712, -0.998448,
		0.638489, -0.767914, -0.051372,
		-0.768043, -0.640037, 0.021525,
		41.771957, 36.281944, 14.892264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511654, 36.152546, 14.548427>,  <42.309586, 36.729973, 14.877197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.511654, 36.152546, 14.548427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.112576, 36.172012, 14.529535>,  <41.873127, 36.183693, 14.518201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.112576, 36.172012, 14.529535>,  <42.511654, 36.152546, 14.548427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112576, 36.172012, 14.529535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040445, -0.132010, -0.990423,
		-0.054431, -0.990053, 0.129738,
		-0.997698, 0.048663, -0.047228,
		41.813267, 36.186611, 14.515367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291416, 35.548794, 14.078766>,  <42.511654, 36.152546, 14.548427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291416, 35.548794, 14.078766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.984356, 35.805088, 14.083956>,  <41.800117, 35.958862, 14.087070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.984356, 35.805088, 14.083956>,  <42.291416, 35.548794, 14.078766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984356, 35.805088, 14.083956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023538, -0.007959, -0.999691,
		-0.640431, -0.767723, 0.021191,
		-0.767655, 0.640732, 0.012974,
		41.754059, 35.997307, 14.087848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835819, 35.257687, 13.688083>,  <42.291416, 35.548794, 14.078766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835819, 35.257687, 13.688083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.730457, 35.643539, 13.692155>,  <41.667240, 35.875050, 13.694598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.730457, 35.643539, 13.692155>,  <41.835819, 35.257687, 13.688083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730457, 35.643539, 13.692155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223266, -0.050690, -0.973439,
		-0.938495, -0.258678, 0.228722,
		-0.263401, 0.964633, 0.010182,
		41.651436, 35.932930, 13.695210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265362, 35.311180, 13.191492>,  <41.835819, 35.257687, 13.688083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265362, 35.311180, 13.191492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.412865, 35.678085, 13.251700>,  <41.501366, 35.898228, 13.287826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.412865, 35.678085, 13.251700>,  <41.265362, 35.311180, 13.191492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412865, 35.678085, 13.251700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154235, 0.220066, -0.963215,
		-0.916641, 0.331975, 0.222624,
		0.368755, 0.917259, 0.150520,
		41.523491, 35.953262, 13.296856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581333, 35.514610, 13.451906>,  <41.265362, 35.311180, 13.191492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581333, 35.514610, 13.451906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.231171, 35.323669, 13.421464>,  <40.021072, 35.209103, 13.403199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.231171, 35.323669, 13.421464>,  <40.581333, 35.514610, 13.451906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231171, 35.323669, 13.421464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100629, -0.333957, 0.937201,
		-0.472795, 0.812775, 0.340384,
		-0.875408, -0.477357, -0.076105,
		39.968548, 35.180462, 13.398633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147373, 35.639366, 14.010471>,  <40.581333, 35.514610, 13.451906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147373, 35.639366, 14.010471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.968761, 35.312878, 13.863829>,  <39.861595, 35.116985, 13.775844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.968761, 35.312878, 13.863829>,  <40.147373, 35.639366, 14.010471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968761, 35.312878, 13.863829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184965, -0.316669, 0.930327,
		-0.875443, 0.483227, -0.009570,
		-0.446529, -0.816218, -0.366606,
		39.834805, 35.068012, 13.753847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544582, 35.537544, 14.529060>,  <40.147373, 35.639366, 14.010471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544582, 35.537544, 14.529060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.607132, 35.186543, 14.347716>,  <39.644661, 34.975941, 14.238910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.607132, 35.186543, 14.347716>,  <39.544582, 35.537544, 14.529060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607132, 35.186543, 14.347716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069675, -0.448063, 0.891283,
		-0.985238, -0.170957, -0.008923,
		0.156369, -0.877504, -0.453361,
		39.654041, 34.923290, 14.211708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084030, 35.109688, 14.865191>,  <39.544582, 35.537544, 14.529060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084030, 35.109688, 14.865191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.343121, 34.862720, 14.686643>,  <39.498573, 34.714539, 14.579514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.343121, 34.862720, 14.686643>,  <39.084030, 35.109688, 14.865191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343121, 34.862720, 14.686643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118442, -0.497157, 0.859538,
		-0.752612, -0.609613, -0.248893,
		0.647724, -0.617419, -0.446370,
		39.537437, 34.677494, 14.552732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908943, 34.513054, 15.063471>,  <39.084030, 35.109688, 14.865191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908943, 34.513054, 15.063471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.291275, 34.462185, 14.957471>,  <39.520672, 34.431664, 14.893871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.291275, 34.462185, 14.957471>,  <38.908943, 34.513054, 15.063471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291275, 34.462185, 14.957471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175146, -0.477615, 0.860934,
		-0.236051, -0.869317, -0.434244,
		0.955826, -0.127168, -0.264999,
		39.578022, 34.424034, 14.877971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960361, 33.785652, 15.156830>,  <38.908943, 34.513054, 15.063471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960361, 33.785652, 15.156830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.319836, 33.960144, 15.174994>,  <39.535522, 34.064838, 15.185892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.319836, 33.960144, 15.174994>,  <38.960361, 33.785652, 15.156830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319836, 33.960144, 15.174994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223216, -0.544044, 0.808820,
		0.377539, -0.716740, -0.586300,
		0.898687, 0.436233, 0.045410,
		39.589443, 34.091015, 15.188617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359180, 33.152687, 15.241766>,  <38.960361, 33.785652, 15.156830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359180, 33.152687, 15.241766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.560368, 33.481602, 15.348254>,  <39.681080, 33.678951, 15.412148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.560368, 33.481602, 15.348254>,  <39.359180, 33.152687, 15.241766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560368, 33.481602, 15.348254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329750, -0.467281, 0.820313,
		0.798930, -0.324804, -0.506175,
		0.502967, 0.822284, 0.266221,
		39.711258, 33.728287, 15.428121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.282574, 38.973190, 11.447281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.400776, 39.332436, 11.577555>,  <39.471695, 39.547981, 11.655719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.400776, 39.332436, 11.577555>,  <39.282574, 38.973190, 11.447281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400776, 39.332436, 11.577555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276460, -0.245933, 0.929025,
		0.914466, -0.364567, 0.175619,
		0.295501, 0.898114, 0.325686,
		39.489426, 39.601871, 11.675261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437321, 38.830536, 12.028430>,  <39.282574, 38.973190, 11.447281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437321, 38.830536, 12.028430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.471497, 39.226223, 12.076004>,  <39.492001, 39.463634, 12.104548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.471497, 39.226223, 12.076004>,  <39.437321, 38.830536, 12.028430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471497, 39.226223, 12.076004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166180, -0.103551, 0.980643,
		0.982387, -0.103548, 0.155541,
		0.085438, 0.989219, 0.118935,
		39.497128, 39.522987, 12.111685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776608, 38.953907, 12.642353>,  <39.437321, 38.830536, 12.028430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776608, 38.953907, 12.642353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.575726, 39.294823, 12.583856>,  <39.455196, 39.499374, 12.548758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.575726, 39.294823, 12.583856>,  <39.776608, 38.953907, 12.642353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575726, 39.294823, 12.583856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454918, -0.116566, 0.882871,
		0.735419, 0.509910, 0.446264,
		-0.502204, 0.852294, -0.146242,
		39.425064, 39.550510, 12.539983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941998, 39.337025, 13.141489>,  <39.776608, 38.953907, 12.642353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941998, 39.337025, 13.141489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.576122, 39.455814, 13.031839>,  <39.356598, 39.527088, 12.966050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.576122, 39.455814, 13.031839>,  <39.941998, 39.337025, 13.141489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576122, 39.455814, 13.031839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309918, -0.080070, 0.947386,
		0.259401, 0.951522, 0.165277,
		-0.914692, 0.296975, -0.274124,
		39.301716, 39.544907, 12.949602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684582, 39.670979, 13.677475>,  <39.941998, 39.337025, 13.141489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684582, 39.670979, 13.677475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.346603, 39.584305, 13.481878>,  <39.143818, 39.532299, 13.364520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.346603, 39.584305, 13.481878>,  <39.684582, 39.670979, 13.677475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346603, 39.584305, 13.481878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480579, -0.093706, 0.871931,
		-0.234759, 0.971733, -0.024959,
		-0.844945, -0.216689, -0.488993,
		39.093121, 39.519299, 13.335180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241528, 40.011890, 14.091363>,  <39.684582, 39.670979, 13.677475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241528, 40.011890, 14.091363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.027721, 39.749115, 13.878675>,  <38.899437, 39.591450, 13.751061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.027721, 39.749115, 13.878675>,  <39.241528, 40.011890, 14.091363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027721, 39.749115, 13.878675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584809, -0.166715, 0.793854,
		-0.610159, 0.735281, -0.295072,
		-0.534512, -0.656939, -0.531722,
		38.867367, 39.552032, 13.719158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648941, 40.155285, 14.332539>,  <39.241528, 40.011890, 14.091363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648941, 40.155285, 14.332539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.592545, 39.799252, 14.159158>,  <38.558708, 39.585632, 14.055129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.592545, 39.799252, 14.159158>,  <38.648941, 40.155285, 14.332539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592545, 39.799252, 14.159158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561735, -0.288601, 0.775347,
		-0.815215, 0.352799, -0.459300,
		-0.140987, -0.890080, -0.433452,
		38.550247, 39.532227, 14.029122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933334, 39.951172, 14.242386>,  <38.648941, 40.155285, 14.332539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933334, 39.951172, 14.242386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.129753, 39.603943, 14.271559>,  <38.247604, 39.395607, 14.289062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.129753, 39.603943, 14.271559>,  <37.933334, 39.951172, 14.242386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129753, 39.603943, 14.271559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551931, -0.245253, 0.797009,
		-0.673975, -0.431624, -0.599548,
		0.491049, -0.868073, 0.072932,
		38.277069, 39.343521, 14.293439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404739, 39.574661, 14.438414>,  <37.933334, 39.951172, 14.242386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404739, 39.574661, 14.438414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.727371, 39.348602, 14.507730>,  <37.920952, 39.212967, 14.549319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.727371, 39.348602, 14.507730>,  <37.404739, 39.574661, 14.438414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727371, 39.348602, 14.507730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351773, -0.223310, 0.909059,
		-0.475058, -0.794190, -0.378923,
		0.806583, -0.565151, 0.173290,
		37.969345, 39.179058, 14.559716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143921, 38.924271, 14.721903>,  <37.404739, 39.574661, 14.438414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143921, 38.924271, 14.721903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527683, 38.926571, 14.834688>,  <37.757942, 38.927952, 14.902360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527683, 38.926571, 14.834688>,  <37.143921, 38.924271, 14.721903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527683, 38.926571, 14.834688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260947, -0.361118, 0.895265,
		0.106975, -0.932502, -0.344958,
		0.959407, 0.005755, 0.281964,
		37.815506, 38.928299, 14.919277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312229, 38.302128, 15.045069>,  <37.143921, 38.924271, 14.721903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312229, 38.302128, 15.045069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.605122, 38.539097, 15.179455>,  <37.780857, 38.681278, 15.260086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.605122, 38.539097, 15.179455>,  <37.312229, 38.302128, 15.045069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605122, 38.539097, 15.179455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209046, -0.273985, 0.938740,
		0.648176, -0.757610, -0.076778,
		0.732234, 0.592418, 0.335965,
		37.824791, 38.716824, 15.280245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628269, 37.915737, 15.542299>,  <37.312229, 38.302128, 15.045069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628269, 37.915737, 15.542299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.705692, 38.303406, 15.603278>,  <37.752148, 38.536007, 15.639865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.705692, 38.303406, 15.603278>,  <37.628269, 37.915737, 15.542299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705692, 38.303406, 15.603278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219232, -0.108728, 0.969595,
		0.956280, -0.221097, 0.191428,
		0.193561, 0.969172, 0.152446,
		37.763760, 38.594158, 15.649012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969673, 37.299831, 15.729631>,  <37.628269, 37.915737, 15.542299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969673, 37.299831, 15.729631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.671722, 37.060680, 15.611176>,  <37.492950, 36.917191, 15.540104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.671722, 37.060680, 15.611176>,  <37.969673, 37.299831, 15.729631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671722, 37.060680, 15.611176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198844, 0.224752, -0.953912,
		0.636880, -0.769434, -0.048528,
		-0.744879, -0.597878, -0.296137,
		37.448257, 36.881317, 15.522335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249390, 36.943226, 15.195336>,  <37.969673, 37.299831, 15.729631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249390, 36.943226, 15.195336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.856304, 36.878559, 15.159245>,  <37.620453, 36.839760, 15.137591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.856304, 36.878559, 15.159245>,  <38.249390, 36.943226, 15.195336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856304, 36.878559, 15.159245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077199, 0.085141, -0.993374,
		0.168279, -0.983166, -0.071188,
		-0.982712, -0.161669, -0.090227,
		37.561489, 36.830059, 15.132177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211258, 36.499847, 14.643640>,  <38.249390, 36.943226, 15.195336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211258, 36.499847, 14.643640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.849995, 36.668247, 14.677275>,  <37.633236, 36.769287, 14.697456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.849995, 36.668247, 14.677275>,  <38.211258, 36.499847, 14.643640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849995, 36.668247, 14.677275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082207, 0.022652, -0.996358,
		-0.421375, -0.906776, 0.014151,
		-0.903153, 0.421003, 0.084088,
		37.579048, 36.794548, 14.702501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867142, 36.056091, 14.135098>,  <38.211258, 36.499847, 14.643640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867142, 36.056091, 14.135098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.630180, 36.372612, 14.195640>,  <37.488003, 36.562523, 14.231964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.630180, 36.372612, 14.195640>,  <37.867142, 36.056091, 14.135098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630180, 36.372612, 14.195640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209223, 0.030313, -0.977398,
		-0.778002, -0.610677, 0.147601,
		-0.592401, 0.791299, 0.151352,
		37.452461, 36.610001, 14.241045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159214, 35.935848, 13.745273>,  <37.867142, 36.056091, 14.135098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159214, 35.935848, 13.745273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.230080, 36.327892, 13.781031>,  <37.272598, 36.563118, 13.802485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.230080, 36.327892, 13.781031>,  <37.159214, 35.935848, 13.745273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230080, 36.327892, 13.781031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018254, 0.087544, -0.995993,
		-0.984013, 0.178083, -0.002382,
		0.177161, 0.980114, 0.089395,
		37.283226, 36.621925, 13.807849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899426, 36.231808, 13.192793>,  <37.159214, 35.935848, 13.745273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899426, 36.231808, 13.192793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.118858, 36.539433, 13.324001>,  <37.250519, 36.724007, 13.402726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.118858, 36.539433, 13.324001>,  <36.899426, 36.231808, 13.192793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118858, 36.539433, 13.324001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214026, 0.250085, -0.944272,
		-0.808237, 0.588219, -0.027406,
		0.548585, 0.769062, 0.328022,
		37.283432, 36.770149, 13.422408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671535, 36.697380, 12.798684>,  <36.899426, 36.231808, 13.192793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671535, 36.697380, 12.798684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.024483, 36.837017, 12.924899>,  <37.236252, 36.920799, 13.000628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.024483, 36.837017, 12.924899>,  <36.671535, 36.697380, 12.798684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024483, 36.837017, 12.924899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156770, 0.414168, -0.896598,
		-0.443680, 0.840595, 0.310721,
		0.882367, 0.349091, 0.315538,
		37.289192, 36.941746, 13.019561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681732, 37.416424, 12.576666>,  <36.671535, 36.697380, 12.798684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681732, 37.416424, 12.576666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.053371, 37.272514, 12.610929>,  <37.276356, 37.186169, 12.631488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.053371, 37.272514, 12.610929>,  <36.681732, 37.416424, 12.576666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053371, 37.272514, 12.610929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193136, 0.274484, -0.941996,
		0.315391, 0.891753, 0.324508,
		0.929100, -0.359771, 0.085660,
		37.332100, 37.164581, 12.636627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081570, 37.915066, 12.340005>,  <36.681732, 37.416424, 12.576666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081570, 37.915066, 12.340005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.336693, 37.607552, 12.321404>,  <37.489765, 37.423042, 12.310243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.336693, 37.607552, 12.321404>,  <37.081570, 37.915066, 12.340005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336693, 37.607552, 12.321404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373400, 0.361461, -0.854353,
		0.673627, 0.527549, 0.517609,
		0.637808, -0.768790, -0.046503,
		37.528034, 37.376915, 12.307452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650066, 38.161369, 11.892103>,  <37.081570, 37.915066, 12.340005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650066, 38.161369, 11.892103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.746887, 37.773270, 11.893848>,  <37.804981, 37.540409, 11.894896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.746887, 37.773270, 11.893848>,  <37.650066, 38.161369, 11.892103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746887, 37.773270, 11.893848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311600, 0.073477, -0.947368,
		0.918866, 0.230676, 0.320116,
		0.242056, -0.970253, 0.004364,
		37.819504, 37.482193, 11.895158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325836, 38.126999, 11.602067>,  <37.650066, 38.161369, 11.892103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325836, 38.126999, 11.602067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.163021, 37.762966, 11.570889>,  <38.065331, 37.544548, 11.552183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.163021, 37.762966, 11.570889>,  <38.325836, 38.126999, 11.602067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163021, 37.762966, 11.570889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249186, -0.028542, -0.968035,
		0.878765, -0.413447, 0.238397,
		-0.407036, -0.910080, -0.077943,
		38.040909, 37.489941, 11.547506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872124, 37.689316, 11.411485>,  <38.325836, 38.126999, 11.602067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872124, 37.689316, 11.411485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.530590, 37.524910, 11.283709>,  <38.325672, 37.426266, 11.207043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.530590, 37.524910, 11.283709>,  <38.872124, 37.689316, 11.411485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530590, 37.524910, 11.283709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308167, 0.095469, -0.946530,
		0.419534, -0.906616, 0.045146,
		-0.853830, -0.411014, -0.319442,
		38.274441, 37.401608, 11.187876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092545, 37.085793, 10.896979>,  <38.872124, 37.689316, 11.411485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092545, 37.085793, 10.896979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.714550, 37.204029, 10.840932>,  <38.487755, 37.274971, 10.807303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.714550, 37.204029, 10.840932>,  <39.092545, 37.085793, 10.896979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714550, 37.204029, 10.840932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162380, 0.052030, -0.985355,
		-0.283969, -0.953897, -0.097166,
		-0.944984, 0.295588, -0.140119,
		38.431053, 37.292706, 10.798896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859795, 36.655579, 10.292454>,  <39.092545, 37.085793, 10.896979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859795, 36.655579, 10.292454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.587528, 36.946495, 10.327646>,  <38.424168, 37.121044, 10.348762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.587528, 36.946495, 10.327646>,  <38.859795, 36.655579, 10.292454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587528, 36.946495, 10.327646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094098, 0.032306, -0.995039,
		-0.726526, -0.685567, 0.046448,
		-0.680665, 0.727293, 0.087981,
		38.383327, 37.164684, 10.354041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603241, 36.567852, 10.940362>,  <38.859795, 36.655579, 10.292454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603241, 36.567852, 10.940362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.883442, 36.315285, 10.807334>,  <39.051563, 36.163746, 10.727517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.883442, 36.315285, 10.807334>,  <38.603241, 36.567852, 10.940362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883442, 36.315285, 10.807334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159646, -0.315555, 0.935381,
		-0.695562, -0.708333, -0.120245,
		0.700505, -0.631419, -0.332570,
		39.093594, 36.125858, 10.707562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532043, 35.941959, 11.342197>,  <38.603241, 36.567852, 10.940362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532043, 35.941959, 11.342197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.908657, 35.906166, 11.212274>,  <39.134624, 35.884689, 11.134319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.908657, 35.906166, 11.212274>,  <38.532043, 35.941959, 11.342197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908657, 35.906166, 11.212274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245523, -0.477947, 0.843377,
		-0.230709, -0.873819, -0.428035,
		0.941537, -0.089482, -0.324810,
		39.191116, 35.879322, 11.114831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695694, 35.290817, 11.407451>,  <38.532043, 35.941959, 11.342197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695694, 35.290817, 11.407451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.030834, 35.509129, 11.411866>,  <39.231918, 35.640118, 11.414515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.030834, 35.509129, 11.411866>,  <38.695694, 35.290817, 11.407451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030834, 35.509129, 11.411866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299682, -0.476769, 0.826366,
		0.456280, -0.689066, -0.563025,
		0.837854, 0.545783, 0.011039,
		39.282192, 35.672863, 11.415178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272682, 34.832508, 11.272662>,  <38.695694, 35.290817, 11.407451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272682, 34.832508, 11.272662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.319683, 35.158047, 11.500295>,  <39.347885, 35.353371, 11.636874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.319683, 35.158047, 11.500295>,  <39.272682, 34.832508, 11.272662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319683, 35.158047, 11.500295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131993, -0.580767, 0.803298,
		0.984262, -0.019274, -0.175662,
		0.117501, 0.813842, 0.569082,
		39.354935, 35.402199, 11.671020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549831, 34.535576, 11.874063>,  <39.272682, 34.832508, 11.272662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549831, 34.535576, 11.874063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.546227, 34.919060, 11.987761>,  <39.544064, 35.149151, 12.055981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.546227, 34.919060, 11.987761>,  <39.549831, 34.535576, 11.874063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546227, 34.919060, 11.987761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366121, -0.261354, 0.893112,
		0.930524, 0.112119, -0.348647,
		-0.009015, 0.958709, 0.284245,
		39.543522, 35.206673, 12.073035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264553, 34.776878, 12.115485>,  <39.549831, 34.535576, 11.874063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264553, 34.776878, 12.115485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.958935, 34.976109, 12.279515>,  <39.775566, 35.095646, 12.377934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.958935, 34.976109, 12.279515>,  <40.264553, 34.776878, 12.115485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958935, 34.976109, 12.279515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226173, -0.388493, 0.893263,
		0.604223, 0.775239, 0.184174,
		-0.764042, 0.498075, 0.410074,
		39.729721, 35.125530, 12.402537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612656, 35.072414, 12.731296>,  <40.264553, 34.776878, 12.115485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612656, 35.072414, 12.731296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.223755, 35.121197, 12.811139>,  <39.990414, 35.150467, 12.859045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.223755, 35.121197, 12.811139>,  <40.612656, 35.072414, 12.731296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223755, 35.121197, 12.811139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151953, -0.319475, 0.935332,
		0.177842, 0.939714, 0.292080,
		-0.972256, 0.121959, 0.199608,
		39.932079, 35.157784, 12.871021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910683, 35.716557, 12.646977>,  <40.612656, 35.072414, 12.731296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910683, 35.716557, 12.646977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.226547, 35.932484, 12.763616>,  <41.416065, 36.062042, 12.833598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.226547, 35.932484, 12.763616>,  <40.910683, 35.716557, 12.646977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226547, 35.932484, 12.763616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090433, 0.367667, -0.925550,
		-0.606841, 0.757241, 0.241515,
		0.789662, 0.539820, 0.291596,
		41.463448, 36.094429, 12.851094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819908, 36.294476, 12.299968>,  <40.910683, 35.716557, 12.646977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819908, 36.294476, 12.299968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.201767, 36.287376, 12.418854>,  <41.430882, 36.283119, 12.490185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.201767, 36.287376, 12.418854>,  <40.819908, 36.294476, 12.299968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201767, 36.287376, 12.418854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292876, 0.235713, -0.926641,
		-0.053614, 0.971661, 0.230219,
		0.954646, -0.017745, 0.297214,
		41.488159, 36.282051, 12.508018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130451, 36.993069, 12.091060>,  <40.819908, 36.294476, 12.299968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130451, 36.993069, 12.091060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.426445, 36.724586, 12.108521>,  <41.604042, 36.563496, 12.118999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.426445, 36.724586, 12.108521>,  <41.130451, 36.993069, 12.091060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426445, 36.724586, 12.108521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340921, 0.318323, -0.884559,
		0.579827, 0.669440, 0.464382,
		0.739982, -0.671209, 0.043654,
		41.648441, 36.523224, 12.121617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726257, 37.320972, 11.811914>,  <41.130451, 36.993069, 12.091060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726257, 37.320972, 11.811914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.828850, 36.934750, 11.794394>,  <41.890404, 36.703014, 11.783882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.828850, 36.934750, 11.794394>,  <41.726257, 37.320972, 11.811914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828850, 36.934750, 11.794394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432390, 0.155148, -0.888238,
		0.864440, 0.208877, 0.457290,
		0.256480, -0.965557, -0.043800,
		41.905792, 36.645084, 11.781255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452312, 37.260750, 11.424430>,  <41.726257, 37.320972, 11.811914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452312, 37.260750, 11.424430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.291317, 36.895588, 11.397279>,  <42.194721, 36.676491, 11.380988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.291317, 36.895588, 11.397279>,  <42.452312, 37.260750, 11.424430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291317, 36.895588, 11.397279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527111, -0.170496, -0.832517,
		0.748437, -0.370857, 0.549825,
		-0.402488, -0.912905, -0.067878,
		42.170570, 36.621716, 11.376916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031250, 36.780071, 11.251678>,  <42.452312, 37.260750, 11.424430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031250, 36.780071, 11.251678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.686378, 36.627304, 11.118540>,  <42.479454, 36.535645, 11.038657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.686378, 36.627304, 11.118540>,  <43.031250, 36.780071, 11.251678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686378, 36.627304, 11.118540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377665, -0.046639, -0.924767,
		0.337659, -0.923020, 0.184447,
		-0.862181, -0.381915, -0.332844,
		42.427723, 36.512730, 11.018686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265789, 36.420300, 10.773909>,  <43.031250, 36.780071, 11.251678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265789, 36.420300, 10.773909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.875061, 36.399006, 10.690970>,  <42.640625, 36.386230, 10.641208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.875061, 36.399006, 10.690970>,  <43.265789, 36.420300, 10.773909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875061, 36.399006, 10.690970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213796, -0.193592, -0.957504,
		0.010835, -0.979637, 0.200487,
		-0.976819, -0.053238, -0.207345,
		42.582016, 36.383034, 10.628767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325264, 35.811481, 10.286249>,  <43.265789, 36.420300, 10.773909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325264, 35.811481, 10.286249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.994339, 36.036118, 10.281190>,  <42.795784, 36.170898, 10.278154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.994339, 36.036118, 10.281190>,  <43.325264, 35.811481, 10.286249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994339, 36.036118, 10.281190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024014, -0.057855, -0.998036,
		-0.561222, -0.825388, 0.061350,
		-0.827317, 0.561593, -0.012648,
		42.746143, 36.204594, 10.277395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836033, 35.576221, 9.745622>,  <43.325264, 35.811481, 10.286249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836033, 35.576221, 9.745622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.768360, 35.962841, 9.822733>,  <42.727757, 36.194813, 9.868999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.768360, 35.962841, 9.822733>,  <42.836033, 35.576221, 9.745622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768360, 35.962841, 9.822733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178806, 0.162252, -0.970414,
		-0.969230, -0.198642, 0.145375,
		-0.169178, 0.966548, 0.192778,
		42.717606, 36.252804, 9.880567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.780598, 33.997524, 26.301521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.610386, 34.343678, 26.195658>,  <40.508259, 34.551369, 26.132139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.610386, 34.343678, 26.195658>,  <40.780598, 33.997524, 26.301521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610386, 34.343678, 26.195658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176503, -0.366207, -0.913640,
		-0.887566, -0.342065, 0.308574,
		-0.425526, 0.865380, -0.264657,
		40.482727, 34.603291, 26.116261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332008, 33.739876, 25.773945>,  <40.780598, 33.997524, 26.301521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332008, 33.739876, 25.773945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.346104, 34.137474, 25.732517>,  <40.354561, 34.376034, 25.707661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.346104, 34.137474, 25.732517>,  <40.332008, 33.739876, 25.773945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346104, 34.137474, 25.732517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339176, -0.085588, -0.936821,
		-0.940063, 0.068143, 0.334124,
		0.035241, 0.993998, -0.103571,
		40.356674, 34.435673, 25.701447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727551, 33.911285, 25.436836>,  <40.332008, 33.739876, 25.773945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727551, 33.911285, 25.436836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.966618, 34.224106, 25.366198>,  <40.110058, 34.411797, 25.323814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.966618, 34.224106, 25.366198>,  <39.727551, 33.911285, 25.436836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966618, 34.224106, 25.366198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215498, -0.055458, -0.974928,
		-0.772236, 0.620743, 0.135385,
		0.597672, 0.782050, -0.176595,
		40.145920, 34.458721, 25.313219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409111, 34.297783, 24.948658>,  <39.727551, 33.911285, 25.436836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409111, 34.297783, 24.948658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.790470, 34.409470, 24.902945>,  <40.019287, 34.476482, 24.875517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.790470, 34.409470, 24.902945>,  <39.409111, 34.297783, 24.948658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790470, 34.409470, 24.902945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106628, -0.042509, -0.993390,
		-0.282233, 0.959285, -0.010756,
		0.953402, 0.279221, -0.114284,
		40.076492, 34.493237, 24.868660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429314, 34.926853, 24.491287>,  <39.409111, 34.297783, 24.948658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429314, 34.926853, 24.491287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.787159, 34.749809, 24.466763>,  <40.001865, 34.643581, 24.452047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.787159, 34.749809, 24.466763>,  <39.429314, 34.926853, 24.491287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787159, 34.749809, 24.466763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035165, 0.067045, -0.997130,
		0.445450, 0.894204, 0.044415,
		0.894616, -0.442610, -0.061310,
		40.055542, 34.617027, 24.448370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763527, 35.380753, 23.959879>,  <39.429314, 34.926853, 24.491287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763527, 35.380753, 23.959879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.000042, 35.058437, 23.972988>,  <40.141953, 34.865047, 23.980854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.000042, 35.058437, 23.972988>,  <39.763527, 35.380753, 23.959879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000042, 35.058437, 23.972988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094547, 0.028905, -0.995100,
		0.800896, 0.591493, 0.093277,
		0.591292, -0.805792, 0.032774,
		40.177429, 34.816700, 23.982821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408878, 35.583141, 23.831408>,  <39.763527, 35.380753, 23.959879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408878, 35.583141, 23.831408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.363853, 35.205147, 23.708555>,  <40.336838, 34.978352, 23.634844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.363853, 35.205147, 23.708555>,  <40.408878, 35.583141, 23.831408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363853, 35.205147, 23.708555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085995, 0.298672, -0.950474,
		0.989916, -0.133402, 0.047644,
		-0.112565, -0.944986, -0.307132,
		40.330086, 34.921650, 23.616415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902859, 35.519196, 23.295853>,  <40.408878, 35.583141, 23.831408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902859, 35.519196, 23.295853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.672882, 35.198223, 23.231932>,  <40.534897, 35.005638, 23.193579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.672882, 35.198223, 23.231932>,  <40.902859, 35.519196, 23.295853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672882, 35.198223, 23.231932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187098, 0.061198, -0.980433,
		0.796514, -0.593593, 0.114948,
		-0.574944, -0.802435, -0.159805,
		40.500401, 34.957493, 23.183990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326794, 35.070385, 22.871014>,  <40.902859, 35.519196, 23.295853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326794, 35.070385, 22.871014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.946308, 34.955490, 22.825947>,  <40.718018, 34.886555, 22.798906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.946308, 34.955490, 22.825947>,  <41.326794, 35.070385, 22.871014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946308, 34.955490, 22.825947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104966, 0.042122, -0.993583,
		0.290138, -0.956933, -0.009917,
		-0.951211, -0.287236, -0.112667,
		40.660946, 34.869320, 22.792147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352818, 34.599304, 22.383591>,  <41.326794, 35.070385, 22.871014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352818, 34.599304, 22.383591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.954815, 34.629646, 22.357651>,  <40.716015, 34.647854, 22.342087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.954815, 34.629646, 22.357651>,  <41.352818, 34.599304, 22.383591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954815, 34.629646, 22.357651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060774, -0.054880, -0.996642,
		-0.079175, -0.995606, 0.049995,
		-0.995006, 0.075871, -0.064852,
		40.656311, 34.652405, 22.338196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067978, 34.013435, 21.951023>,  <41.352818, 34.599304, 22.383591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067978, 34.013435, 21.951023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.802471, 34.312050, 21.932709>,  <40.643166, 34.491219, 21.921721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.802471, 34.312050, 21.932709>,  <41.067978, 34.013435, 21.951023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802471, 34.312050, 21.932709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141270, 0.065024, -0.987833,
		-0.734477, -0.662160, -0.148624,
		-0.663767, 0.746536, -0.045785,
		40.603340, 34.536011, 21.918974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672302, 33.785305, 21.337181>,  <41.067978, 34.013435, 21.951023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672302, 33.785305, 21.337181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.602562, 34.169750, 21.422842>,  <40.560719, 34.400417, 21.474237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.602562, 34.169750, 21.422842>,  <40.672302, 33.785305, 21.337181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602562, 34.169750, 21.422842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001322, 0.217254, -0.976114,
		-0.984683, -0.170466, -0.036607,
		-0.174347, 0.961115, 0.214151,
		40.550259, 34.458084, 21.487087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920090, 33.697933, 21.470423>,  <40.672302, 33.785305, 21.337181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920090, 33.697933, 21.470423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.635139, 33.444462, 21.349773>,  <39.464169, 33.292381, 21.277384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.635139, 33.444462, 21.349773>,  <39.920090, 33.697933, 21.470423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635139, 33.444462, 21.349773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461259, 0.098846, 0.881742,
		-0.528924, 0.767259, -0.362704,
		-0.712376, -0.633675, -0.301623,
		39.421425, 33.254360, 21.259287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257793, 34.049328, 21.490185>,  <39.920090, 33.697933, 21.470423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257793, 34.049328, 21.490185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.197624, 33.655380, 21.524593>,  <39.161522, 33.419010, 21.545238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.197624, 33.655380, 21.524593>,  <39.257793, 34.049328, 21.490185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197624, 33.655380, 21.524593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655271, 0.164478, 0.737270,
		-0.740265, 0.054534, -0.670100,
		-0.150423, -0.984872, 0.086023,
		39.152496, 33.359921, 21.550400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544048, 34.019474, 21.521729>,  <39.257793, 34.049328, 21.490185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544048, 34.019474, 21.521729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.681759, 33.667587, 21.652925>,  <38.764385, 33.456455, 21.731644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.681759, 33.667587, 21.652925>,  <38.544048, 34.019474, 21.521729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681759, 33.667587, 21.652925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648885, 0.029535, 0.760313,
		-0.678546, -0.474583, -0.560666,
		0.344272, -0.879715, 0.327990,
		38.785042, 33.403671, 21.751322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987133, 33.598892, 21.599918>,  <38.544048, 34.019474, 21.521729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987133, 33.598892, 21.599918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.273678, 33.441650, 21.830500>,  <38.445602, 33.347305, 21.968849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.273678, 33.441650, 21.830500>,  <37.987133, 33.598892, 21.599918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273678, 33.441650, 21.830500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675631, -0.184518, 0.713776,
		-0.174235, -0.900783, -0.397785,
		0.716355, -0.393120, 0.576447,
		38.488586, 33.323719, 22.003437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611286, 33.087894, 22.009701>,  <37.987133, 33.598892, 21.599918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611286, 33.087894, 22.009701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.963726, 33.154289, 22.186840>,  <38.175190, 33.194126, 22.293123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.963726, 33.154289, 22.186840>,  <37.611286, 33.087894, 22.009701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963726, 33.154289, 22.186840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435990, -0.077718, 0.896589,
		0.183238, -0.983061, 0.003891,
		0.881099, 0.165986, 0.442846,
		38.228058, 33.204082, 22.319695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386795, 32.924183, 22.589130>,  <37.611286, 33.087894, 22.009701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386795, 32.924183, 22.589130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.748264, 33.076519, 22.667456>,  <37.965145, 33.167919, 22.714451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.748264, 33.076519, 22.667456>,  <37.386795, 32.924183, 22.589130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748264, 33.076519, 22.667456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247477, 0.091273, 0.964585,
		0.349478, -0.920126, 0.176729,
		0.903670, 0.380838, 0.195812,
		38.019367, 33.190769, 22.726200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583714, 32.562252, 23.288452>,  <37.386795, 32.924183, 22.589130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583714, 32.562252, 23.288452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.808945, 32.891132, 23.255144>,  <37.944084, 33.088459, 23.235159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.808945, 32.891132, 23.255144>,  <37.583714, 32.562252, 23.288452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808945, 32.891132, 23.255144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088379, 0.160093, 0.983137,
		0.821666, -0.546222, 0.162810,
		0.563076, 0.822199, -0.083268,
		37.977867, 33.137791, 23.230164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041588, 32.438400, 23.763908>,  <37.583714, 32.562252, 23.288452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041588, 32.438400, 23.763908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.018723, 32.831703, 23.694691>,  <38.005005, 33.067684, 23.653160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.018723, 32.831703, 23.694691>,  <38.041588, 32.438400, 23.763908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018723, 32.831703, 23.694691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227953, 0.155895, 0.961111,
		0.971993, 0.094383, 0.215225,
		-0.057160, 0.983254, -0.173044,
		38.001575, 33.126678, 23.642778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490028, 32.748714, 24.275879>,  <38.041588, 32.438400, 23.763908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490028, 32.748714, 24.275879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.268120, 33.060547, 24.159616>,  <38.134975, 33.247646, 24.089859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.268120, 33.060547, 24.159616>,  <38.490028, 32.748714, 24.275879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268120, 33.060547, 24.159616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226261, 0.194818, 0.954386,
		0.800646, 0.595231, 0.068309,
		-0.554773, 0.779580, -0.290658,
		38.101688, 33.294422, 24.072420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770824, 33.423782, 24.554653>,  <38.490028, 32.748714, 24.275879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770824, 33.423782, 24.554653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.383163, 33.464119, 24.464699>,  <38.150566, 33.488319, 24.410727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.383163, 33.464119, 24.464699>,  <38.770824, 33.423782, 24.554653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383163, 33.464119, 24.464699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165946, 0.407634, 0.897940,
		0.182218, 0.907560, -0.378326,
		-0.969154, 0.100839, -0.224884,
		38.092419, 33.494370, 24.397234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564465, 34.043236, 24.887501>,  <38.770824, 33.423782, 24.554653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564465, 34.043236, 24.887501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.211861, 33.869320, 24.813854>,  <38.000298, 33.764973, 24.769667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.211861, 33.869320, 24.813854>,  <38.564465, 34.043236, 24.887501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211861, 33.869320, 24.813854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325642, 0.277477, 0.903860,
		-0.341898, 0.856719, -0.386184,
		-0.881512, -0.434786, -0.184114,
		37.947407, 33.738884, 24.758619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026646, 34.534924, 24.862442>,  <38.564465, 34.043236, 24.887501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026646, 34.534924, 24.862442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830528, 34.196037, 24.944262>,  <37.712856, 33.992706, 24.993353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830528, 34.196037, 24.944262>,  <38.026646, 34.534924, 24.862442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830528, 34.196037, 24.944262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335112, 0.399904, 0.853098,
		-0.804556, 0.349723, -0.479983,
		-0.490296, -0.847213, 0.204549,
		37.683441, 33.941872, 25.005627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282921, 34.729092, 25.068331>,  <38.026646, 34.534924, 24.862442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282921, 34.729092, 25.068331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.291035, 34.353355, 25.205282>,  <37.295902, 34.127914, 25.287453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.291035, 34.353355, 25.205282>,  <37.282921, 34.729092, 25.068331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291035, 34.353355, 25.205282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235206, 0.328354, 0.914801,
		-0.971734, -0.099082, -0.214280,
		0.020281, -0.939343, 0.342377,
		37.297119, 34.071552, 25.307995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612980, 34.589859, 25.422401>,  <37.282921, 34.729092, 25.068331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612980, 34.589859, 25.422401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.903656, 34.349731, 25.555988>,  <37.078064, 34.205654, 25.636141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.903656, 34.349731, 25.555988>,  <36.612980, 34.589859, 25.422401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903656, 34.349731, 25.555988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192106, 0.289169, 0.937804,
		-0.659556, -0.745652, 0.094812,
		0.726692, -0.600320, 0.333967,
		37.121662, 34.169636, 25.656178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387558, 34.097477, 25.948421>,  <36.612980, 34.589859, 25.422401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387558, 34.097477, 25.948421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769688, 34.196339, 26.013254>,  <36.998966, 34.255657, 26.052153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769688, 34.196339, 26.013254>,  <36.387558, 34.097477, 25.948421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769688, 34.196339, 26.013254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217406, 0.216126, 0.951853,
		0.200205, -0.944571, 0.260200,
		0.955328, 0.247135, 0.162086,
		37.056286, 34.270485, 26.061878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807003, 34.472588, 25.860626>,  <36.387558, 34.097477, 25.948421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807003, 34.472588, 25.860626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.803192, 34.870171, 25.816893>,  <35.800907, 35.108723, 25.790651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.803192, 34.870171, 25.816893>,  <35.807003, 34.472588, 25.860626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803192, 34.870171, 25.816893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135443, -0.109614, -0.984703,
		-0.990739, 0.005432, 0.135669,
		-0.009523, 0.993959, -0.109335,
		35.800335, 35.168358, 25.784092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117294, 34.628040, 25.607197>,  <35.807003, 34.472588, 25.860626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117294, 34.628040, 25.607197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.405117, 34.889393, 25.513111>,  <35.577812, 35.046204, 25.456659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.405117, 34.889393, 25.513111>,  <35.117294, 34.628040, 25.607197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405117, 34.889393, 25.513111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250864, -0.071266, -0.965395,
		-0.647535, 0.753666, 0.112630,
		0.719559, 0.653382, -0.235215,
		35.620983, 35.085407, 25.442547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810127, 35.155998, 25.125168>,  <35.117294, 34.628040, 25.607197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810127, 35.155998, 25.125168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.200790, 35.201077, 25.052023>,  <35.435188, 35.228123, 25.008137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.200790, 35.201077, 25.052023>,  <34.810127, 35.155998, 25.125168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200790, 35.201077, 25.052023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192974, 0.086477, -0.977386,
		-0.094331, 0.989860, 0.106205,
		0.976659, 0.112693, -0.182860,
		35.493790, 35.234886, 24.997166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839172, 35.633591, 24.605957>,  <34.810127, 35.155998, 25.125168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839172, 35.633591, 24.605957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.203629, 35.471897, 24.573933>,  <35.422302, 35.374882, 24.554718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.203629, 35.471897, 24.573933>,  <34.839172, 35.633591, 24.605957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203629, 35.471897, 24.573933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021592, 0.240844, -0.970324,
		0.411525, 0.882375, 0.228171,
		0.911143, -0.404239, -0.080061,
		35.476971, 35.350624, 24.549913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260994, 36.104851, 24.201143>,  <34.839172, 35.633591, 24.605957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260994, 36.104851, 24.201143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.459225, 35.757538, 24.192322>,  <35.578163, 35.549149, 24.187029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.459225, 35.757538, 24.192322>,  <35.260994, 36.104851, 24.201143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459225, 35.757538, 24.192322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065318, 0.062577, -0.995900,
		0.866106, 0.492102, 0.087726,
		0.495574, -0.868286, -0.022055,
		35.607899, 35.497051, 24.185705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674026, 36.286339, 23.746290>,  <35.260994, 36.104851, 24.201143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674026, 36.286339, 23.746290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702217, 35.887810, 23.765745>,  <35.719131, 35.648693, 23.777418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702217, 35.887810, 23.765745>,  <35.674026, 36.286339, 23.746290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702217, 35.887810, 23.765745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063450, -0.044181, -0.997007,
		0.995493, 0.073351, 0.060103,
		0.070476, -0.996327, 0.048636,
		35.723358, 35.588913, 23.780336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366066, 36.092281, 23.531658>,  <35.674026, 36.286339, 23.746290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366066, 36.092281, 23.531658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.108574, 35.797604, 23.448812>,  <35.954079, 35.620796, 23.399105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.108574, 35.797604, 23.448812>,  <36.366066, 36.092281, 23.531658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108574, 35.797604, 23.448812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098494, 0.188636, -0.977095,
		0.758891, -0.649382, -0.048870,
		-0.643727, -0.736696, -0.207115,
		35.915455, 35.576595, 23.386679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646343, 35.675217, 23.026064>,  <36.366066, 36.092281, 23.531658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646343, 35.675217, 23.026064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256908, 35.588490, 22.997429>,  <36.023247, 35.536453, 22.980247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256908, 35.588490, 22.997429>,  <36.646343, 35.675217, 23.026064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256908, 35.588490, 22.997429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079975, -0.030144, -0.996341,
		0.213863, -0.975747, 0.046687,
		-0.973584, -0.216815, -0.071589,
		35.964832, 35.523445, 22.975952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571846, 35.094948, 22.557323>,  <36.646343, 35.675217, 23.026064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571846, 35.094948, 22.557323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.225723, 35.294689, 22.574675>,  <36.018047, 35.414536, 22.585085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.225723, 35.294689, 22.574675>,  <36.571846, 35.094948, 22.557323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225723, 35.294689, 22.574675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048261, 0.003138, -0.998830,
		-0.498908, -0.866391, 0.021384,
		-0.865310, 0.499356, 0.043379,
		35.966129, 35.444496, 22.587688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082382, 34.755173, 22.170534>,  <36.571846, 35.094948, 22.557323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082382, 34.755173, 22.170534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860550, 35.087128, 22.194969>,  <35.727451, 35.286301, 22.209631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860550, 35.087128, 22.194969>,  <36.082382, 34.755173, 22.170534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860550, 35.087128, 22.194969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237865, -0.087750, -0.967326,
		-0.797408, -0.550993, 0.246065,
		-0.554582, 0.829883, 0.061089,
		35.694176, 35.336094, 22.213295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467388, 34.693237, 21.800901>,  <36.082382, 34.755173, 22.170534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467388, 34.693237, 21.800901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499767, 35.091438, 21.820559>,  <35.519196, 35.330360, 21.832352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499767, 35.091438, 21.820559>,  <35.467388, 34.693237, 21.800901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499767, 35.091438, 21.820559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276741, 0.069812, -0.958405,
		-0.957529, 0.063978, 0.281149,
		0.080944, 0.995506, 0.049142,
		35.524052, 35.390091, 21.835300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807346, 34.948692, 21.456985>,  <35.467388, 34.693237, 21.800901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807346, 34.948692, 21.456985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.079288, 35.241467, 21.438805>,  <35.242455, 35.417133, 21.427896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.079288, 35.241467, 21.438805>,  <34.807346, 34.948692, 21.456985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079288, 35.241467, 21.438805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220679, 0.145082, -0.964496,
		-0.699358, 0.665745, 0.260157,
		0.679852, 0.731939, -0.045451,
		35.283245, 35.461048, 21.425169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535683, 35.412144, 20.990166>,  <34.807346, 34.948692, 21.456985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535683, 35.412144, 20.990166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.916943, 35.532272, 21.004686>,  <35.145699, 35.604347, 21.013399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.916943, 35.532272, 21.004686>,  <34.535683, 35.412144, 20.990166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916943, 35.532272, 21.004686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057257, 0.296944, -0.953177,
		-0.297037, 0.906440, 0.300226,
		0.953148, 0.300319, 0.036303,
		35.202888, 35.622368, 21.015577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546581, 36.043530, 20.731123>,  <34.535683, 35.412144, 20.990166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546581, 36.043530, 20.731123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.933598, 35.947807, 20.698624>,  <35.165806, 35.890373, 20.679125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.933598, 35.947807, 20.698624>,  <34.546581, 36.043530, 20.731123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933598, 35.947807, 20.698624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001798, 0.314959, -0.949104,
		0.252716, 0.918441, 0.304304,
		0.967539, -0.239306, -0.081247,
		35.223858, 35.876015, 20.674250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861118, 36.686207, 20.351313>,  <34.546581, 36.043530, 20.731123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861118, 36.686207, 20.351313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119820, 36.382408, 20.323391>,  <35.275040, 36.200130, 20.306639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.119820, 36.382408, 20.323391>,  <34.861118, 36.686207, 20.351313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119820, 36.382408, 20.323391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233010, 0.283908, -0.930109,
		0.726231, 0.585290, 0.360589,
		0.646758, -0.759495, -0.069805,
		35.313847, 36.154560, 20.302450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455437, 36.891788, 19.838085>,  <34.861118, 36.686207, 20.351313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455437, 36.891788, 19.838085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.528561, 36.498764, 19.851681>,  <35.572437, 36.262951, 19.859838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.528561, 36.498764, 19.851681>,  <35.455437, 36.891788, 19.838085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528561, 36.498764, 19.851681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301264, 0.023079, -0.953262,
		0.935852, 0.184509, 0.300229,
		0.182814, -0.982560, 0.033987,
		35.583405, 36.203995, 19.861877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099335, 36.908081, 19.697783>,  <35.455437, 36.891788, 19.838085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099335, 36.908081, 19.697783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948914, 36.543060, 19.633495>,  <35.858662, 36.324047, 19.594923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948914, 36.543060, 19.633495>,  <36.099335, 36.908081, 19.697783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948914, 36.543060, 19.633495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416590, -0.011574, -0.909021,
		0.827671, -0.408791, 0.384513,
		-0.376050, -0.912555, -0.160719,
		35.836098, 36.269295, 19.585279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605858, 36.557354, 19.367533>,  <36.099335, 36.908081, 19.697783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605858, 36.557354, 19.367533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295979, 36.327908, 19.261095>,  <36.110050, 36.190239, 19.197233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295979, 36.327908, 19.261095>,  <36.605858, 36.557354, 19.367533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295979, 36.327908, 19.261095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363026, -0.058906, -0.929915,
		0.517742, -0.817002, 0.253873,
		-0.774697, -0.573619, -0.266094,
		36.063568, 36.155823, 19.181267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894455, 35.932137, 18.985552>,  <36.605858, 36.557354, 19.367533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894455, 35.932137, 18.985552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.509792, 35.937412, 18.875975>,  <36.278996, 35.940578, 18.810228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.509792, 35.937412, 18.875975>,  <36.894455, 35.932137, 18.985552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509792, 35.937412, 18.875975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273361, -0.034730, -0.961284,
		-0.022185, -0.999310, 0.029795,
		-0.961655, 0.013181, -0.273943,
		36.221294, 35.941372, 18.793791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821011, 35.368225, 18.502317>,  <36.894455, 35.932137, 18.985552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821011, 35.368225, 18.502317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520596, 35.624100, 18.436909>,  <36.340347, 35.777626, 18.397663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.520596, 35.624100, 18.436909>,  <36.821011, 35.368225, 18.502317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520596, 35.624100, 18.436909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304722, 0.116112, -0.945337,
		-0.585732, -0.759816, -0.282131,
		-0.751041, 0.639686, -0.163522,
		36.295284, 35.816006, 18.387852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633781, 35.224049, 17.879303>,  <36.821011, 35.368225, 18.502317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633781, 35.224049, 17.879303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.470215, 35.586391, 17.923506>,  <36.372074, 35.803799, 17.950027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.470215, 35.586391, 17.923506>,  <36.633781, 35.224049, 17.879303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470215, 35.586391, 17.923506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233412, 0.220887, -0.946957,
		-0.882217, -0.361432, -0.301762,
		-0.408916, 0.905856, 0.110507,
		36.347542, 35.858147, 17.956657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378544, 35.327641, 17.189394>,  <36.633781, 35.224049, 17.879303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378544, 35.327641, 17.189394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348610, 35.678829, 17.378525>,  <36.330650, 35.889542, 17.492004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348610, 35.678829, 17.378525>,  <36.378544, 35.327641, 17.189394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348610, 35.678829, 17.378525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197680, 0.477809, -0.855933,
		-0.977406, 0.029416, -0.209313,
		-0.074834, 0.877971, 0.472828,
		36.326160, 35.942219, 17.520372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793369, 35.833889, 16.908434>,  <36.378544, 35.327641, 17.189394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793369, 35.833889, 16.908434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065857, 36.061543, 17.092619>,  <36.229351, 36.198135, 17.203131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065857, 36.061543, 17.092619>,  <35.793369, 35.833889, 16.908434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065857, 36.061543, 17.092619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131841, 0.523322, -0.841874,
		-0.720110, 0.634209, 0.281462,
		0.681219, 0.569134, 0.460464,
		36.270222, 36.232285, 17.230759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661247, 36.512199, 16.753040>,  <35.793369, 35.833889, 16.908434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661247, 36.512199, 16.753040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048599, 36.528770, 16.851440>,  <36.281010, 36.538715, 16.910480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048599, 36.528770, 16.851440>,  <35.661247, 36.512199, 16.753040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048599, 36.528770, 16.851440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185469, 0.539921, -0.821027,
		-0.166836, 0.840695, 0.515167,
		0.968384, 0.041430, 0.246001,
		36.339115, 36.541199, 16.925241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941868, 37.063740, 16.412128>,  <35.661247, 36.512199, 16.753040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941868, 37.063740, 16.412128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.268028, 36.848080, 16.496450>,  <36.463726, 36.718685, 16.547045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.268028, 36.848080, 16.496450>,  <35.941868, 37.063740, 16.412128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268028, 36.848080, 16.496450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447875, 0.356813, -0.819812,
		0.366785, 0.762890, 0.532417,
		0.815400, -0.539151, 0.210806,
		36.512650, 36.686333, 16.559692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537483, 37.467178, 16.237391>,  <35.941868, 37.063740, 16.412128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537483, 37.467178, 16.237391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.689991, 37.097836, 16.219313>,  <36.781494, 36.876228, 16.208466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.689991, 37.097836, 16.219313>,  <36.537483, 37.467178, 16.237391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689991, 37.097836, 16.219313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459672, 0.231768, -0.857313,
		0.802083, 0.306091, 0.512808,
		0.381268, -0.923359, -0.045196,
		36.804371, 36.820827, 16.205753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266056, 37.550217, 16.090479>,  <36.537483, 37.467178, 16.237391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266056, 37.550217, 16.090479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.159184, 37.176712, 15.995234>,  <37.095058, 36.952610, 15.938088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.159184, 37.176712, 15.995234>,  <37.266056, 37.550217, 16.090479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159184, 37.176712, 15.995234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321943, 0.146400, -0.935371,
		0.908277, -0.326572, 0.261504,
		-0.267182, -0.933766, -0.238109,
		37.079029, 36.896584, 15.923801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833912, 37.929821, 16.263247>,  <37.266056, 37.550217, 16.090479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833912, 37.929821, 16.263247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.784008, 38.319912, 16.190186>,  <37.754066, 38.553967, 16.146349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.784008, 38.319912, 16.190186>,  <37.833912, 37.929821, 16.263247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784008, 38.319912, 16.190186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195018, 0.156396, 0.968250,
		0.972833, 0.156417, 0.170676,
		-0.124758, 0.975230, -0.182651,
		37.746582, 38.612480, 16.135389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160824, 38.152542, 16.749157>,  <37.833912, 37.929821, 16.263247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160824, 38.152542, 16.749157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.943470, 38.463589, 16.622637>,  <37.813057, 38.650219, 16.546724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.943470, 38.463589, 16.622637>,  <38.160824, 38.152542, 16.749157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943470, 38.463589, 16.622637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228744, 0.225371, 0.947040,
		0.807720, 0.586956, 0.055412,
		-0.543382, 0.777618, -0.316300,
		37.780457, 38.696873, 16.527746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423332, 38.758781, 17.163893>,  <38.160824, 38.152542, 16.749157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423332, 38.758781, 17.163893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.049026, 38.811958, 17.033249>,  <37.824444, 38.843864, 16.954863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.049026, 38.811958, 17.033249>,  <38.423332, 38.758781, 17.163893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049026, 38.811958, 17.033249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303422, 0.168365, 0.937864,
		0.179669, 0.976719, -0.117213,
		-0.935764, 0.132940, -0.326608,
		37.768299, 38.851841, 16.935266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175274, 39.231167, 17.656416>,  <38.423332, 38.758781, 17.163893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175274, 39.231167, 17.656416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.855988, 39.066303, 17.480698>,  <37.664417, 38.967384, 17.375267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.855988, 39.066303, 17.480698>,  <38.175274, 39.231167, 17.656416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855988, 39.066303, 17.480698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502641, 0.053815, 0.862819,
		-0.331977, 0.909522, -0.250123,
		-0.798213, -0.412158, -0.439297,
		37.616524, 38.942657, 17.348909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654793, 39.761322, 17.678612>,  <38.175274, 39.231167, 17.656416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654793, 39.761322, 17.678612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.492924, 39.396053, 17.659203>,  <37.395802, 39.176891, 17.647556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.492924, 39.396053, 17.659203>,  <37.654793, 39.761322, 17.678612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492924, 39.396053, 17.659203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410293, 0.133890, 0.902072,
		-0.817250, 0.384956, -0.428850,
		-0.404677, -0.913172, -0.048523,
		37.371521, 39.122101, 17.644646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
