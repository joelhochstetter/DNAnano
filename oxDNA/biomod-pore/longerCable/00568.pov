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
	<24.501732, 34.416012, 35.146164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.320688, 34.749424, 35.019436>,  <24.212063, 34.949471, 34.943401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.320688, 34.749424, 35.019436>,  <24.501732, 34.416012, 35.146164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.320688, 34.749424, 35.019436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799338, 0.221779, -0.558456,
		-0.395226, -0.506007, -0.766651,
		-0.452609, 0.833529, -0.316818,
		24.184906, 34.999481, 34.924389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.552763, 34.489525, 34.343674>,  <24.501732, 34.416012, 35.146164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.552763, 34.489525, 34.343674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525608, 34.837730, 34.538647>,  <24.509315, 35.046654, 34.655632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525608, 34.837730, 34.538647>,  <24.552763, 34.489525, 34.343674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.525608, 34.837730, 34.538647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877348, 0.284705, -0.386268,
		-0.475028, 0.401426, -0.783075,
		-0.067888, 0.870517, 0.487433,
		24.505241, 35.098885, 34.684875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.609404, 35.118710, 33.926792>,  <24.552763, 34.489525, 34.343674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.609404, 35.118710, 33.926792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729061, 35.229324, 34.292095>,  <24.800856, 35.295692, 34.511276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729061, 35.229324, 34.292095>,  <24.609404, 35.118710, 33.926792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.729061, 35.229324, 34.292095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865560, 0.324213, -0.381696,
		-0.401644, 0.904661, -0.142376,
		0.299145, 0.276540, 0.913257,
		24.818804, 35.312286, 34.566071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.759823, 35.805012, 33.893852>,  <24.609404, 35.118710, 33.926792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.759823, 35.805012, 33.893852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981392, 35.612171, 34.165367>,  <25.114332, 35.496468, 34.328278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981392, 35.612171, 34.165367>,  <24.759823, 35.805012, 33.893852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.981392, 35.612171, 34.165367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831616, 0.281379, -0.478790,
		0.039827, 0.829703, 0.556783,
		0.553920, -0.482099, 0.678788,
		25.147568, 35.467541, 34.369003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248018, 36.327061, 34.205662>,  <24.759823, 35.805012, 33.893852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.248018, 36.327061, 34.205662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393768, 35.954567, 34.207928>,  <25.481218, 35.731071, 34.209290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393768, 35.954567, 34.207928>,  <25.248018, 36.327061, 34.205662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.393768, 35.954567, 34.207928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859199, 0.333826, -0.387734,
		0.359179, 0.146151, 0.921754,
		0.364373, -0.931236, 0.005669,
		25.503080, 35.675198, 34.209629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.008411, 36.321037, 34.457714>,  <25.248018, 36.327061, 34.205662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.008411, 36.321037, 34.457714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954670, 35.989368, 34.240669>,  <25.922426, 35.790367, 34.110443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954670, 35.989368, 34.240669>,  <26.008411, 36.321037, 34.457714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954670, 35.989368, 34.240669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761092, 0.264314, -0.592349,
		0.634577, -0.492561, 0.595563,
		-0.134353, -0.829169, -0.542612,
		25.914364, 35.740616, 34.077885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702835, 36.294056, 34.247444>,  <26.008411, 36.321037, 34.457714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702835, 36.294056, 34.247444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582745, 36.401119, 34.613663>,  <26.510691, 36.465359, 34.833393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582745, 36.401119, 34.613663>,  <26.702835, 36.294056, 34.247444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582745, 36.401119, 34.613663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715927, 0.571035, -0.401706,
		-0.630328, -0.776066, 0.020185,
		-0.300224, 0.267657, 0.915546,
		26.492678, 36.481415, 34.888329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194160, 36.613132, 33.794456>,  <26.702835, 36.294056, 34.247444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194160, 36.613132, 33.794456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165056, 36.736095, 33.414940>,  <27.147594, 36.809872, 33.187229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165056, 36.736095, 33.414940>,  <27.194160, 36.613132, 33.794456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165056, 36.736095, 33.414940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719043, 0.643075, 0.263498,
		0.691146, 0.701395, 0.174249,
		-0.072761, 0.307407, -0.948792,
		27.143229, 36.828320, 33.130302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458445, 37.264935, 33.714565>,  <27.194160, 36.613132, 33.794456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458445, 37.264935, 33.714565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612722, 37.626957, 33.786255>,  <27.705288, 37.844170, 33.829269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612722, 37.626957, 33.786255>,  <27.458445, 37.264935, 33.714565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612722, 37.626957, 33.786255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222172, 0.279649, -0.934043,
		-0.895478, 0.320435, 0.308936,
		0.385693, 0.905051, 0.179228,
		27.728430, 37.898472, 33.840023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063570, 37.614239, 33.329124>,  <27.458445, 37.264935, 33.714565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063570, 37.614239, 33.329124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351748, 37.883049, 33.397648>,  <27.524654, 38.044334, 33.438763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351748, 37.883049, 33.397648>,  <27.063570, 37.614239, 33.329124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351748, 37.883049, 33.397648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182562, 0.422082, -0.887985,
		-0.669053, 0.608468, 0.426772,
		0.720444, 0.672022, 0.171312,
		27.567881, 38.084656, 33.449043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857641, 38.212540, 32.995644>,  <27.063570, 37.614239, 33.329124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857641, 38.212540, 32.995644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.244219, 38.307785, 33.034203>,  <27.476166, 38.364933, 33.057339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.244219, 38.307785, 33.034203>,  <26.857641, 38.212540, 32.995644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244219, 38.307785, 33.034203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067184, 0.596474, -0.799816,
		-0.247940, 0.766500, 0.592455,
		0.966443, 0.238110, 0.096393,
		27.534151, 38.379219, 33.063122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227037, 38.329411, 32.456921>,  <26.857641, 38.212540, 32.995644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227037, 38.329411, 32.456921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310865, 37.954861, 32.344292>,  <27.361162, 37.730129, 32.276714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310865, 37.954861, 32.344292>,  <27.227037, 38.329411, 32.456921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310865, 37.954861, 32.344292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284247, -0.333875, 0.898739,
		-0.935566, -0.108312, -0.336132,
		0.209570, -0.936374, -0.281574,
		27.373737, 37.673950, 32.259819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436867, 38.544968, 31.673172>,  <27.227037, 38.329411, 32.456921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436867, 38.544968, 31.673172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739016, 38.771488, 31.805061>,  <27.920305, 38.907402, 31.884195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739016, 38.771488, 31.805061>,  <27.436867, 38.544968, 31.673172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739016, 38.771488, 31.805061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232677, -0.702163, 0.672926,
		0.612598, -0.431590, -0.662159,
		0.755371, 0.566302, 0.329722,
		27.965628, 38.941380, 31.903978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081427, 38.128712, 31.849865>,  <27.436867, 38.544968, 31.673172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081427, 38.128712, 31.849865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037710, 38.462795, 32.065449>,  <28.011480, 38.663246, 32.194798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037710, 38.462795, 32.065449>,  <28.081427, 38.128712, 31.849865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037710, 38.462795, 32.065449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105654, -0.529375, 0.841783,
		0.988379, 0.148942, -0.030388,
		-0.109290, 0.835212, 0.538959,
		28.004923, 38.713360, 32.227135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672764, 38.260693, 32.378674>,  <28.081427, 38.128712, 31.849865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672764, 38.260693, 32.378674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349789, 38.454357, 32.513512>,  <28.156004, 38.570557, 32.594414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349789, 38.454357, 32.513512>,  <28.672764, 38.260693, 32.378674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349789, 38.454357, 32.513512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091713, -0.461432, 0.882423,
		0.582779, 0.743418, 0.328174,
		-0.807439, 0.484159, 0.337094,
		28.107557, 38.599606, 32.614639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814768, 38.618580, 33.154007>,  <28.672764, 38.260693, 32.378674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814768, 38.618580, 33.154007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420219, 38.556686, 33.131622>,  <28.183491, 38.519550, 33.118191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420219, 38.556686, 33.131622>,  <28.814768, 38.618580, 33.154007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420219, 38.556686, 33.131622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014085, -0.259448, 0.965655,
		-0.163937, 0.953281, 0.253732,
		-0.986370, -0.154732, -0.055960,
		28.124308, 38.510265, 33.114834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499420, 39.056335, 33.545776>,  <28.814768, 38.618580, 33.154007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499420, 39.056335, 33.545776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232851, 38.758823, 33.525093>,  <28.072908, 38.580318, 33.512684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232851, 38.758823, 33.525093>,  <28.499420, 39.056335, 33.545776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232851, 38.758823, 33.525093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030504, -0.042096, 0.998648,
		-0.744948, 0.667101, 0.005365,
		-0.666425, -0.743777, -0.051708,
		28.032923, 38.535690, 33.509579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024137, 39.191788, 34.090816>,  <28.499420, 39.056335, 33.545776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024137, 39.191788, 34.090816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949856, 38.807156, 34.009937>,  <27.905287, 38.576378, 33.961411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949856, 38.807156, 34.009937>,  <28.024137, 39.191788, 34.090816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949856, 38.807156, 34.009937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302070, -0.251680, 0.919462,
		-0.935023, 0.109671, 0.337201,
		-0.185705, -0.961576, -0.202198,
		27.894144, 38.518684, 33.949276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447554, 38.809166, 34.499767>,  <28.024137, 39.191788, 34.090816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447554, 38.809166, 34.499767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754475, 38.576496, 34.391766>,  <27.938627, 38.436893, 34.326965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754475, 38.576496, 34.391766>,  <27.447554, 38.809166, 34.499767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754475, 38.576496, 34.391766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148273, -0.248710, 0.957162,
		-0.623909, -0.774467, -0.104589,
		0.767302, -0.581674, -0.270005,
		27.984665, 38.401993, 34.310764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408794, 38.099911, 34.764423>,  <27.447554, 38.809166, 34.499767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408794, 38.099911, 34.764423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797081, 38.156467, 34.686737>,  <28.030052, 38.190403, 34.640125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797081, 38.156467, 34.686737>,  <27.408794, 38.099911, 34.764423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797081, 38.156467, 34.686737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222256, -0.221715, 0.949444,
		0.091185, -0.964806, -0.246648,
		0.970715, 0.141394, -0.194217,
		28.088295, 38.198887, 34.628471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837599, 37.447872, 34.841019>,  <27.408794, 38.099911, 34.764423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837599, 37.447872, 34.841019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.021420, 37.797626, 34.903320>,  <28.131712, 38.007481, 34.940701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.021420, 37.797626, 34.903320>,  <27.837599, 37.447872, 34.841019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021420, 37.797626, 34.903320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155762, -0.251994, 0.955111,
		0.874385, -0.414664, -0.252001,
		0.459553, 0.874387, 0.155751,
		28.159285, 38.059944, 34.950047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492128, 37.428890, 35.212440>,  <27.837599, 37.447872, 34.841019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492128, 37.428890, 35.212440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345253, 37.795204, 35.277561>,  <28.257128, 38.014992, 35.316635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345253, 37.795204, 35.277561>,  <28.492128, 37.428890, 35.212440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345253, 37.795204, 35.277561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108725, -0.131572, 0.985326,
		0.923769, 0.379503, -0.051257,
		-0.367190, 0.915787, 0.162803,
		28.235096, 38.069939, 35.326401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048971, 37.816956, 35.544579>,  <28.492128, 37.428890, 35.212440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048971, 37.816956, 35.544579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686174, 37.928493, 35.670826>,  <28.468496, 37.995415, 35.746574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686174, 37.928493, 35.670826>,  <29.048971, 37.816956, 35.544579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686174, 37.928493, 35.670826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246028, -0.257446, 0.934447,
		0.341817, 0.925186, 0.164898,
		-0.906990, 0.278841, 0.315621,
		28.414078, 38.012146, 35.765511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086254, 38.406124, 36.040554>,  <29.048971, 37.816956, 35.544579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086254, 38.406124, 36.040554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772348, 38.159512, 36.065979>,  <28.584005, 38.011543, 36.081234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772348, 38.159512, 36.065979>,  <29.086254, 38.406124, 36.040554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772348, 38.159512, 36.065979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330268, -0.329193, 0.884621,
		-0.524472, 0.715209, 0.461958,
		-0.784763, -0.616529, 0.063559,
		28.536921, 37.974552, 36.085045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667364, 38.876949, 36.565079>,  <29.086254, 38.406124, 36.040554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667364, 38.876949, 36.565079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781237, 39.196350, 36.352909>,  <28.849560, 39.387989, 36.225609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781237, 39.196350, 36.352909>,  <28.667364, 38.876949, 36.565079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781237, 39.196350, 36.352909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265703, -0.597366, -0.756674,
		-0.921064, 0.074476, -0.382224,
		0.284682, 0.798503, -0.530424,
		28.866642, 39.435902, 36.193783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365475, 38.855305, 35.893536>,  <28.667364, 38.876949, 36.565079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365475, 38.855305, 35.893536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721394, 39.033924, 35.855900>,  <28.934944, 39.141098, 35.833317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721394, 39.033924, 35.855900>,  <28.365475, 38.855305, 35.893536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721394, 39.033924, 35.855900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278869, -0.695259, -0.662455,
		-0.361238, 0.563212, -0.743169,
		0.889797, 0.446551, -0.094092,
		28.988333, 39.167889, 35.827671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464754, 39.070705, 35.169415>,  <28.365475, 38.855305, 35.893536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464754, 39.070705, 35.169415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817671, 38.983643, 35.336357>,  <29.029421, 38.931404, 35.436523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817671, 38.983643, 35.336357>,  <28.464754, 39.070705, 35.169415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817671, 38.983643, 35.336357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197831, -0.633081, -0.748379,
		0.427109, 0.742855, -0.515504,
		0.882293, -0.217656, 0.417354,
		29.082359, 38.918346, 35.461563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069197, 39.043991, 34.639549>,  <28.464754, 39.070705, 35.169415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069197, 39.043991, 34.639549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129784, 38.801369, 34.951744>,  <29.166136, 38.655796, 35.139061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129784, 38.801369, 34.951744>,  <29.069197, 39.043991, 34.639549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129784, 38.801369, 34.951744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313550, -0.719332, -0.619878,
		0.937414, 0.338610, 0.081230,
		0.151466, -0.606551, 0.780483,
		29.175224, 38.619404, 35.185890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719982, 38.620556, 34.527885>,  <29.069197, 39.043991, 34.639549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719982, 38.620556, 34.527885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476120, 38.425713, 34.778019>,  <29.329803, 38.308807, 34.928101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476120, 38.425713, 34.778019>,  <29.719982, 38.620556, 34.527885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476120, 38.425713, 34.778019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136274, -0.841564, -0.522685,
		0.780867, -0.233439, 0.579443,
		-0.609653, -0.487110, 0.625337,
		29.293224, 38.279579, 34.965622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000313, 38.541542, 33.861874>,  <29.719982, 38.620556, 34.527885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000313, 38.541542, 33.861874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616175, 38.454472, 33.792187>,  <29.385691, 38.402229, 33.750374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616175, 38.454472, 33.792187>,  <30.000313, 38.541542, 33.861874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616175, 38.454472, 33.792187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276902, 0.817616, 0.504805,
		0.032555, 0.533028, -0.845471,
		-0.960346, -0.217679, -0.174214,
		29.328072, 38.389168, 33.739922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813374, 37.880039, 33.757992>,  <30.000313, 38.541542, 33.861874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813374, 37.880039, 33.757992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702963, 37.517406, 33.885689>,  <29.636717, 37.299828, 33.962307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702963, 37.517406, 33.885689>,  <29.813374, 37.880039, 33.757992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702963, 37.517406, 33.885689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846634, -0.072103, 0.527269,
		-0.454995, 0.415819, 0.787447,
		-0.276026, -0.906584, 0.319240,
		29.620155, 37.245430, 33.981461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730003, 37.884228, 34.487793>,  <29.813374, 37.880039, 33.757992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730003, 37.884228, 34.487793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851913, 37.549229, 34.306370>,  <29.925058, 37.348228, 34.197517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851913, 37.549229, 34.306370>,  <29.730003, 37.884228, 34.487793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851913, 37.549229, 34.306370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888714, 0.078823, 0.451636,
		-0.342492, -0.540730, 0.768317,
		0.304774, -0.837495, -0.453558,
		29.943346, 37.297981, 34.170303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841902, 37.268875, 34.910069>,  <29.730003, 37.884228, 34.487793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841902, 37.268875, 34.910069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102352, 37.225235, 34.609634>,  <30.258623, 37.199051, 34.429375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102352, 37.225235, 34.609634>,  <29.841902, 37.268875, 34.910069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102352, 37.225235, 34.609634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753788, -0.022483, 0.656733,
		-0.088537, -0.993776, 0.067600,
		0.651126, -0.109101, -0.751088,
		30.297689, 37.192505, 34.384308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436996, 37.158161, 35.240635>,  <29.841902, 37.268875, 34.910069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436996, 37.158161, 35.240635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617529, 37.149986, 34.883785>,  <30.725847, 37.145081, 34.669674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617529, 37.149986, 34.883785>,  <30.436996, 37.158161, 35.240635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617529, 37.149986, 34.883785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891171, -0.041220, 0.451792,
		-0.046009, -0.998941, -0.000387,
		0.451329, -0.020442, -0.892123,
		30.752928, 37.143856, 34.616150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860050, 36.548927, 35.144489>,  <30.436996, 37.158161, 35.240635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860050, 36.548927, 35.144489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993229, 36.847610, 34.914158>,  <31.073135, 37.026821, 34.775959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993229, 36.847610, 34.914158>,  <30.860050, 36.548927, 35.144489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993229, 36.847610, 34.914158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930890, -0.162943, 0.326946,
		0.150307, -0.644885, -0.749354,
		0.332944, 0.746708, -0.575826,
		31.093113, 37.071625, 34.741409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255936, 36.109379, 34.645050>,  <30.860050, 36.548927, 35.144489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255936, 36.109379, 34.645050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341230, 36.471897, 34.499092>,  <31.392408, 36.689407, 34.411518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341230, 36.471897, 34.499092>,  <31.255936, 36.109379, 34.645050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341230, 36.471897, 34.499092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802987, 0.050180, 0.593881,
		0.556545, -0.419646, -0.717046,
		0.213238, 0.906300, -0.364898,
		31.405203, 36.743786, 34.389622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984728, 36.128235, 34.256622>,  <31.255936, 36.109379, 34.645050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984728, 36.128235, 34.256622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872381, 36.492081, 34.379070>,  <31.804974, 36.710388, 34.452541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872381, 36.492081, 34.379070>,  <31.984728, 36.128235, 34.256622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872381, 36.492081, 34.379070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794708, 0.041590, 0.605565,
		0.538101, 0.413361, -0.734561,
		-0.280867, 0.909617, 0.306122,
		31.788120, 36.764965, 34.470905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628513, 36.488186, 34.245209>,  <31.984728, 36.128235, 34.256622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628513, 36.488186, 34.245209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408970, 36.748566, 34.454975>,  <32.277245, 36.904793, 34.580837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408970, 36.748566, 34.454975>,  <32.628513, 36.488186, 34.245209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408970, 36.748566, 34.454975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785208, 0.186307, 0.590540,
		0.286711, 0.735901, -0.613389,
		-0.548858, 0.650953, 0.524419,
		32.244312, 36.943851, 34.612301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092407, 36.995289, 34.370068>,  <32.628513, 36.488186, 34.245209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092407, 36.995289, 34.370068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815460, 37.033646, 34.656124>,  <32.649292, 37.056660, 34.827759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815460, 37.033646, 34.656124>,  <33.092407, 36.995289, 34.370068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815460, 37.033646, 34.656124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719063, 0.173815, 0.672857,
		-0.059784, 0.980099, -0.189293,
		-0.692368, 0.095888, 0.715144,
		32.607750, 37.062412, 34.870667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653156, 37.048264, 35.019073>,  <33.092407, 36.995289, 34.370068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653156, 37.048264, 35.019073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501095, 37.218399, 35.347603>,  <33.409859, 37.320480, 35.544720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501095, 37.218399, 35.347603>,  <33.653156, 37.048264, 35.019073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501095, 37.218399, 35.347603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860574, 0.162772, -0.482615,
		-0.338962, -0.890278, 0.304153,
		-0.380154, 0.425335, 0.821324,
		33.387047, 37.346001, 35.594002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020885, 36.683964, 35.114086>,  <33.653156, 37.048264, 35.019073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020885, 36.683964, 35.114086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006725, 37.030918, 35.312637>,  <32.998230, 37.239090, 35.431770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006725, 37.030918, 35.312637>,  <33.020885, 36.683964, 35.114086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006725, 37.030918, 35.312637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831368, 0.250073, -0.496276,
		-0.554593, -0.430243, 0.712262,
		-0.035402, 0.867383, 0.496379,
		32.996105, 37.291134, 35.461552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476685, 36.777824, 35.532566>,  <33.020885, 36.683964, 35.114086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476685, 36.777824, 35.532566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591778, 37.135540, 35.395477>,  <32.660835, 37.350170, 35.313225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591778, 37.135540, 35.395477>,  <32.476685, 36.777824, 35.532566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591778, 37.135540, 35.395477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911198, 0.145464, -0.385433,
		-0.294834, 0.423190, 0.856728,
		0.287735, 0.894288, -0.342722,
		32.678097, 37.403828, 35.292660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900879, 37.254375, 35.655052>,  <32.476685, 36.777824, 35.532566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900879, 37.254375, 35.655052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130043, 37.377384, 35.351154>,  <32.267540, 37.451187, 35.168816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130043, 37.377384, 35.351154>,  <31.900879, 37.254375, 35.655052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130043, 37.377384, 35.351154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810738, 0.076539, -0.580384,
		-0.120329, 0.948459, 0.293168,
		0.572909, 0.307519, -0.759742,
		32.301914, 37.469639, 35.123230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581266, 37.821877, 35.286530>,  <31.900879, 37.254375, 35.655052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581266, 37.821877, 35.286530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792274, 37.567406, 35.061317>,  <31.918879, 37.414722, 34.926189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792274, 37.567406, 35.061317>,  <31.581266, 37.821877, 35.286530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792274, 37.567406, 35.061317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714107, 0.026945, -0.699517,
		0.460191, 0.771069, -0.440087,
		0.527518, -0.636181, -0.563026,
		31.950529, 37.376553, 34.892410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439512, 38.012321, 34.696781>,  <31.581266, 37.821877, 35.286530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439512, 38.012321, 34.696781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556244, 37.632057, 34.654667>,  <31.626284, 37.403900, 34.629398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556244, 37.632057, 34.654667>,  <31.439512, 38.012321, 34.696781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556244, 37.632057, 34.654667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762459, -0.164758, -0.625708,
		0.577487, 0.262878, -0.772919,
		0.291829, -0.950657, -0.105288,
		31.643793, 37.346859, 34.623081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560734, 37.821819, 33.995895>,  <31.439512, 38.012321, 34.696781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560734, 37.821819, 33.995895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445578, 37.494968, 34.195663>,  <31.376484, 37.298859, 34.315525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445578, 37.494968, 34.195663>,  <31.560734, 37.821819, 33.995895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445578, 37.494968, 34.195663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714672, -0.163822, -0.680005,
		0.637466, -0.552692, -0.536814,
		-0.287891, -0.817125, 0.499424,
		31.359211, 37.249832, 34.345490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478529, 37.188721, 33.567703>,  <31.560734, 37.821819, 33.995895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478529, 37.188721, 33.567703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234604, 37.183437, 33.884678>,  <31.088249, 37.180267, 34.074863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234604, 37.183437, 33.884678>,  <31.478529, 37.188721, 33.567703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234604, 37.183437, 33.884678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777728, -0.182459, -0.601538,
		0.152530, -0.983125, 0.100996,
		-0.609814, -0.013205, 0.792434,
		31.051659, 37.179478, 34.122410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949316, 36.823368, 33.353836>,  <31.478529, 37.188721, 33.567703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949316, 36.823368, 33.353836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755251, 36.977348, 33.667889>,  <30.638811, 37.069736, 33.856319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755251, 36.977348, 33.667889>,  <30.949316, 36.823368, 33.353836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755251, 36.977348, 33.667889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868142, -0.104622, -0.485163,
		-0.104622, -0.916989, 0.384949,
		0.485163, -0.384949, -0.785131,
		30.609701, 37.092834, 33.903427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353947, 36.407005, 33.341606>,  <30.949316, 36.823368, 33.353836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353947, 36.407005, 33.341606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225668, 36.676281, 33.608131>,  <30.148701, 36.837845, 33.768047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225668, 36.676281, 33.608131>,  <30.353947, 36.407005, 33.341606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225668, 36.676281, 33.608131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947050, -0.239603, -0.213744,
		0.015759, -0.699576, 0.714384,
		-0.320698, 0.673189, 0.666310,
		30.129459, 36.878239, 33.808025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955093, 36.051689, 33.825436>,  <30.353947, 36.407005, 33.341606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955093, 36.051689, 33.825436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822884, 36.429207, 33.824963>,  <29.743557, 36.655720, 33.824680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822884, 36.429207, 33.824963>,  <29.955093, 36.051689, 33.825436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822884, 36.429207, 33.824963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886526, -0.310898, -0.342657,
		-0.323766, -0.112208, 0.939460,
		-0.330525, 0.943796, -0.001183,
		29.723726, 36.712345, 33.824608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419645, 36.253471, 33.353279>,  <29.955093, 36.051689, 33.825436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419645, 36.253471, 33.353279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193813, 36.510036, 33.561062>,  <29.058315, 36.663975, 33.685730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193813, 36.510036, 33.561062>,  <29.419645, 36.253471, 33.353279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193813, 36.510036, 33.561062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560062, -0.164585, 0.811937,
		0.606284, 0.749331, -0.266311,
		-0.564579, 0.641416, 0.519458,
		29.024439, 36.702461, 33.716900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746536, 35.778461, 32.716522>,  <29.419645, 36.253471, 33.353279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746536, 35.778461, 32.716522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003891, 35.675423, 32.428162>,  <30.158304, 35.613598, 32.255146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003891, 35.675423, 32.428162>,  <29.746536, 35.778461, 32.716522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003891, 35.675423, 32.428162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540425, 0.514137, -0.666036,
		0.542211, 0.818111, 0.191576,
		0.643388, -0.257599, -0.720899,
		30.196907, 35.598145, 32.211891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078485, 36.361790, 32.457863>,  <29.746536, 35.778461, 32.716522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078485, 36.361790, 32.457863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026785, 36.065800, 32.193821>,  <29.995764, 35.888206, 32.035397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026785, 36.065800, 32.193821>,  <30.078485, 36.361790, 32.457863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026785, 36.065800, 32.193821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693667, 0.543171, -0.473066,
		0.708604, 0.396746, -0.583500,
		-0.129252, -0.739971, -0.660103,
		29.988008, 35.843807, 31.995790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815302, 36.230946, 32.107201>,  <30.078485, 36.361790, 32.457863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815302, 36.230946, 32.107201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746735, 35.916546, 32.344795>,  <30.705593, 35.727905, 32.487350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746735, 35.916546, 32.344795>,  <30.815302, 36.230946, 32.107201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746735, 35.916546, 32.344795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961828, -0.002976, 0.273638,
		-0.213312, 0.618219, 0.756508,
		-0.171420, -0.786000, 0.593985,
		30.695309, 35.680744, 32.522991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959820, 36.250317, 32.859856>,  <30.815302, 36.230946, 32.107201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959820, 36.250317, 32.859856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016518, 35.879810, 32.720177>,  <31.050537, 35.657505, 32.636368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016518, 35.879810, 32.720177>,  <30.959820, 36.250317, 32.859856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016518, 35.879810, 32.720177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954795, 0.034815, 0.295220,
		-0.261295, -0.375259, 0.889329,
		0.141746, -0.926266, -0.349198,
		31.059042, 35.601929, 32.615417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253355, 35.768364, 33.283817>,  <30.959820, 36.250317, 32.859856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253355, 35.768364, 33.283817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390169, 35.631649, 32.933689>,  <31.472258, 35.549622, 32.723610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390169, 35.631649, 32.933689>,  <31.253355, 35.768364, 33.283817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390169, 35.631649, 32.933689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937247, 0.057008, 0.343973,
		-0.067665, -0.938047, 0.339837,
		0.342037, -0.341786, -0.875325,
		31.492781, 35.529114, 32.671093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826094, 35.317608, 33.452812>,  <31.253355, 35.768364, 33.283817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826094, 35.317608, 33.452812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842806, 35.455482, 33.077698>,  <31.852833, 35.538208, 32.852627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842806, 35.455482, 33.077698>,  <31.826094, 35.317608, 33.452812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842806, 35.455482, 33.077698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983496, 0.151187, 0.099385,
		0.176038, -0.926464, -0.332679,
		0.041780, 0.344684, -0.937789,
		31.855339, 35.558887, 32.796360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309597, 34.894745, 33.062515>,  <31.826094, 35.317608, 33.452812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309597, 34.894745, 33.062515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294090, 35.266045, 32.914547>,  <32.284786, 35.488827, 32.825764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294090, 35.266045, 32.914547>,  <32.309597, 34.894745, 33.062515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294090, 35.266045, 32.914547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993800, 0.074426, 0.082599,
		0.104204, -0.364429, -0.925383,
		-0.038771, 0.928252, -0.369925,
		32.282459, 35.544521, 32.803570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530184, 34.898983, 32.918259>,  <32.309597, 34.894745, 33.062515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530184, 34.898983, 32.918259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727047, 34.570175, 32.803673>,  <31.845165, 34.372890, 32.734921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727047, 34.570175, 32.803673>,  <31.530184, 34.898983, 32.918259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727047, 34.570175, 32.803673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274229, 0.165917, -0.947243,
		0.826185, 0.544748, -0.143766,
		0.492156, -0.822022, -0.286464,
		31.874693, 34.323570, 32.717735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800785, 35.027863, 32.267868>,  <31.530184, 34.898983, 32.918259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800785, 35.027863, 32.267868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746529, 34.633556, 32.307598>,  <31.713976, 34.396973, 32.331436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746529, 34.633556, 32.307598>,  <31.800785, 35.027863, 32.267868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746529, 34.633556, 32.307598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299471, -0.054773, -0.952532,
		0.944415, -0.158947, -0.287779,
		-0.135640, -0.985767, 0.099328,
		31.705837, 34.337826, 32.337395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306717, 34.636219, 31.754261>,  <31.800785, 35.027863, 32.267868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306717, 34.636219, 31.754261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979013, 34.430321, 31.855330>,  <31.782391, 34.306782, 31.915970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979013, 34.430321, 31.855330>,  <32.306717, 34.636219, 31.754261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979013, 34.430321, 31.855330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248492, -0.078411, -0.965455,
		0.516781, -0.853747, -0.063672,
		-0.819261, -0.514751, 0.252671,
		31.733234, 34.275894, 31.931131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270416, 33.951508, 31.380030>,  <32.306717, 34.636219, 31.754261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270416, 33.951508, 31.380030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912806, 34.097740, 31.483618>,  <31.698240, 34.185482, 31.545771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912806, 34.097740, 31.483618>,  <32.270416, 33.951508, 31.380030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912806, 34.097740, 31.483618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342107, -0.183844, -0.921501,
		-0.289278, -0.912441, 0.289431,
		-0.894025, 0.365586, 0.258970,
		31.644598, 34.207417, 31.561310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738327, 33.445084, 31.347771>,  <32.270416, 33.951508, 31.380030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738327, 33.445084, 31.347771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604336, 33.815521, 31.278334>,  <31.523941, 34.037785, 31.236671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604336, 33.815521, 31.278334>,  <31.738327, 33.445084, 31.347771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604336, 33.815521, 31.278334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222133, -0.256663, -0.940628,
		-0.915668, -0.276527, 0.291693,
		-0.334976, 0.926098, -0.173592,
		31.503843, 34.093349, 31.226255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084534, 33.240654, 31.001982>,  <31.738327, 33.445084, 31.347771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084534, 33.240654, 31.001982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202505, 33.599136, 30.869421>,  <31.273289, 33.814228, 30.789885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202505, 33.599136, 30.869421>,  <31.084534, 33.240654, 31.001982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202505, 33.599136, 30.869421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074791, -0.324113, -0.943058,
		-0.952587, 0.302922, -0.028563,
		0.294930, 0.896208, -0.331401,
		31.290985, 33.868000, 30.770000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725904, 33.650581, 30.402813>,  <31.084534, 33.240654, 31.001982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725904, 33.650581, 30.402813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113270, 33.749950, 30.411442>,  <31.345688, 33.809570, 30.416618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113270, 33.749950, 30.411442>,  <30.725904, 33.650581, 30.402813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113270, 33.749950, 30.411442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154826, -0.531216, -0.832970,
		-0.195471, 0.809997, -0.552898,
		0.968411, 0.248424, 0.021571,
		31.403793, 33.824478, 30.417913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936251, 33.934361, 29.694750>,  <30.725904, 33.650581, 30.402813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936251, 33.934361, 29.694750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268181, 33.784622, 29.860281>,  <31.467339, 33.694778, 29.959600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268181, 33.784622, 29.860281>,  <30.936251, 33.934361, 29.694750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268181, 33.784622, 29.860281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156323, -0.555953, -0.816382,
		0.535682, 0.742144, -0.402824,
		0.829824, -0.374351, 0.413828,
		31.517128, 33.672318, 29.984430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441631, 34.050438, 29.220474>,  <30.936251, 33.934361, 29.694750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441631, 34.050438, 29.220474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532322, 33.729935, 29.441952>,  <31.586737, 33.537632, 29.574839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532322, 33.729935, 29.441952>,  <31.441631, 34.050438, 29.220474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532322, 33.729935, 29.441952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219215, -0.511929, -0.830587,
		0.948968, 0.309693, 0.059582,
		0.226725, -0.801261, 0.553693,
		31.600340, 33.489555, 29.608059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150200, 33.882057, 29.140318>,  <31.441631, 34.050438, 29.220474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150200, 33.882057, 29.140318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904474, 33.571178, 29.194849>,  <31.757040, 33.384651, 29.227568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904474, 33.571178, 29.194849>,  <32.150200, 33.882057, 29.140318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904474, 33.571178, 29.194849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142402, -0.279131, -0.949636,
		0.776107, -0.563959, 0.282147,
		-0.614312, -0.777197, 0.136327,
		31.720181, 33.338020, 29.235746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477406, 33.224800, 28.965292>,  <32.150200, 33.882057, 29.140318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477406, 33.224800, 28.965292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082554, 33.193420, 28.909559>,  <31.845642, 33.174591, 28.876120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082554, 33.193420, 28.909559>,  <32.477406, 33.224800, 28.965292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082554, 33.193420, 28.909559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152072, -0.191289, -0.969682,
		0.049423, -0.978394, 0.200758,
		-0.987133, -0.078454, -0.139332,
		31.786413, 33.169884, 28.867760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454552, 32.612030, 28.592730>,  <32.477406, 33.224800, 28.965292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454552, 32.612030, 28.592730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111786, 32.814014, 28.551336>,  <31.906126, 32.935204, 28.526501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111786, 32.814014, 28.551336>,  <32.454552, 32.612030, 28.592730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111786, 32.814014, 28.551336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012785, -0.179877, -0.983606,
		-0.515294, -0.844193, 0.147684,
		-0.856919, 0.504958, -0.103482,
		31.854710, 32.965500, 28.520292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210110, 32.232311, 28.058544>,  <32.454552, 32.612030, 28.592730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210110, 32.232311, 28.058544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986855, 32.559681, 28.113194>,  <31.852901, 32.756104, 28.145983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986855, 32.559681, 28.113194>,  <32.210110, 32.232311, 28.058544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986855, 32.559681, 28.113194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133964, 0.073615, -0.988248,
		-0.818865, -0.569879, 0.068553,
		-0.558135, 0.818425, 0.136624,
		31.819414, 32.805210, 28.154181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580626, 32.201141, 27.533979>,  <32.210110, 32.232311, 28.058544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580626, 32.201141, 27.533979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624239, 32.588688, 27.622889>,  <31.650408, 32.821217, 27.676235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624239, 32.588688, 27.622889>,  <31.580626, 32.201141, 27.533979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624239, 32.588688, 27.622889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132534, 0.235780, -0.962727,
		-0.985163, 0.075511, 0.154116,
		0.109034, 0.968868, 0.222274,
		31.656950, 32.879349, 27.689571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023310, 32.518402, 27.218739>,  <31.580626, 32.201141, 27.533979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023310, 32.518402, 27.218739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304192, 32.803101, 27.225887>,  <31.472721, 32.973919, 27.230177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304192, 32.803101, 27.225887>,  <31.023310, 32.518402, 27.218739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304192, 32.803101, 27.225887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170636, 0.192610, -0.966325,
		-0.691224, 0.675510, 0.256702,
		0.702206, 0.711750, 0.017871,
		31.514853, 33.016624, 27.231249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762762, 32.970135, 26.749392>,  <31.023310, 32.518402, 27.218739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762762, 32.970135, 26.749392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137211, 33.101246, 26.800362>,  <31.361881, 33.179913, 26.830944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137211, 33.101246, 26.800362>,  <30.762762, 32.970135, 26.749392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137211, 33.101246, 26.800362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030687, 0.437092, -0.898893,
		-0.350329, 0.837565, 0.419230,
		0.936124, 0.327773, 0.127423,
		31.418049, 33.199577, 26.838589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782894, 33.654179, 26.515223>,  <30.762762, 32.970135, 26.749392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782894, 33.654179, 26.515223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164747, 33.536171, 26.499020>,  <31.393858, 33.465366, 26.489298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164747, 33.536171, 26.499020>,  <30.782894, 33.654179, 26.515223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164747, 33.536171, 26.499020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070036, 0.354632, -0.932379,
		0.289438, 0.887241, 0.359205,
		0.954631, -0.295023, -0.040505,
		31.451138, 33.447662, 26.486868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024529, 34.133610, 26.026152>,  <30.782894, 33.654179, 26.515223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024529, 34.133610, 26.026152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276693, 33.823330, 26.037935>,  <31.427992, 33.637161, 26.045006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276693, 33.823330, 26.037935>,  <31.024529, 34.133610, 26.026152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276693, 33.823330, 26.037935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349844, 0.250031, -0.902825,
		0.692959, 0.579456, 0.428997,
		0.630410, -0.775703, 0.029458,
		31.465816, 33.590618, 26.046772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597515, 34.389744, 25.771227>,  <31.024529, 34.133610, 26.026152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597515, 34.389744, 25.771227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623192, 33.992535, 25.731649>,  <31.638597, 33.754211, 25.707903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623192, 33.992535, 25.731649>,  <31.597515, 34.389744, 25.771227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623192, 33.992535, 25.731649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177876, 0.108943, -0.978004,
		0.981957, 0.045179, 0.183627,
		0.064190, -0.993021, -0.098941,
		31.642448, 33.694630, 25.701967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098721, 34.390377, 25.308809>,  <31.597515, 34.389744, 25.771227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098721, 34.390377, 25.308809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930658, 34.029037, 25.274330>,  <31.829821, 33.812233, 25.253643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930658, 34.029037, 25.274330>,  <32.098721, 34.390377, 25.308809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930658, 34.029037, 25.274330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062641, 0.123632, -0.990349,
		0.905289, -0.410699, -0.108531,
		-0.420153, -0.903350, -0.086196,
		31.804613, 33.758034, 25.248472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380272, 34.118603, 24.746931>,  <32.098721, 34.390377, 25.308809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380272, 34.118603, 24.746931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054279, 33.892372, 24.797415>,  <31.858685, 33.756634, 24.827705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054279, 33.892372, 24.797415>,  <32.380272, 34.118603, 24.746931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054279, 33.892372, 24.797415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042339, -0.159097, -0.986355,
		0.577939, -0.809204, 0.105715,
		-0.814981, -0.565577, 0.126209,
		31.809786, 33.722698, 24.835278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510933, 33.757126, 24.276625>,  <32.380272, 34.118603, 24.746931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510933, 33.757126, 24.276625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119377, 33.720226, 24.349585>,  <31.884443, 33.698086, 24.393360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119377, 33.720226, 24.349585>,  <32.510933, 33.757126, 24.276625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119377, 33.720226, 24.349585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187407, 0.048824, -0.981068,
		0.081600, -0.994538, -0.065082,
		-0.978887, -0.092252, 0.182399,
		31.825710, 33.692554, 24.404305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226398, 33.338696, 23.782095>,  <32.510933, 33.757126, 24.276625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226398, 33.338696, 23.782095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902985, 33.545235, 23.894983>,  <31.708937, 33.669159, 23.962717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902985, 33.545235, 23.894983>,  <32.226398, 33.338696, 23.782095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902985, 33.545235, 23.894983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350789, -0.037869, -0.935688,
		-0.472458, -0.855538, 0.211749,
		-0.808536, 0.516353, 0.282222,
		31.660423, 33.700142, 23.979650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485708, 32.954140, 23.743706>,  <32.226398, 33.338696, 23.782095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485708, 32.954140, 23.743706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470831, 33.349728, 23.686361>,  <31.461905, 33.587082, 23.651955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470831, 33.349728, 23.686361>,  <31.485708, 32.954140, 23.743706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470831, 33.349728, 23.686361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253058, -0.148104, -0.956047,
		-0.966736, 0.000720, 0.255776,
		-0.037193, 0.988972, -0.143360,
		31.459673, 33.646420, 23.643353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920450, 32.958656, 23.310501>,  <31.485708, 32.954140, 23.743706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920450, 32.958656, 23.310501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133924, 33.294106, 23.266876>,  <31.262009, 33.495373, 23.240702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133924, 33.294106, 23.266876>,  <30.920450, 32.958656, 23.310501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133924, 33.294106, 23.266876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319869, 0.080791, -0.944011,
		-0.782856, 0.538691, 0.311365,
		0.533686, 0.838620, -0.109063,
		31.294031, 33.545692, 23.234158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542746, 33.342751, 22.816605>,  <30.920450, 32.958656, 23.310501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542746, 33.342751, 22.816605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902592, 33.516876, 22.830433>,  <31.118500, 33.621353, 22.838730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902592, 33.516876, 22.830433>,  <30.542746, 33.342751, 22.816605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902592, 33.516876, 22.830433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085422, 0.253063, -0.963671,
		-0.428249, 0.863979, 0.264844,
		0.899614, 0.435315, 0.034571,
		31.172476, 33.647472, 22.840805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490320, 33.997231, 22.529308>,  <30.542746, 33.342751, 22.816605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490320, 33.997231, 22.529308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882565, 33.923653, 22.502275>,  <31.117910, 33.879505, 22.486055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882565, 33.923653, 22.502275>,  <30.490320, 33.997231, 22.529308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882565, 33.923653, 22.502275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003943, 0.363320, -0.931656,
		0.195927, 0.913325, 0.357000,
		0.980611, -0.183944, -0.067583,
		31.176748, 33.868469, 22.482000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641834, 34.345470, 21.942690>,  <30.490320, 33.997231, 22.529308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641834, 34.345470, 21.942690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984159, 34.140903, 21.973766>,  <31.189554, 34.018162, 21.992413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984159, 34.140903, 21.973766>,  <30.641834, 34.345470, 21.942690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984159, 34.140903, 21.973766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132352, 0.071296, -0.988635,
		0.500067, 0.856369, 0.128704,
		0.855813, -0.511418, 0.077689,
		31.240904, 33.987476, 21.997072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095491, 34.652935, 21.403761>,  <30.641834, 34.345470, 21.942690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095491, 34.652935, 21.403761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259758, 34.298416, 21.489393>,  <31.358318, 34.085705, 21.540773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259758, 34.298416, 21.489393>,  <31.095491, 34.652935, 21.403761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259758, 34.298416, 21.489393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200100, -0.141464, -0.969509,
		0.889558, 0.440982, 0.119253,
		0.410666, -0.886297, 0.214081,
		31.382957, 34.032528, 21.553617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745670, 34.553295, 21.085911>,  <31.095491, 34.652935, 21.403761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745670, 34.553295, 21.085911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638376, 34.170803, 21.132696>,  <31.573999, 33.941307, 21.160767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638376, 34.170803, 21.132696>,  <31.745670, 34.553295, 21.085911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638376, 34.170803, 21.132696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320020, -0.202965, -0.925415,
		0.908645, -0.210800, 0.360454,
		-0.268237, -0.956226, 0.116963,
		31.557905, 33.883934, 21.167786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349426, 34.219639, 20.866247>,  <31.745670, 34.553295, 21.085911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349426, 34.219639, 20.866247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049778, 33.954765, 20.858849>,  <31.869989, 33.795841, 20.854410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049778, 33.954765, 20.858849>,  <32.349426, 34.219639, 20.866247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049778, 33.954765, 20.858849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339377, -0.359658, -0.869177,
		0.568900, -0.657392, 0.494155,
		-0.749117, -0.662179, -0.018494,
		31.825043, 33.756111, 20.853300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695957, 33.717766, 20.648256>,  <32.349426, 34.219639, 20.866247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695957, 33.717766, 20.648256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316376, 33.610260, 20.582216>,  <32.088627, 33.545757, 20.542593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316376, 33.610260, 20.582216>,  <32.695957, 33.717766, 20.648256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316376, 33.610260, 20.582216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279352, -0.473050, -0.835576,
		0.146472, -0.839041, 0.523981,
		-0.948951, -0.268764, -0.165099,
		32.031689, 33.529633, 20.532686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629772, 32.987331, 20.439566>,  <32.695957, 33.717766, 20.648256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629772, 32.987331, 20.439566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277039, 33.139118, 20.327583>,  <32.065399, 33.230190, 20.260393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277039, 33.139118, 20.327583>,  <32.629772, 32.987331, 20.439566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277039, 33.139118, 20.327583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050580, -0.514137, -0.856216,
		-0.468841, -0.769199, 0.434189,
		-0.881833, 0.379468, -0.279954,
		32.012489, 33.252960, 20.243597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275517, 32.427444, 20.182007>,  <32.629772, 32.987331, 20.439566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275517, 32.427444, 20.182007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111824, 32.754276, 20.019567>,  <32.013607, 32.950375, 19.922104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111824, 32.754276, 20.019567>,  <32.275517, 32.427444, 20.182007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111824, 32.754276, 20.019567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138530, -0.384273, -0.912767,
		-0.901853, -0.429790, 0.044067,
		-0.409231, 0.817077, -0.406096,
		31.989054, 32.999401, 19.897739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765667, 32.186562, 19.710602>,  <32.275517, 32.427444, 20.182007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765667, 32.186562, 19.710602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867798, 32.551250, 19.581875>,  <31.929077, 32.770065, 19.504639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867798, 32.551250, 19.581875>,  <31.765667, 32.186562, 19.710602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867798, 32.551250, 19.581875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122306, -0.299721, -0.946155,
		-0.959088, 0.280939, 0.034983,
		0.255327, 0.911724, -0.321820,
		31.944395, 32.824768, 19.485329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338564, 32.327515, 19.183311>,  <31.765667, 32.186562, 19.710602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338564, 32.327515, 19.183311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634594, 32.588787, 19.119253>,  <31.812212, 32.745548, 19.080818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634594, 32.588787, 19.119253>,  <31.338564, 32.327515, 19.183311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634594, 32.588787, 19.119253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125551, -0.099755, -0.987059,
		-0.660701, 0.750605, 0.008181,
		0.740076, 0.653178, -0.160147,
		31.856617, 32.784740, 19.071209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081778, 32.635834, 18.624252>,  <31.338564, 32.327515, 19.183311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081778, 32.635834, 18.624252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463970, 32.753803, 18.627760>,  <31.693285, 32.824585, 18.629864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463970, 32.753803, 18.627760>,  <31.081778, 32.635834, 18.624252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463970, 32.753803, 18.627760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008456, 0.057071, -0.998334,
		-0.294934, 0.953815, 0.057025,
		0.955480, 0.294925, 0.008767,
		31.750614, 32.842281, 18.630390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167408, 33.198544, 18.274876>,  <31.081778, 32.635834, 18.624252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167408, 33.198544, 18.274876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534542, 33.045834, 18.231371>,  <31.754822, 32.954208, 18.205269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534542, 33.045834, 18.231371>,  <31.167408, 33.198544, 18.274876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534542, 33.045834, 18.231371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105218, 0.030213, -0.993990,
		0.382768, 0.923761, -0.012439,
		0.917833, -0.381776, -0.108761,
		31.809893, 32.931301, 18.198742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480320, 33.700264, 17.898724>,  <31.167408, 33.198544, 18.274876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480320, 33.700264, 17.898724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697229, 33.367401, 17.852335>,  <31.827375, 33.167683, 17.824503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697229, 33.367401, 17.852335>,  <31.480320, 33.700264, 17.898724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697229, 33.367401, 17.852335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033962, 0.116204, -0.992645,
		0.839515, 0.542224, 0.034753,
		0.542275, -0.832160, -0.115970,
		31.859911, 33.117752, 17.817545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017807, 33.838543, 17.534176>,  <31.480320, 33.700264, 17.898724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017807, 33.838543, 17.534176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938974, 33.449806, 17.482502>,  <31.891674, 33.216564, 17.451498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938974, 33.449806, 17.482502>,  <32.017807, 33.838543, 17.534176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938974, 33.449806, 17.482502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136917, 0.157762, -0.977939,
		0.970779, -0.175047, -0.164153,
		-0.197083, -0.971838, -0.129185,
		31.879850, 33.158257, 17.443747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215527, 33.820187, 16.849049>,  <32.017807, 33.838543, 17.534176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215527, 33.820187, 16.849049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004276, 33.491375, 16.934231>,  <31.877525, 33.294086, 16.985340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004276, 33.491375, 16.934231>,  <32.215527, 33.820187, 16.849049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004276, 33.491375, 16.934231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286726, -0.063425, -0.955911,
		0.799294, -0.565901, -0.202201,
		-0.528126, -0.822030, 0.212954,
		31.845839, 33.244766, 16.998117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361179, 33.334324, 16.374365>,  <32.215527, 33.820187, 16.849049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361179, 33.334324, 16.374365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005856, 33.197304, 16.496717>,  <31.792662, 33.115093, 16.570129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005856, 33.197304, 16.496717>,  <32.361179, 33.334324, 16.374365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005856, 33.197304, 16.496717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357723, 0.098443, -0.928625,
		0.287989, -0.934328, -0.209986,
		-0.888311, -0.342550, 0.305880,
		31.739363, 33.094540, 16.588482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170502, 32.917950, 15.804782>,  <32.361179, 33.334324, 16.374365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170502, 32.917950, 15.804782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830284, 32.986893, 16.003527>,  <31.626154, 33.028259, 16.122774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830284, 32.986893, 16.003527>,  <32.170502, 32.917950, 15.804782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830284, 32.986893, 16.003527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509233, -0.033903, -0.859961,
		-0.131378, -0.984450, 0.116607,
		-0.850542, 0.172360, 0.496860,
		31.575121, 33.038601, 16.152584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700766, 32.347466, 15.674993>,  <32.170502, 32.917950, 15.804782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700766, 32.347466, 15.674993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449068, 32.640759, 15.778090>,  <31.298050, 32.816734, 15.839949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449068, 32.640759, 15.778090>,  <31.700766, 32.347466, 15.674993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449068, 32.640759, 15.778090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598598, -0.245691, -0.762441,
		-0.495718, -0.634044, 0.593508,
		-0.629241, 0.733228, 0.257744,
		31.260296, 32.860725, 15.855413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174755, 32.080135, 15.459023>,  <31.700766, 32.347466, 15.674993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174755, 32.080135, 15.459023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046812, 32.455402, 15.511981>,  <30.970047, 32.680565, 15.543756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046812, 32.455402, 15.511981>,  <31.174755, 32.080135, 15.459023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046812, 32.455402, 15.511981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649405, -0.115334, -0.751645,
		-0.689902, -0.326394, 0.646143,
		-0.319855, 0.938171, 0.132393,
		30.950855, 32.736855, 15.551699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349237, 32.050629, 15.506609>,  <31.174755, 32.080135, 15.459023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349237, 32.050629, 15.506609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477339, 32.416008, 15.406176>,  <30.554199, 32.635235, 15.345916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477339, 32.416008, 15.406176>,  <30.349237, 32.050629, 15.506609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477339, 32.416008, 15.406176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608634, -0.004709, -0.793437,
		-0.725949, 0.406918, 0.554450,
		0.320253, 0.913452, -0.251083,
		30.573414, 32.690044, 15.330851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710150, 32.530449, 15.443420>,  <30.349237, 32.050629, 15.506609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710150, 32.530449, 15.443420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022196, 32.675747, 15.239666>,  <30.209423, 32.762924, 15.117414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022196, 32.675747, 15.239666>,  <29.710150, 32.530449, 15.443420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022196, 32.675747, 15.239666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573479, 0.089725, -0.814292,
		-0.250080, 0.927365, 0.278307,
		0.780117, 0.363241, -0.509386,
		30.256231, 32.784718, 15.086850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521618, 33.166634, 15.183887>,  <29.710150, 32.530449, 15.443420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521618, 33.166634, 15.183887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823992, 33.045109, 14.951936>,  <30.005417, 32.972195, 14.812765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823992, 33.045109, 14.951936>,  <29.521618, 33.166634, 15.183887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823992, 33.045109, 14.951936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547923, 0.191113, -0.814406,
		0.358248, 0.933368, -0.021996,
		0.755936, -0.303811, -0.579879,
		30.050772, 32.953964, 14.777972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284735, 33.476963, 14.565943>,  <29.521618, 33.166634, 15.183887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284735, 33.476963, 14.565943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563240, 33.213799, 14.451148>,  <29.730343, 33.055901, 14.382271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563240, 33.213799, 14.451148>,  <29.284735, 33.476963, 14.565943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563240, 33.213799, 14.451148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437944, -0.072602, -0.896066,
		0.568700, 0.749584, -0.338681,
		0.696266, -0.657916, -0.286987,
		29.772120, 33.016422, 14.365052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500376, 33.628674, 13.967984>,  <29.284735, 33.476963, 14.565943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500376, 33.628674, 13.967984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607649, 33.243343, 13.971714>,  <29.672012, 33.012146, 13.973952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607649, 33.243343, 13.971714>,  <29.500376, 33.628674, 13.967984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607649, 33.243343, 13.971714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409601, -0.122781, -0.903964,
		0.871954, 0.238610, -0.427506,
		0.268185, -0.963322, 0.009324,
		29.688105, 32.954346, 13.974511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779978, 33.473202, 13.313799>,  <29.500376, 33.628674, 13.967984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779978, 33.473202, 13.313799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671360, 33.123222, 13.474168>,  <29.606190, 32.913235, 13.570389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671360, 33.123222, 13.474168>,  <29.779978, 33.473202, 13.313799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671360, 33.123222, 13.474168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409307, -0.272038, -0.870898,
		0.871053, -0.400586, -0.284250,
		-0.271543, -0.874944, 0.400921,
		29.589897, 32.860741, 13.594444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111769, 33.048462, 12.792450>,  <29.779978, 33.473202, 13.313799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111769, 33.048462, 12.792450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791140, 32.884693, 12.966738>,  <29.598763, 32.786430, 13.071311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791140, 32.884693, 12.966738>,  <30.111769, 33.048462, 12.792450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791140, 32.884693, 12.966738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240950, -0.445754, -0.862117,
		0.547197, -0.796037, 0.258653,
		-0.801572, -0.409425, 0.435720,
		29.550669, 32.761864, 13.097454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960213, 32.356663, 12.521797>,  <30.111769, 33.048462, 12.792450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960213, 32.356663, 12.521797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594397, 32.457005, 12.648723>,  <29.374907, 32.517208, 12.724878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594397, 32.457005, 12.648723>,  <29.960213, 32.356663, 12.521797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594397, 32.457005, 12.648723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402929, -0.495979, -0.769190,
		-0.035575, -0.831310, 0.554669,
		-0.914539, 0.250856, 0.317315,
		29.320034, 32.532261, 12.743917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482368, 31.810411, 12.588877>,  <29.960213, 32.356663, 12.521797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482368, 31.810411, 12.588877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242054, 32.128345, 12.554711>,  <29.097866, 32.319107, 12.534212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242054, 32.128345, 12.554711>,  <29.482368, 31.810411, 12.588877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242054, 32.128345, 12.554711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504252, -0.459703, -0.731029,
		-0.620311, -0.396122, 0.676980,
		-0.600787, 0.794833, -0.085414,
		29.061817, 32.366795, 12.529087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081482, 31.655945, 12.295216>,  <29.482368, 31.810411, 12.588877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081482, 31.655945, 12.295216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093088, 31.259644, 12.348231>,  <30.100052, 31.021862, 12.380041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093088, 31.259644, 12.348231>,  <30.081482, 31.655945, 12.295216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093088, 31.259644, 12.348231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486852, -0.129813, -0.863784,
		0.873002, -0.039462, -0.486117,
		0.029017, -0.990753, 0.132539,
		30.101793, 30.962418, 12.387993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168694, 31.212318, 11.559892>,  <30.081482, 31.655945, 12.295216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168694, 31.212318, 11.559892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003706, 31.033518, 11.877398>,  <29.904715, 30.926237, 12.067901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003706, 31.033518, 11.877398>,  <30.168694, 31.212318, 11.559892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003706, 31.033518, 11.877398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735370, -0.350909, -0.579736,
		0.537681, -0.822832, -0.183972,
		-0.412468, -0.447001, 0.793764,
		29.879965, 30.899418, 12.115526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928213, 30.523369, 11.321548>,  <30.168694, 31.212318, 11.559892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928213, 30.523369, 11.321548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712303, 30.554815, 11.656800>,  <29.582756, 30.573683, 11.857951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712303, 30.554815, 11.656800>,  <29.928213, 30.523369, 11.321548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712303, 30.554815, 11.656800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755392, -0.484635, -0.441034,
		0.371514, -0.871177, 0.320980,
		-0.539777, 0.078615, 0.838129,
		29.550369, 30.578400, 11.908239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600834, 29.836880, 11.576786>,  <29.928213, 30.523369, 11.321548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600834, 29.836880, 11.576786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361572, 30.141684, 11.676023>,  <29.218016, 30.324566, 11.735564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361572, 30.141684, 11.676023>,  <29.600834, 29.836880, 11.576786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361572, 30.141684, 11.676023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797450, -0.535354, -0.278334,
		-0.079277, -0.364327, 0.927891,
		-0.598155, 0.762011, 0.248091,
		29.182125, 30.370287, 11.750449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112907, 29.473326, 11.885034>,  <29.600834, 29.836880, 11.576786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112907, 29.473326, 11.885034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944323, 29.831419, 11.827172>,  <28.843172, 30.046276, 11.792456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944323, 29.831419, 11.827172>,  <29.112907, 29.473326, 11.885034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944323, 29.831419, 11.827172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873688, -0.443592, -0.199737,
		-0.242978, 0.042201, 0.969113,
		-0.421462, 0.895235, -0.144654,
		28.817884, 30.099989, 11.783776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576899, 29.562939, 12.408733>,  <29.112907, 29.473326, 11.885034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576899, 29.562939, 12.408733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506021, 29.714245, 12.045301>,  <28.463495, 29.805029, 11.827242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506021, 29.714245, 12.045301>,  <28.576899, 29.562939, 12.408733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506021, 29.714245, 12.045301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913091, -0.407670, 0.008348,
		-0.367243, 0.831096, 0.417626,
		-0.177191, 0.378265, -0.908581,
		28.452864, 29.827724, 11.772727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032436, 29.972998, 12.397939>,  <28.576899, 29.562939, 12.408733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032436, 29.972998, 12.397939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046986, 29.832682, 12.023640>,  <28.055716, 29.748493, 11.799060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046986, 29.832682, 12.023640>,  <28.032436, 29.972998, 12.397939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046986, 29.832682, 12.023640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946491, -0.312561, 0.080379,
		-0.320674, 0.882753, -0.343388,
		0.036374, -0.350789, -0.935748,
		28.057898, 29.727446, 11.742915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.950069, 29.892305, 13.210779>,  <28.032436, 29.972998, 12.397939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.950069, 29.892305, 13.210779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254133, 30.123520, 13.329460>,  <28.436571, 30.262249, 13.400669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254133, 30.123520, 13.329460>,  <27.950069, 29.892305, 13.210779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254133, 30.123520, 13.329460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023279, -0.480586, 0.876639,
		0.649321, -0.659477, -0.378777,
		0.760158, 0.578038, 0.296702,
		28.482182, 30.296932, 13.418470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373507, 29.439510, 13.638905>,  <27.950069, 29.892305, 13.210779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373507, 29.439510, 13.638905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467651, 29.814146, 13.742754>,  <28.524137, 30.038927, 13.805063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467651, 29.814146, 13.742754>,  <28.373507, 29.439510, 13.638905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467651, 29.814146, 13.742754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075066, -0.283847, 0.955927,
		0.969005, -0.205499, -0.137112,
		0.235361, 0.936590, 0.259623,
		28.538260, 30.095123, 13.820641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656448, 29.293404, 14.222406>,  <28.373507, 29.439510, 13.638905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656448, 29.293404, 14.222406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582922, 29.685795, 14.247371>,  <28.538807, 29.921230, 14.262349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582922, 29.685795, 14.247371>,  <28.656448, 29.293404, 14.222406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582922, 29.685795, 14.247371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106985, -0.083082, 0.990783,
		0.977121, 0.175444, 0.120222,
		-0.183815, 0.980977, 0.062411,
		28.527777, 29.980087, 14.266094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062147, 29.549793, 14.793606>,  <28.656448, 29.293404, 14.222406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062147, 29.549793, 14.793606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807487, 29.854984, 14.748805>,  <28.654692, 30.038099, 14.721925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807487, 29.854984, 14.748805>,  <29.062147, 29.549793, 14.793606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807487, 29.854984, 14.748805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200775, -0.023768, 0.979349,
		0.744560, 0.645987, 0.168319,
		-0.636647, 0.762978, -0.112002,
		28.616493, 30.083878, 14.715204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183863, 30.066402, 15.368497>,  <29.062147, 29.549793, 14.793606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183863, 30.066402, 15.368497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811674, 30.139338, 15.241389>,  <28.588362, 30.183098, 15.165125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811674, 30.139338, 15.241389>,  <29.183863, 30.066402, 15.368497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811674, 30.139338, 15.241389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290942, 0.159386, 0.943371,
		0.222658, 0.970232, -0.095255,
		-0.930471, 0.182336, -0.317770,
		28.532534, 30.194038, 15.146058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990555, 30.720440, 15.517731>,  <29.183863, 30.066402, 15.368497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990555, 30.720440, 15.517731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636671, 30.534275, 15.507271>,  <28.424341, 30.422577, 15.500995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636671, 30.534275, 15.507271>,  <28.990555, 30.720440, 15.517731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636671, 30.534275, 15.507271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150541, 0.232174, 0.960954,
		-0.441168, 0.854100, -0.275470,
		-0.884708, -0.465411, -0.026150,
		28.371258, 30.394651, 15.499426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351904, 31.222557, 15.874125>,  <28.990555, 30.720440, 15.517731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351904, 31.222557, 15.874125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.184509, 30.859362, 15.865918>,  <28.084072, 30.641443, 15.860993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.184509, 30.859362, 15.865918>,  <28.351904, 31.222557, 15.874125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184509, 30.859362, 15.865918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266436, 0.101139, 0.958531,
		-0.868263, 0.406600, -0.284247,
		-0.418488, -0.907991, -0.020518,
		28.058964, 30.586964, 15.859763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650602, 31.340364, 16.116220>,  <28.351904, 31.222557, 15.874125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650602, 31.340364, 16.116220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757330, 30.957150, 16.158115>,  <27.821365, 30.727221, 16.183252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757330, 30.957150, 16.158115>,  <27.650602, 31.340364, 16.116220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757330, 30.957150, 16.158115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307301, 0.018433, 0.951434,
		-0.913441, -0.286046, -0.289488,
		0.266817, -0.958039, 0.104739,
		27.837376, 30.669739, 16.189537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073633, 31.128143, 16.305950>,  <27.650602, 31.340364, 16.116220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073633, 31.128143, 16.305950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394114, 30.913322, 16.411518>,  <27.586401, 30.784430, 16.474859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394114, 30.913322, 16.411518>,  <27.073633, 31.128143, 16.305950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394114, 30.913322, 16.411518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137024, 0.264672, 0.954554,
		-0.582498, -0.800951, 0.138466,
		0.801199, -0.537053, 0.263920,
		27.634474, 30.752207, 16.490694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773096, 30.662838, 16.660564>,  <27.073633, 31.128143, 16.305950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773096, 30.662838, 16.660564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157646, 30.620975, 16.762390>,  <27.388376, 30.595858, 16.823486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157646, 30.620975, 16.762390>,  <26.773096, 30.662838, 16.660564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157646, 30.620975, 16.762390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241782, 0.120841, 0.962777,
		-0.131520, -0.987140, 0.090870,
		0.961376, -0.104654, 0.254566,
		27.446058, 30.589579, 16.838760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751741, 30.249372, 17.270864>,  <26.773096, 30.662838, 16.660564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751741, 30.249372, 17.270864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127962, 30.385056, 17.277794>,  <27.353695, 30.466465, 17.281952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127962, 30.385056, 17.277794>,  <26.751741, 30.249372, 17.270864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127962, 30.385056, 17.277794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039763, 0.059310, 0.997447,
		0.337317, -0.938839, 0.069272,
		0.940551, 0.339210, 0.017325,
		27.410128, 30.486818, 17.282991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049669, 30.005522, 17.890247>,  <26.751741, 30.249372, 17.270864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049669, 30.005522, 17.890247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285391, 30.319326, 17.813034>,  <27.426823, 30.507610, 17.766706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285391, 30.319326, 17.813034>,  <27.049669, 30.005522, 17.890247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285391, 30.319326, 17.813034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223858, 0.071016, 0.972031,
		0.776280, -0.616032, -0.133770,
		0.589302, 0.784513, -0.193032,
		27.462181, 30.554680, 17.755125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698315, 29.922035, 18.353371>,  <27.049669, 30.005522, 17.890247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698315, 29.922035, 18.353371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691029, 30.306820, 18.244339>,  <27.686657, 30.537691, 18.178921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691029, 30.306820, 18.244339>,  <27.698315, 29.922035, 18.353371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691029, 30.306820, 18.244339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270936, 0.267171, 0.924778,
		0.962425, -0.057008, -0.265496,
		-0.018213, 0.961962, -0.272577,
		27.685564, 30.595407, 18.162565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334732, 30.215429, 18.479340>,  <27.698315, 29.922035, 18.353371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334732, 30.215429, 18.479340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104034, 30.542179, 18.475704>,  <27.965616, 30.738230, 18.473522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104034, 30.542179, 18.475704>,  <28.334732, 30.215429, 18.479340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104034, 30.542179, 18.475704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308537, 0.228113, 0.923455,
		0.756421, 0.529792, -0.383598,
		-0.576743, 0.816875, -0.009089,
		27.931011, 30.787241, 18.472977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775349, 30.728113, 18.661448>,  <28.334732, 30.215429, 18.479340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775349, 30.728113, 18.661448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.422590, 30.902191, 18.733959>,  <28.210936, 31.006638, 18.777466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.422590, 30.902191, 18.733959>,  <28.775349, 30.728113, 18.661448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422590, 30.902191, 18.733959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365338, 0.387845, 0.846230,
		0.297969, 0.812515, -0.501033,
		-0.881897, 0.435196, 0.181277,
		28.158022, 31.032749, 18.788342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973238, 31.440187, 18.902344>,  <28.775349, 30.728113, 18.661448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973238, 31.440187, 18.902344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600756, 31.355751, 19.021204>,  <28.377266, 31.305090, 19.092520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600756, 31.355751, 19.021204>,  <28.973238, 31.440187, 18.902344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600756, 31.355751, 19.021204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226843, 0.302495, 0.925764,
		-0.285305, 0.929483, -0.233801,
		-0.931205, -0.211089, 0.297150,
		28.321394, 31.292425, 19.110350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587454, 32.146973, 19.096643>,  <28.973238, 31.440187, 18.902344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587454, 32.146973, 19.096643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397234, 31.835316, 19.260000>,  <28.283102, 31.648321, 19.358015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397234, 31.835316, 19.260000>,  <28.587454, 32.146973, 19.096643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397234, 31.835316, 19.260000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228622, 0.338830, 0.912648,
		-0.849462, 0.527376, 0.016999,
		-0.475549, -0.779146, 0.408393,
		28.254570, 31.601572, 19.382519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537752, 32.373363, 19.800146>,  <28.587454, 32.146973, 19.096643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537752, 32.373363, 19.800146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430826, 31.989412, 19.834015>,  <28.366671, 31.759041, 19.854336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430826, 31.989412, 19.834015>,  <28.537752, 32.373363, 19.800146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430826, 31.989412, 19.834015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091987, 0.062048, 0.993825,
		-0.959209, 0.273452, 0.071710,
		-0.267314, -0.959882, 0.084671,
		28.350632, 31.701448, 19.859417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966072, 32.270798, 20.304865>,  <28.537752, 32.373363, 19.800146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966072, 32.270798, 20.304865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134521, 31.907997, 20.303822>,  <28.235592, 31.690317, 20.303196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134521, 31.907997, 20.303822>,  <27.966072, 32.270798, 20.304865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134521, 31.907997, 20.303822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116860, 0.051405, 0.991817,
		-0.899443, -0.417984, 0.127640,
		0.421125, -0.906999, -0.002610,
		28.260859, 31.635897, 20.303040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722239, 31.767838, 20.806963>,  <27.966072, 32.270798, 20.304865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722239, 31.767838, 20.806963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082066, 31.604692, 20.744453>,  <28.297962, 31.506805, 20.706947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082066, 31.604692, 20.744453>,  <27.722239, 31.767838, 20.806963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082066, 31.604692, 20.744453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105049, -0.145256, 0.983801,
		-0.423956, -0.901415, -0.087822,
		0.899570, -0.407863, -0.156275,
		28.351936, 31.482334, 20.697571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775017, 31.361122, 21.407400>,  <27.722239, 31.767838, 20.806963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775017, 31.361122, 21.407400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142021, 31.373341, 21.248787>,  <28.362225, 31.380672, 21.153620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142021, 31.373341, 21.248787>,  <27.775017, 31.361122, 21.407400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142021, 31.373341, 21.248787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397189, -0.121157, 0.909704,
		-0.020254, -0.992163, -0.123296,
		0.917513, 0.030547, -0.396530,
		28.417274, 31.382504, 21.129827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168018, 30.749531, 21.652863>,  <27.775017, 31.361122, 21.407400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168018, 30.749531, 21.652863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414600, 31.042364, 21.536907>,  <28.562550, 31.218065, 21.467335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414600, 31.042364, 21.536907>,  <28.168018, 30.749531, 21.652863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414600, 31.042364, 21.536907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478302, -0.055711, 0.876427,
		0.625469, -0.678931, -0.384501,
		0.616454, 0.732085, -0.289889,
		28.599537, 31.261990, 21.449940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798864, 30.502668, 21.830536>,  <28.168018, 30.749531, 21.652863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798864, 30.502668, 21.830536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810965, 30.902397, 21.838894>,  <28.818224, 31.142235, 21.843908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810965, 30.902397, 21.838894>,  <28.798864, 30.502668, 21.830536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810965, 30.902397, 21.838894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512413, -0.033452, 0.858087,
		0.858206, -0.015251, -0.513078,
		0.030250, 0.999324, 0.020894,
		28.820040, 31.202194, 21.845161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315714, 30.635620, 22.084711>,  <28.798864, 30.502668, 21.830536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315714, 30.635620, 22.084711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158129, 31.000650, 22.128529>,  <29.063578, 31.219669, 22.154819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158129, 31.000650, 22.128529>,  <29.315714, 30.635620, 22.084711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158129, 31.000650, 22.128529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585641, 0.157374, 0.795146,
		0.708392, 0.377411, -0.596441,
		-0.393961, 0.912576, 0.109546,
		29.039940, 31.274424, 22.161392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834419, 31.080603, 22.205315>,  <29.315714, 30.635620, 22.084711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834419, 31.080603, 22.205315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540501, 31.307566, 22.353973>,  <29.364149, 31.443745, 22.443169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540501, 31.307566, 22.353973>,  <29.834419, 31.080603, 22.205315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540501, 31.307566, 22.353973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555260, 0.188500, 0.810034,
		0.389565, 0.801570, -0.453569,
		-0.734796, 0.567409, 0.371647,
		29.320063, 31.477789, 22.465467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210438, 31.401087, 22.686905>,  <29.834419, 31.080603, 22.205315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210438, 31.401087, 22.686905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850554, 31.554659, 22.769962>,  <29.634623, 31.646801, 22.819798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850554, 31.554659, 22.769962>,  <30.210438, 31.401087, 22.686905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850554, 31.554659, 22.769962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329702, 0.286032, 0.899712,
		0.286032, 0.877943, -0.383929,
		-0.899712, 0.383929, 0.207645,
		29.580641, 31.669838, 22.832256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240660, 32.070457, 22.993757>,  <30.210438, 31.401087, 22.686905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240660, 32.070457, 22.993757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884890, 31.920851, 23.098860>,  <29.671429, 31.831087, 23.161921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884890, 31.920851, 23.098860>,  <30.240660, 32.070457, 22.993757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884890, 31.920851, 23.098860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141521, 0.321270, 0.936353,
		-0.434623, 0.870000, -0.232814,
		-0.889424, -0.374013, 0.262755,
		29.618063, 31.808647, 23.177687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964384, 32.572033, 23.475859>,  <30.240660, 32.070457, 22.993757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964384, 32.572033, 23.475859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762058, 32.237846, 23.561787>,  <29.640663, 32.037334, 23.613342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762058, 32.237846, 23.561787>,  <29.964384, 32.572033, 23.475859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762058, 32.237846, 23.561787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046933, 0.222001, 0.973916,
		-0.861366, 0.502701, -0.073080,
		-0.505813, -0.835468, 0.214818,
		29.610315, 31.987206, 23.626232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646957, 32.727917, 24.032028>,  <29.964384, 32.572033, 23.475859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646957, 32.727917, 24.032028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660200, 32.328167, 24.027159>,  <29.668146, 32.088318, 24.024237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660200, 32.328167, 24.027159>,  <29.646957, 32.727917, 24.032028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660200, 32.328167, 24.027159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040325, -0.013504, 0.999095,
		-0.998638, -0.032585, -0.040747,
		0.033106, -0.999378, -0.012171,
		29.670132, 32.028355, 24.023508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127773, 32.555134, 24.549330>,  <29.646957, 32.727917, 24.032028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127773, 32.555134, 24.549330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316456, 32.203186, 24.526297>,  <29.429667, 31.992016, 24.512478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316456, 32.203186, 24.526297>,  <29.127773, 32.555134, 24.549330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316456, 32.203186, 24.526297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153105, -0.146042, 0.977359,
		-0.868361, -0.452212, -0.203602,
		0.471708, -0.879873, -0.057581,
		29.457968, 31.939224, 24.509022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737154, 31.885994, 24.820639>,  <29.127773, 32.555134, 24.549330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737154, 31.885994, 24.820639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.131964, 31.831192, 24.854139>,  <29.368849, 31.798311, 24.874239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.131964, 31.831192, 24.854139>,  <28.737154, 31.885994, 24.820639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131964, 31.831192, 24.854139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100144, -0.117503, 0.988010,
		-0.125559, -0.983571, -0.129702,
		0.987019, -0.137042, 0.083745,
		29.428070, 31.790091, 24.879265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783051, 31.278660, 25.242067>,  <28.737154, 31.885994, 24.820639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783051, 31.278660, 25.242067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157381, 31.418221, 25.262039>,  <29.381979, 31.501957, 25.274023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157381, 31.418221, 25.262039>,  <28.783051, 31.278660, 25.242067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157381, 31.418221, 25.262039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091469, -0.377227, 0.921593,
		0.340383, -0.857884, -0.384933,
		0.935828, 0.348904, 0.049931,
		29.438129, 31.522892, 25.277020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138756, 30.818108, 25.662622>,  <28.783051, 31.278660, 25.242067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138756, 30.818108, 25.662622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377546, 31.137167, 25.696974>,  <29.520821, 31.328604, 25.717585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377546, 31.137167, 25.696974>,  <29.138756, 30.818108, 25.662622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377546, 31.137167, 25.696974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211074, -0.259438, 0.942412,
		0.773995, -0.544469, -0.323241,
		0.596975, 0.797650, 0.085880,
		29.556639, 31.376461, 25.722738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809839, 30.556744, 25.919348>,  <29.138756, 30.818108, 25.662622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809839, 30.556744, 25.919348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750277, 30.944269, 25.998569>,  <29.714539, 31.176785, 26.046103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750277, 30.944269, 25.998569>,  <29.809839, 30.556744, 25.919348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750277, 30.944269, 25.998569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162955, -0.173510, 0.971257,
		0.975332, 0.176903, -0.132036,
		-0.148909, 0.968814, 0.198057,
		29.705605, 31.234913, 26.057987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335335, 30.717495, 26.395340>,  <29.809839, 30.556744, 25.919348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335335, 30.717495, 26.395340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081715, 31.025085, 26.427988>,  <29.929543, 31.209639, 26.447577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081715, 31.025085, 26.427988>,  <30.335335, 30.717495, 26.395340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081715, 31.025085, 26.427988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042890, -0.070413, 0.996595,
		0.772103, 0.635390, 0.011663,
		-0.634048, 0.768974, 0.081618,
		29.891500, 31.255777, 26.452473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733055, 31.127892, 26.751133>,  <30.335335, 30.717495, 26.395340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733055, 31.127892, 26.751133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368073, 31.276634, 26.819422>,  <30.149082, 31.365879, 26.860395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368073, 31.276634, 26.819422>,  <30.733055, 31.127892, 26.751133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368073, 31.276634, 26.819422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162941, -0.052505, 0.985238,
		0.375329, 0.926805, -0.012682,
		-0.912457, 0.371855, 0.170722,
		30.094336, 31.388191, 26.870638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761812, 31.667356, 27.327578>,  <30.733055, 31.127892, 26.751133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761812, 31.667356, 27.327578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377674, 31.555920, 27.323166>,  <30.147190, 31.489058, 27.320518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377674, 31.555920, 27.323166>,  <30.761812, 31.667356, 27.327578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377674, 31.555920, 27.323166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011688, 0.000696, 0.999931,
		-0.278564, 0.960410, -0.003925,
		-0.960347, -0.278591, -0.011031,
		30.089571, 31.472342, 27.319857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394327, 32.162899, 27.742781>,  <30.761812, 31.667356, 27.327578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394327, 32.162899, 27.742781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160728, 31.838755, 27.723734>,  <30.020569, 31.644268, 27.712305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160728, 31.838755, 27.723734>,  <30.394327, 32.162899, 27.742781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160728, 31.838755, 27.723734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170750, 0.065280, 0.983150,
		-0.793594, 0.582288, -0.176492,
		-0.583997, -0.810358, -0.047619,
		29.985529, 31.595648, 27.709448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680161, 32.340141, 27.977617>,  <30.394327, 32.162899, 27.742781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680161, 32.340141, 27.977617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714338, 31.943783, 28.019220>,  <29.734846, 31.705967, 28.044182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714338, 31.943783, 28.019220>,  <29.680161, 32.340141, 27.977617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714338, 31.943783, 28.019220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288618, 0.075298, 0.954479,
		-0.953624, -0.111576, -0.279558,
		0.085447, -0.990899, 0.104009,
		29.739973, 31.646513, 28.050423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200468, 32.164497, 28.571066>,  <29.680161, 32.340141, 27.977617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200468, 32.164497, 28.571066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406099, 31.826340, 28.513048>,  <29.529478, 31.623446, 28.478237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406099, 31.826340, 28.513048>,  <29.200468, 32.164497, 28.571066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406099, 31.826340, 28.513048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271219, -0.320634, 0.907543,
		-0.813734, -0.427210, -0.394117,
		0.514079, -0.845391, -0.145043,
		29.560324, 31.572723, 28.469536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571585, 32.428150, 28.141720>,  <29.200468, 32.164497, 28.571066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571585, 32.428150, 28.141720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274981, 32.641258, 28.304850>,  <28.097019, 32.769123, 28.402727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274981, 32.641258, 28.304850>,  <28.571585, 32.428150, 28.141720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274981, 32.641258, 28.304850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484306, -0.004345, -0.874888,
		-0.464341, -0.846250, 0.261245,
		-0.741509, 0.532768, 0.407826,
		28.052528, 32.801090, 28.427197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898397, 32.106270, 27.976349>,  <28.571585, 32.428150, 28.141720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898397, 32.106270, 27.976349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837059, 32.496994, 28.036110>,  <27.800255, 32.731430, 28.071966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837059, 32.496994, 28.036110>,  <27.898397, 32.106270, 27.976349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837059, 32.496994, 28.036110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558232, 0.039123, -0.828762,
		-0.815390, -0.210491, 0.539289,
		-0.153348, 0.976813, 0.149403,
		27.791054, 32.790039, 28.080931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085316, 32.252834, 27.937698>,  <27.898397, 32.106270, 27.976349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085316, 32.252834, 27.937698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277594, 32.589424, 27.839018>,  <27.392960, 32.791378, 27.779810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277594, 32.589424, 27.839018>,  <27.085316, 32.252834, 27.937698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277594, 32.589424, 27.839018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606613, 0.115948, -0.786497,
		-0.633210, 0.527714, 0.566182,
		0.480693, 0.841471, -0.246699,
		27.421801, 32.841866, 27.765009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596411, 32.566689, 27.529200>,  <27.085316, 32.252834, 27.937698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596411, 32.566689, 27.529200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930490, 32.777096, 27.465015>,  <27.130938, 32.903339, 27.426504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930490, 32.777096, 27.465015>,  <26.596411, 32.566689, 27.529200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930490, 32.777096, 27.465015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287052, 0.168095, -0.943051,
		-0.469088, 0.833697, 0.291387,
		0.835199, 0.526017, -0.160463,
		27.181049, 32.934902, 27.416876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433491, 33.061317, 27.119955>,  <26.596411, 32.566689, 27.529200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433491, 33.061317, 27.119955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826872, 33.102806, 27.060545>,  <27.062901, 33.127701, 27.024899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826872, 33.102806, 27.060545>,  <26.433491, 33.061317, 27.119955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826872, 33.102806, 27.060545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164753, 0.171170, -0.971369,
		-0.075329, 0.979767, 0.185426,
		0.983454, 0.103722, -0.148525,
		27.121908, 33.133923, 27.015987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467836, 33.632725, 26.705343>,  <26.433491, 33.061317, 27.119955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467836, 33.632725, 26.705343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820618, 33.449570, 26.660629>,  <27.032288, 33.339676, 26.633801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820618, 33.449570, 26.660629>,  <26.467836, 33.632725, 26.705343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820618, 33.449570, 26.660629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162911, -0.073584, -0.983893,
		0.442285, 0.885960, -0.139492,
		0.881955, -0.457886, -0.111787,
		27.085205, 33.312202, 26.627092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811409, 34.040257, 26.187403>,  <26.467836, 33.632725, 26.705343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811409, 34.040257, 26.187403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960075, 33.668972, 26.194128>,  <27.049274, 33.446201, 26.198164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960075, 33.668972, 26.194128>,  <26.811409, 34.040257, 26.187403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960075, 33.668972, 26.194128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108342, -0.061355, -0.992218,
		0.922023, 0.366952, -0.123368,
		0.371666, -0.928214, 0.016815,
		27.071575, 33.390507, 26.199173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274956, 33.931812, 25.632685>,  <26.811409, 34.040257, 26.187403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274956, 33.931812, 25.632685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172125, 33.549698, 25.691111>,  <27.110426, 33.320427, 25.726166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172125, 33.549698, 25.691111>,  <27.274956, 33.931812, 25.632685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172125, 33.549698, 25.691111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171714, -0.103586, -0.979686,
		0.951013, -0.276936, -0.137407,
		-0.257077, -0.955289, 0.146065,
		27.095001, 33.263111, 25.734930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471508, 33.672821, 25.033649>,  <27.274956, 33.931812, 25.632685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471508, 33.672821, 25.033649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297419, 33.349831, 25.192930>,  <27.192965, 33.156036, 25.288500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297419, 33.349831, 25.192930>,  <27.471508, 33.672821, 25.033649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297419, 33.349831, 25.192930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321338, -0.273842, -0.906505,
		0.841025, -0.522490, -0.140290,
		-0.435223, -0.807474, 0.398204,
		27.166851, 33.107590, 25.312391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670021, 33.096500, 24.573334>,  <27.471508, 33.672821, 25.033649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670021, 33.096500, 24.573334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318569, 33.041138, 24.756134>,  <27.107698, 33.007919, 24.865814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.318569, 33.041138, 24.756134>,  <27.670021, 33.096500, 24.573334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318569, 33.041138, 24.756134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413259, -0.259053, -0.872988,
		0.239216, -0.955895, 0.170413,
		-0.878631, -0.138408, 0.457002,
		27.054979, 32.999615, 24.893234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319588, 32.460358, 24.299614>,  <27.670021, 33.096500, 24.573334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319588, 32.460358, 24.299614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033825, 32.696083, 24.450520>,  <26.862368, 32.837521, 24.541063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033825, 32.696083, 24.450520>,  <27.319588, 32.460358, 24.299614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033825, 32.696083, 24.450520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537318, -0.116646, -0.835275,
		-0.448237, -0.799435, 0.399984,
		-0.714404, 0.589319, 0.377266,
		26.819504, 32.872879, 24.563700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776855, 32.163055, 24.039396>,  <27.319588, 32.460358, 24.299614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776855, 32.163055, 24.039396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.639395, 32.524292, 24.142422>,  <26.556919, 32.741032, 24.204237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.639395, 32.524292, 24.142422>,  <26.776855, 32.163055, 24.039396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.639395, 32.524292, 24.142422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614609, -0.008912, -0.788782,
		-0.710043, -0.429366, 0.558108,
		-0.343650, 0.903087, 0.257564,
		26.536301, 32.795219, 24.219690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155394, 32.103241, 23.834805>,  <26.776855, 32.163055, 24.039396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155394, 32.103241, 23.834805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224581, 32.494606, 23.880037>,  <26.266094, 32.729424, 23.907177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224581, 32.494606, 23.880037>,  <26.155394, 32.103241, 23.834805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224581, 32.494606, 23.880037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370756, 0.171047, -0.912843,
		-0.912481, 0.115969, 0.392339,
		0.172970, 0.978414, 0.113081,
		26.276472, 32.788132, 23.913961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510122, 32.409843, 23.557259>,  <26.155394, 32.103241, 23.834805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510122, 32.409843, 23.557259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804092, 32.681103, 23.557341>,  <25.980474, 32.843861, 23.557390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804092, 32.681103, 23.557341>,  <25.510122, 32.409843, 23.557259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804092, 32.681103, 23.557341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300167, 0.325566, -0.896608,
		-0.608101, 0.658877, 0.442825,
		0.734923, 0.678150, 0.000204,
		26.024569, 32.884548, 23.557402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.225548, 33.010292, 23.381433>,  <25.510122, 32.409843, 23.557259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.225548, 33.010292, 23.381433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614107, 33.041355, 23.291674>,  <25.847242, 33.059994, 23.237818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614107, 33.041355, 23.291674>,  <25.225548, 33.010292, 23.381433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.614107, 33.041355, 23.291674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236599, 0.236224, -0.942454,
		-0.020181, 0.968590, 0.247842,
		0.971398, 0.077659, -0.224400,
		25.905527, 33.064651, 23.224354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.304684, 33.632805, 22.976612>,  <25.225548, 33.010292, 23.381433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.304684, 33.632805, 22.976612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620939, 33.403236, 22.891287>,  <25.810692, 33.265495, 22.840092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620939, 33.403236, 22.891287>,  <25.304684, 33.632805, 22.976612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620939, 33.403236, 22.891287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180574, 0.114327, -0.976894,
		0.585052, 0.810887, -0.013244,
		0.790637, -0.573926, -0.213312,
		25.858130, 33.231060, 22.827293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462687, 33.956322, 22.348749>,  <25.304684, 33.632805, 22.976612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462687, 33.956322, 22.348749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668604, 33.613552, 22.359097>,  <25.792154, 33.407890, 22.365305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668604, 33.613552, 22.359097>,  <25.462687, 33.956322, 22.348749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668604, 33.613552, 22.359097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043968, -0.056523, -0.997433,
		0.856185, 0.512336, -0.066776,
		0.514795, -0.856923, 0.025868,
		25.823042, 33.356476, 22.366858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.103176, 34.019417, 21.898098>,  <25.462687, 33.956322, 22.348749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.103176, 34.019417, 21.898098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018244, 33.629444, 21.924700>,  <25.967283, 33.395462, 21.940660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018244, 33.629444, 21.924700>,  <26.103176, 34.019417, 21.898098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018244, 33.629444, 21.924700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136317, -0.096943, -0.985911,
		0.967643, -0.200276, 0.153484,
		-0.212333, -0.974932, 0.066505,
		25.954544, 33.336964, 21.944651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679775, 33.719223, 21.512630>,  <26.103176, 34.019417, 21.898098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679775, 33.719223, 21.512630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.382038, 33.454090, 21.545153>,  <26.203396, 33.295010, 21.564665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.382038, 33.454090, 21.545153>,  <26.679775, 33.719223, 21.512630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.382038, 33.454090, 21.545153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094229, -0.224780, -0.969843,
		0.661116, -0.714234, 0.229771,
		-0.744343, -0.662830, 0.081304,
		26.158735, 33.255241, 21.569544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946804, 33.068653, 21.090385>,  <26.679775, 33.719223, 21.512630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946804, 33.068653, 21.090385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550613, 33.022350, 21.120190>,  <26.312899, 32.994568, 21.138073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550613, 33.022350, 21.120190>,  <26.946804, 33.068653, 21.090385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550613, 33.022350, 21.120190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049450, -0.205973, -0.977307,
		0.128479, -0.971687, 0.198288,
		-0.990479, -0.115759, 0.074513,
		26.253469, 32.987621, 21.142544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883965, 32.412395, 20.792576>,  <26.946804, 33.068653, 21.090385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883965, 32.412395, 20.792576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562088, 32.649784, 20.786011>,  <26.368961, 32.792217, 20.782072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562088, 32.649784, 20.786011>,  <26.883965, 32.412395, 20.792576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562088, 32.649784, 20.786011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046245, -0.090217, -0.994848,
		-0.591891, -0.799786, 0.100042,
		-0.804691, 0.593468, -0.016413,
		26.320681, 32.827824, 20.781086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412390, 32.003590, 20.377502>,  <26.883965, 32.412395, 20.792576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412390, 32.003590, 20.377502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291307, 32.384781, 20.371870>,  <26.218658, 32.613495, 20.368490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291307, 32.384781, 20.371870>,  <26.412390, 32.003590, 20.377502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291307, 32.384781, 20.371870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028421, -0.023792, -0.999313,
		-0.952660, -0.302098, 0.034287,
		-0.302706, 0.952980, -0.014080,
		26.200495, 32.670673, 20.367645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781902, 32.051411, 19.942583>,  <26.412390, 32.003590, 20.377502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781902, 32.051411, 19.942583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941692, 32.416847, 19.972971>,  <26.037567, 32.636108, 19.991203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941692, 32.416847, 19.972971>,  <25.781902, 32.051411, 19.942583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941692, 32.416847, 19.972971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106969, 0.035852, -0.993616,
		-0.910481, 0.405053, -0.083404,
		0.399476, 0.913590, 0.075970,
		26.061535, 32.690926, 19.995762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.528065, 32.360352, 19.343176>,  <25.781902, 32.051411, 19.942583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.528065, 32.360352, 19.343176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828484, 32.604561, 19.443726>,  <26.008734, 32.751087, 19.504055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828484, 32.604561, 19.443726>,  <25.528065, 32.360352, 19.343176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828484, 32.604561, 19.443726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210675, 0.139223, -0.967591,
		-0.625738, 0.779663, -0.024060,
		0.751045, 0.610527, 0.251372,
		26.053797, 32.787720, 19.519136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418354, 32.954647, 18.933779>,  <25.528065, 32.360352, 19.343176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418354, 32.954647, 18.933779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804184, 32.933044, 19.037067>,  <26.035683, 32.920082, 19.099041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804184, 32.933044, 19.037067>,  <25.418354, 32.954647, 18.933779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804184, 32.933044, 19.037067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262798, 0.111178, -0.958424,
		0.023050, 0.992332, 0.121431,
		0.964576, -0.054003, 0.258220,
		26.093557, 32.916843, 19.114532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832422, 33.514896, 18.581987>,  <25.418354, 32.954647, 18.933779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.832422, 33.514896, 18.581987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111200, 33.241966, 18.670258>,  <26.278467, 33.078209, 18.723219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111200, 33.241966, 18.670258>,  <25.832422, 33.514896, 18.581987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111200, 33.241966, 18.670258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403390, 0.118595, -0.907310,
		0.592909, 0.721365, 0.357898,
		0.696947, -0.682325, 0.220675,
		26.320284, 33.037270, 18.736460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461477, 33.715687, 18.274565>,  <25.832422, 33.514896, 18.581987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461477, 33.715687, 18.274565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486364, 33.317566, 18.304234>,  <26.501297, 33.078693, 18.322035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486364, 33.317566, 18.304234>,  <26.461477, 33.715687, 18.274565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486364, 33.317566, 18.304234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386920, -0.044452, -0.921041,
		0.920012, 0.086003, 0.382337,
		0.062217, -0.995303, 0.074173,
		26.505030, 33.018974, 18.326485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101133, 33.512749, 18.176844>,  <26.461477, 33.715687, 18.274565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101133, 33.512749, 18.176844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904989, 33.177700, 18.080559>,  <26.787302, 32.976673, 18.022787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904989, 33.177700, 18.080559>,  <27.101133, 33.512749, 18.176844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904989, 33.177700, 18.080559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526303, -0.064457, -0.847851,
		0.694660, -0.542440, 0.472448,
		-0.490360, -0.837618, -0.240711,
		26.757881, 32.926414, 18.008345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608408, 33.038490, 17.930719>,  <27.101133, 33.512749, 18.176844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608408, 33.038490, 17.930719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268139, 32.887836, 17.784021>,  <27.063978, 32.797443, 17.696003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268139, 32.887836, 17.784021>,  <27.608408, 33.038490, 17.930719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268139, 32.887836, 17.784021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442169, -0.135301, -0.886668,
		0.284334, -0.916425, 0.281635,
		-0.850671, -0.376640, -0.366745,
		27.012938, 32.774845, 17.673998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731894, 32.502937, 17.421999>,  <27.608408, 33.038490, 17.930719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731894, 32.502937, 17.421999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363527, 32.624882, 17.324860>,  <27.142508, 32.698048, 17.266577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363527, 32.624882, 17.324860>,  <27.731894, 32.502937, 17.421999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363527, 32.624882, 17.324860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300159, 0.157254, -0.940838,
		-0.248633, -0.939325, -0.236324,
		-0.920916, 0.304858, -0.242848,
		27.087252, 32.716339, 17.252005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700838, 32.215298, 16.723621>,  <27.731894, 32.502937, 17.421999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700838, 32.215298, 16.723621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403061, 32.482178, 16.733744>,  <27.224394, 32.642307, 16.739817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403061, 32.482178, 16.733744>,  <27.700838, 32.215298, 16.723621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403061, 32.482178, 16.733744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057533, 0.101863, -0.993133,
		-0.665201, -0.737877, -0.114218,
		-0.744444, 0.667205, 0.025308,
		27.179728, 32.682339, 16.741337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403168, 32.027245, 16.184504>,  <27.700838, 32.215298, 16.723621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403168, 32.027245, 16.184504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247126, 32.390144, 16.247383>,  <27.153502, 32.607883, 16.285110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247126, 32.390144, 16.247383>,  <27.403168, 32.027245, 16.184504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247126, 32.390144, 16.247383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084377, 0.205228, -0.975070,
		-0.916897, -0.367114, -0.156612,
		-0.390103, 0.907253, 0.157197,
		27.130095, 32.662319, 16.294542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874422, 32.056313, 15.724209>,  <27.403168, 32.027245, 16.184504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874422, 32.056313, 15.724209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974430, 32.435612, 15.802502>,  <27.034435, 32.663193, 15.849477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974430, 32.435612, 15.802502>,  <26.874422, 32.056313, 15.724209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974430, 32.435612, 15.802502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202391, 0.146503, -0.968284,
		-0.946852, 0.281703, -0.155289,
		0.250019, 0.948251, 0.195731,
		27.049437, 32.720085, 15.861221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353714, 32.470444, 15.435405>,  <26.874422, 32.056313, 15.724209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353714, 32.470444, 15.435405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656044, 32.724323, 15.499765>,  <26.837442, 32.876652, 15.538382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656044, 32.724323, 15.499765>,  <26.353714, 32.470444, 15.435405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656044, 32.724323, 15.499765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005919, 0.239103, -0.970976,
		-0.654748, 0.734839, 0.176963,
		0.755824, 0.634698, 0.160902,
		26.882792, 32.914734, 15.548036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.126835, 33.066372, 15.091352>,  <26.353714, 32.470444, 15.435405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.126835, 33.066372, 15.091352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524305, 33.067780, 15.136250>,  <26.762787, 33.068623, 15.163190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524305, 33.067780, 15.136250>,  <26.126835, 33.066372, 15.091352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524305, 33.067780, 15.136250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105036, 0.324545, -0.940020,
		-0.039736, 0.945864, 0.322122,
		0.993674, 0.003518, 0.112246,
		26.822407, 33.068836, 15.169924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375509, 33.683895, 14.886091>,  <26.126835, 33.066372, 15.091352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375509, 33.683895, 14.886091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698154, 33.451954, 14.840235>,  <26.891741, 33.312790, 14.812721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698154, 33.451954, 14.840235>,  <26.375509, 33.683895, 14.886091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698154, 33.451954, 14.840235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068148, 0.283889, -0.956432,
		0.587140, 0.763657, 0.268504,
		0.806612, -0.579858, -0.114641,
		26.940138, 33.277996, 14.805842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.671251, 34.043552, 14.489537>,  <26.375509, 33.683895, 14.886091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.671251, 34.043552, 14.489537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888006, 33.709538, 14.451429>,  <27.018059, 33.509129, 14.428564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888006, 33.709538, 14.451429>,  <26.671251, 34.043552, 14.489537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888006, 33.709538, 14.451429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091718, 0.171434, -0.980917,
		0.835431, 0.522810, 0.169485,
		0.541889, -0.835033, -0.095270,
		27.050573, 33.459026, 14.422849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250761, 34.257740, 14.146824>,  <26.671251, 34.043552, 14.489537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250761, 34.257740, 14.146824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222401, 33.860359, 14.110978>,  <27.205383, 33.621933, 14.089471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222401, 33.860359, 14.110978>,  <27.250761, 34.257740, 14.146824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222401, 33.860359, 14.110978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069977, 0.084666, -0.993949,
		0.995026, -0.076744, 0.063516,
		-0.070902, -0.993450, -0.089615,
		27.201130, 33.562325, 14.084094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564489, 34.967892, 14.242289>,  <27.250761, 34.257740, 14.146824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564489, 34.967892, 14.242289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363520, 35.310863, 14.197788>,  <27.242937, 35.516647, 14.171088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363520, 35.310863, 14.197788>,  <27.564489, 34.967892, 14.242289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363520, 35.310863, 14.197788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062444, 0.092350, 0.993767,
		0.862363, 0.506240, 0.007142,
		-0.502425, 0.857434, -0.111251,
		27.212791, 35.568092, 14.164412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903574, 35.451721, 14.698471>,  <27.564489, 34.967892, 14.242289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903574, 35.451721, 14.698471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535091, 35.582031, 14.613379>,  <27.314003, 35.660217, 14.562324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535091, 35.582031, 14.613379>,  <27.903574, 35.451721, 14.698471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535091, 35.582031, 14.613379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135682, 0.243453, 0.960376,
		0.364655, 0.913566, -0.180069,
		-0.921204, 0.325774, -0.212730,
		27.258730, 35.679764, 14.549560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984938, 35.992287, 15.063722>,  <27.903574, 35.451721, 14.698471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984938, 35.992287, 15.063722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590075, 35.939007, 15.028452>,  <27.353157, 35.907040, 15.007290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590075, 35.939007, 15.028452>,  <27.984938, 35.992287, 15.063722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590075, 35.939007, 15.028452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127923, 0.328612, 0.935762,
		-0.095665, 0.935025, -0.341432,
		-0.987160, -0.133197, -0.088174,
		27.293926, 35.899048, 15.002000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770498, 36.479198, 15.426242>,  <27.984938, 35.992287, 15.063722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770498, 36.479198, 15.426242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450199, 36.239693, 15.432939>,  <27.258020, 36.095989, 15.436956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450199, 36.239693, 15.432939>,  <27.770498, 36.479198, 15.426242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450199, 36.239693, 15.432939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114237, 0.180090, 0.976994,
		-0.588007, 0.780413, -0.212608,
		-0.800748, -0.598767, 0.016742,
		27.209974, 36.060062, 15.437962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327301, 36.694557, 16.016838>,  <27.770498, 36.479198, 15.426242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327301, 36.694557, 16.016838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190485, 36.326355, 15.941288>,  <27.108397, 36.105434, 15.895958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190485, 36.326355, 15.941288>,  <27.327301, 36.694557, 16.016838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190485, 36.326355, 15.941288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074873, -0.173664, 0.981955,
		-0.936698, 0.350008, -0.009522,
		-0.342038, -0.920508, -0.188877,
		27.087873, 36.050201, 15.884624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672955, 36.721859, 16.346117>,  <27.327301, 36.694557, 16.016838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672955, 36.721859, 16.346117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789730, 36.340534, 16.315208>,  <26.859795, 36.111740, 16.296663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789730, 36.340534, 16.315208>,  <26.672955, 36.721859, 16.346117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789730, 36.340534, 16.315208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024918, -0.088345, 0.995778,
		-0.956113, -0.288780, -0.049546,
		0.291938, -0.953311, -0.077272,
		26.877312, 36.054543, 16.292027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.224567, 36.274708, 16.747650>,  <26.672955, 36.721859, 16.346117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.224567, 36.274708, 16.747650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571743, 36.079586, 16.710272>,  <26.780048, 35.962513, 16.687845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571743, 36.079586, 16.710272>,  <26.224567, 36.274708, 16.747650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.571743, 36.079586, 16.710272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003960, -0.194931, 0.980809,
		-0.496658, -0.850911, -0.171119,
		0.867937, -0.487804, -0.093444,
		26.832125, 35.933247, 16.682240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.123009, 35.764893, 17.152079>,  <26.224567, 36.274708, 16.747650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.123009, 35.764893, 17.152079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521593, 35.780937, 17.122522>,  <26.760744, 35.790562, 17.104788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521593, 35.780937, 17.122522>,  <26.123009, 35.764893, 17.152079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.521593, 35.780937, 17.122522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081468, -0.243498, 0.966474,
		0.020773, -0.969072, -0.245903,
		0.996459, 0.040110, -0.073890,
		26.820532, 35.792969, 17.100355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429449, 35.192055, 17.519230>,  <26.123009, 35.764893, 17.152079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429449, 35.192055, 17.519230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734829, 35.449917, 17.503397>,  <26.918056, 35.604633, 17.493896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734829, 35.449917, 17.503397>,  <26.429449, 35.192055, 17.519230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734829, 35.449917, 17.503397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035014, 0.019885, 0.999189,
		0.644916, -0.764218, -0.007390,
		0.763451, 0.644652, -0.039582,
		26.963865, 35.643311, 17.491522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936163, 34.948143, 18.130974>,  <26.429449, 35.192055, 17.519230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936163, 34.948143, 18.130974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041082, 35.321339, 18.032396>,  <27.104034, 35.545254, 17.973249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041082, 35.321339, 18.032396>,  <26.936163, 34.948143, 18.130974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041082, 35.321339, 18.032396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150325, 0.212761, 0.965471,
		0.953206, -0.290289, -0.084445,
		0.262300, 0.932987, -0.246443,
		27.119772, 35.601234, 17.958464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556158, 35.080696, 18.456066>,  <26.936163, 34.948143, 18.130974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556158, 35.080696, 18.456066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401287, 35.444206, 18.393820>,  <27.308365, 35.662312, 18.356472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401287, 35.444206, 18.393820>,  <27.556158, 35.080696, 18.456066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401287, 35.444206, 18.393820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251965, 0.266644, 0.930277,
		0.886909, 0.320972, -0.332219,
		-0.387177, 0.908778, -0.155615,
		27.285133, 35.716839, 18.347136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965153, 35.501873, 18.811312>,  <27.556158, 35.080696, 18.456066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965153, 35.501873, 18.811312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623039, 35.705341, 18.771820>,  <27.417772, 35.827423, 18.748125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623039, 35.705341, 18.771820>,  <27.965153, 35.501873, 18.811312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623039, 35.705341, 18.771820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006778, 0.179536, 0.983728,
		0.518119, 0.842034, -0.150107,
		-0.855282, 0.508670, -0.098728,
		27.366455, 35.857941, 18.742201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931099, 36.015240, 19.312180>,  <27.965153, 35.501873, 18.811312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931099, 36.015240, 19.312180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542032, 36.025227, 19.219833>,  <27.308592, 36.031219, 19.164427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542032, 36.025227, 19.219833>,  <27.931099, 36.015240, 19.312180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542032, 36.025227, 19.219833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220873, 0.207397, 0.952996,
		0.071670, 0.977938, -0.196214,
		-0.972666, 0.024963, -0.230865,
		27.250233, 36.032715, 19.150574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625385, 36.642632, 19.554533>,  <27.931099, 36.015240, 19.312180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625385, 36.642632, 19.554533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346304, 36.357815, 19.523031>,  <27.178856, 36.186924, 19.504129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346304, 36.357815, 19.523031>,  <27.625385, 36.642632, 19.554533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346304, 36.357815, 19.523031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232432, 0.121010, 0.965055,
		-0.677631, 0.691629, -0.249931,
		-0.697704, -0.712044, -0.078756,
		27.136993, 36.144203, 19.499405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978493, 36.955284, 19.821846>,  <27.625385, 36.642632, 19.554533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978493, 36.955284, 19.821846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958620, 36.555950, 19.833525>,  <26.946697, 36.316349, 19.840532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958620, 36.555950, 19.833525>,  <26.978493, 36.955284, 19.821846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958620, 36.555950, 19.833525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396578, 0.046548, 0.916820,
		-0.916656, 0.033969, -0.398231,
		-0.049680, -0.998338, 0.029197,
		26.943716, 36.256447, 19.842283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277822, 36.743851, 20.021044>,  <26.978493, 36.955284, 19.821846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277822, 36.743851, 20.021044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434744, 36.382061, 20.087997>,  <26.528896, 36.164986, 20.128170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434744, 36.382061, 20.087997>,  <26.277822, 36.743851, 20.021044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434744, 36.382061, 20.087997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405897, -0.006927, 0.913893,
		-0.825436, -0.426465, -0.369842,
		0.392305, -0.904478, 0.167383,
		26.552435, 36.110718, 20.138212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.756382, 36.303200, 20.430172>,  <26.277822, 36.743851, 20.021044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.756382, 36.303200, 20.430172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129894, 36.168167, 20.477661>,  <26.354002, 36.087147, 20.506155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129894, 36.168167, 20.477661>,  <25.756382, 36.303200, 20.430172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129894, 36.168167, 20.477661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214372, -0.262054, 0.940942,
		-0.286548, -0.904078, -0.317070,
		0.933775, -0.337596, 0.118718,
		26.410028, 36.066891, 20.513277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.636089, 35.787212, 20.887325>,  <25.756382, 36.303200, 20.430172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.636089, 35.787212, 20.887325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033220, 35.834995, 20.889105>,  <26.271500, 35.863663, 20.890173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033220, 35.834995, 20.889105>,  <25.636089, 35.787212, 20.887325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033220, 35.834995, 20.889105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002416, -0.057268, 0.998356,
		0.119513, -0.991187, -0.057146,
		0.992830, 0.119455, 0.004449,
		26.331070, 35.870831, 20.890440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.842289, 35.289795, 21.253969>,  <25.636089, 35.787212, 20.887325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.842289, 35.289795, 21.253969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124239, 35.572758, 21.274847>,  <26.293409, 35.742535, 21.287374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124239, 35.572758, 21.274847>,  <25.842289, 35.289795, 21.253969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124239, 35.572758, 21.274847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023570, -0.050185, 0.998462,
		0.708941, -0.705020, -0.018701,
		0.704874, 0.707410, 0.052196,
		26.335701, 35.784981, 21.290506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340919, 34.971790, 21.653469>,  <25.842289, 35.289795, 21.253969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340919, 34.971790, 21.653469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415430, 35.364468, 21.669359>,  <26.460136, 35.600075, 21.678894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415430, 35.364468, 21.669359>,  <26.340919, 34.971790, 21.653469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415430, 35.364468, 21.669359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013322, -0.037906, 0.999192,
		0.982407, -0.186657, 0.006017,
		0.186279, 0.981693, 0.039726,
		26.471313, 35.658978, 21.681276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926186, 35.068481, 22.147232>,  <26.340919, 34.971790, 21.653469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926186, 35.068481, 22.147232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739546, 35.421463, 22.171122>,  <26.627562, 35.633251, 22.185455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739546, 35.421463, 22.171122>,  <26.926186, 35.068481, 22.147232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739546, 35.421463, 22.171122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052220, -0.039923, 0.997837,
		0.882927, 0.468707, -0.027454,
		-0.466597, 0.882451, 0.059725,
		26.599567, 35.686199, 22.189039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253836, 35.248402, 22.693300>,  <26.926186, 35.068481, 22.147232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253836, 35.248402, 22.693300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938036, 35.490482, 22.652470>,  <26.748556, 35.635731, 22.627972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938036, 35.490482, 22.652470>,  <27.253836, 35.248402, 22.693300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938036, 35.490482, 22.652470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128802, -0.000763, 0.991670,
		0.600085, 0.796070, 0.078554,
		-0.789498, 0.605205, -0.102078,
		26.701187, 35.672043, 22.621847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247105, 35.631824, 23.256962>,  <27.253836, 35.248402, 22.693300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247105, 35.631824, 23.256962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872725, 35.711933, 23.141108>,  <26.648096, 35.759998, 23.071594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872725, 35.711933, 23.141108>,  <27.247105, 35.631824, 23.256962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872725, 35.711933, 23.141108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297467, -0.009509, 0.954685,
		0.188440, 0.979695, 0.068474,
		-0.935951, 0.200270, -0.289635,
		26.591940, 35.772015, 23.054216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936285, 36.072502, 23.759386>,  <27.247105, 35.631824, 23.256962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936285, 36.072502, 23.759386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612459, 35.913494, 23.586605>,  <26.418163, 35.818089, 23.482937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612459, 35.913494, 23.586605>,  <26.936285, 36.072502, 23.759386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612459, 35.913494, 23.586605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485801, 0.040593, 0.873126,
		-0.329549, 0.916696, -0.225977,
		-0.809564, -0.397518, -0.431955,
		26.369591, 35.794239, 23.457018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412693, 36.460304, 23.977230>,  <26.936285, 36.072502, 23.759386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412693, 36.460304, 23.977230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244387, 36.114208, 23.868191>,  <26.143402, 35.906551, 23.802767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244387, 36.114208, 23.868191>,  <26.412693, 36.460304, 23.977230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244387, 36.114208, 23.868191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511048, -0.022193, 0.859266,
		-0.749524, 0.500860, -0.432843,
		-0.420766, -0.865244, -0.272597,
		26.118156, 35.854633, 23.786411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725159, 36.523575, 24.293098>,  <26.412693, 36.460304, 23.977230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725159, 36.523575, 24.293098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771149, 36.131378, 24.229326>,  <25.798744, 35.896061, 24.191063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771149, 36.131378, 24.229326>,  <25.725159, 36.523575, 24.293098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771149, 36.131378, 24.229326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432122, -0.193883, 0.880727,
		-0.894455, -0.032369, -0.445984,
		0.114977, -0.980491, -0.159433,
		25.805641, 35.837231, 24.181496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.153343, 36.260117, 24.402323>,  <25.725159, 36.523575, 24.293098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.153343, 36.260117, 24.402323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394905, 35.947136, 24.463068>,  <25.539843, 35.759346, 24.499516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394905, 35.947136, 24.463068>,  <25.153343, 36.260117, 24.402323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394905, 35.947136, 24.463068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355983, -0.094307, 0.929722,
		-0.713145, -0.615523, -0.335494,
		0.603904, -0.782456, 0.151861,
		25.576077, 35.712399, 24.508627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.768084, 35.719200, 24.760824>,  <25.153343, 36.260117, 24.402323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.768084, 35.719200, 24.760824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153584, 35.628849, 24.817627>,  <25.384884, 35.574638, 24.851709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153584, 35.628849, 24.817627>,  <24.768084, 35.719200, 24.760824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.153584, 35.628849, 24.817627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175650, -0.136496, 0.974944,
		-0.200838, -0.964545, -0.171224,
		0.963749, -0.225881, 0.142009,
		25.442709, 35.561085, 24.860229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.754189, 35.202614, 25.247435>,  <24.768084, 35.719200, 24.760824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.754189, 35.202614, 25.247435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133642, 35.327259, 25.269293>,  <25.361315, 35.402046, 25.282408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133642, 35.327259, 25.269293>,  <24.754189, 35.202614, 25.247435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133642, 35.327259, 25.269293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054136, -0.010299, 0.998480,
		0.311702, -0.950153, 0.007099,
		0.948637, 0.311613, 0.054648,
		25.418234, 35.420742, 25.285686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056633, 34.816868, 25.765120>,  <24.754189, 35.202614, 25.247435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.056633, 34.816868, 25.765120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.305063, 35.128468, 25.730644>,  <25.454121, 35.315426, 25.709959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.305063, 35.128468, 25.730644>,  <25.056633, 34.816868, 25.765120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.305063, 35.128468, 25.730644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208218, 0.270014, 0.940073,
		0.755587, -0.565910, 0.329900,
		0.621075, 0.778998, -0.086186,
		25.491386, 35.362167, 25.704788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493834, 34.789661, 26.355904>,  <25.056633, 34.816868, 25.765120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493834, 34.789661, 26.355904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513474, 35.175312, 26.251556>,  <25.525257, 35.406704, 26.188948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513474, 35.175312, 26.251556>,  <25.493834, 34.789661, 26.355904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513474, 35.175312, 26.251556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076081, 0.256813, 0.963462,
		0.995892, -0.067154, -0.060742,
		0.049101, 0.964125, -0.260867,
		25.528204, 35.464550, 26.173296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707529, 35.150528, 26.937897>,  <25.493834, 34.789661, 26.355904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.707529, 35.150528, 26.937897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602005, 35.459545, 26.706873>,  <25.538691, 35.644955, 26.568258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602005, 35.459545, 26.706873>,  <25.707529, 35.150528, 26.937897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602005, 35.459545, 26.706873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060238, 0.584408, 0.809221,
		0.962692, 0.248272, -0.107636,
		-0.263810, 0.772546, -0.577561,
		25.522861, 35.691311, 26.533606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146032, 35.646938, 27.195372>,  <25.707529, 35.150528, 26.937897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146032, 35.646938, 27.195372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827345, 35.812321, 27.019056>,  <25.636133, 35.911549, 26.913267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827345, 35.812321, 27.019056>,  <26.146032, 35.646938, 27.195372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827345, 35.812321, 27.019056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019826, 0.711088, 0.702823,
		0.604025, 0.568692, -0.558340,
		-0.796719, 0.413453, -0.440790,
		25.588329, 35.936356, 26.886820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237823, 36.268524, 27.177280>,  <26.146032, 35.646938, 27.195372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237823, 36.268524, 27.177280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842878, 36.302376, 27.123682>,  <25.605911, 36.322685, 27.091522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842878, 36.302376, 27.123682>,  <26.237823, 36.268524, 27.177280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842878, 36.302376, 27.123682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038710, 0.691113, 0.721710,
		0.153681, 0.717776, -0.679102,
		-0.987362, 0.084625, -0.133996,
		25.546669, 36.327763, 27.083483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997551, 37.053089, 27.124207>,  <26.237823, 36.268524, 27.177280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997551, 37.053089, 27.124207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669205, 36.860687, 27.247377>,  <25.472197, 36.745247, 27.321280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669205, 36.860687, 27.247377>,  <25.997551, 37.053089, 27.124207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669205, 36.860687, 27.247377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195266, 0.743033, 0.640136,
		-0.536707, 0.465336, -0.703852,
		-0.820863, -0.481004, 0.307927,
		25.422945, 36.716385, 27.339756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567270, 37.550060, 27.177652>,  <25.997551, 37.053089, 27.124207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567270, 37.550060, 27.177652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.377590, 37.272343, 27.394201>,  <25.263783, 37.105713, 27.524130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.377590, 37.272343, 27.394201>,  <25.567270, 37.550060, 27.177652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.377590, 37.272343, 27.394201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298105, 0.705203, 0.643290,
		-0.828412, 0.143664, -0.541383,
		-0.474202, -0.694298, 0.541372,
		25.235329, 37.064053, 27.556612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804235, 37.789913, 27.364191>,  <25.567270, 37.550060, 27.177652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804235, 37.789913, 27.364191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911499, 37.510391, 27.629452>,  <24.975857, 37.342678, 27.788609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911499, 37.510391, 27.629452>,  <24.804235, 37.789913, 27.364191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.911499, 37.510391, 27.629452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471704, 0.504961, 0.722848,
		-0.839992, -0.506648, -0.194218,
		0.268157, -0.698801, 0.663151,
		24.991945, 37.300751, 27.828398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.212288, 37.610516, 27.755590>,  <24.804235, 37.789913, 27.364191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.212288, 37.610516, 27.755590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525282, 37.521442, 27.988188>,  <24.713078, 37.467999, 28.127747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525282, 37.521442, 27.988188>,  <24.212288, 37.610516, 27.755590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.525282, 37.521442, 27.988188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364166, 0.593841, 0.717450,
		-0.505078, -0.773153, 0.383577,
		0.782482, -0.222682, 0.581492,
		24.760027, 37.454639, 28.162636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.011269, 37.734447, 28.423458>,  <24.212288, 37.610516, 27.755590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.011269, 37.734447, 28.423458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.402050, 37.710426, 28.505388>,  <24.636518, 37.696014, 28.554546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.402050, 37.710426, 28.505388>,  <24.011269, 37.734447, 28.423458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.402050, 37.710426, 28.505388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090960, 0.750989, 0.654020,
		-0.193096, -0.657579, 0.728220,
		0.976955, -0.060049, 0.204826,
		24.695137, 37.692413, 28.566835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.096977, 37.862823, 29.161808>,  <24.011269, 37.734447, 28.423458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.096977, 37.862823, 29.161808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461884, 37.931087, 29.012869>,  <24.680828, 37.972046, 28.923506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.461884, 37.931087, 29.012869>,  <24.096977, 37.862823, 29.161808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.461884, 37.931087, 29.012869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128745, 0.743520, 0.656204,
		0.388834, -0.646572, 0.656318,
		0.912268, 0.170657, -0.372349,
		24.735563, 37.982285, 28.901163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.537592, 37.909645, 29.713835>,  <24.096977, 37.862823, 29.161808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.537592, 37.909645, 29.713835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702902, 38.109341, 29.409212>,  <24.802088, 38.229156, 29.226439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702902, 38.109341, 29.409212>,  <24.537592, 37.909645, 29.713835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702902, 38.109341, 29.409212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225755, 0.754038, 0.616816,
		0.882179, -0.426839, 0.198919,
		0.413273, 0.499235, -0.761557,
		24.826883, 38.259109, 29.180744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.768740, 38.686501, 29.910160>,  <24.537592, 37.909645, 29.713835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.768740, 38.686501, 29.910160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009129, 38.412056, 30.074154>,  <25.153362, 38.247391, 30.172550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009129, 38.412056, 30.074154>,  <24.768740, 38.686501, 29.910160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009129, 38.412056, 30.074154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630153, 0.722270, 0.285014,
		-0.491671, 0.087067, 0.866418,
		0.600972, -0.686108, 0.409985,
		25.189421, 38.206223, 30.197149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.070375, 38.922428, 30.501053>,  <24.768740, 38.686501, 29.910160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.070375, 38.922428, 30.501053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297497, 38.749027, 30.221146>,  <25.433769, 38.644985, 30.053202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297497, 38.749027, 30.221146>,  <25.070375, 38.922428, 30.501053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.297497, 38.749027, 30.221146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681893, 0.723898, 0.104849,
		0.461108, -0.536700, 0.706635,
		0.567804, -0.433503, -0.699767,
		25.467838, 38.618977, 30.011215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.756880, 38.841305, 30.871498>,  <25.070375, 38.922428, 30.501053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.756880, 38.841305, 30.871498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807304, 38.864117, 30.475346>,  <25.837559, 38.877804, 30.237654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807304, 38.864117, 30.475346>,  <25.756880, 38.841305, 30.871498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807304, 38.864117, 30.475346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665437, 0.735560, 0.127061,
		0.735734, -0.675053, 0.054760,
		0.126052, 0.057044, -0.990382,
		25.845123, 38.881226, 30.178230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448000, 38.540741, 31.061419>,  <25.756880, 38.841305, 30.871498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448000, 38.540741, 31.061419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635691, 38.464928, 30.716419>,  <26.748306, 38.419441, 30.509420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635691, 38.464928, 30.716419>,  <26.448000, 38.540741, 31.061419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635691, 38.464928, 30.716419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058499, -0.981222, 0.183799,
		-0.881137, -0.035788, -0.471504,
		0.469227, -0.189534, -0.862498,
		26.776459, 38.408066, 30.457670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.027746, 38.128551, 30.732210>,  <26.448000, 38.540741, 31.061419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.027746, 38.128551, 30.732210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412241, 38.072300, 30.637341>,  <26.642937, 38.038548, 30.580420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412241, 38.072300, 30.637341>,  <26.027746, 38.128551, 30.732210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412241, 38.072300, 30.637341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111676, -0.985014, 0.131438,
		-0.252102, -0.099856, -0.962535,
		0.961235, -0.140628, -0.237173,
		26.700611, 38.030113, 30.566189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207237, 37.341358, 30.736383>,  <26.027746, 38.128551, 30.732210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207237, 37.341358, 30.736383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.551283, 37.490658, 30.597307>,  <26.757711, 37.580238, 30.513861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.551283, 37.490658, 30.597307>,  <26.207237, 37.341358, 30.736383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.551283, 37.490658, 30.597307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418802, -0.905847, 0.063607,
		-0.291215, -0.200323, -0.935449,
		0.860115, 0.373245, -0.347692,
		26.809317, 37.602631, 30.493000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397142, 36.954998, 30.069164>,  <26.207237, 37.341358, 30.736383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397142, 36.954998, 30.069164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696663, 37.108356, 30.285423>,  <26.876375, 37.200371, 30.415178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696663, 37.108356, 30.285423>,  <26.397142, 36.954998, 30.069164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696663, 37.108356, 30.285423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484468, -0.873279, -0.051712,
		0.452311, 0.300649, -0.839658,
		0.748803, 0.383398, 0.540649,
		26.921303, 37.223377, 30.447618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088228, 36.856724, 29.722059>,  <26.397142, 36.954998, 30.069164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088228, 36.856724, 29.722059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151686, 36.877937, 30.116423>,  <27.189760, 36.890667, 30.353041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151686, 36.877937, 30.116423>,  <27.088228, 36.856724, 29.722059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151686, 36.877937, 30.116423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730006, -0.678629, -0.080960,
		0.664774, 0.732564, -0.146377,
		0.158644, 0.053036, 0.985910,
		27.199280, 36.893848, 30.412195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851757, 36.907463, 29.880402>,  <27.088228, 36.856724, 29.722059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851757, 36.907463, 29.880402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663670, 36.734512, 30.188152>,  <27.550817, 36.630741, 30.372803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663670, 36.734512, 30.188152>,  <27.851757, 36.907463, 29.880402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663670, 36.734512, 30.188152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637773, -0.769056, -0.042412,
		0.610033, 0.470745, 0.637384,
		-0.470219, -0.432379, 0.769378,
		27.522604, 36.604797, 30.418966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271570, 36.357170, 30.037670>,  <27.851757, 36.907463, 29.880402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271570, 36.357170, 30.037670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954220, 36.289127, 30.271461>,  <27.763809, 36.248302, 30.411736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954220, 36.289127, 30.271461>,  <28.271570, 36.357170, 30.037670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954220, 36.289127, 30.271461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329381, -0.927423, 0.177185,
		0.511917, 0.333090, 0.791828,
		-0.793378, -0.170109, 0.584478,
		27.716206, 36.238094, 30.446804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442568, 36.003693, 30.602392>,  <28.271570, 36.357170, 30.037670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442568, 36.003693, 30.602392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049700, 35.933453, 30.575537>,  <27.813978, 35.891308, 30.559423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049700, 35.933453, 30.575537>,  <28.442568, 36.003693, 30.602392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049700, 35.933453, 30.575537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153344, -0.954906, 0.254244,
		-0.108755, 0.239415, 0.964807,
		-0.982170, -0.175598, -0.067138,
		27.755049, 35.880772, 30.555395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030392, 36.485390, 30.619818>,  <28.442568, 36.003693, 30.602392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030392, 36.485390, 30.619818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108383, 36.125202, 30.464314>,  <29.155178, 35.909088, 30.371010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108383, 36.125202, 30.464314>,  <29.030392, 36.485390, 30.619818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108383, 36.125202, 30.464314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956523, 0.086922, 0.278403,
		-0.216901, -0.426143, 0.878269,
		0.194980, -0.900470, -0.388762,
		29.166878, 35.855061, 30.347685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444969, 36.162243, 31.218513>,  <29.030392, 36.485390, 30.619818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444969, 36.162243, 31.218513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482199, 36.056503, 30.834543>,  <29.504536, 35.993061, 30.604160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482199, 36.056503, 30.834543>,  <29.444969, 36.162243, 31.218513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482199, 36.056503, 30.834543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995650, 0.020623, 0.090856,
		-0.004222, -0.964207, 0.265118,
		0.093072, -0.264349, -0.959926,
		29.510120, 35.977200, 30.546566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851353, 35.599709, 31.051798>,  <29.444969, 36.162243, 31.218513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851353, 35.599709, 31.051798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864119, 35.857677, 30.746367>,  <29.871778, 36.012459, 30.563107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864119, 35.857677, 30.746367>,  <29.851353, 35.599709, 31.051798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864119, 35.857677, 30.746367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947554, 0.223543, 0.228407,
		0.317998, -0.730823, -0.603966,
		0.031912, 0.644923, -0.763581,
		29.873692, 36.051155, 30.517292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640753, 34.966320, 30.957167>,  <29.851353, 35.599709, 31.051798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640753, 34.966320, 30.957167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851944, 34.857758, 30.635277>,  <29.978659, 34.792622, 30.442142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851944, 34.857758, 30.635277>,  <29.640753, 34.966320, 30.957167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851944, 34.857758, 30.635277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846025, 0.250695, 0.470525,
		0.074037, -0.929242, 0.361976,
		0.527978, -0.271404, -0.804723,
		30.010338, 34.776337, 30.393860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041344, 34.354694, 31.018946>,  <29.640753, 34.966320, 30.957167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041344, 34.354694, 31.018946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226694, 34.615074, 30.778431>,  <30.337904, 34.771301, 30.634123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226694, 34.615074, 30.778431>,  <30.041344, 34.354694, 31.018946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226694, 34.615074, 30.778431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629801, 0.235421, 0.740221,
		0.623403, -0.721692, -0.300882,
		0.463378, 0.650952, -0.601285,
		30.365707, 34.810360, 30.598045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722456, 34.243816, 30.895758>,  <30.041344, 34.354694, 31.018946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722456, 34.243816, 30.895758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719473, 34.638432, 30.830416>,  <30.717684, 34.875202, 30.791210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719473, 34.638432, 30.830416>,  <30.722456, 34.243816, 30.895758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719473, 34.638432, 30.830416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742337, 0.114913, 0.660100,
		0.669986, -0.116343, -0.733201,
		-0.007457, 0.986539, -0.163355,
		30.717236, 34.934395, 30.781408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688812, 34.753696, 31.369337>,  <30.722456, 34.243816, 30.895758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688812, 34.753696, 31.369337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881512, 34.409317, 31.303988>,  <30.997131, 34.202690, 31.264778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881512, 34.409317, 31.303988>,  <30.688812, 34.753696, 31.369337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881512, 34.409317, 31.303988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162312, -0.095542, 0.982103,
		-0.861147, -0.499643, 0.093715,
		0.481747, -0.860946, -0.163374,
		31.026035, 34.151031, 31.254976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456652, 34.200283, 31.879480>,  <30.688812, 34.753696, 31.369337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456652, 34.200283, 31.879480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833290, 34.148857, 31.754986>,  <31.059273, 34.118000, 31.680288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833290, 34.148857, 31.754986>,  <30.456652, 34.200283, 31.879480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833290, 34.148857, 31.754986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266664, -0.279729, 0.922302,
		-0.205638, -0.951432, -0.229108,
		0.941596, -0.128566, -0.311235,
		31.115768, 34.110287, 31.661615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721464, 33.489410, 32.109570>,  <30.456652, 34.200283, 31.879480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721464, 33.489410, 32.109570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010864, 33.763447, 32.075645>,  <31.184504, 33.927868, 32.055290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010864, 33.763447, 32.075645>,  <30.721464, 33.489410, 32.109570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010864, 33.763447, 32.075645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358876, -0.268328, 0.893984,
		0.589709, -0.677233, -0.440000,
		0.723500, 0.685096, -0.084807,
		31.227915, 33.968975, 32.050201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383825, 33.098557, 32.237514>,  <30.721464, 33.489410, 32.109570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383825, 33.098557, 32.237514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466303, 33.480747, 32.321945>,  <31.515789, 33.710060, 32.372604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466303, 33.480747, 32.321945>,  <31.383825, 33.098557, 32.237514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466303, 33.480747, 32.321945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360995, -0.274773, 0.891169,
		0.909487, -0.107557, -0.401578,
		0.206194, 0.955475, 0.211075,
		31.528162, 33.767391, 32.385269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154995, 33.309551, 32.578545>,  <31.383825, 33.098557, 32.237514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154995, 33.309551, 32.578545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921309, 33.618782, 32.677372>,  <31.781096, 33.804321, 32.736668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921309, 33.618782, 32.677372>,  <32.154995, 33.309551, 32.578545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921309, 33.618782, 32.677372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380373, -0.008104, 0.924798,
		0.716942, 0.634260, -0.289324,
		-0.584217, 0.773078, 0.247065,
		31.746044, 33.850704, 32.751492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391254, 33.137695, 33.168854>,  <32.154995, 33.309551, 32.578545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391254, 33.137695, 33.168854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676514, 33.416164, 33.201729>,  <32.847672, 33.583244, 33.221455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676514, 33.416164, 33.201729>,  <32.391254, 33.137695, 33.168854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676514, 33.416164, 33.201729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698062, -0.694517, -0.174229,
		-0.064213, 0.181624, -0.981269,
		0.713153, 0.696174, 0.082188,
		32.890461, 33.625015, 33.226387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942223, 32.960316, 32.747059>,  <32.391254, 33.137695, 33.168854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942223, 32.960316, 32.747059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127975, 33.255249, 32.943295>,  <33.239426, 33.432209, 33.061035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127975, 33.255249, 32.943295>,  <32.942223, 32.960316, 32.747059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127975, 33.255249, 32.943295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861875, -0.503701, -0.058790,
		0.203765, 0.450131, -0.869403,
		0.464382, 0.737338, 0.490594,
		33.267292, 33.476452, 33.090473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510002, 33.208920, 32.376854>,  <32.942223, 32.960316, 32.747059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510002, 33.208920, 32.376854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555229, 33.284595, 32.767017>,  <33.582363, 33.330002, 33.001114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555229, 33.284595, 32.767017>,  <33.510002, 33.208920, 32.376854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555229, 33.284595, 32.767017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761676, -0.646890, 0.037181,
		0.638017, 0.738742, -0.217242,
		0.113064, 0.189190, 0.975409,
		33.589149, 33.341354, 33.059639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242561, 33.280148, 32.506569>,  <33.510002, 33.208920, 32.376854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242561, 33.280148, 32.506569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066833, 33.190105, 32.854439>,  <33.961395, 33.136082, 33.063160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066833, 33.190105, 32.854439>,  <34.242561, 33.280148, 32.506569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066833, 33.190105, 32.854439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618542, -0.777854, 0.111123,
		0.651463, 0.586746, 0.480963,
		-0.439320, -0.225103, 0.869671,
		33.935036, 33.122574, 33.115341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531643, 32.767494, 32.123772>,  <34.242561, 33.280148, 32.506569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531643, 32.767494, 32.123772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859013, 32.559990, 32.222618>,  <35.055435, 32.435486, 32.281925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859013, 32.559990, 32.222618>,  <34.531643, 32.767494, 32.123772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859013, 32.559990, 32.222618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509082, 0.854059, 0.106861,
		-0.266488, 0.038345, 0.963075,
		0.818425, -0.518762, 0.247117,
		35.104542, 32.404362, 32.296753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755226, 32.857338, 32.854546>,  <34.531643, 32.767494, 32.123772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755226, 32.857338, 32.854546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047459, 32.766926, 32.596813>,  <35.222797, 32.712681, 32.442173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047459, 32.766926, 32.596813>,  <34.755226, 32.857338, 32.854546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047459, 32.766926, 32.596813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447604, 0.871133, 0.201933,
		0.515654, -0.435934, 0.737606,
		0.730583, -0.226028, -0.644329,
		35.266632, 32.699116, 32.403515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482193, 32.878601, 33.222099>,  <34.755226, 32.857338, 32.854546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482193, 32.878601, 33.222099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430267, 32.990089, 32.841476>,  <35.399113, 33.056984, 32.613102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430267, 32.990089, 32.841476>,  <35.482193, 32.878601, 33.222099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430267, 32.990089, 32.841476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575712, 0.802530, 0.156527,
		0.807282, -0.527504, -0.264643,
		-0.129815, 0.278720, -0.951558,
		35.391323, 33.073704, 32.556007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093697, 33.030888, 32.944675>,  <35.482193, 32.878601, 33.222099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093697, 33.030888, 32.944675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833973, 33.297783, 32.798695>,  <35.678139, 33.457920, 32.711105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833973, 33.297783, 32.798695>,  <36.093697, 33.030888, 32.944675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833973, 33.297783, 32.798695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637497, 0.739191, 0.217243,
		0.414721, -0.091597, -0.905327,
		-0.649311, 0.667238, -0.364951,
		35.639179, 33.497955, 32.689209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614109, 33.294815, 32.486309>,  <36.093697, 33.030888, 32.944675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614109, 33.294815, 32.486309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575993, 32.900703, 32.543083>,  <36.553123, 32.664238, 32.577148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575993, 32.900703, 32.543083>,  <36.614109, 33.294815, 32.486309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575993, 32.900703, 32.543083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031110, 0.145458, 0.988875,
		-0.994964, 0.089811, -0.044512,
		-0.095287, -0.985280, 0.141931,
		36.547405, 32.605118, 32.585663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088116, 32.769485, 32.722336>,  <36.614109, 33.294815, 32.486309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088116, 32.769485, 32.722336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767376, 32.686214, 32.498299>,  <36.574932, 32.636253, 32.363876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767376, 32.686214, 32.498299>,  <37.088116, 32.769485, 32.722336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767376, 32.686214, 32.498299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335672, 0.618529, -0.710455,
		0.494331, -0.757684, -0.426089,
		-0.801849, -0.208173, -0.560091,
		36.526821, 32.623764, 32.330273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329063, 32.423588, 32.096390>,  <37.088116, 32.769485, 32.722336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329063, 32.423588, 32.096390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006882, 32.653454, 32.038418>,  <36.813572, 32.791374, 32.003635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006882, 32.653454, 32.038418>,  <37.329063, 32.423588, 32.096390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006882, 32.653454, 32.038418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499608, 0.526839, -0.687629,
		-0.318800, -0.626262, -0.711451,
		-0.805456, 0.574662, -0.144929,
		36.765244, 32.825851, 31.994940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260273, 32.498325, 31.336988>,  <37.329063, 32.423588, 32.096390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260273, 32.498325, 31.336988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094067, 32.803192, 31.535564>,  <36.994343, 32.986111, 31.654709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094067, 32.803192, 31.535564>,  <37.260273, 32.498325, 31.336988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094067, 32.803192, 31.535564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545943, 0.645517, -0.534091,
		-0.727526, 0.049105, -0.684321,
		-0.415514, 0.762166, 0.496439,
		36.969414, 33.031841, 31.684496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029015, 33.045185, 30.851116>,  <37.260273, 32.498325, 31.336988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029015, 33.045185, 30.851116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133621, 33.179806, 31.212965>,  <37.196384, 33.260578, 31.430075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133621, 33.179806, 31.212965>,  <37.029015, 33.045185, 30.851116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133621, 33.179806, 31.212965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558224, 0.711850, -0.426211,
		-0.787398, 0.616442, -0.001715,
		0.261513, 0.336555, 0.904622,
		37.212074, 33.280773, 31.484352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035473, 33.807808, 30.966667>,  <37.029015, 33.045185, 30.851116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035473, 33.807808, 30.966667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299732, 33.624538, 31.204533>,  <37.458286, 33.514576, 31.347252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299732, 33.624538, 31.204533>,  <37.035473, 33.807808, 30.966667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299732, 33.624538, 31.204533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668431, 0.719572, -0.188192,
		-0.341680, 0.521821, 0.781637,
		0.660647, -0.458169, 0.594665,
		37.497925, 33.487087, 31.382933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332409, 34.153271, 31.506029>,  <37.035473, 33.807808, 30.966667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332409, 34.153271, 31.506029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614826, 33.888977, 31.404093>,  <37.784275, 33.730400, 31.342932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614826, 33.888977, 31.404093>,  <37.332409, 34.153271, 31.506029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614826, 33.888977, 31.404093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666758, 0.741474, -0.075170,
		0.238623, -0.116843, 0.964057,
		0.706040, -0.660730, -0.254839,
		37.826637, 33.690758, 31.327641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799809, 34.135181, 32.041580>,  <37.332409, 34.153271, 31.506029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799809, 34.135181, 32.041580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950150, 34.059879, 31.678638>,  <38.040356, 34.014698, 31.460873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950150, 34.059879, 31.678638>,  <37.799809, 34.135181, 32.041580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950150, 34.059879, 31.678638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617452, 0.781004, 0.093730,
		0.691004, -0.595477, 0.409780,
		0.375854, -0.188252, -0.907356,
		38.062904, 34.003403, 31.406431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496704, 34.250362, 31.748777>,  <37.799809, 34.135181, 32.041580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496704, 34.250362, 31.748777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273800, 34.342705, 32.067818>,  <38.140057, 34.398109, 32.259243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273800, 34.342705, 32.067818>,  <38.496704, 34.250362, 31.748777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273800, 34.342705, 32.067818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827529, 0.233329, 0.510640,
		-0.068219, 0.944597, -0.321065,
		-0.557263, 0.230855, 0.797599,
		38.106621, 34.411961, 32.307098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515594, 35.021221, 31.988869>,  <38.496704, 34.250362, 31.748777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515594, 35.021221, 31.988869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458618, 34.763142, 32.289116>,  <38.424431, 34.608295, 32.469265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458618, 34.763142, 32.289116>,  <38.515594, 35.021221, 31.988869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458618, 34.763142, 32.289116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788343, 0.384613, 0.480197,
		-0.598520, 0.660146, 0.453853,
		-0.142442, -0.645199, 0.750619,
		38.415886, 34.569584, 32.514301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270638, 35.303642, 32.725033>,  <38.515594, 35.021221, 31.988869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270638, 35.303642, 32.725033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555866, 35.023209, 32.724567>,  <38.727005, 34.854946, 32.724289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555866, 35.023209, 32.724567>,  <38.270638, 35.303642, 32.725033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555866, 35.023209, 32.724567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642670, 0.652992, 0.400721,
		-0.280178, -0.286495, 0.916199,
		0.713075, -0.701087, -0.001168,
		38.769787, 34.812881, 32.724216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421940, 35.192825, 33.466530>,  <38.270638, 35.303642, 32.725033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421940, 35.192825, 33.466530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748192, 35.057426, 33.278839>,  <38.943943, 34.976189, 33.166225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748192, 35.057426, 33.278839>,  <38.421940, 35.192825, 33.466530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748192, 35.057426, 33.278839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558972, 0.670343, 0.488048,
		0.149342, -0.660350, 0.735958,
		0.815627, -0.338494, -0.469228,
		38.992882, 34.955879, 33.138069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075916, 35.032982, 33.912674>,  <38.421940, 35.192825, 33.466530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075916, 35.032982, 33.912674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223885, 35.106434, 33.548382>,  <39.312668, 35.150505, 33.329807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223885, 35.106434, 33.548382>,  <39.075916, 35.032982, 33.912674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223885, 35.106434, 33.548382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657102, 0.641280, 0.396203,
		0.656791, -0.745010, 0.116559,
		0.369922, 0.183631, -0.910735,
		39.334862, 35.161522, 33.275162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835590, 35.189934, 34.069092>,  <39.075916, 35.032982, 33.912674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835590, 35.189934, 34.069092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740490, 35.330715, 33.706966>,  <39.683430, 35.415184, 33.489689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740490, 35.330715, 33.706966>,  <39.835590, 35.189934, 34.069092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740490, 35.330715, 33.706966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639981, 0.757894, 0.126571,
		0.730683, -0.549293, -0.405438,
		-0.237754, 0.351956, -0.905318,
		39.669163, 35.436302, 33.435371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353348, 35.442825, 34.350140>,  <39.835590, 35.189934, 34.069092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353348, 35.442825, 34.350140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219425, 35.077148, 34.258789>,  <40.139072, 34.857742, 34.203979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219425, 35.077148, 34.258789>,  <40.353348, 35.442825, 34.350140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219425, 35.077148, 34.258789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917064, -0.371831, 0.143999,
		-0.216561, -0.161227, 0.962864,
		-0.334806, -0.914192, -0.228380,
		40.118984, 34.802891, 34.190273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623238, 35.038380, 34.762966>,  <40.353348, 35.442825, 34.350140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623238, 35.038380, 34.762966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527843, 34.750080, 34.502613>,  <40.470608, 34.577103, 34.346401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527843, 34.750080, 34.502613>,  <40.623238, 35.038380, 34.762966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527843, 34.750080, 34.502613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821091, -0.507543, 0.261171,
		-0.518591, -0.472152, 0.712837,
		-0.238483, -0.720744, -0.650887,
		40.456299, 34.533855, 34.307346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647999, 34.378517, 35.045944>,  <40.623238, 35.038380, 34.762966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647999, 34.378517, 35.045944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687901, 34.292805, 34.657276>,  <40.711842, 34.241379, 34.424076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687901, 34.292805, 34.657276>,  <40.647999, 34.378517, 35.045944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687901, 34.292805, 34.657276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659389, -0.717082, 0.225831,
		-0.745155, -0.663233, 0.069760,
		0.099755, -0.214278, -0.971666,
		40.717827, 34.228523, 34.365776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629982, 33.652615, 34.970066>,  <40.647999, 34.378517, 35.045944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629982, 33.652615, 34.970066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823902, 33.778866, 34.643791>,  <40.940254, 33.854614, 34.448025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823902, 33.778866, 34.643791>,  <40.629982, 33.652615, 34.970066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823902, 33.778866, 34.643791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695056, -0.705143, 0.140250,
		-0.530912, -0.634944, -0.561230,
		0.484798, 0.315626, -0.815690,
		40.969341, 33.873554, 34.399082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359341, 33.578556, 34.686707>,  <40.629982, 33.652615, 34.970066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359341, 33.578556, 34.686707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459312, 33.195107, 34.632202>,  <41.519295, 32.965034, 34.599499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459312, 33.195107, 34.632202>,  <41.359341, 33.578556, 34.686707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459312, 33.195107, 34.632202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888524, 0.282993, -0.361164,
		0.384783, -0.030805, 0.922493,
		0.249933, -0.958627, -0.136262,
		41.534294, 32.907516, 34.591324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992928, 33.589355, 35.039227>,  <41.359341, 33.578556, 34.686707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992928, 33.589355, 35.039227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927811, 33.318958, 34.751747>,  <41.888741, 33.156719, 34.579258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927811, 33.318958, 34.751747>,  <41.992928, 33.589355, 35.039227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927811, 33.318958, 34.751747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838156, 0.289572, -0.462215,
		0.520572, -0.677625, 0.519451,
		-0.162790, -0.675997, -0.718698,
		41.878975, 33.116158, 34.536137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460316, 33.143730, 35.109848>,  <41.992928, 33.589355, 35.039227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460316, 33.143730, 35.109848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311382, 33.205074, 34.743713>,  <42.222023, 33.241882, 34.524033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311382, 33.205074, 34.743713>,  <42.460316, 33.143730, 35.109848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311382, 33.205074, 34.743713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907598, 0.266317, -0.324562,
		0.193995, -0.951606, -0.238350,
		-0.372332, 0.153362, -0.915341,
		42.199684, 33.251083, 34.469112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802315, 32.760773, 34.611084>,  <42.460316, 33.143730, 35.109848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802315, 32.760773, 34.611084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658501, 33.101643, 34.459011>,  <42.572212, 33.306164, 34.367767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658501, 33.101643, 34.459011>,  <42.802315, 32.760773, 34.611084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658501, 33.101643, 34.459011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932037, 0.308245, -0.190503,
		-0.045152, -0.422834, -0.905082,
		-0.359538, 0.852171, -0.380179,
		42.550640, 33.357292, 34.344959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822498, 32.699074, 33.822163>,  <42.802315, 32.760773, 34.611084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822498, 32.699074, 33.822163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877712, 33.061874, 33.981312>,  <42.910839, 33.279552, 34.076801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877712, 33.061874, 33.981312>,  <42.822498, 32.699074, 33.822163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877712, 33.061874, 33.981312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950625, -0.008585, -0.310223,
		-0.277955, 0.421050, -0.863399,
		0.138032, 0.906997, 0.397875,
		42.919121, 33.333973, 34.100674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.270748, 33.124798, 33.239250>,  <42.822498, 32.699074, 33.822163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.270748, 33.124798, 33.239250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275471, 33.286449, 33.605103>,  <43.278305, 33.383438, 33.824612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275471, 33.286449, 33.605103>,  <43.270748, 33.124798, 33.239250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275471, 33.286449, 33.605103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987033, 0.141730, -0.075360,
		-0.160085, 0.903656, -0.397213,
		0.011802, 0.404126, 0.914627,
		43.279011, 33.407688, 33.879490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484741, 33.813927, 33.368465>,  <43.270748, 33.124798, 33.239250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484741, 33.813927, 33.368465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633945, 33.628876, 33.690170>,  <43.723469, 33.517845, 33.883194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633945, 33.628876, 33.690170>,  <43.484741, 33.813927, 33.368465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633945, 33.628876, 33.690170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913358, 0.335567, -0.230589,
		-0.163208, 0.820593, 0.547714,
		0.373015, -0.462625, 0.804262,
		43.745850, 33.490089, 33.931450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780930, 34.256264, 33.711727>,  <43.484741, 33.813927, 33.368465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780930, 34.256264, 33.711727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000072, 33.938103, 33.815403>,  <44.131557, 33.747204, 33.877609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000072, 33.938103, 33.815403>,  <43.780930, 34.256264, 33.711727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000072, 33.938103, 33.815403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826139, 0.465639, -0.317292,
		0.131686, 0.387959, 0.912221,
		0.547862, -0.795404, 0.259190,
		44.164433, 33.699482, 33.893158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050770, 34.787395, 34.075634>,  <43.780930, 34.256264, 33.711727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050770, 34.787395, 34.075634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212914, 34.983841, 33.767220>,  <44.310200, 35.101707, 33.582172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212914, 34.983841, 33.767220>,  <44.050770, 34.787395, 34.075634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212914, 34.983841, 33.767220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780465, 0.253234, 0.571617,
		0.475981, -0.833475, -0.280646,
		0.405359, 0.491113, -0.771033,
		44.334522, 35.131176, 33.535912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.719982, 34.472481, 33.956470>,  <44.050770, 34.787395, 34.075634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.719982, 34.472481, 33.956470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668442, 34.859402, 33.869087>,  <44.637516, 35.091553, 33.816658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668442, 34.859402, 33.869087>,  <44.719982, 34.472481, 33.956470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668442, 34.859402, 33.869087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816397, 0.228527, 0.530349,
		0.562931, -0.110010, -0.819150,
		-0.128855, 0.967302, -0.218457,
		44.629784, 35.149593, 33.803551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.225777, 34.860607, 33.536224>,  <44.719982, 34.472481, 33.956470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.225777, 34.860607, 33.536224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060715, 35.158245, 33.746384>,  <44.961678, 35.336826, 33.872478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060715, 35.158245, 33.746384>,  <45.225777, 34.860607, 33.536224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060715, 35.158245, 33.746384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868364, 0.147177, 0.473586,
		0.275065, 0.651664, -0.706876,
		-0.412655, 0.744092, 0.525398,
		44.936916, 35.381474, 33.904003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630367, 35.499428, 33.517879>,  <45.225777, 34.860607, 33.536224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630367, 35.499428, 33.517879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436813, 35.433319, 33.861633>,  <45.320683, 35.393654, 34.067886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436813, 35.433319, 33.861633>,  <45.630367, 35.499428, 33.517879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.436813, 35.433319, 33.861633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864472, 0.062527, 0.498776,
		-0.136170, 0.984264, 0.112620,
		-0.483886, -0.165275, 0.859383,
		45.291649, 35.383736, 34.119450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.852898, 35.968803, 33.870518>,  <45.630367, 35.499428, 33.517879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.852898, 35.968803, 33.870518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741894, 35.676907, 34.120464>,  <45.675289, 35.501766, 34.270432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741894, 35.676907, 34.120464>,  <45.852898, 35.968803, 33.870518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.741894, 35.676907, 34.120464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886687, 0.055824, 0.458987,
		-0.369826, 0.681436, 0.631564,
		-0.277514, -0.729746, 0.624866,
		45.658638, 35.457981, 34.307922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.027992, 36.164764, 34.520580>,  <45.852898, 35.968803, 33.870518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.027992, 36.164764, 34.520580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011166, 35.767181, 34.561146>,  <46.001072, 35.528633, 34.585484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011166, 35.767181, 34.561146>,  <46.027992, 36.164764, 34.520580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011166, 35.767181, 34.561146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848968, 0.017957, 0.528139,
		-0.526767, 0.108313, 0.843080,
		-0.042065, -0.993955, 0.101414,
		45.998547, 35.468994, 34.591572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110405, 35.863007, 35.156975>,  <46.027992, 36.164764, 34.520580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.110405, 35.863007, 35.156975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.286629, 35.620613, 34.892040>,  <46.392365, 35.475178, 34.733078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.286629, 35.620613, 34.892040>,  <46.110405, 35.863007, 35.156975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.286629, 35.620613, 34.892040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892426, 0.215595, 0.396352,
		-0.097388, -0.765702, 0.635780,
		0.440558, -0.605986, -0.662336,
		46.418797, 35.438816, 34.693340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.603226, 35.414387, 35.461788>,  <46.110405, 35.863007, 35.156975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.603226, 35.414387, 35.461788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.746819, 35.434727, 35.089005>,  <46.832973, 35.446930, 34.865334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.746819, 35.434727, 35.089005>,  <46.603226, 35.414387, 35.461788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.746819, 35.434727, 35.089005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921719, 0.137794, 0.362555,
		0.146855, -0.989155, 0.002594,
		0.358981, 0.050852, -0.931959,
		46.854511, 35.449982, 34.809418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.127529, 34.842171, 35.290234>,  <46.603226, 35.414387, 35.461788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.127529, 34.842171, 35.290234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230751, 35.147507, 35.053349>,  <47.292683, 35.330708, 34.911217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230751, 35.147507, 35.053349>,  <47.127529, 34.842171, 35.290234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.230751, 35.147507, 35.053349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928135, -0.025657, 0.371358,
		0.268278, -0.645488, -0.715103,
		0.258055, 0.763339, -0.592217,
		47.308167, 35.376507, 34.875683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.720764, 34.582138, 35.010242>,  <47.127529, 34.842171, 35.290234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.720764, 34.582138, 35.010242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.702946, 34.968418, 35.112568>,  <47.692253, 35.200188, 35.173962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.702946, 34.968418, 35.112568>,  <47.720764, 34.582138, 35.010242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.702946, 34.968418, 35.112568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789222, -0.122971, 0.601670,
		0.612490, 0.228696, -0.756673,
		-0.044550, 0.965700, 0.255810,
		47.689579, 35.258129, 35.189312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.537148, 37.484509, 20.113028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.620058, 37.094257, 20.084213>,  <30.669806, 36.860107, 20.066925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.620058, 37.094257, 20.084213>,  <30.537148, 37.484509, 20.113028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620058, 37.094257, 20.084213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125116, -0.099469, 0.987143,
		-0.970248, -0.195600, -0.142684,
		0.207278, -0.975626, -0.072037,
		30.682241, 36.801571, 20.062603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984684, 37.103764, 20.508806>,  <30.537148, 37.484509, 20.113028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984684, 37.103764, 20.508806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.316177, 36.881027, 20.486435>,  <30.515074, 36.747383, 20.473013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.316177, 36.881027, 20.486435>,  <29.984684, 37.103764, 20.508806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316177, 36.881027, 20.486435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022238, -0.132622, 0.990917,
		-0.559205, -0.819960, -0.122291,
		0.828732, -0.556845, -0.055929,
		30.564796, 36.713974, 20.469656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859114, 36.438541, 20.863419>,  <29.984684, 37.103764, 20.508806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859114, 36.438541, 20.863419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.256754, 36.481869, 20.865627>,  <30.495338, 36.507866, 20.866953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.256754, 36.481869, 20.865627>,  <29.859114, 36.438541, 20.863419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256754, 36.481869, 20.865627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029043, -0.314892, 0.948683,
		0.104498, -0.942926, -0.316181,
		0.994101, 0.108319, 0.005520,
		30.554985, 36.514362, 20.867283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112692, 35.928345, 21.179054>,  <29.859114, 36.438541, 20.863419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112692, 35.928345, 21.179054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.432505, 36.166206, 21.212830>,  <30.624392, 36.308926, 21.233095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.432505, 36.166206, 21.212830>,  <30.112692, 35.928345, 21.179054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432505, 36.166206, 21.212830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201735, -0.398296, 0.894798,
		0.565732, -0.698384, -0.438414,
		0.799531, 0.594659, 0.084440,
		30.672363, 36.344604, 21.238161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563452, 35.528267, 21.558956>,  <30.112692, 35.928345, 21.179054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563452, 35.528267, 21.558956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.718460, 35.893265, 21.611380>,  <30.811464, 36.112263, 21.642834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.718460, 35.893265, 21.611380>,  <30.563452, 35.528267, 21.558956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718460, 35.893265, 21.611380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208950, -0.225409, 0.951594,
		0.897869, -0.341377, -0.278017,
		0.387520, 0.912498, 0.131057,
		30.834717, 36.167015, 21.650696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005167, 35.386253, 22.121559>,  <30.563452, 35.528267, 21.558956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005167, 35.386253, 22.121559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.969522, 35.784363, 22.106089>,  <30.948135, 36.023228, 22.096806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.969522, 35.784363, 22.106089>,  <31.005167, 35.386253, 22.121559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969522, 35.784363, 22.106089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153955, 0.052129, 0.986702,
		0.984051, 0.081973, -0.157873,
		-0.089112, 0.995270, -0.038677,
		30.942789, 36.082943, 22.094486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578226, 35.666569, 22.450197>,  <31.005167, 35.386253, 22.121559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578226, 35.666569, 22.450197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.319691, 35.971786, 22.451202>,  <31.164570, 36.154919, 22.451805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.319691, 35.971786, 22.451202>,  <31.578226, 35.666569, 22.450197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319691, 35.971786, 22.451202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174380, 0.144504, 0.974018,
		0.742857, 0.629985, -0.226458,
		-0.646341, 0.763045, 0.002511,
		31.125788, 36.200699, 22.451956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918999, 36.202408, 22.755049>,  <31.578226, 35.666569, 22.450197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918999, 36.202408, 22.755049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.528599, 36.284096, 22.785303>,  <31.294359, 36.333107, 22.803455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.528599, 36.284096, 22.785303>,  <31.918999, 36.202408, 22.755049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528599, 36.284096, 22.785303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075719, -0.007409, 0.997102,
		0.204190, 0.978897, -0.008232,
		-0.975998, 0.204221, 0.075634,
		31.235800, 36.345364, 22.807993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843575, 36.644585, 23.290483>,  <31.918999, 36.202408, 22.755049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843575, 36.644585, 23.290483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.481079, 36.476700, 23.270168>,  <31.263582, 36.375969, 23.257978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.481079, 36.476700, 23.270168>,  <31.843575, 36.644585, 23.290483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481079, 36.476700, 23.270168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042544, -0.028991, 0.998674,
		-0.420624, 0.907196, 0.008417,
		-0.906237, -0.419708, -0.050790,
		31.209208, 36.350788, 23.254930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471594, 37.031075, 23.757202>,  <31.843575, 36.644585, 23.290483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471594, 37.031075, 23.757202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.264635, 36.691086, 23.717495>,  <31.140459, 36.487095, 23.693670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.264635, 36.691086, 23.717495>,  <31.471594, 37.031075, 23.757202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264635, 36.691086, 23.717495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234405, 0.029204, 0.971700,
		-0.823015, 0.526024, -0.214347,
		-0.517398, -0.849968, -0.099267,
		31.109415, 36.436096, 23.687716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812773, 37.231632, 23.927240>,  <31.471594, 37.031075, 23.757202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812773, 37.231632, 23.927240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.873421, 36.843307, 24.001572>,  <30.909809, 36.610313, 24.046171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.873421, 36.843307, 24.001572>,  <30.812773, 37.231632, 23.927240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873421, 36.843307, 24.001572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437341, 0.102708, 0.893411,
		-0.886422, -0.216730, -0.409003,
		0.151621, -0.970813, 0.185828,
		30.918907, 36.552063, 24.057320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163721, 37.135818, 24.251696>,  <30.812773, 37.231632, 23.927240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163721, 37.135818, 24.251696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.350060, 36.792427, 24.337490>,  <30.461863, 36.586391, 24.388966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.350060, 36.792427, 24.337490>,  <30.163721, 37.135818, 24.251696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350060, 36.792427, 24.337490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702573, -0.211489, 0.679458,
		-0.537937, -0.467215, -0.701665,
		0.465848, -0.858477, 0.214485,
		30.489815, 36.534885, 24.401836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682070, 36.594170, 24.278074>,  <30.163721, 37.135818, 24.251696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682070, 36.594170, 24.278074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.974625, 36.427128, 24.493734>,  <30.150158, 36.326904, 24.623131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.974625, 36.427128, 24.493734>,  <29.682070, 36.594170, 24.278074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974625, 36.427128, 24.493734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681478, -0.417677, 0.600945,
		-0.025764, -0.806942, -0.590068,
		0.731385, -0.417601, 0.539152,
		30.194040, 36.301846, 24.655479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576797, 35.901642, 24.371126>,  <29.682070, 36.594170, 24.278074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576797, 35.901642, 24.371126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.821287, 35.987247, 24.675915>,  <29.967981, 36.038612, 24.858788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.821287, 35.987247, 24.675915>,  <29.576797, 35.901642, 24.371126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821287, 35.987247, 24.675915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668336, -0.376128, 0.641759,
		0.423947, -0.901512, -0.086861,
		0.611224, 0.214019, 0.761972,
		30.004654, 36.051453, 24.904507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499369, 35.303471, 24.859821>,  <29.576797, 35.901642, 24.371126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499369, 35.303471, 24.859821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.651979, 35.611362, 25.064545>,  <29.743546, 35.796097, 25.187380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.651979, 35.611362, 25.064545>,  <29.499369, 35.303471, 24.859821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651979, 35.611362, 25.064545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647204, -0.172878, 0.742456,
		0.659973, -0.614512, 0.432216,
		0.381527, 0.769732, 0.511809,
		29.766438, 35.842281, 25.218088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217480, 35.235352, 25.476112>,  <29.499369, 35.303471, 24.859821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217480, 35.235352, 25.476112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.377409, 35.592140, 25.560513>,  <29.473368, 35.806213, 25.611153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.377409, 35.592140, 25.560513>,  <29.217480, 35.235352, 25.476112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377409, 35.592140, 25.560513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414490, -0.029369, 0.909580,
		0.817520, -0.451129, 0.357973,
		0.399824, 0.891976, 0.210999,
		29.497356, 35.859734, 25.623812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525890, 35.301605, 26.223167>,  <29.217480, 35.235352, 25.476112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525890, 35.301605, 26.223167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.409317, 35.659523, 26.087870>,  <29.339373, 35.874275, 26.006691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.409317, 35.659523, 26.087870>,  <29.525890, 35.301605, 26.223167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409317, 35.659523, 26.087870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301205, 0.249771, 0.920266,
		0.907932, 0.370079, 0.196724,
		-0.291435, 0.894794, -0.338245,
		29.321886, 35.927959, 25.986397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714342, 35.767796, 26.672232>,  <29.525890, 35.301605, 26.223167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714342, 35.767796, 26.672232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.422037, 35.962875, 26.481178>,  <29.246655, 36.079926, 26.366547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.422037, 35.962875, 26.481178>,  <29.714342, 35.767796, 26.672232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422037, 35.962875, 26.481178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316789, 0.377503, 0.870136,
		0.604675, 0.787171, -0.121366,
		-0.730762, 0.487702, -0.477634,
		29.202808, 36.109184, 26.337889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744085, 36.526680, 26.797472>,  <29.714342, 35.767796, 26.672232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744085, 36.526680, 26.797472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.365730, 36.445740, 26.695999>,  <29.138718, 36.397175, 26.635117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.365730, 36.445740, 26.695999>,  <29.744085, 36.526680, 26.797472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365730, 36.445740, 26.695999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312286, 0.355207, 0.881082,
		-0.088175, 0.912625, -0.399175,
		-0.945887, -0.202346, -0.253680,
		29.081964, 36.385036, 26.619896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425299, 37.165493, 27.101929>,  <29.744085, 36.526680, 26.797472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425299, 37.165493, 27.101929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.151752, 36.879768, 27.042475>,  <28.987625, 36.708336, 27.006802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.151752, 36.879768, 27.042475>,  <29.425299, 37.165493, 27.101929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151752, 36.879768, 27.042475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482169, 0.289569, 0.826839,
		-0.547578, 0.637113, -0.542444,
		-0.683865, -0.714309, -0.148635,
		28.946592, 36.665474, 26.997885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729401, 37.540039, 27.237402>,  <29.425299, 37.165493, 27.101929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729401, 37.540039, 27.237402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.622889, 37.154480, 27.236906>,  <28.558981, 36.923145, 27.236609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.622889, 37.154480, 27.236906>,  <28.729401, 37.540039, 27.237402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622889, 37.154480, 27.236906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701201, 0.192824, 0.686393,
		-0.661372, 0.183643, -0.727229,
		-0.266278, -0.963896, -0.001242,
		28.543005, 36.865311, 27.236534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012680, 37.590523, 27.197565>,  <28.729401, 37.540039, 27.237402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012680, 37.590523, 27.197565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.118328, 37.237839, 27.353935>,  <28.181717, 37.026226, 27.447758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.118328, 37.237839, 27.353935>,  <28.012680, 37.590523, 27.197565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118328, 37.237839, 27.353935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676458, 0.119570, 0.726710,
		-0.687493, -0.456383, -0.564861,
		0.264118, -0.881713, 0.390928,
		28.197563, 36.973324, 27.471214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622395, 38.244102, 26.946386>,  <28.012680, 37.590523, 27.197565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622395, 38.244102, 26.946386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.349466, 38.533520, 26.988195>,  <27.185709, 38.707169, 27.013281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.349466, 38.533520, 26.988195>,  <27.622395, 38.244102, 26.946386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349466, 38.533520, 26.988195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175022, -0.022861, -0.984299,
		-0.709792, -0.689903, 0.142234,
		-0.682322, 0.723541, 0.104521,
		27.144770, 38.750584, 27.019552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068316, 38.069462, 26.530870>,  <27.622395, 38.244102, 26.946386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068316, 38.069462, 26.530870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.985271, 38.453617, 26.605228>,  <26.935446, 38.684109, 26.649843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.985271, 38.453617, 26.605228>,  <27.068316, 38.069462, 26.530870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985271, 38.453617, 26.605228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226880, 0.137580, -0.964156,
		-0.951538, -0.242343, 0.189329,
		-0.207609, 0.960386, 0.185895,
		26.922989, 38.741734, 26.660997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.384613, 38.221981, 26.276154>,  <27.068316, 38.069462, 26.530870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.384613, 38.221981, 26.276154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.617708, 38.546135, 26.300447>,  <26.757565, 38.740627, 26.315023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.617708, 38.546135, 26.300447>,  <26.384613, 38.221981, 26.276154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617708, 38.546135, 26.300447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085120, 0.135189, -0.987157,
		-0.808191, 0.570082, 0.147760,
		0.582736, 0.810389, 0.060733,
		26.792528, 38.789253, 26.318666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042961, 38.667999, 25.896536>,  <26.384613, 38.221981, 26.276154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042961, 38.667999, 25.896536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.400415, 38.847431, 25.902044>,  <26.614887, 38.955090, 25.905350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.400415, 38.847431, 25.902044>,  <26.042961, 38.667999, 25.896536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400415, 38.847431, 25.902044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085486, 0.200258, -0.976007,
		-0.440575, 0.871018, 0.217305,
		0.893636, 0.448581, 0.013769,
		26.668507, 38.982006, 25.906176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973713, 39.338593, 25.431252>,  <26.042961, 38.667999, 25.896536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973713, 39.338593, 25.431252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.350946, 39.215706, 25.482174>,  <26.577288, 39.141975, 25.512728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.350946, 39.215706, 25.482174>,  <25.973713, 39.338593, 25.431252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350946, 39.215706, 25.482174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174673, 0.131867, -0.975756,
		0.282981, 0.942459, 0.178024,
		0.943086, -0.307216, 0.127307,
		26.633873, 39.123543, 25.520367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312082, 39.808884, 25.158678>,  <25.973713, 39.338593, 25.431252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312082, 39.808884, 25.158678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.573729, 39.508183, 25.192135>,  <26.730717, 39.327763, 25.212210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.573729, 39.508183, 25.192135>,  <26.312082, 39.808884, 25.158678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573729, 39.508183, 25.192135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276151, 0.134397, -0.951671,
		0.704182, 0.645602, 0.295509,
		0.654116, -0.751755, 0.083644,
		26.769964, 39.282658, 25.217228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767651, 40.078953, 24.733082>,  <26.312082, 39.808884, 25.158678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767651, 40.078953, 24.733082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.863495, 39.694115, 24.785172>,  <26.921001, 39.463211, 24.816425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.863495, 39.694115, 24.785172>,  <26.767651, 40.078953, 24.733082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863495, 39.694115, 24.785172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349274, -0.039731, -0.936178,
		0.905867, 0.269801, 0.326515,
		0.239609, -0.962096, 0.130225,
		26.935377, 39.405487, 24.824240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343201, 40.090347, 24.265768>,  <26.767651, 40.078953, 24.733082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343201, 40.090347, 24.265768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.224676, 39.716209, 24.343056>,  <27.153563, 39.491726, 24.389427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.224676, 39.716209, 24.343056>,  <27.343201, 40.090347, 24.265768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224676, 39.716209, 24.343056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572089, -0.335812, -0.748294,
		0.764797, -0.111188, 0.634604,
		-0.296309, -0.935344, 0.193218,
		27.135784, 39.435608, 24.401022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052011, 39.659115, 24.052759>,  <27.343201, 40.090347, 24.265768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052011, 39.659115, 24.052759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.738718, 39.410534, 24.045307>,  <27.550741, 39.261387, 24.040836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.738718, 39.410534, 24.045307>,  <28.052011, 39.659115, 24.052759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738718, 39.410534, 24.045307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372683, -0.445298, -0.814136,
		0.497647, -0.644602, 0.580375,
		-0.783234, -0.621448, -0.018631,
		27.503748, 39.224098, 24.039719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303297, 38.956951, 24.039490>,  <28.052011, 39.659115, 24.052759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303297, 38.956951, 24.039490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.955280, 39.016163, 23.851398>,  <27.746469, 39.051689, 23.738543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.955280, 39.016163, 23.851398>,  <28.303297, 38.956951, 24.039490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955280, 39.016163, 23.851398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424963, -0.258256, -0.867589,
		-0.249863, -0.954669, 0.161789,
		-0.870043, 0.148024, -0.470228,
		27.694267, 39.060570, 23.710329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279341, 38.294170, 23.692307>,  <28.303297, 38.956951, 24.039490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279341, 38.294170, 23.692307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.000635, 38.532776, 23.532959>,  <27.833412, 38.675938, 23.437351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.000635, 38.532776, 23.532959>,  <28.279341, 38.294170, 23.692307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000635, 38.532776, 23.532959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361831, -0.187252, -0.913244,
		-0.619355, -0.780456, -0.085366,
		-0.696762, 0.596510, -0.398369,
		27.791607, 38.711727, 23.413448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032059, 37.881691, 23.153378>,  <28.279341, 38.294170, 23.692307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032059, 37.881691, 23.153378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.905008, 38.250145, 23.063377>,  <27.828777, 38.471218, 23.009378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.905008, 38.250145, 23.063377>,  <28.032059, 37.881691, 23.153378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905008, 38.250145, 23.063377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217342, -0.160245, -0.962852,
		-0.922971, -0.354729, -0.149303,
		-0.317626, 0.921134, -0.224999,
		27.809721, 38.526485, 22.995878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514011, 37.859241, 22.581606>,  <28.032059, 37.881691, 23.153378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514011, 37.859241, 22.581606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.643053, 38.237461, 22.564312>,  <27.720478, 38.464394, 22.553936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.643053, 38.237461, 22.564312>,  <27.514011, 37.859241, 22.581606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643053, 38.237461, 22.564312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089196, -0.075841, -0.993122,
		-0.942322, 0.316530, -0.108806,
		0.322605, 0.945546, -0.043233,
		27.739834, 38.521126, 22.551342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295164, 38.186935, 21.955923>,  <27.514011, 37.859241, 22.581606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295164, 38.186935, 21.955923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.580889, 38.446342, 22.061134>,  <27.752323, 38.601986, 22.124260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.580889, 38.446342, 22.061134>,  <27.295164, 38.186935, 21.955923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580889, 38.446342, 22.061134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224057, 0.144133, -0.963859,
		-0.662992, 0.747428, -0.042350,
		0.714311, 0.648519, 0.263026,
		27.795181, 38.640900, 22.140041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091902, 38.778866, 21.673584>,  <27.295164, 38.186935, 21.955923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091902, 38.778866, 21.673584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.487017, 38.756592, 21.731794>,  <27.724085, 38.743229, 21.766720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.487017, 38.756592, 21.731794>,  <27.091902, 38.778866, 21.673584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.487017, 38.756592, 21.731794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153953, 0.204884, -0.966603,
		0.024008, 0.977201, 0.210954,
		0.987786, -0.055683, 0.145524,
		27.783352, 38.739887, 21.775452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485609, 39.258907, 21.246595>,  <27.091902, 38.778866, 21.673584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485609, 39.258907, 21.246595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.750273, 38.974995, 21.343273>,  <27.909071, 38.804646, 21.401279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.750273, 38.974995, 21.343273>,  <27.485609, 39.258907, 21.246595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750273, 38.974995, 21.343273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120067, -0.217889, -0.968560,
		0.740131, 0.669875, -0.058946,
		0.661657, -0.709784, 0.241696,
		27.948771, 38.762058, 21.415783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095802, 39.439629, 20.787622>,  <27.485609, 39.258907, 21.246595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095802, 39.439629, 20.787622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.160854, 39.063046, 20.905746>,  <28.199886, 38.837097, 20.976620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.160854, 39.063046, 20.905746>,  <28.095802, 39.439629, 20.787622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160854, 39.063046, 20.905746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299054, -0.238182, -0.924032,
		0.940276, 0.238589, 0.242812,
		0.162630, -0.941459, 0.295308,
		28.209642, 38.780609, 20.994339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658709, 39.316284, 20.344925>,  <28.095802, 39.439629, 20.787622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658709, 39.316284, 20.344925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.549040, 38.949684, 20.461441>,  <28.483238, 38.729725, 20.531351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.549040, 38.949684, 20.461441>,  <28.658709, 39.316284, 20.344925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549040, 38.949684, 20.461441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355946, -0.378098, -0.854602,
		0.893382, -0.130624, 0.429890,
		-0.274172, -0.916504, 0.291291,
		28.466787, 38.674732, 20.548828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.294365, 38.957428, 20.244070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.994186, 38.697212, 20.290758>,  <28.814079, 38.541080, 20.318771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.994186, 38.697212, 20.290758>,  <29.294365, 38.957428, 20.244070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994186, 38.697212, 20.290758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272796, -0.465731, -0.841829,
		0.602006, -0.599908, 0.526972,
		-0.750448, -0.650542, 0.116720,
		28.769053, 38.502048, 20.325775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556007, 38.430012, 19.972036>,  <29.294365, 38.957428, 20.244070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556007, 38.430012, 19.972036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.164526, 38.357727, 19.933083>,  <28.929638, 38.314358, 19.909710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.164526, 38.357727, 19.933083>,  <29.556007, 38.430012, 19.972036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164526, 38.357727, 19.933083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161555, -0.385376, -0.908507,
		0.126651, -0.904891, 0.406363,
		-0.978703, -0.180713, -0.097382,
		28.870914, 38.303513, 19.903868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550192, 37.724079, 19.661751>,  <29.556007, 38.430012, 19.972036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550192, 37.724079, 19.661751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.197351, 37.906277, 19.613720>,  <28.985647, 38.015594, 19.584902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.197351, 37.906277, 19.613720>,  <29.550192, 37.724079, 19.661751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197351, 37.906277, 19.613720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003008, -0.260350, -0.965510,
		-0.471052, -0.851315, 0.231025,
		-0.882100, 0.455500, -0.120078,
		28.932720, 38.042927, 19.577696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108765, 37.246254, 19.574091>,  <29.550192, 37.724079, 19.661751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108765, 37.246254, 19.574091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.908171, 37.554214, 19.416222>,  <28.787815, 37.738991, 19.321499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.908171, 37.554214, 19.416222>,  <29.108765, 37.246254, 19.574091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908171, 37.554214, 19.416222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293502, -0.277739, -0.914723,
		-0.813862, -0.574556, -0.086686,
		-0.501483, 0.769901, -0.394674,
		28.757727, 37.785183, 19.297819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699646, 37.001595, 19.017824>,  <29.108765, 37.246254, 19.574091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699646, 37.001595, 19.017824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.769777, 37.387459, 18.939146>,  <28.811857, 37.618977, 18.891939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.769777, 37.387459, 18.939146>,  <28.699646, 37.001595, 19.017824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769777, 37.387459, 18.939146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164926, -0.225744, -0.960124,
		-0.970597, 0.135899, -0.198677,
		0.175330, 0.964661, -0.196694,
		28.822376, 37.676857, 18.880138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412102, 37.109829, 18.423372>,  <28.699646, 37.001595, 19.017824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412102, 37.109829, 18.423372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.634914, 37.441914, 18.431938>,  <28.768602, 37.641167, 18.437078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.634914, 37.441914, 18.431938>,  <28.412102, 37.109829, 18.423372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634914, 37.441914, 18.431938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248239, -0.141836, -0.958259,
		-0.792524, 0.539096, -0.285098,
		0.557031, 0.830216, 0.021416,
		28.802023, 37.690979, 18.438362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186941, 37.626698, 17.866524>,  <28.412102, 37.109829, 18.423372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186941, 37.626698, 17.866524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.559292, 37.751118, 17.943169>,  <28.782701, 37.825771, 17.989157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.559292, 37.751118, 17.943169>,  <28.186941, 37.626698, 17.866524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559292, 37.751118, 17.943169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196171, 0.016884, -0.980424,
		-0.308198, 0.950243, -0.045302,
		0.930876, 0.311052, 0.191614,
		28.838554, 37.844433, 18.000652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326561, 38.177765, 17.500872>,  <28.186941, 37.626698, 17.866524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326561, 38.177765, 17.500872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.693901, 38.042965, 17.583876>,  <28.914305, 37.962086, 17.633678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.693901, 38.042965, 17.583876>,  <28.326561, 38.177765, 17.500872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693901, 38.042965, 17.583876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229136, 0.025238, -0.973067,
		0.322685, 0.941167, 0.100395,
		0.918352, -0.336998, 0.207511,
		28.969406, 37.941864, 17.646130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769930, 38.648769, 17.096739>,  <28.326561, 38.177765, 17.500872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769930, 38.648769, 17.096739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.999578, 38.333134, 17.184124>,  <29.137367, 38.143753, 17.236555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.999578, 38.333134, 17.184124>,  <28.769930, 38.648769, 17.096739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999578, 38.333134, 17.184124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357163, 0.001266, -0.934041,
		0.736764, 0.614280, 0.282560,
		0.574120, -0.789087, 0.218465,
		29.171814, 38.096409, 17.249664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491808, 38.903175, 17.074015>,  <28.769930, 38.648769, 17.096739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491808, 38.903175, 17.074015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.471006, 38.507500, 17.019165>,  <29.458525, 38.270096, 16.986256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.471006, 38.507500, 17.019165>,  <29.491808, 38.903175, 17.074015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471006, 38.507500, 17.019165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411007, 0.103941, -0.905687,
		0.910147, -0.103459, 0.401158,
		-0.052005, -0.989188, -0.137125,
		29.455404, 38.210743, 16.978027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090101, 38.775940, 16.709280>,  <29.491808, 38.903175, 17.074015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090101, 38.775940, 16.709280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.879444, 38.441601, 16.647306>,  <29.753050, 38.240997, 16.610123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.879444, 38.441601, 16.647306>,  <30.090101, 38.775940, 16.709280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879444, 38.441601, 16.647306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375001, -0.064866, -0.924752,
		0.762902, -0.545116, 0.347605,
		-0.526645, -0.835847, -0.154933,
		29.721451, 38.190845, 16.600826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543436, 38.167599, 16.378883>,  <30.090101, 38.775940, 16.709280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543436, 38.167599, 16.378883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.169163, 38.050812, 16.299637>,  <29.944599, 37.980740, 16.252089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.169163, 38.050812, 16.299637>,  <30.543436, 38.167599, 16.378883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169163, 38.050812, 16.299637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219449, -0.041882, -0.974725,
		0.276289, -0.955511, 0.103260,
		-0.935685, -0.291966, -0.198115,
		29.888456, 37.963223, 16.240202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604683, 37.868423, 15.786083>,  <30.543436, 38.167599, 16.378883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604683, 37.868423, 15.786083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.204975, 37.855412, 15.794107>,  <29.965151, 37.847603, 15.798922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.204975, 37.855412, 15.794107>,  <30.604683, 37.868423, 15.786083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204975, 37.855412, 15.794107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013433, -0.192441, -0.981217,
		0.035784, -0.980769, 0.191863,
		-0.999269, -0.032534, 0.020061,
		29.905195, 37.845650, 15.800126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340372, 37.194546, 15.560733>,  <30.604683, 37.868423, 15.786083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340372, 37.194546, 15.560733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.057076, 37.464043, 15.476389>,  <29.887096, 37.625740, 15.425783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.057076, 37.464043, 15.476389>,  <30.340372, 37.194546, 15.560733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057076, 37.464043, 15.476389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012359, -0.286802, -0.957910,
		-0.705861, -0.681039, 0.194798,
		-0.708242, 0.673744, -0.210859,
		29.844603, 37.666164, 15.413132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746778, 36.806423, 15.361192>,  <30.340372, 37.194546, 15.560733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746778, 36.806423, 15.361192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.662193, 37.180317, 15.246960>,  <29.611443, 37.404652, 15.178421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.662193, 37.180317, 15.246960>,  <29.746778, 36.806423, 15.361192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662193, 37.180317, 15.246960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091304, -0.309802, -0.946407,
		-0.973112, -0.174056, 0.150857,
		-0.211464, 0.934734, -0.285580,
		29.598755, 37.460735, 15.161285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054279, 36.804821, 15.121656>,  <29.746778, 36.806423, 15.361192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054279, 36.804821, 15.121656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.244968, 37.113594, 14.953442>,  <29.359383, 37.298859, 14.852512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.244968, 37.113594, 14.953442>,  <29.054279, 36.804821, 15.121656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244968, 37.113594, 14.953442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240500, -0.345612, -0.907035,
		-0.845515, 0.533543, 0.020890,
		0.476722, 0.771936, -0.420537,
		29.387985, 37.345173, 14.827281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668886, 36.927158, 14.538854>,  <29.054279, 36.804821, 15.121656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668886, 36.927158, 14.538854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.986128, 37.158627, 14.462830>,  <29.176474, 37.297508, 14.417215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.986128, 37.158627, 14.462830>,  <28.668886, 36.927158, 14.538854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986128, 37.158627, 14.462830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221092, -0.017244, -0.975101,
		-0.567540, 0.815379, 0.114263,
		0.793106, 0.578671, -0.190060,
		29.224060, 37.332230, 14.405811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493874, 37.352493, 13.980123>,  <28.668886, 36.927158, 14.538854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493874, 37.352493, 13.980123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.893240, 37.373882, 13.973090>,  <29.132860, 37.386715, 13.968871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.893240, 37.373882, 13.973090>,  <28.493874, 37.352493, 13.980123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893240, 37.373882, 13.973090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011818, -0.106219, -0.994273,
		-0.055034, 0.992904, -0.105419,
		0.998415, 0.053473, -0.017580,
		29.192764, 37.389923, 13.967816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731133, 37.894192, 13.468554>,  <28.493874, 37.352493, 13.980123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731133, 37.894192, 13.468554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.004402, 37.607368, 13.523828>,  <29.168364, 37.435272, 13.556993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.004402, 37.607368, 13.523828>,  <28.731133, 37.894192, 13.468554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004402, 37.607368, 13.523828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068322, -0.251162, -0.965531,
		0.727053, 0.650184, -0.220578,
		0.683173, -0.717062, 0.138186,
		29.209354, 37.392250, 13.565284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223921, 37.977497, 12.803246>,  <28.731133, 37.894192, 13.468554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223921, 37.977497, 12.803246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.294619, 37.621326, 12.971010>,  <29.337036, 37.407623, 13.071669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.294619, 37.621326, 12.971010>,  <29.223921, 37.977497, 12.803246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294619, 37.621326, 12.971010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055502, -0.434456, -0.898982,
		0.982691, 0.135611, -0.126208,
		0.176743, -0.890426, 0.419409,
		29.347641, 37.354198, 13.096833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492601, 37.644352, 12.227267>,  <29.223921, 37.977497, 12.803246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492601, 37.644352, 12.227267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.436882, 37.322407, 12.458021>,  <29.403450, 37.129242, 12.596474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.436882, 37.322407, 12.458021>,  <29.492601, 37.644352, 12.227267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436882, 37.322407, 12.458021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074228, -0.589412, -0.804416,
		0.987464, -0.069234, 0.141848,
		-0.139300, -0.804861, 0.576884,
		29.395092, 37.080948, 12.631086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956081, 37.040306, 11.965931>,  <29.492601, 37.644352, 12.227267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956081, 37.040306, 11.965931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.641258, 36.898674, 12.167986>,  <29.452364, 36.813694, 12.289219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.641258, 36.898674, 12.167986>,  <29.956081, 37.040306, 11.965931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641258, 36.898674, 12.167986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283910, -0.519065, -0.806205,
		0.547661, -0.777945, 0.308008,
		-0.787059, -0.354081, 0.505138,
		29.405140, 36.792450, 12.319528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936857, 36.231438, 11.936708>,  <29.956081, 37.040306, 11.965931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936857, 36.231438, 11.936708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.578552, 36.398582, 11.997369>,  <29.363569, 36.498871, 12.033765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.578552, 36.398582, 11.997369>,  <29.936857, 36.231438, 11.936708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578552, 36.398582, 11.997369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380059, -0.542961, -0.748832,
		-0.230567, -0.728413, 0.645177,
		-0.895764, 0.417861, 0.151650,
		29.309822, 36.523941, 12.042864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711166, 36.148754, 12.116085>,  <29.936857, 36.231438, 11.936708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711166, 36.148754, 12.116085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.629313, 35.759571, 12.073222>,  <30.580200, 35.526062, 12.047504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.629313, 35.759571, 12.073222>,  <30.711166, 36.148754, 12.116085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629313, 35.759571, 12.073222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002301, -0.108995, 0.994039,
		-0.978836, 0.203661, 0.020066,
		-0.204634, -0.972955, -0.107157,
		30.567923, 35.467686, 12.041075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123178, 35.961712, 12.584751>,  <30.711166, 36.148754, 12.116085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123178, 35.961712, 12.584751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.381788, 35.666092, 12.509047>,  <30.536953, 35.488720, 12.463624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.381788, 35.666092, 12.509047>,  <30.123178, 35.961712, 12.584751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381788, 35.666092, 12.509047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135788, -0.132645, 0.981818,
		-0.750713, -0.660467, 0.014596,
		0.646522, -0.739046, -0.189262,
		30.575745, 35.444378, 12.452268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852625, 35.290974, 12.973702>,  <30.123178, 35.961712, 12.584751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852625, 35.290974, 12.973702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.244198, 35.243122, 12.907517>,  <30.479141, 35.214413, 12.867806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.244198, 35.243122, 12.907517>,  <29.852625, 35.290974, 12.973702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244198, 35.243122, 12.907517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136035, -0.222177, 0.965470,
		-0.152258, -0.967640, -0.201223,
		0.978934, -0.119627, -0.165461,
		30.537878, 35.207233, 12.857879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126699, 34.616718, 13.310077>,  <29.852625, 35.290974, 12.973702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126699, 34.616718, 13.310077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.442764, 34.857037, 13.261612>,  <30.632404, 35.001228, 13.232533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.442764, 34.857037, 13.261612>,  <30.126699, 34.616718, 13.310077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442764, 34.857037, 13.261612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248302, -0.133063, 0.959500,
		0.560346, -0.788247, -0.254322,
		0.790163, 0.600801, -0.121162,
		30.679813, 35.037277, 13.225264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666422, 34.120522, 13.288806>,  <30.126699, 34.616718, 13.310077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666422, 34.120522, 13.288806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.785969, 34.488136, 13.391612>,  <30.857697, 34.708706, 13.453296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.785969, 34.488136, 13.391612>,  <30.666422, 34.120522, 13.288806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785969, 34.488136, 13.391612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103922, -0.299067, 0.948556,
		0.948619, -0.256782, -0.184889,
		0.298867, 0.919033, 0.257016,
		30.875629, 34.763847, 13.468717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797741, 34.064499, 14.019529>,  <30.666422, 34.120522, 13.288806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797741, 34.064499, 14.019529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.858967, 34.455994, 13.964902>,  <30.895702, 34.690891, 13.932126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.858967, 34.455994, 13.964902>,  <30.797741, 34.064499, 14.019529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858967, 34.455994, 13.964902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120959, 0.118602, 0.985547,
		0.980785, -0.167372, -0.100232,
		0.153066, 0.978734, -0.136568,
		30.904886, 34.749615, 13.923931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552679, 34.240795, 14.273422>,  <30.797741, 34.064499, 14.019529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552679, 34.240795, 14.273422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.295856, 34.547459, 14.273103>,  <31.141764, 34.731457, 14.272911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.295856, 34.547459, 14.273103>,  <31.552679, 34.240795, 14.273422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295856, 34.547459, 14.273103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057349, 0.049067, 0.997148,
		0.764510, 0.640179, -0.075470,
		-0.642057, 0.766657, -0.000799,
		31.103239, 34.777454, 14.272863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848507, 34.668030, 14.793976>,  <31.552679, 34.240795, 14.273422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848507, 34.668030, 14.793976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.480434, 34.815975, 14.742656>,  <31.259590, 34.904743, 14.711864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.480434, 34.815975, 14.742656>,  <31.848507, 34.668030, 14.793976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480434, 34.815975, 14.742656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005250, 0.339354, 0.940644,
		0.391452, 0.864892, -0.314210,
		-0.920184, 0.369867, -0.128300,
		31.204380, 34.926933, 14.704165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919153, 35.371582, 15.058960>,  <31.848507, 34.668030, 14.793976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919153, 35.371582, 15.058960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.525013, 35.304169, 15.048548>,  <31.288528, 35.263721, 15.042300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.525013, 35.304169, 15.048548>,  <31.919153, 35.371582, 15.058960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525013, 35.304169, 15.048548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098180, 0.435845, 0.894650,
		-0.139430, 0.884102, -0.446008,
		-0.985353, -0.168530, -0.026031,
		31.229406, 35.253609, 15.040738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676163, 36.012344, 15.271275>,  <31.919153, 35.371582, 15.058960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676163, 36.012344, 15.271275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.407963, 35.722683, 15.335818>,  <31.247044, 35.548885, 15.374544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.407963, 35.722683, 15.335818>,  <31.676163, 36.012344, 15.271275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407963, 35.722683, 15.335818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063503, 0.272709, 0.959998,
		-0.739187, 0.633432, -0.228837,
		-0.670499, -0.724151, 0.161358,
		31.206814, 35.505436, 15.384226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059065, 36.301418, 15.527015>,  <31.676163, 36.012344, 15.271275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059065, 36.301418, 15.527015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.063147, 35.925537, 15.663751>,  <31.065596, 35.700008, 15.745792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.063147, 35.925537, 15.663751>,  <31.059065, 36.301418, 15.527015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063147, 35.925537, 15.663751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042711, 0.341135, 0.939043,
		-0.999035, -0.024182, -0.036655,
		0.010204, -0.939703, 0.341839,
		31.066208, 35.643627, 15.766302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492886, 36.254795, 16.011688>,  <31.059065, 36.301418, 15.527015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492886, 36.254795, 16.011688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.746609, 35.961514, 16.109720>,  <30.898844, 35.785545, 16.168539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.746609, 35.961514, 16.109720>,  <30.492886, 36.254795, 16.011688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746609, 35.961514, 16.109720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204293, 0.146772, 0.967844,
		-0.745598, -0.663980, -0.056690,
		0.634308, -0.733205, 0.245080,
		30.936901, 35.741550, 16.183245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111654, 35.771503, 16.470709>,  <30.492886, 36.254795, 16.011688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111654, 35.771503, 16.470709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.502752, 35.703579, 16.519983>,  <30.737411, 35.662823, 16.549547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.502752, 35.703579, 16.519983>,  <30.111654, 35.771503, 16.470709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502752, 35.703579, 16.519983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093706, 0.171856, 0.980655,
		-0.187696, -0.970376, 0.152120,
		0.977747, -0.169810, 0.123187,
		30.796076, 35.652637, 16.556940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185061, 35.427189, 17.125481>,  <30.111654, 35.771503, 16.470709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185061, 35.427189, 17.125481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.565155, 35.535725, 17.064257>,  <30.793211, 35.600845, 17.027523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.565155, 35.535725, 17.064257>,  <30.185061, 35.427189, 17.125481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565155, 35.535725, 17.064257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091944, 0.225162, 0.969973,
		0.297663, -0.935774, 0.189008,
		0.950233, 0.271347, -0.153061,
		30.850225, 35.617126, 17.018339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613253, 35.015182, 17.581383>,  <30.185061, 35.427189, 17.125481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613253, 35.015182, 17.581383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.833450, 35.340435, 17.505726>,  <30.965569, 35.535587, 17.460331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.833450, 35.340435, 17.505726>,  <30.613253, 35.015182, 17.581383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833450, 35.340435, 17.505726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010377, 0.219881, 0.975471,
		0.834774, -0.538955, 0.112606,
		0.550495, 0.813130, -0.189144,
		30.998598, 35.584373, 17.448982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043602, 35.063873, 18.027172>,  <30.613253, 35.015182, 17.581383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043602, 35.063873, 18.027172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.068521, 35.450180, 17.926441>,  <31.083473, 35.681965, 17.866003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.068521, 35.450180, 17.926441>,  <31.043602, 35.063873, 18.027172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068521, 35.450180, 17.926441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022257, 0.250909, 0.967755,
		0.997809, -0.065895, -0.005864,
		0.062299, 0.965765, -0.251826,
		31.087212, 35.739910, 17.850893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445684, 35.385166, 18.517946>,  <31.043602, 35.063873, 18.027172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445684, 35.385166, 18.517946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.284472, 35.709366, 18.347929>,  <31.187744, 35.903885, 18.245918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.284472, 35.709366, 18.347929>,  <31.445684, 35.385166, 18.517946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284472, 35.709366, 18.347929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054745, 0.484950, 0.872827,
		0.913548, 0.328507, -0.239820,
		-0.403031, 0.810497, -0.425041,
		31.163563, 35.952515, 18.220417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882547, 35.952026, 18.632994>,  <31.445684, 35.385166, 18.517946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882547, 35.952026, 18.632994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.513821, 36.094883, 18.572727>,  <31.292585, 36.180599, 18.536568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.513821, 36.094883, 18.572727>,  <31.882547, 35.952026, 18.632994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513821, 36.094883, 18.572727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027217, 0.328096, 0.944252,
		0.386669, 0.874529, -0.292724,
		-0.921817, 0.357146, -0.150666,
		31.237276, 36.202026, 18.527527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895058, 36.445316, 19.207830>,  <31.882547, 35.952026, 18.632994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895058, 36.445316, 19.207830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517258, 36.439243, 19.076567>,  <31.290577, 36.435600, 18.997808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517258, 36.439243, 19.076567>,  <31.895058, 36.445316, 19.207830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517258, 36.439243, 19.076567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296670, 0.468437, 0.832198,
		0.141086, 0.883366, -0.446943,
		-0.944501, -0.015183, -0.328158,
		31.233908, 36.434689, 18.978119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661163, 37.074062, 19.330097>,  <31.895058, 36.445316, 19.207830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661163, 37.074062, 19.330097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364845, 36.805923, 19.312874>,  <31.187056, 36.645039, 19.302540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364845, 36.805923, 19.312874>,  <31.661163, 37.074062, 19.330097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364845, 36.805923, 19.312874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369289, 0.352871, 0.859714,
		-0.561116, 0.652771, -0.508958,
		-0.740793, -0.670352, -0.043059,
		31.142607, 36.604816, 19.299955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106283, 37.460762, 19.605169>,  <31.661163, 37.074062, 19.330097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106283, 37.460762, 19.605169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.989792, 37.079647, 19.639553>,  <30.919897, 36.850979, 19.660183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.989792, 37.079647, 19.639553>,  <31.106283, 37.460762, 19.605169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989792, 37.079647, 19.639553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161578, 0.137552, 0.977227,
		-0.942909, 0.270708, -0.194008,
		-0.291229, -0.952784, 0.085959,
		30.902424, 36.793812, 19.665340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<27.573313, 39.786079, 22.669752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.642946, 39.408543, 22.782076>,  <27.684727, 39.182018, 22.849470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.642946, 39.408543, 22.782076>,  <27.573313, 39.786079, 22.669752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642946, 39.408543, 22.782076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422514, 0.185991, 0.887068,
		-0.889482, -0.273068, -0.366409,
		0.174081, -0.943844, 0.280811,
		27.695171, 39.125389, 22.866320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865063, 39.465393, 22.895525>,  <27.573313, 39.786079, 22.669752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865063, 39.465393, 22.895525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.150021, 39.228004, 23.045347>,  <27.320995, 39.085571, 23.135241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.150021, 39.228004, 23.045347>,  <26.865063, 39.465393, 22.895525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.150021, 39.228004, 23.045347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503004, -0.059628, 0.862224,
		-0.489370, -0.802644, -0.340997,
		0.712392, -0.593470, 0.374553,
		27.363739, 39.049965, 23.157713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475670, 38.996429, 23.257692>,  <26.865063, 39.465393, 22.895525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475670, 38.996429, 23.257692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.840294, 39.047432, 23.414049>,  <27.059069, 39.078033, 23.507864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.840294, 39.047432, 23.414049>,  <26.475670, 38.996429, 23.257692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840294, 39.047432, 23.414049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366013, -0.181480, 0.912743,
		0.187324, -0.975093, -0.118760,
		0.911561, 0.127511, 0.390892,
		27.113762, 39.085686, 23.531317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416407, 38.533909, 23.927261>,  <26.475670, 38.996429, 23.257692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416407, 38.533909, 23.927261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.755875, 38.743168, 23.958435>,  <26.959555, 38.868725, 23.977140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.755875, 38.743168, 23.958435>,  <26.416407, 38.533909, 23.927261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755875, 38.743168, 23.958435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160927, 0.115032, 0.980240,
		0.503847, -0.844442, 0.181814,
		0.848670, 0.523150, 0.077935,
		27.010475, 38.900112, 23.981815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730232, 38.193233, 24.395943>,  <26.416407, 38.533909, 23.927261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730232, 38.193233, 24.395943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.884220, 38.562386, 24.399879>,  <26.976612, 38.783875, 24.402243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.884220, 38.562386, 24.399879>,  <26.730232, 38.193233, 24.395943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.884220, 38.562386, 24.399879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053108, 0.011503, 0.998523,
		0.921400, -0.384923, 0.053441,
		0.384969, 0.922877, 0.009844,
		26.999710, 38.839249, 24.402832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356606, 38.205830, 24.862793>,  <26.730232, 38.193233, 24.395943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356606, 38.205830, 24.862793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.204557, 38.575493, 24.847645>,  <27.113329, 38.797291, 24.838556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.204557, 38.575493, 24.847645>,  <27.356606, 38.205830, 24.862793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204557, 38.575493, 24.847645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182901, 0.115240, 0.976354,
		0.906673, 0.364203, -0.212836,
		-0.380119, 0.924162, -0.037872,
		27.090523, 38.852741, 24.836283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876392, 38.699696, 25.109114>,  <27.356606, 38.205830, 24.862793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876392, 38.699696, 25.109114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.510170, 38.849331, 25.168200>,  <27.290438, 38.939114, 25.203651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.510170, 38.849331, 25.168200>,  <27.876392, 38.699696, 25.109114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510170, 38.849331, 25.168200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183545, 0.061821, 0.981065,
		0.357873, 0.925330, -0.125262,
		-0.915553, 0.374088, 0.147716,
		27.235504, 38.961555, 25.212515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888798, 38.890995, 25.761065>,  <27.876392, 38.699696, 25.109114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888798, 38.890995, 25.761065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.512819, 38.990086, 25.667141>,  <27.287231, 39.049538, 25.610786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.512819, 38.990086, 25.667141>,  <27.888798, 38.890995, 25.761065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512819, 38.990086, 25.667141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186625, 0.203003, 0.961229,
		0.285785, 0.947324, -0.144580,
		-0.939946, 0.247723, -0.234810,
		27.230835, 39.064404, 25.596699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816778, 39.600300, 26.032698>,  <27.888798, 38.890995, 25.761065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816778, 39.600300, 26.032698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.465065, 39.412182, 26.002537>,  <27.254036, 39.299313, 25.984440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.465065, 39.412182, 26.002537>,  <27.816778, 39.600300, 26.032698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465065, 39.412182, 26.002537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196009, 0.213008, 0.957188,
		-0.434095, 0.856420, -0.279476,
		-0.879285, -0.470290, -0.075400,
		27.201279, 39.271095, 25.979918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370857, 39.961727, 26.410864>,  <27.816778, 39.600300, 26.032698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370857, 39.961727, 26.410864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.191139, 39.606197, 26.374807>,  <27.083307, 39.392879, 26.353172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.191139, 39.606197, 26.374807>,  <27.370857, 39.961727, 26.410864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191139, 39.606197, 26.374807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122792, -0.038503, 0.991685,
		-0.884904, 0.456630, -0.091841,
		-0.449297, -0.888823, -0.090142,
		27.056351, 39.339550, 26.347765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718939, 40.031143, 26.756254>,  <27.370857, 39.961727, 26.410864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718939, 40.031143, 26.756254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.777082, 39.636993, 26.720665>,  <26.811968, 39.400505, 26.699312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.777082, 39.636993, 26.720665>,  <26.718939, 40.031143, 26.756254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777082, 39.636993, 26.720665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155037, -0.111503, 0.981596,
		-0.977156, -0.128889, -0.168977,
		0.145359, -0.985370, -0.088973,
		26.820690, 39.341381, 26.693974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148809, 39.606636, 27.128757>,  <26.718939, 40.031143, 26.756254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.148809, 39.606636, 27.128757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.482693, 39.389122, 27.093994>,  <26.683023, 39.258614, 27.073135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.482693, 39.389122, 27.093994>,  <26.148809, 39.606636, 27.128757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482693, 39.389122, 27.093994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008759, -0.144688, 0.989439,
		-0.550620, -0.826656, -0.116009,
		0.834710, -0.543788, -0.086909,
		26.733107, 39.225986, 27.067921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.014582, 39.102219, 27.625549>,  <26.148809, 39.606636, 27.128757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.014582, 39.102219, 27.625549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.402588, 39.125973, 27.531275>,  <26.635391, 39.140224, 27.474710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.402588, 39.125973, 27.531275>,  <26.014582, 39.102219, 27.625549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.402588, 39.125973, 27.531275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232848, 0.050968, 0.971177,
		0.069691, -0.996933, 0.035610,
		0.970013, 0.059391, -0.235685,
		26.693592, 39.143787, 27.460569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.453173, 38.766518, 28.172621>,  <26.014582, 39.102219, 27.625549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.453173, 38.766518, 28.172621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.354731, 38.598206, 28.521879>,  <25.295666, 38.497219, 28.731434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.354731, 38.598206, 28.521879>,  <25.453173, 38.766518, 28.172621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354731, 38.598206, 28.521879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221086, -0.852732, -0.473254,
		0.943692, -0.309509, 0.116832,
		-0.246103, -0.420776, 0.873144,
		25.280899, 38.471973, 28.783823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.853058, 38.162441, 28.358376>,  <25.453173, 38.766518, 28.172621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.853058, 38.162441, 28.358376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.511833, 38.110680, 28.560581>,  <25.307098, 38.079624, 28.681904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.511833, 38.110680, 28.560581>,  <25.853058, 38.162441, 28.358376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.511833, 38.110680, 28.560581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060596, -0.937642, -0.342280,
		0.518283, -0.322617, 0.792023,
		-0.853060, -0.129404, 0.505513,
		25.255915, 38.071857, 28.712234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931990, 37.500568, 28.791683>,  <25.853058, 38.162441, 28.358376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931990, 37.500568, 28.791683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.555967, 37.580513, 28.681158>,  <25.330355, 37.628479, 28.614843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.555967, 37.580513, 28.681158>,  <25.931990, 37.500568, 28.791683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.555967, 37.580513, 28.681158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023653, -0.846516, -0.531837,
		-0.340197, -0.493422, 0.800501,
		-0.940057, 0.199863, -0.276312,
		25.273951, 37.640472, 28.598265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.666317, 36.869938, 28.899466>,  <25.931990, 37.500568, 28.791683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.666317, 36.869938, 28.899466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.403608, 37.065159, 28.669525>,  <25.245983, 37.182289, 28.531561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.403608, 37.065159, 28.669525>,  <25.666317, 36.869938, 28.899466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.403608, 37.065159, 28.669525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002038, -0.763462, -0.645850,
		-0.754075, -0.423012, 0.502425,
		-0.656785, 0.488043, -0.574845,
		25.206575, 37.211575, 28.497068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.042873, 36.430080, 28.668846>,  <25.666317, 36.869938, 28.899466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.042873, 36.430080, 28.668846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.081451, 36.727959, 28.404686>,  <25.104599, 36.906685, 28.246191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.081451, 36.727959, 28.404686>,  <25.042873, 36.430080, 28.668846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081451, 36.727959, 28.404686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118495, -0.650183, -0.750481,
		-0.988260, 0.150635, 0.025535,
		0.096446, 0.744696, -0.660399,
		25.110386, 36.951366, 28.206566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.619528, 36.197109, 28.227354>,  <25.042873, 36.430080, 28.668846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.619528, 36.197109, 28.227354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.818359, 36.465809, 28.007656>,  <24.937658, 36.627029, 27.875837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.818359, 36.465809, 28.007656>,  <24.619528, 36.197109, 28.227354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.818359, 36.465809, 28.007656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078718, -0.595464, -0.799516,
		-0.864128, 0.440657, -0.243113,
		0.497077, 0.671747, -0.549245,
		24.967484, 36.667332, 27.842882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.348551, 36.070419, 27.566137>,  <24.619528, 36.197109, 28.227354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.348551, 36.070419, 27.566137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.677040, 36.287197, 27.494709>,  <24.874134, 36.417263, 27.451853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.677040, 36.287197, 27.494709>,  <24.348551, 36.070419, 27.566137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.677040, 36.287197, 27.494709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024010, -0.279854, -0.959742,
		-0.570098, 0.792452, -0.216812,
		0.821226, 0.541942, -0.178571,
		24.923409, 36.449780, 27.441137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.253622, 36.279591, 26.880013>,  <24.348551, 36.070419, 27.566137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.253622, 36.279591, 26.880013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.649975, 36.302303, 26.928881>,  <24.887787, 36.315929, 26.958202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.649975, 36.302303, 26.928881>,  <24.253622, 36.279591, 26.880013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.649975, 36.302303, 26.928881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134449, -0.359064, -0.923578,
		-0.008574, 0.931584, -0.363424,
		0.990883, 0.056781, 0.122172,
		24.947239, 36.319336, 26.965532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.512016, 36.352493, 26.297750>,  <24.253622, 36.279591, 26.880013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.512016, 36.352493, 26.297750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.843342, 36.239182, 26.491100>,  <25.042137, 36.171196, 26.607111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.843342, 36.239182, 26.491100>,  <24.512016, 36.352493, 26.297750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.843342, 36.239182, 26.491100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292971, -0.516405, -0.804670,
		0.477565, 0.808133, -0.344751,
		0.828311, -0.283280, 0.483376,
		25.091835, 36.154198, 26.636112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.096098, 36.660515, 25.865753>,  <24.512016, 36.352493, 26.297750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.096098, 36.660515, 25.865753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.206100, 36.336834, 26.073431>,  <25.272102, 36.142628, 26.198038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.206100, 36.336834, 26.073431>,  <25.096098, 36.660515, 25.865753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.206100, 36.336834, 26.073431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401705, -0.393916, -0.826718,
		0.873501, 0.435918, 0.216730,
		0.275008, -0.809201, 0.519196,
		25.288603, 36.094074, 26.229191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.833115, 36.665005, 25.925852>,  <25.096098, 36.660515, 25.865753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.833115, 36.665005, 25.925852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.699041, 36.289669, 25.959743>,  <25.618597, 36.064468, 25.980078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.699041, 36.289669, 25.959743>,  <25.833115, 36.665005, 25.925852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.699041, 36.289669, 25.959743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391877, -0.220631, -0.893171,
		0.856788, -0.266171, 0.441663,
		-0.335181, -0.938336, 0.084728,
		25.598488, 36.008167, 25.985163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.297190, 36.362144, 25.524214>,  <25.833115, 36.665005, 25.925852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.297190, 36.362144, 25.524214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.051416, 36.052464, 25.584991>,  <25.903952, 35.866657, 25.621458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.051416, 36.052464, 25.584991>,  <26.297190, 36.362144, 25.524214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051416, 36.052464, 25.584991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209639, -0.345870, -0.914563,
		0.760608, -0.530084, 0.374816,
		-0.614433, -0.774200, 0.151945,
		25.867086, 35.820202, 25.630575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668686, 35.769123, 25.351749>,  <26.297190, 36.362144, 25.524214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668686, 35.769123, 25.351749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.281012, 35.676743, 25.317474>,  <26.048407, 35.621315, 25.296909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.281012, 35.676743, 25.317474>,  <26.668686, 35.769123, 25.351749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.281012, 35.676743, 25.317474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171633, -0.383591, -0.907414,
		0.176700, -0.894159, 0.411409,
		-0.969185, -0.230951, -0.085687,
		25.990255, 35.607456, 25.291769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608910, 35.112888, 25.014568>,  <26.668686, 35.769123, 25.351749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608910, 35.112888, 25.014568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.248800, 35.279881, 24.965219>,  <26.032734, 35.380074, 24.935610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.248800, 35.279881, 24.965219>,  <26.608910, 35.112888, 25.014568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248800, 35.279881, 24.965219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027171, -0.336740, -0.941205,
		-0.434480, -0.843988, 0.314501,
		-0.900272, 0.417480, -0.123375,
		25.978718, 35.405125, 24.928207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183239, 34.621567, 24.625309>,  <26.608910, 35.112888, 25.014568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183239, 34.621567, 24.625309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.032423, 34.990322, 24.589621>,  <25.941935, 35.211575, 24.568207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.032423, 34.990322, 24.589621>,  <26.183239, 34.621567, 24.625309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032423, 34.990322, 24.589621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064629, -0.069909, -0.995458,
		-0.923940, -0.381092, -0.033222,
		-0.377039, 0.921890, -0.089222,
		25.919312, 35.266888, 24.562855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150387, 33.969532, 24.556557>,  <26.183239, 34.621567, 24.625309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150387, 33.969532, 24.556557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.266056, 33.601665, 24.450285>,  <26.335459, 33.380943, 24.386522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.266056, 33.601665, 24.450285>,  <26.150387, 33.969532, 24.556557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.266056, 33.601665, 24.450285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131394, -0.236778, 0.962638,
		-0.948216, -0.313279, 0.052369,
		0.289174, -0.919670, -0.265680,
		26.352808, 33.325764, 24.370581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.856977, 33.566818, 25.065687>,  <26.150387, 33.969532, 24.556557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.856977, 33.566818, 25.065687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.168253, 33.367016, 24.913418>,  <26.355019, 33.247135, 24.822056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.168253, 33.367016, 24.913418>,  <25.856977, 33.566818, 25.065687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168253, 33.367016, 24.913418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353546, -0.152543, 0.922896,
		-0.519064, -0.852773, 0.057892,
		0.778189, -0.499509, -0.380674,
		26.401711, 33.217163, 24.799215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948915, 32.998821, 25.562077>,  <25.856977, 33.566818, 25.065687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948915, 32.998821, 25.562077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.288656, 32.962311, 25.354126>,  <26.492500, 32.940407, 25.229355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.288656, 32.962311, 25.354126>,  <25.948915, 32.998821, 25.562077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288656, 32.962311, 25.354126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503581, -0.154972, 0.849935,
		-0.158202, -0.983687, -0.085626,
		0.849340, -0.091342, -0.519883,
		26.543461, 32.934929, 25.198162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284573, 32.274204, 25.806122>,  <25.948915, 32.998821, 25.562077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284573, 32.274204, 25.806122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.573996, 32.504635, 25.654016>,  <26.747648, 32.642895, 25.562754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.573996, 32.504635, 25.654016>,  <26.284573, 32.274204, 25.806122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573996, 32.504635, 25.654016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540189, -0.129616, 0.831502,
		0.429723, -0.807051, -0.404976,
		0.723556, 0.576080, -0.380262,
		26.791063, 32.677460, 25.539938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925421, 32.042553, 26.125807>,  <26.284573, 32.274204, 25.806122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925421, 32.042553, 26.125807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.976107, 32.415405, 25.990112>,  <27.006517, 32.639114, 25.908695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.976107, 32.415405, 25.990112>,  <26.925421, 32.042553, 26.125807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976107, 32.415405, 25.990112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532690, 0.224551, 0.815977,
		0.836771, -0.284103, -0.468082,
		0.126713, 0.932128, -0.339236,
		27.014120, 32.695045, 25.888342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644588, 32.187202, 26.137608>,  <26.925421, 32.042553, 26.125807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644588, 32.187202, 26.137608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.473858, 32.548504, 26.155254>,  <27.371420, 32.765285, 26.165842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.473858, 32.548504, 26.155254>,  <27.644588, 32.187202, 26.137608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473858, 32.548504, 26.155254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658037, 0.276746, 0.700285,
		0.620328, 0.327931, -0.712499,
		-0.426826, 0.903257, 0.044118,
		27.345810, 32.819481, 26.168489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180262, 32.633343, 26.438511>,  <27.644588, 32.187202, 26.137608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180262, 32.633343, 26.438511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.849472, 32.850719, 26.496181>,  <27.650999, 32.981144, 26.530783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.849472, 32.850719, 26.496181>,  <28.180262, 32.633343, 26.438511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849472, 32.850719, 26.496181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350268, 0.297379, 0.888188,
		0.439802, 0.785008, -0.436275,
		-0.826974, 0.543440, 0.144175,
		27.601379, 33.013752, 26.539434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393471, 33.227947, 26.775373>,  <28.180262, 32.633343, 26.438511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393471, 33.227947, 26.775373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.004950, 33.191277, 26.863161>,  <27.771837, 33.169273, 26.915833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.004950, 33.191277, 26.863161>,  <28.393471, 33.227947, 26.775373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004950, 33.191277, 26.863161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198012, 0.199494, 0.959684,
		-0.131767, 0.975601, -0.175615,
		-0.971303, -0.091681, 0.219467,
		27.713558, 33.163773, 26.929001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308203, 33.566669, 27.290329>,  <28.393471, 33.227947, 26.775373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308203, 33.566669, 27.290329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.951853, 33.386547, 27.314226>,  <27.738043, 33.278473, 27.328566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.951853, 33.386547, 27.314226>,  <28.308203, 33.566669, 27.290329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951853, 33.386547, 27.314226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040496, 0.052268, 0.997812,
		-0.452444, 0.891342, -0.028328,
		-0.890873, -0.450307, 0.059745,
		27.684591, 33.251453, 27.332150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863052, 34.066643, 27.656837>,  <28.308203, 33.566669, 27.290329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863052, 34.066643, 27.656837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.712528, 33.697392, 27.688396>,  <27.622213, 33.475842, 27.707333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.712528, 33.697392, 27.688396>,  <27.863052, 34.066643, 27.656837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712528, 33.697392, 27.688396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225275, -0.008565, 0.974258,
		-0.898689, 0.384395, 0.211181,
		-0.376309, -0.923129, 0.078897,
		27.599636, 33.420452, 27.712065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486305, 34.021439, 28.260553>,  <27.863052, 34.066643, 27.656837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486305, 34.021439, 28.260553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.615707, 33.649086, 28.192661>,  <27.693350, 33.425674, 28.151926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.615707, 33.649086, 28.192661>,  <27.486305, 34.021439, 28.260553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615707, 33.649086, 28.192661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315681, -0.062922, 0.946777,
		-0.892014, -0.359870, 0.273505,
		0.323507, -0.930878, -0.169731,
		27.712759, 33.369823, 28.141743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163628, 33.706371, 28.761251>,  <27.486305, 34.021439, 28.260553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163628, 33.706371, 28.761251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.455544, 33.449535, 28.667341>,  <27.630693, 33.295433, 28.610994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.455544, 33.449535, 28.667341>,  <27.163628, 33.706371, 28.761251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455544, 33.449535, 28.667341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229025, -0.093955, 0.968876,
		-0.644167, -0.760847, 0.078488,
		0.729792, -0.642094, -0.234776,
		27.674480, 33.256908, 28.596909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<25.197811, 33.525612, 20.754354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521349, 33.290401, 20.754536>,  <25.715471, 33.149277, 20.754644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521349, 33.290401, 20.754536>,  <25.197811, 33.525612, 20.754354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521349, 33.290401, 20.754536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176516, -0.242070, 0.954067,
		-0.560903, -0.771772, -0.299592,
		0.808844, -0.588022, 0.000452,
		25.764002, 33.113995, 20.754671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.007219, 32.742199, 21.052568>,  <25.197811, 33.525612, 20.754354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.007219, 32.742199, 21.052568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.389584, 32.852123, 21.093967>,  <25.619003, 32.918076, 21.118807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.389584, 32.852123, 21.093967>,  <25.007219, 32.742199, 21.052568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.389584, 32.852123, 21.093967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010089, -0.321510, 0.946852,
		0.293478, -0.906152, -0.304563,
		0.955913, 0.274808, 0.103499,
		25.676357, 32.934566, 21.125017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255333, 32.312733, 21.556051>,  <25.007219, 32.742199, 21.052568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255333, 32.312733, 21.556051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524343, 32.608730, 21.551830>,  <25.685749, 32.786331, 21.549297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524343, 32.608730, 21.551830>,  <25.255333, 32.312733, 21.556051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524343, 32.608730, 21.551830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127179, -0.101513, 0.986672,
		0.729064, -0.664905, -0.162382,
		0.672527, 0.739998, -0.010552,
		25.726101, 32.830730, 21.548664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773624, 32.043793, 22.036600>,  <25.255333, 32.312733, 21.556051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773624, 32.043793, 22.036600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832806, 32.438347, 22.007862>,  <25.868315, 32.675079, 21.990620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832806, 32.438347, 22.007862>,  <25.773624, 32.043793, 22.036600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832806, 32.438347, 22.007862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224925, 0.037182, 0.973667,
		0.963078, -0.160217, -0.216360,
		0.147953, 0.986381, -0.071846,
		25.877192, 32.734261, 21.986309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464748, 32.187778, 22.309431>,  <25.773624, 32.043793, 22.036600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464748, 32.187778, 22.309431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.267988, 32.534901, 22.337555>,  <26.149933, 32.743176, 22.354429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.267988, 32.534901, 22.337555>,  <26.464748, 32.187778, 22.309431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267988, 32.534901, 22.337555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259950, 0.069316, 0.963131,
		0.830940, 0.492039, -0.259683,
		-0.491898, 0.867809, 0.070308,
		26.120419, 32.795242, 22.358648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957733, 32.600273, 22.574995>,  <26.464748, 32.187778, 22.309431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957733, 32.600273, 22.574995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609697, 32.776291, 22.663813>,  <26.400875, 32.881901, 22.717104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609697, 32.776291, 22.663813>,  <26.957733, 32.600273, 22.574995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609697, 32.776291, 22.663813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284806, 0.081176, 0.955142,
		0.402279, 0.894300, -0.195957,
		-0.870091, 0.440043, 0.222046,
		26.348671, 32.908302, 22.730427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178736, 33.228523, 22.971312>,  <26.957733, 32.600273, 22.574995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178736, 33.228523, 22.971312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789877, 33.175602, 23.048693>,  <26.556561, 33.143848, 23.095121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789877, 33.175602, 23.048693>,  <27.178736, 33.228523, 22.971312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789877, 33.175602, 23.048693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198953, -0.029588, 0.979562,
		-0.123878, 0.990767, 0.055087,
		-0.972148, -0.132306, 0.193451,
		26.498232, 33.135910, 23.106728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882128, 33.850327, 23.410753>,  <27.178736, 33.228523, 22.971312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882128, 33.850327, 23.410753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663549, 33.521805, 23.476307>,  <26.532402, 33.324692, 23.515638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663549, 33.521805, 23.476307>,  <26.882128, 33.850327, 23.410753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663549, 33.521805, 23.476307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277493, 0.007072, 0.960702,
		-0.790186, 0.570449, 0.224041,
		-0.546447, -0.821303, 0.163884,
		26.499615, 33.275414, 23.525473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552076, 34.073284, 23.986492>,  <26.882128, 33.850327, 23.410753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552076, 34.073284, 23.986492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483221, 33.680027, 23.961849>,  <26.441908, 33.444073, 23.947063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483221, 33.680027, 23.961849>,  <26.552076, 34.073284, 23.986492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483221, 33.680027, 23.961849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108235, -0.081039, 0.990817,
		-0.979109, 0.163888, 0.120360,
		-0.172137, -0.983145, -0.061608,
		26.431580, 33.385082, 23.943367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938560, 34.549736, 23.929279>,  <26.552076, 34.073284, 23.986492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938560, 34.549736, 23.929279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922207, 34.942978, 24.000652>,  <25.912395, 35.178921, 24.043476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922207, 34.942978, 24.000652>,  <25.938560, 34.549736, 23.929279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922207, 34.942978, 24.000652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167148, 0.182796, -0.968838,
		-0.985084, -0.009784, -0.171797,
		-0.040883, 0.983102, 0.178434,
		25.909943, 35.237907, 24.054182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576967, 34.758331, 23.396240>,  <25.938560, 34.549736, 23.929279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.576967, 34.758331, 23.396240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760927, 35.088692, 23.526699>,  <25.871304, 35.286911, 23.604975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760927, 35.088692, 23.526699>,  <25.576967, 34.758331, 23.396240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760927, 35.088692, 23.526699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143968, 0.293083, -0.945185,
		-0.876222, 0.481645, 0.015885,
		0.459899, 0.825906, 0.326148,
		25.898897, 35.336464, 23.624544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.411430, 35.193054, 22.871805>,  <25.576967, 34.758331, 23.396240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.411430, 35.193054, 22.871805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.694862, 35.394024, 23.069990>,  <25.864922, 35.514606, 23.188902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.694862, 35.394024, 23.069990>,  <25.411430, 35.193054, 22.871805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.694862, 35.394024, 23.069990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227179, 0.502339, -0.834293,
		-0.668058, 0.703724, 0.241809,
		0.708582, 0.502422, 0.495462,
		25.907436, 35.544750, 23.218628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393452, 35.906296, 22.604725>,  <25.411430, 35.193054, 22.871805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393452, 35.906296, 22.604725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765814, 35.882240, 22.748833>,  <25.989231, 35.867805, 22.835299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765814, 35.882240, 22.748833>,  <25.393452, 35.906296, 22.604725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765814, 35.882240, 22.748833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352979, 0.401698, -0.845011,
		-0.093902, 0.913795, 0.395172,
		0.930907, -0.060139, 0.360271,
		26.045086, 35.864197, 22.856915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736805, 36.499680, 22.414070>,  <25.393452, 35.906296, 22.604725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.736805, 36.499680, 22.414070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039688, 36.247257, 22.481482>,  <26.221418, 36.095802, 22.521929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039688, 36.247257, 22.481482>,  <25.736805, 36.499680, 22.414070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039688, 36.247257, 22.481482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443503, 0.307316, -0.841939,
		0.479522, 0.712265, 0.512579,
		0.757208, -0.631059, 0.168526,
		26.266850, 36.057938, 22.532040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.297472, 36.953072, 22.362947>,  <25.736805, 36.499680, 22.414070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.297472, 36.953072, 22.362947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340078, 36.561726, 22.292002>,  <26.365643, 36.326920, 22.249434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340078, 36.561726, 22.292002>,  <26.297472, 36.953072, 22.362947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.340078, 36.561726, 22.292002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054451, 0.183851, -0.981445,
		0.992819, 0.094882, 0.072856,
		0.106516, -0.978364, -0.177364,
		26.372032, 36.268215, 22.238792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712790, 36.892155, 21.760733>,  <26.297472, 36.953072, 22.362947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712790, 36.892155, 21.760733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658394, 36.496380, 21.740612>,  <26.625755, 36.258915, 21.728540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658394, 36.496380, 21.740612>,  <26.712790, 36.892155, 21.760733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658394, 36.496380, 21.740612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208668, 0.021027, -0.977760,
		0.968485, -0.143462, 0.203604,
		-0.135990, -0.989432, -0.050301,
		26.617598, 36.199551, 21.725521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253769, 36.655903, 21.401630>,  <26.712790, 36.892155, 21.760733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253769, 36.655903, 21.401630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993568, 36.355305, 21.357634>,  <26.837448, 36.174946, 21.331236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993568, 36.355305, 21.357634>,  <27.253769, 36.655903, 21.401630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993568, 36.355305, 21.357634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221590, -0.049268, -0.973895,
		0.726460, -0.657895, 0.198573,
		-0.650503, -0.751497, -0.109991,
		26.798418, 36.129856, 21.324636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582752, 36.170410, 20.935900>,  <27.253769, 36.655903, 21.401630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582752, 36.170410, 20.935900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200279, 36.053322, 20.937899>,  <26.970795, 35.983070, 20.939098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200279, 36.053322, 20.937899>,  <27.582752, 36.170410, 20.935900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200279, 36.053322, 20.937899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056586, -0.201533, -0.977846,
		0.287244, -0.934718, 0.209267,
		-0.956184, -0.292722, 0.004997,
		26.913424, 35.965504, 20.939398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583641, 35.480324, 20.559210>,  <27.582752, 36.170410, 20.935900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583641, 35.480324, 20.559210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217308, 35.640278, 20.573851>,  <26.997509, 35.736252, 20.582636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217308, 35.640278, 20.573851>,  <27.583641, 35.480324, 20.559210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217308, 35.640278, 20.573851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120520, -0.186770, -0.974983,
		-0.383050, -0.897332, 0.219245,
		-0.915831, 0.399891, 0.036604,
		26.942558, 35.760246, 20.584831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223471, 35.010929, 20.260912>,  <27.583641, 35.480324, 20.559210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223471, 35.010929, 20.260912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037764, 35.364902, 20.246199>,  <26.926338, 35.577286, 20.237371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037764, 35.364902, 20.246199>,  <27.223471, 35.010929, 20.260912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037764, 35.364902, 20.246199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058948, -0.072310, -0.995639,
		-0.883730, -0.460076, 0.085737,
		-0.464269, 0.884930, -0.036782,
		26.898483, 35.630383, 20.235165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793257, 34.987244, 19.699335>,  <27.223471, 35.010929, 20.260912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793257, 34.987244, 19.699335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808023, 35.376781, 19.789011>,  <26.816883, 35.610504, 19.842815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808023, 35.376781, 19.789011>,  <26.793257, 34.987244, 19.699335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808023, 35.376781, 19.789011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233099, 0.226545, -0.945697,
		-0.971752, -0.017345, 0.235366,
		0.036918, 0.973847, 0.224188,
		26.819099, 35.668934, 19.856268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205097, 35.231369, 19.416735>,  <26.793257, 34.987244, 19.699335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205097, 35.231369, 19.416735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490456, 35.509861, 19.448570>,  <26.661671, 35.676956, 19.467670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490456, 35.509861, 19.448570>,  <26.205097, 35.231369, 19.416735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490456, 35.509861, 19.448570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079165, 0.192918, -0.978016,
		-0.696274, 0.691414, 0.192744,
		0.713398, 0.696225, 0.079588,
		26.704475, 35.718727, 19.472446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030756, 35.771599, 18.926500>,  <26.205097, 35.231369, 19.416735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030756, 35.771599, 18.926500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414230, 35.864761, 18.991829>,  <26.644316, 35.920658, 19.031027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414230, 35.864761, 18.991829>,  <26.030756, 35.771599, 18.926500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414230, 35.864761, 18.991829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139182, 0.116673, -0.983370,
		-0.248091, 0.965474, 0.079437,
		0.958686, 0.232909, 0.163322,
		26.701836, 35.934635, 19.040825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.022705, 33.115944, 18.503933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.637711, 33.015141, 18.544157>,  <32.406715, 32.954659, 18.568293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.637711, 33.015141, 18.544157>,  <33.022705, 33.115944, 18.503933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637711, 33.015141, 18.544157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009535, 0.401811, 0.915673,
		-0.271163, 0.880364, -0.389140,
		-0.962486, -0.252007, 0.100562,
		32.348965, 32.939537, 18.574326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710617, 33.693386, 18.771729>,  <33.022705, 33.115944, 18.503933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710617, 33.693386, 18.771729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.451313, 33.400536, 18.855394>,  <32.295731, 33.224823, 18.905594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.451313, 33.400536, 18.855394>,  <32.710617, 33.693386, 18.771729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451313, 33.400536, 18.855394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216014, 0.440251, 0.871503,
		-0.730138, 0.519775, -0.443546,
		-0.648257, -0.732129, 0.209165,
		32.256836, 33.180897, 18.918144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204704, 34.000931, 19.089632>,  <32.710617, 33.693386, 18.771729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204704, 34.000931, 19.089632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.082294, 33.631397, 19.181622>,  <32.008850, 33.409679, 19.236814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.082294, 33.631397, 19.181622>,  <32.204704, 34.000931, 19.089632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082294, 33.631397, 19.181622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356437, 0.335175, 0.872130,
		-0.882781, 0.184921, -0.431858,
		-0.306023, -0.923830, 0.229974,
		31.990488, 33.354248, 19.250614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547752, 34.095592, 19.373278>,  <32.204704, 34.000931, 19.089632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547752, 34.095592, 19.373278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.652586, 33.740856, 19.525499>,  <31.715487, 33.528015, 19.616833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.652586, 33.740856, 19.525499>,  <31.547752, 34.095592, 19.373278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652586, 33.740856, 19.525499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282707, 0.306485, 0.908924,
		-0.922708, -0.345799, -0.170393,
		0.262082, -0.886842, 0.380556,
		31.731211, 33.474804, 19.639666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972040, 33.849743, 19.736216>,  <31.547752, 34.095592, 19.373278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972040, 33.849743, 19.736216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.279346, 33.656326, 19.904001>,  <31.463730, 33.540276, 20.004673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.279346, 33.656326, 19.904001>,  <30.972040, 33.849743, 19.736216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279346, 33.656326, 19.904001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242268, 0.386901, 0.889727,
		-0.592516, -0.785169, 0.180095,
		0.768265, -0.483546, 0.419466,
		31.509827, 33.511261, 20.029840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703060, 33.464344, 20.267855>,  <30.972040, 33.849743, 19.736216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703060, 33.464344, 20.267855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.091484, 33.420998, 20.352991>,  <31.324537, 33.394989, 20.404074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.091484, 33.420998, 20.352991>,  <30.703060, 33.464344, 20.267855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091484, 33.420998, 20.352991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208081, 0.053638, 0.976640,
		-0.117250, -0.992663, 0.029537,
		0.971059, -0.108365, 0.212843,
		31.382801, 33.388489, 20.416843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754053, 32.962372, 20.788187>,  <30.703060, 33.464344, 20.267855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754053, 32.962372, 20.788187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.059881, 33.219643, 20.804960>,  <31.243378, 33.374004, 20.815023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.059881, 33.219643, 20.804960>,  <30.754053, 32.962372, 20.788187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059881, 33.219643, 20.804960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203777, 0.179491, 0.962423,
		0.611479, -0.744385, 0.268298,
		0.764571, 0.643174, 0.041933,
		31.289253, 33.412594, 20.817541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160290, 32.663452, 21.220200>,  <30.754053, 32.962372, 20.788187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160290, 32.663452, 21.220200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.275227, 33.046108, 21.201099>,  <31.344189, 33.275700, 21.189638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.275227, 33.046108, 21.201099>,  <31.160290, 32.663452, 21.220200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275227, 33.046108, 21.201099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021689, 0.043344, 0.998825,
		0.957582, -0.288042, -0.008294,
		0.287344, 0.956636, -0.047753,
		31.361429, 33.333099, 21.186773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692190, 32.718739, 21.756464>,  <31.160290, 32.663452, 21.220200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692190, 32.718739, 21.756464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.588114, 33.101204, 21.702726>,  <31.525667, 33.330685, 21.670485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.588114, 33.101204, 21.702726>,  <31.692190, 32.718739, 21.756464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588114, 33.101204, 21.702726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130257, 0.172624, 0.976337,
		0.956731, 0.236534, -0.169463,
		-0.260190, 0.956166, -0.134344,
		31.510057, 33.388054, 21.662422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238529, 33.127480, 21.992838>,  <31.692190, 32.718739, 21.756464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238529, 33.127480, 21.992838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.925873, 33.376766, 22.002930>,  <31.738277, 33.526337, 22.008984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.925873, 33.376766, 22.002930>,  <32.238529, 33.127480, 21.992838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925873, 33.376766, 22.002930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147428, 0.145303, 0.978341,
		0.606050, 0.768434, -0.205454,
		-0.781644, 0.623214, 0.025228,
		31.691380, 33.563732, 22.010498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410370, 33.821571, 22.334656>,  <32.238529, 33.127480, 21.992838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410370, 33.821571, 22.334656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.012470, 33.834221, 22.373585>,  <31.773729, 33.841812, 22.396942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.012470, 33.834221, 22.373585>,  <32.410370, 33.821571, 22.334656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012470, 33.834221, 22.373585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102102, 0.242896, 0.964664,
		0.006867, 0.969537, -0.244850,
		-0.994750, 0.031624, 0.097323,
		31.714045, 33.843708, 22.402782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310562, 34.338665, 22.857944>,  <32.410370, 33.821571, 22.334656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310562, 34.338665, 22.857944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.971022, 34.127251, 22.862080>,  <31.767298, 34.000404, 22.864561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.971022, 34.127251, 22.862080>,  <32.310562, 34.338665, 22.857944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971022, 34.127251, 22.862080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160253, 0.275912, 0.947730,
		-0.503757, 0.802824, -0.318907,
		-0.848851, -0.528531, 0.010337,
		31.716366, 33.968693, 22.865181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741907, 34.775913, 23.179165>,  <32.310562, 34.338665, 22.857944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741907, 34.775913, 23.179165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.653978, 34.386448, 23.203346>,  <31.601221, 34.152767, 23.217855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.653978, 34.386448, 23.203346>,  <31.741907, 34.775913, 23.179165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653978, 34.386448, 23.203346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221283, 0.110123, 0.968972,
		-0.950111, 0.199625, -0.239663,
		-0.219824, -0.973664, 0.060455,
		31.588032, 34.094349, 23.221483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118162, 34.840614, 23.562700>,  <31.741907, 34.775913, 23.179165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118162, 34.840614, 23.562700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.207870, 34.451744, 23.589769>,  <31.261696, 34.218422, 23.606010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.207870, 34.451744, 23.589769>,  <31.118162, 34.840614, 23.562700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207870, 34.451744, 23.589769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040175, 0.078604, 0.996096,
		-0.973698, -0.220677, 0.056685,
		0.224271, -0.972174, 0.067670,
		31.275152, 34.160091, 23.610071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529114, 35.333630, 23.486206>,  <31.118162, 34.840614, 23.562700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529114, 35.333630, 23.486206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.721952, 35.673771, 23.570574>,  <30.837656, 35.877853, 23.621195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.721952, 35.673771, 23.570574>,  <30.529114, 35.333630, 23.486206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721952, 35.673771, 23.570574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068270, 0.276475, -0.958593,
		-0.873453, 0.447737, 0.191342,
		0.482099, 0.850349, 0.210921,
		30.866583, 35.928875, 23.633850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966944, 35.948799, 23.313478>,  <30.529114, 35.333630, 23.486206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966944, 35.948799, 23.313478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.356474, 36.034332, 23.282656>,  <30.590193, 36.085651, 23.264162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.356474, 36.034332, 23.282656>,  <29.966944, 35.948799, 23.313478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356474, 36.034332, 23.282656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164751, 0.430519, -0.887418,
		-0.156586, 0.876886, 0.454480,
		0.973827, 0.213833, -0.077055,
		30.648623, 36.098484, 23.259539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946266, 36.468594, 22.878222>,  <29.966944, 35.948799, 23.313478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946266, 36.468594, 22.878222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.345455, 36.444641, 22.869606>,  <30.584969, 36.430271, 22.864437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.345455, 36.444641, 22.869606>,  <29.946266, 36.468594, 22.878222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345455, 36.444641, 22.869606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001744, 0.364069, -0.931370,
		0.063609, 0.929445, 0.363436,
		0.997973, -0.059878, -0.021537,
		30.644848, 36.426678, 22.863146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127186, 37.076847, 22.431969>,  <29.946266, 36.468594, 22.878222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127186, 37.076847, 22.431969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.429699, 36.815525, 22.445972>,  <30.611206, 36.658730, 22.454374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.429699, 36.815525, 22.445972>,  <30.127186, 37.076847, 22.431969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429699, 36.815525, 22.445972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175213, 0.150690, -0.972930,
		0.630346, 0.741945, 0.228432,
		0.756284, -0.653307, 0.035012,
		30.656584, 36.619534, 22.456476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700365, 37.352489, 22.065453>,  <30.127186, 37.076847, 22.431969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700365, 37.352489, 22.065453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.793274, 36.963444, 22.062288>,  <30.849020, 36.730015, 22.060390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.793274, 36.963444, 22.062288>,  <30.700365, 37.352489, 22.065453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793274, 36.963444, 22.062288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361368, 0.093844, -0.927689,
		0.903030, 0.212618, 0.373270,
		0.232272, -0.972619, -0.007910,
		30.862955, 36.671658, 22.059916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338345, 37.382523, 21.797697>,  <30.700365, 37.352489, 22.065453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338345, 37.382523, 21.797697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.191896, 37.012535, 21.756922>,  <31.104027, 36.790543, 21.732456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.191896, 37.012535, 21.756922>,  <31.338345, 37.382523, 21.797697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191896, 37.012535, 21.756922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259446, 0.003740, -0.965750,
		0.893668, -0.380029, 0.238610,
		-0.366121, -0.924967, -0.101939,
		31.082060, 36.735046, 21.726339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781567, 37.011169, 21.289236>,  <31.338345, 37.382523, 21.797697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781567, 37.011169, 21.289236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.433113, 36.815521, 21.271872>,  <31.224041, 36.698132, 21.261452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.433113, 36.815521, 21.271872>,  <31.781567, 37.011169, 21.289236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433113, 36.815521, 21.271872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108050, -0.104695, -0.988617,
		0.479008, -0.865910, 0.144053,
		-0.871135, -0.489121, -0.043412,
		31.171772, 36.668785, 21.258848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853703, 36.520706, 20.733437>,  <31.781567, 37.011169, 21.289236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853703, 36.520706, 20.733437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.456488, 36.495598, 20.773304>,  <31.218159, 36.480534, 20.797224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.456488, 36.495598, 20.773304>,  <31.853703, 36.520706, 20.733437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456488, 36.495598, 20.773304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094012, -0.087391, -0.991728,
		0.070965, -0.994194, 0.080882,
		-0.993039, -0.062774, 0.099667,
		31.158577, 36.476765, 20.803204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594049, 35.894295, 20.385912>,  <31.853703, 36.520706, 20.733437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594049, 35.894295, 20.385912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.288813, 36.151752, 20.409258>,  <31.105671, 36.306229, 20.423265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.288813, 36.151752, 20.409258>,  <31.594049, 35.894295, 20.385912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288813, 36.151752, 20.409258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201854, -0.151571, -0.967616,
		-0.613959, -0.750161, 0.245585,
		-0.763092, 0.643650, 0.058365,
		31.059885, 36.344849, 20.426767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141151, 35.613453, 19.912096>,  <31.594049, 35.894295, 20.385912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141151, 35.613453, 19.912096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.993540, 35.981487, 19.964634>,  <30.904972, 36.202309, 19.996157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.993540, 35.981487, 19.964634>,  <31.141151, 35.613453, 19.912096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993540, 35.981487, 19.964634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194521, 0.061728, -0.978954,
		-0.908833, -0.386814, 0.156197,
		-0.369031, 0.920090, 0.131344,
		30.882830, 36.257515, 20.004038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419901, 35.587761, 19.731499>,  <31.141151, 35.613453, 19.912096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419901, 35.587761, 19.731499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.566010, 35.956917, 19.682762>,  <30.653675, 36.178410, 19.653521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.566010, 35.956917, 19.682762>,  <30.419901, 35.587761, 19.731499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566010, 35.956917, 19.682762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204482, -0.048141, -0.977686,
		-0.908165, 0.382037, 0.171130,
		0.365273, 0.922892, -0.121839,
		30.675592, 36.233784, 19.646210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987799, 35.950378, 19.264673>,  <30.419901, 35.587761, 19.731499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987799, 35.950378, 19.264673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.336859, 36.145638, 19.259047>,  <30.546295, 36.262794, 19.255671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.336859, 36.145638, 19.259047>,  <29.987799, 35.950378, 19.264673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336859, 36.145638, 19.259047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045631, 0.052831, -0.997560,
		-0.486213, 0.871161, 0.068378,
		0.872648, 0.488147, -0.014065,
		30.598654, 36.292080, 19.254827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979570, 36.246853, 18.674526>,  <29.987799, 35.950378, 19.264673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979570, 36.246853, 18.674526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.360479, 36.316338, 18.774927>,  <30.589025, 36.358028, 18.835167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.360479, 36.316338, 18.774927>,  <29.979570, 36.246853, 18.674526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360479, 36.316338, 18.774927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256750, -0.011083, -0.966414,
		-0.165094, 0.984734, -0.055154,
		0.952273, 0.173710, 0.251001,
		30.646162, 36.368450, 18.850227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086195, 36.847343, 18.312073>,  <29.979570, 36.246853, 18.674526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086195, 36.847343, 18.312073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.418354, 36.632771, 18.372316>,  <30.617649, 36.504028, 18.408463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.418354, 36.632771, 18.372316>,  <30.086195, 36.847343, 18.312073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418354, 36.632771, 18.372316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128996, -0.077871, -0.988583,
		0.542036, 0.840343, 0.004534,
		0.830396, -0.536432, 0.150610,
		30.667473, 36.471840, 18.417500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156342, 37.504082, 18.023327>,  <30.086195, 36.847343, 18.312073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156342, 37.504082, 18.023327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.805050, 37.649738, 17.899319>,  <29.594275, 37.737133, 17.824915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.805050, 37.649738, 17.899319>,  <30.156342, 37.504082, 18.023327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805050, 37.649738, 17.899319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234948, 0.236105, 0.942896,
		0.416547, 0.900918, -0.121799,
		-0.878230, 0.364144, -0.310018,
		29.541580, 37.758980, 17.806313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027479, 38.140995, 18.384115>,  <30.156342, 37.504082, 18.023327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027479, 38.140995, 18.384115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.656258, 38.045246, 18.269983>,  <29.433525, 37.987797, 18.201504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.656258, 38.045246, 18.269983>,  <30.027479, 38.140995, 18.384115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656258, 38.045246, 18.269983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336927, 0.213115, 0.917094,
		-0.158721, 0.947250, -0.278434,
		-0.928056, -0.239374, -0.285329,
		29.377840, 37.973434, 18.184385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581934, 38.730095, 18.520596>,  <30.027479, 38.140995, 18.384115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581934, 38.730095, 18.520596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.355719, 38.401588, 18.490423>,  <29.219990, 38.204483, 18.472321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.355719, 38.401588, 18.490423>,  <29.581934, 38.730095, 18.520596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355719, 38.401588, 18.490423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471584, 0.246990, 0.846525,
		-0.676592, 0.514313, -0.526978,
		-0.565537, -0.821266, -0.075431,
		29.186058, 38.155209, 18.467794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928736, 38.983425, 18.700974>,  <29.581934, 38.730095, 18.520596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928736, 38.983425, 18.700974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.885929, 38.586983, 18.732622>,  <28.860245, 38.349117, 18.751612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.885929, 38.586983, 18.732622>,  <28.928736, 38.983425, 18.700974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885929, 38.586983, 18.732622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442128, 0.118714, 0.889061,
		-0.890545, 0.060163, -0.450899,
		-0.107017, -0.991104, 0.079120,
		28.853825, 38.289650, 18.756357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227953, 38.822369, 18.753822>,  <28.928736, 38.983425, 18.700974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227953, 38.822369, 18.753822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.434055, 38.535061, 18.940840>,  <28.557716, 38.362675, 19.053051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.434055, 38.535061, 18.940840>,  <28.227953, 38.822369, 18.753822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434055, 38.535061, 18.940840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411676, 0.271050, 0.870089,
		-0.751689, -0.640794, -0.156035,
		0.515255, -0.718272, 0.467545,
		28.588633, 38.319580, 19.081102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807165, 38.605099, 19.291948>,  <28.227953, 38.822369, 18.753822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807165, 38.605099, 19.291948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.150105, 38.425758, 19.393091>,  <28.355867, 38.318153, 19.453777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.150105, 38.425758, 19.393091>,  <27.807165, 38.605099, 19.291948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150105, 38.425758, 19.393091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317687, -0.074379, 0.945274,
		-0.405006, -0.890758, -0.206204,
		0.857347, -0.448350, 0.252858,
		28.407309, 38.291252, 19.468948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600288, 38.120361, 19.684002>,  <27.807165, 38.605099, 19.291948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600288, 38.120361, 19.684002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.990232, 38.148865, 19.768452>,  <28.224199, 38.165966, 19.819122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.990232, 38.148865, 19.768452>,  <27.600288, 38.120361, 19.684002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990232, 38.148865, 19.768452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215592, 0.062146, 0.974504,
		0.056249, -0.995525, 0.075930,
		0.974862, 0.071185, 0.211132,
		28.282690, 38.170242, 19.831789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810854, 37.635296, 20.234745>,  <27.600288, 38.120361, 19.684002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810854, 37.635296, 20.234745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.091295, 37.919655, 20.256910>,  <28.259560, 38.090271, 20.270210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.091295, 37.919655, 20.256910>,  <27.810854, 37.635296, 20.234745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091295, 37.919655, 20.256910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234511, 0.156492, 0.959435,
		0.673392, -0.685660, 0.276432,
		0.701105, 0.710901, 0.055415,
		28.301626, 38.132927, 20.273535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981295, 37.515415, 20.844017>,  <27.810854, 37.635296, 20.234745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981295, 37.515415, 20.844017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.166204, 37.861439, 20.766068>,  <28.277151, 38.069054, 20.719297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.166204, 37.861439, 20.766068>,  <27.981295, 37.515415, 20.844017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166204, 37.861439, 20.766068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159888, 0.297479, 0.941245,
		0.872203, -0.403955, 0.275829,
		0.462273, 0.865059, -0.194874,
		28.304886, 38.120956, 20.707605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463593, 37.577465, 21.372894>,  <27.981295, 37.515415, 20.844017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463593, 37.577465, 21.372894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.375751, 37.946171, 21.245068>,  <28.323048, 38.167397, 21.168371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.375751, 37.946171, 21.245068>,  <28.463593, 37.577465, 21.372894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375751, 37.946171, 21.245068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146761, 0.292622, 0.944899,
		0.964488, 0.254401, 0.071019,
		-0.219601, 0.921766, -0.319566,
		28.309872, 38.222702, 21.149199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969069, 37.997154, 21.757750>,  <28.463593, 37.577465, 21.372894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969069, 37.997154, 21.757750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.666561, 38.227070, 21.632742>,  <28.485056, 38.365021, 21.557737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.666561, 38.227070, 21.632742>,  <28.969069, 37.997154, 21.757750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666561, 38.227070, 21.632742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058544, 0.416300, 0.907341,
		0.651634, 0.704492, -0.281184,
		-0.756271, 0.574792, -0.312519,
		28.439680, 38.399509, 21.538986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079098, 38.677723, 22.027617>,  <28.969069, 37.997154, 21.757750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079098, 38.677723, 22.027617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.687624, 38.660549, 21.947285>,  <28.452740, 38.650246, 21.899086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.687624, 38.660549, 21.947285>,  <29.079098, 38.677723, 22.027617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687624, 38.660549, 21.947285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197132, 0.470543, 0.860075,
		0.057575, 0.881332, -0.468977,
		-0.978685, -0.042932, -0.200830,
		28.394018, 38.647671, 21.887035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895681, 39.293682, 22.262712>,  <29.079098, 38.677723, 22.027617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895681, 39.293682, 22.262712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.562738, 39.072105, 22.255415>,  <28.362972, 38.939159, 22.251038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.562738, 39.072105, 22.255415>,  <28.895681, 39.293682, 22.262712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562738, 39.072105, 22.255415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243891, 0.336519, 0.909545,
		-0.497694, 0.761515, -0.415205,
		-0.832357, -0.553940, -0.018243,
		28.313032, 38.905922, 22.249943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426907, 39.629677, 22.672573>,  <28.895681, 39.293682, 22.262712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426907, 39.629677, 22.672573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.218374, 39.291443, 22.626631>,  <28.093254, 39.088501, 22.599066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.218374, 39.291443, 22.626631>,  <28.426907, 39.629677, 22.672573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218374, 39.291443, 22.626631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555712, 0.234266, 0.797687,
		-0.647609, 0.479686, -0.592034,
		-0.521333, -0.845589, -0.114855,
		28.061974, 39.037766, 22.592175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<26.336613, 36.663891, 18.605764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.649664, 36.416065, 18.629850>,  <26.837496, 36.267368, 18.644302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.649664, 36.416065, 18.629850>,  <26.336613, 36.663891, 18.605764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649664, 36.416065, 18.629850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150676, 0.094695, -0.984037,
		0.603976, 0.779210, 0.167465,
		0.782630, -0.619568, 0.060214,
		26.884453, 36.230194, 18.647915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729605, 36.807247, 17.957119>,  <26.336613, 36.663891, 18.605764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729605, 36.807247, 17.957119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.938734, 36.492004, 18.087070>,  <27.064211, 36.302860, 18.165041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.938734, 36.492004, 18.087070>,  <26.729605, 36.807247, 17.957119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938734, 36.492004, 18.087070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306829, -0.181587, -0.934282,
		0.795306, 0.588147, 0.146875,
		0.522824, -0.788105, 0.324878,
		27.095581, 36.255573, 18.184534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453604, 36.819073, 17.720922>,  <26.729605, 36.807247, 17.957119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453604, 36.819073, 17.720922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.319223, 36.446194, 17.774790>,  <27.238596, 36.222466, 17.807110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.319223, 36.446194, 17.774790>,  <27.453604, 36.819073, 17.720922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319223, 36.446194, 17.774790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238587, -0.222541, -0.945278,
		0.911160, -0.285437, 0.297174,
		-0.335951, -0.932202, 0.134669,
		27.218437, 36.166534, 17.815191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911469, 36.514126, 17.333149>,  <27.453604, 36.819073, 17.720922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911469, 36.514126, 17.333149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.621901, 36.241405, 17.375263>,  <27.448160, 36.077774, 17.400532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.621901, 36.241405, 17.375263>,  <27.911469, 36.514126, 17.333149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621901, 36.241405, 17.375263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088181, -0.242809, -0.966058,
		0.684227, -0.690063, 0.235896,
		-0.723918, -0.681805, 0.105286,
		27.404726, 36.036865, 17.406849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098028, 35.841949, 16.946499>,  <27.911469, 36.514126, 17.333149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098028, 35.841949, 16.946499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.701508, 35.833881, 16.998516>,  <27.463594, 35.829041, 17.029726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.701508, 35.833881, 16.998516>,  <28.098028, 35.841949, 16.946499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701508, 35.833881, 16.998516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119662, -0.273072, -0.954522,
		0.054768, -0.961782, 0.268283,
		-0.991303, -0.020174, 0.130044,
		27.404118, 35.827827, 17.037529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859825, 35.198013, 16.577799>,  <28.098028, 35.841949, 16.946499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859825, 35.198013, 16.577799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.534796, 35.430191, 16.599028>,  <27.339779, 35.569496, 16.611765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.534796, 35.430191, 16.599028>,  <27.859825, 35.198013, 16.577799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534796, 35.430191, 16.599028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161444, -0.136644, -0.977376,
		-0.560057, -0.802756, 0.204741,
		-0.812572, 0.580440, 0.053072,
		27.291023, 35.604324, 16.614950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236584, 34.787212, 16.308670>,  <27.859825, 35.198013, 16.577799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236584, 34.787212, 16.308670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.140757, 35.174656, 16.282108>,  <27.083261, 35.407120, 16.266171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.140757, 35.174656, 16.282108>,  <27.236584, 34.787212, 16.308670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.140757, 35.174656, 16.282108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123751, -0.098302, -0.987432,
		-0.962961, -0.228338, 0.143415,
		-0.239566, 0.968606, -0.066404,
		27.068886, 35.465237, 16.262188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663588, 34.850052, 15.809663>,  <27.236584, 34.787212, 16.308670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663588, 34.850052, 15.809663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.830828, 35.212883, 15.829298>,  <26.931171, 35.430580, 15.841080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.830828, 35.212883, 15.829298>,  <26.663588, 34.850052, 15.809663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830828, 35.212883, 15.829298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213852, 0.150803, -0.965156,
		-0.882870, 0.393034, 0.257030,
		0.418100, 0.907074, 0.049089,
		26.956257, 35.485004, 15.844025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205906, 35.267632, 15.402350>,  <26.663588, 34.850052, 15.809663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205906, 35.267632, 15.402350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.521349, 35.513523, 15.408070>,  <26.710615, 35.661060, 15.411501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.521349, 35.513523, 15.408070>,  <26.205906, 35.267632, 15.402350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.521349, 35.513523, 15.408070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130238, 0.189709, -0.973164,
		-0.600948, 0.765581, 0.229667,
		0.788606, 0.614733, 0.014297,
		26.757931, 35.697945, 15.412359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022100, 35.673138, 14.875485>,  <26.205906, 35.267632, 15.402350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022100, 35.673138, 14.875485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.413221, 35.747559, 14.914027>,  <26.647894, 35.792210, 14.937152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.413221, 35.747559, 14.914027>,  <26.022100, 35.673138, 14.875485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413221, 35.747559, 14.914027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061301, 0.185722, -0.980688,
		-0.200351, 0.964828, 0.170195,
		0.977804, 0.186049, 0.096355,
		26.706562, 35.803371, 14.942934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136122, 36.282196, 14.368867>,  <26.022100, 35.673138, 14.875485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136122, 36.282196, 14.368867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.480963, 36.089447, 14.431577>,  <26.687868, 35.973797, 14.469203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.480963, 36.089447, 14.431577>,  <26.136122, 36.282196, 14.368867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480963, 36.089447, 14.431577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306656, 0.249817, -0.918452,
		0.403409, 0.839877, 0.363137,
		0.862104, -0.481870, 0.156775,
		26.739594, 35.944885, 14.478609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646538, 36.757011, 14.136548>,  <26.136122, 36.282196, 14.368867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646538, 36.757011, 14.136548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.802637, 36.388805, 14.129010>,  <26.896297, 36.167881, 14.124488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.802637, 36.388805, 14.129010>,  <26.646538, 36.757011, 14.136548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802637, 36.388805, 14.129010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288387, 0.141647, -0.946979,
		0.874379, 0.364123, 0.320742,
		0.390249, -0.920517, -0.018844,
		26.919712, 36.112652, 14.123357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324865, 36.699772, 13.841327>,  <26.646538, 36.757011, 14.136548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324865, 36.699772, 13.841327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.208044, 36.321980, 13.781121>,  <27.137951, 36.095303, 13.744998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.208044, 36.321980, 13.781121>,  <27.324865, 36.699772, 13.841327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208044, 36.321980, 13.781121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085066, 0.131097, -0.987713,
		0.952611, -0.301270, 0.042056,
		-0.292055, -0.944484, -0.150513,
		27.120428, 36.038635, 13.735968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758610, 36.311657, 13.410712>,  <27.324865, 36.699772, 13.841327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758610, 36.311657, 13.410712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.372532, 36.209881, 13.386525>,  <27.140884, 36.148815, 13.372013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.372532, 36.209881, 13.386525>,  <27.758610, 36.311657, 13.410712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372532, 36.209881, 13.386525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008437, 0.261389, -0.965197,
		0.261389, -0.931095, -0.254438,
		0.965197, 0.254438, 0.060468,
		27.082973, 36.133549, 13.368384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369215, 36.432968, 13.039725>,  <27.758610, 36.311657, 13.410712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369215, 36.432968, 13.039725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.683006, 36.533207, 12.812819>,  <28.871281, 36.593349, 12.676675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.683006, 36.533207, 12.812819>,  <28.369215, 36.432968, 13.039725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683006, 36.533207, 12.812819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457288, 0.384124, 0.802083,
		0.418904, -0.888621, 0.186740,
		0.784479, 0.250601, -0.567267,
		28.918350, 36.608387, 12.642638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888527, 36.248547, 13.466132>,  <28.369215, 36.432968, 13.039725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888527, 36.248547, 13.466132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.060673, 36.485096, 13.193351>,  <29.163960, 36.627026, 13.029682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.060673, 36.485096, 13.193351>,  <28.888527, 36.248547, 13.466132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060673, 36.485096, 13.193351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562067, 0.415588, 0.715099,
		0.706305, -0.691057, -0.153539,
		0.430365, 0.591377, -0.681952,
		29.189783, 36.662510, 12.988765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593042, 36.154110, 13.568151>,  <28.888527, 36.248547, 13.466132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593042, 36.154110, 13.568151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.543331, 36.525875, 13.429152>,  <29.513504, 36.748932, 13.345754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.543331, 36.525875, 13.429152>,  <29.593042, 36.154110, 13.568151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543331, 36.525875, 13.429152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377121, 0.368172, 0.849840,
		0.917788, -0.025432, -0.396256,
		-0.124278, 0.929410, -0.347495,
		29.506048, 36.804699, 13.324904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237747, 36.576275, 13.806691>,  <29.593042, 36.154110, 13.568151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237747, 36.576275, 13.806691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.926035, 36.813595, 13.725977>,  <29.739008, 36.955986, 13.677548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.926035, 36.813595, 13.725977>,  <30.237747, 36.576275, 13.806691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926035, 36.813595, 13.725977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144909, 0.483871, 0.863059,
		0.609688, 0.643326, -0.463046,
		-0.779283, 0.593297, -0.201786,
		29.692249, 36.991585, 13.665442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468008, 37.191635, 14.018582>,  <30.237747, 36.576275, 13.806691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468008, 37.191635, 14.018582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.074196, 37.257980, 13.995991>,  <29.837908, 37.297787, 13.982436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.074196, 37.257980, 13.995991>,  <30.468008, 37.191635, 14.018582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074196, 37.257980, 13.995991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019440, 0.423750, 0.905571,
		0.174134, 0.890463, -0.420419,
		-0.984530, 0.165864, -0.056479,
		29.778837, 37.307739, 13.979047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345287, 37.923306, 14.130239>,  <30.468008, 37.191635, 14.018582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345287, 37.923306, 14.130239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.000383, 37.738186, 14.212528>,  <29.793442, 37.627113, 14.261902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.000383, 37.738186, 14.212528>,  <30.345287, 37.923306, 14.130239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000383, 37.738186, 14.212528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083434, 0.530445, 0.843604,
		-0.499545, 0.710242, -0.495995,
		-0.862260, -0.462801, 0.205723,
		29.741705, 37.599346, 14.274245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980989, 38.451988, 14.389828>,  <30.345287, 37.923306, 14.130239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980989, 38.451988, 14.389828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.815788, 38.109852, 14.514933>,  <29.716667, 37.904572, 14.589995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.815788, 38.109852, 14.514933>,  <29.980989, 38.451988, 14.389828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815788, 38.109852, 14.514933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219314, 0.426721, 0.877388,
		-0.883928, 0.293771, -0.363826,
		-0.413004, -0.855341, 0.312762,
		29.691887, 37.853249, 14.608762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489107, 38.732433, 14.773518>,  <29.980989, 38.451988, 14.389828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489107, 38.732433, 14.773518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.524183, 38.347809, 14.877597>,  <29.545229, 38.117035, 14.940044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.524183, 38.347809, 14.877597>,  <29.489107, 38.732433, 14.773518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524183, 38.347809, 14.877597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028856, 0.258643, 0.965542,
		-0.995730, -0.092177, -0.005067,
		0.087691, -0.961565, 0.260198,
		29.550491, 38.059338, 14.955656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958628, 38.565548, 15.266614>,  <29.489107, 38.732433, 14.773518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958628, 38.565548, 15.266614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.240042, 38.286869, 15.322680>,  <29.408890, 38.119659, 15.356320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.240042, 38.286869, 15.322680>,  <28.958628, 38.565548, 15.266614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240042, 38.286869, 15.322680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078923, 0.119418, 0.989702,
		-0.706265, -0.707353, 0.029029,
		0.703535, -0.696701, 0.140167,
		29.451103, 38.077858, 15.364731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625456, 38.117226, 15.705011>,  <28.958628, 38.565548, 15.266614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625456, 38.117226, 15.705011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.003197, 37.993752, 15.750460>,  <29.229841, 37.919666, 15.777729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.003197, 37.993752, 15.750460>,  <28.625456, 38.117226, 15.705011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003197, 37.993752, 15.750460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127931, -0.026452, 0.991430,
		-0.303040, -0.950795, -0.064471,
		0.944352, -0.308691, 0.113620,
		29.286503, 37.901146, 15.784546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601469, 37.587204, 16.118219>,  <28.625456, 38.117226, 15.705011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601469, 37.587204, 16.118219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.989206, 37.684017, 16.135155>,  <29.221849, 37.742104, 16.145315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.989206, 37.684017, 16.135155>,  <28.601469, 37.587204, 16.118219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989206, 37.684017, 16.135155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028747, -0.059408, 0.997820,
		0.244019, -0.968448, -0.050629,
		0.969344, 0.242031, 0.042336,
		29.280010, 37.756626, 16.147856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989420, 37.069557, 16.587608>,  <28.601469, 37.587204, 16.118219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989420, 37.069557, 16.587608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.231985, 37.387138, 16.570169>,  <29.377523, 37.577686, 16.559706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.231985, 37.387138, 16.570169>,  <28.989420, 37.069557, 16.587608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231985, 37.387138, 16.570169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073810, -0.001613, 0.997271,
		0.791719, -0.607974, -0.059580,
		0.606411, 0.793956, -0.043597,
		29.413908, 37.625324, 16.557091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466343, 36.937889, 17.019619>,  <28.989420, 37.069557, 16.587608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466343, 36.937889, 17.019619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.455173, 37.336872, 16.993387>,  <29.448471, 37.576263, 16.977648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.455173, 37.336872, 16.993387>,  <29.466343, 36.937889, 17.019619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455173, 37.336872, 16.993387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031033, 0.064711, 0.997421,
		0.999128, 0.029888, 0.029147,
		-0.027925, 0.997456, -0.065582,
		29.446796, 37.636108, 16.973713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936878, 37.077156, 17.495218>,  <29.466343, 36.937889, 17.019619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936878, 37.077156, 17.495218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.687202, 37.383385, 17.432871>,  <29.537397, 37.567120, 17.395462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.687202, 37.383385, 17.432871>,  <29.936878, 37.077156, 17.495218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687202, 37.383385, 17.432871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158935, 0.070908, 0.984739,
		0.764937, 0.639435, 0.077415,
		-0.624188, 0.765568, -0.155869,
		29.499947, 37.613056, 17.386110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670479, 37.056171, 17.761055>,  <29.936878, 37.077156, 17.495218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670479, 37.056171, 17.761055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.795193, 36.697620, 17.887094>,  <30.870022, 36.482491, 17.962719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.795193, 36.697620, 17.887094>,  <30.670479, 37.056171, 17.761055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795193, 36.697620, 17.887094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234976, -0.248589, -0.939675,
		0.920639, 0.367019, 0.133122,
		0.311786, -0.896382, 0.315101,
		30.888729, 36.428707, 17.981625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253574, 36.967316, 17.435892>,  <30.670479, 37.056171, 17.761055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253574, 36.967316, 17.435892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.203609, 36.588737, 17.554983>,  <31.173632, 36.361591, 17.626438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.203609, 36.588737, 17.554983>,  <31.253574, 36.967316, 17.435892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203609, 36.588737, 17.554983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273421, -0.321296, -0.906648,
		0.953749, -0.031845, 0.298911,
		-0.124911, -0.946443, 0.297729,
		31.166136, 36.304806, 17.644302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668550, 36.622738, 16.989021>,  <31.253574, 36.967316, 17.435892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668550, 36.622738, 16.989021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.460859, 36.315754, 17.139441>,  <31.336245, 36.131565, 17.229692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.460859, 36.315754, 17.139441>,  <31.668550, 36.622738, 16.989021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460859, 36.315754, 17.139441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033533, -0.421377, -0.906265,
		0.853978, -0.483167, 0.193055,
		-0.519227, -0.767457, 0.376049,
		31.305092, 36.085518, 17.252254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092213, 36.065548, 16.706163>,  <31.668550, 36.622738, 16.989021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092213, 36.065548, 16.706163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.733263, 35.923191, 16.810522>,  <31.517895, 35.837776, 16.873137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.733263, 35.923191, 16.810522>,  <32.092213, 36.065548, 16.706163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733263, 35.923191, 16.810522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029957, -0.639001, -0.768622,
		0.440258, -0.681924, 0.584083,
		-0.897371, -0.355889, 0.260897,
		31.464052, 35.816425, 16.888792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051640, 35.345612, 16.772873>,  <32.092213, 36.065548, 16.706163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051640, 35.345612, 16.772873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.671831, 35.450817, 16.704470>,  <31.443947, 35.513939, 16.663427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.671831, 35.450817, 16.704470>,  <32.051640, 35.345612, 16.772873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671831, 35.450817, 16.704470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026506, -0.610413, -0.791640,
		-0.312594, -0.747142, 0.586569,
		-0.949517, 0.263010, -0.171008,
		31.386976, 35.529720, 16.653168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640423, 34.759205, 16.612938>,  <32.051640, 35.345612, 16.772873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640423, 34.759205, 16.612938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.433369, 35.061100, 16.451729>,  <31.309135, 35.242237, 16.355003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.433369, 35.061100, 16.451729>,  <31.640423, 34.759205, 16.612938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433369, 35.061100, 16.451729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145346, -0.541764, -0.827868,
		-0.843165, -0.369957, 0.390135,
		-0.517637, 0.754734, -0.403025,
		31.278078, 35.287521, 16.330822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055723, 34.478733, 16.296331>,  <31.640423, 34.759205, 16.612938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055723, 34.478733, 16.296331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.043762, 34.834301, 16.113493>,  <31.036585, 35.047642, 16.003790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.043762, 34.834301, 16.113493>,  <31.055723, 34.478733, 16.296331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043762, 34.834301, 16.113493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178996, -0.454669, -0.872489,
		-0.983395, 0.055727, 0.172709,
		-0.029904, 0.888915, -0.457094,
		31.034790, 35.100975, 15.976365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643827, 33.863045, 16.309570>,  <31.055723, 34.478733, 16.296331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643827, 33.863045, 16.309570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.795223, 33.530281, 16.147255>,  <30.886061, 33.330624, 16.049866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.795223, 33.530281, 16.147255>,  <30.643827, 33.863045, 16.309570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795223, 33.530281, 16.147255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397424, -0.249875, 0.882959,
		-0.835942, -0.495463, 0.236047,
		0.378491, -0.831913, -0.405790,
		30.908772, 33.280708, 16.025518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537655, 33.282314, 16.874622>,  <30.643827, 33.863045, 16.309570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537655, 33.282314, 16.874622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.852449, 33.203087, 16.640898>,  <31.041327, 33.155552, 16.500664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.852449, 33.203087, 16.640898>,  <30.537655, 33.282314, 16.874622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852449, 33.203087, 16.640898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533833, -0.256197, 0.805844,
		-0.309308, -0.946115, -0.095891,
		0.786988, -0.198064, -0.584311,
		31.088547, 33.143669, 16.465605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643366, 32.512596, 16.878141>,  <30.537655, 33.282314, 16.874622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643366, 32.512596, 16.878141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.989391, 32.694435, 16.793283>,  <31.197006, 32.803539, 16.742369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.989391, 32.694435, 16.793283>,  <30.643366, 32.512596, 16.878141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989391, 32.694435, 16.793283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391715, -0.347914, 0.851772,
		0.313405, -0.819938, -0.479040,
		0.865065, 0.454596, -0.212144,
		31.248911, 32.830814, 16.729641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092657, 32.189491, 17.331083>,  <30.643366, 32.512596, 16.878141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092657, 32.189491, 17.331083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.317308, 32.503040, 17.225166>,  <31.452099, 32.691170, 17.161615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.317308, 32.503040, 17.225166>,  <31.092657, 32.189491, 17.331083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317308, 32.503040, 17.225166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602525, -0.168150, 0.780185,
		0.567041, -0.597720, -0.566741,
		0.561630, 0.783872, -0.264793,
		31.485798, 32.738201, 17.145729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777489, 31.891613, 17.280127>,  <31.092657, 32.189491, 17.331083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777489, 31.891613, 17.280127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.808645, 32.286469, 17.335968>,  <31.827339, 32.523380, 17.369473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.808645, 32.286469, 17.335968>,  <31.777489, 31.891613, 17.280127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808645, 32.286469, 17.335968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513127, -0.159754, 0.843314,
		0.854771, 0.005949, -0.518971,
		0.077891, 0.987139, 0.139606,
		31.832012, 32.582611, 17.377850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346710, 31.917511, 17.704166>,  <31.777489, 31.891613, 17.280127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346710, 31.917511, 17.704166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.202026, 32.288567, 17.741379>,  <32.115215, 32.511200, 17.763706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.202026, 32.288567, 17.741379>,  <32.346710, 31.917511, 17.704166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202026, 32.288567, 17.741379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392454, 0.060986, 0.917748,
		0.845664, 0.368467, -0.386114,
		-0.361708, 0.927638, 0.093032,
		32.093513, 32.566856, 17.769289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814011, 32.159157, 18.146881>,  <32.346710, 31.917511, 17.704166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814011, 32.159157, 18.146881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.497665, 32.403599, 18.160084>,  <32.307858, 32.550262, 18.168005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.497665, 32.403599, 18.160084>,  <32.814011, 32.159157, 18.146881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497665, 32.403599, 18.160084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052582, 0.014121, 0.998517,
		0.609732, 0.791424, -0.043301,
		-0.790862, 0.611104, 0.033005,
		32.260406, 32.586929, 18.169985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.164026, 32.331562, 13.705126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.177193, 32.707935, 13.839924>,  <27.185093, 32.933758, 13.920803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.177193, 32.707935, 13.839924>,  <27.164026, 32.331562, 13.705126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.177193, 32.707935, 13.839924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171419, -0.337497, 0.925587,
		0.984648, 0.027302, -0.172402,
		0.032914, 0.940930, 0.336996,
		27.187067, 32.990215, 13.941023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743952, 32.460464, 14.160149>,  <27.164026, 32.331562, 13.705126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743952, 32.460464, 14.160149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.477106, 32.741917, 14.258014>,  <27.316998, 32.910789, 14.316732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.477106, 32.741917, 14.258014>,  <27.743952, 32.460464, 14.160149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477106, 32.741917, 14.258014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119737, -0.222879, 0.967465,
		0.735268, 0.674706, 0.064435,
		-0.667116, 0.703631, 0.244663,
		27.276972, 32.953007, 14.331412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949665, 32.513058, 14.831573>,  <27.743952, 32.460464, 14.160149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949665, 32.513058, 14.831573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.639872, 32.765976, 14.823854>,  <27.453995, 32.917728, 14.819223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.639872, 32.765976, 14.823854>,  <27.949665, 32.513058, 14.831573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639872, 32.765976, 14.823854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010535, 0.043389, 0.999003,
		0.632503, 0.773510, -0.040266,
		-0.774486, 0.632297, -0.019295,
		27.407526, 32.955666, 14.818066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134756, 33.073341, 15.338083>,  <27.949665, 32.513058, 14.831573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134756, 33.073341, 15.338083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.737568, 33.061874, 15.292152>,  <27.499254, 33.054993, 15.264594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.737568, 33.061874, 15.292152>,  <28.134756, 33.073341, 15.338083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737568, 33.061874, 15.292152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117289, 0.108727, 0.987128,
		-0.015814, 0.993658, -0.111325,
		-0.992972, -0.028668, -0.114826,
		27.439676, 33.053272, 15.257705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863758, 33.750767, 15.681787>,  <28.134756, 33.073341, 15.338083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863758, 33.750767, 15.681787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.572111, 33.478958, 15.649194>,  <27.397123, 33.315872, 15.629638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.572111, 33.478958, 15.649194>,  <27.863758, 33.750767, 15.681787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572111, 33.478958, 15.649194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180786, 0.076399, 0.980551,
		-0.660077, 0.729669, -0.178552,
		-0.729119, -0.679519, -0.081484,
		27.353376, 33.275101, 15.624748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333443, 33.953716, 16.141474>,  <27.863758, 33.750767, 15.681787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333443, 33.953716, 16.141474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.238121, 33.573750, 16.060612>,  <27.180927, 33.345768, 16.012094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.238121, 33.573750, 16.060612>,  <27.333443, 33.953716, 16.141474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238121, 33.573750, 16.060612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244829, -0.142670, 0.959012,
		-0.939824, 0.278030, -0.198569,
		-0.238304, -0.949918, -0.202154,
		27.166630, 33.288773, 15.999966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728907, 33.857697, 16.488941>,  <27.333443, 33.953716, 16.141474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728907, 33.857697, 16.488941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.870781, 33.489716, 16.422138>,  <26.955906, 33.268929, 16.382057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.870781, 33.489716, 16.422138>,  <26.728907, 33.857697, 16.488941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870781, 33.489716, 16.422138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243904, -0.263470, 0.933325,
		-0.902613, -0.290302, -0.317828,
		0.354684, -0.919950, -0.167005,
		26.977186, 33.213730, 16.372036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211830, 33.486507, 16.774588>,  <26.728907, 33.857697, 16.488941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211830, 33.486507, 16.774588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.511913, 33.222366, 16.761213>,  <26.691963, 33.063881, 16.753189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.511913, 33.222366, 16.761213>,  <26.211830, 33.486507, 16.774588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.511913, 33.222366, 16.761213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297129, -0.381868, 0.875152,
		-0.590681, -0.646610, -0.482691,
		0.750207, -0.660358, -0.033435,
		26.736975, 33.024258, 16.751183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877930, 32.906445, 16.840855>,  <26.211830, 33.486507, 16.774588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877930, 32.906445, 16.840855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.246925, 32.815292, 16.965485>,  <26.468323, 32.760601, 17.040262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.246925, 32.815292, 16.965485>,  <25.877930, 32.906445, 16.840855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246925, 32.815292, 16.965485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376989, -0.358296, 0.854110,
		-0.082999, -0.905370, -0.416434,
		0.922492, -0.227881, 0.311576,
		26.523672, 32.746929, 17.058958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.902670, 32.263458, 17.171801>,  <25.877930, 32.906445, 16.840855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.902670, 32.263458, 17.171801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.228525, 32.433640, 17.329460>,  <26.424038, 32.535748, 17.424057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.228525, 32.433640, 17.329460>,  <25.902670, 32.263458, 17.171801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228525, 32.433640, 17.329460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337711, -0.204528, 0.918760,
		0.471508, -0.881564, -0.022935,
		0.814636, 0.425457, 0.394150,
		26.472916, 32.561275, 17.447704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035173, 31.882704, 17.748354>,  <25.902670, 32.263458, 17.171801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035173, 31.882704, 17.748354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.258591, 32.208286, 17.812239>,  <26.392641, 32.403637, 17.850571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.258591, 32.208286, 17.812239>,  <26.035173, 31.882704, 17.748354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258591, 32.208286, 17.812239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231730, -0.031761, 0.972262,
		0.796450, -0.580059, 0.170878,
		0.558542, 0.813955, 0.159713,
		26.426153, 32.452473, 17.860153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369675, 31.743742, 18.390635>,  <26.035173, 31.882704, 17.748354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369675, 31.743742, 18.390635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.390188, 32.142784, 18.372078>,  <26.402496, 32.382210, 18.360945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.390188, 32.142784, 18.372078>,  <26.369675, 31.743742, 18.390635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390188, 32.142784, 18.372078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163023, 0.054193, 0.985133,
		0.985289, -0.042958, 0.165412,
		0.051284, 0.997606, -0.046392,
		26.405573, 32.442066, 18.358160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111475, 31.817993, 18.349386>,  <26.369675, 31.743742, 18.390635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111475, 31.817993, 18.349386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.384272, 31.529579, 18.398367>,  <27.547951, 31.356531, 18.427755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.384272, 31.529579, 18.398367>,  <27.111475, 31.817993, 18.349386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384272, 31.529579, 18.398367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070343, -0.101985, -0.992296,
		0.727969, 0.685352, -0.018834,
		0.681992, -0.721035, 0.122451,
		27.588869, 31.313269, 18.435102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530220, 31.870947, 17.824835>,  <27.111475, 31.817993, 18.349386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530220, 31.870947, 17.824835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.593687, 31.495222, 17.946501>,  <27.631767, 31.269787, 18.019501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.593687, 31.495222, 17.946501>,  <27.530220, 31.870947, 17.824835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593687, 31.495222, 17.946501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024780, -0.304184, -0.952291,
		0.987021, 0.158636, -0.024988,
		0.158669, -0.939312, 0.304167,
		27.641287, 31.213428, 18.037750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.159012, 31.595415, 17.514944>,  <27.530220, 31.870947, 17.824835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.159012, 31.595415, 17.514944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.945435, 31.265726, 17.590378>,  <27.817287, 31.067913, 17.635639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.945435, 31.265726, 17.590378>,  <28.159012, 31.595415, 17.514944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945435, 31.265726, 17.590378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122002, -0.295811, -0.947424,
		0.836673, -0.482861, 0.258503,
		-0.533942, -0.824221, 0.188587,
		27.785252, 31.018459, 17.646954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502201, 31.152563, 17.250250>,  <28.159012, 31.595415, 17.514944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502201, 31.152563, 17.250250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.164558, 30.938475, 17.263012>,  <27.961973, 30.810020, 17.270668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.164558, 30.938475, 17.263012>,  <28.502201, 31.152563, 17.250250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164558, 30.938475, 17.263012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201456, -0.371737, -0.906216,
		0.496887, -0.758517, 0.421610,
		-0.844108, -0.535222, 0.031903,
		27.911325, 30.777908, 17.272583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743170, 30.496086, 17.168652>,  <28.502201, 31.152563, 17.250250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743170, 30.496086, 17.168652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.355244, 30.499218, 17.071163>,  <28.122488, 30.501097, 17.012671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.355244, 30.499218, 17.071163>,  <28.743170, 30.496086, 17.168652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355244, 30.499218, 17.071163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222775, -0.377972, -0.898615,
		-0.099156, -0.925784, 0.364818,
		-0.969814, 0.007831, -0.243720,
		28.064299, 30.501568, 16.998047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678410, 29.918016, 16.818146>,  <28.743170, 30.496086, 17.168652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678410, 29.918016, 16.818146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.367107, 30.151033, 16.724371>,  <28.180326, 30.290844, 16.668106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.367107, 30.151033, 16.724371>,  <28.678410, 29.918016, 16.818146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367107, 30.151033, 16.724371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072468, -0.287525, -0.955028,
		-0.623751, -0.760246, 0.181553,
		-0.778257, 0.582543, -0.234437,
		28.133631, 30.325796, 16.654039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139648, 29.467205, 16.572332>,  <28.678410, 29.918016, 16.818146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139648, 29.467205, 16.572332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.076324, 29.839018, 16.439123>,  <28.038330, 30.062105, 16.359198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.076324, 29.839018, 16.439123>,  <28.139648, 29.467205, 16.572332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076324, 29.839018, 16.439123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161298, -0.357091, -0.920037,
		-0.974125, -0.091936, 0.206464,
		-0.158311, 0.929534, -0.333023,
		28.028831, 30.117878, 16.339216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629135, 29.405773, 15.969356>,  <28.139648, 29.467205, 16.572332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629135, 29.405773, 15.969356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.771488, 29.777515, 15.930065>,  <27.856899, 30.000561, 15.906490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.771488, 29.777515, 15.930065>,  <27.629135, 29.405773, 15.969356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771488, 29.777515, 15.930065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049390, -0.086257, -0.995048,
		-0.933224, 0.358972, 0.015204,
		0.355883, 0.929354, -0.098227,
		27.878254, 30.056322, 15.900598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217041, 29.794552, 15.456414>,  <27.629135, 29.405773, 15.969356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217041, 29.794552, 15.456414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.576387, 29.969172, 15.475849>,  <27.791996, 30.073944, 15.487511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.576387, 29.969172, 15.475849>,  <27.217041, 29.794552, 15.456414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576387, 29.969172, 15.475849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074437, -0.042291, -0.996329,
		-0.432891, 0.898686, -0.070488,
		0.898368, 0.436549, 0.048588,
		27.845898, 30.100136, 15.490426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322283, 30.337248, 14.833089>,  <27.217041, 29.794552, 15.456414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322283, 30.337248, 14.833089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.711658, 30.316978, 14.922399>,  <27.945284, 30.304817, 14.975985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.711658, 30.316978, 14.922399>,  <27.322283, 30.337248, 14.833089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711658, 30.316978, 14.922399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228715, 0.259600, -0.938242,
		-0.010417, 0.964386, 0.264295,
		0.973438, -0.050674, 0.223273,
		28.003691, 30.301777, 14.989381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635551, 30.861824, 14.526439>,  <27.322283, 30.337248, 14.833089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635551, 30.861824, 14.526439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.949141, 30.622368, 14.592182>,  <28.137295, 30.478693, 14.631628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.949141, 30.622368, 14.592182>,  <27.635551, 30.861824, 14.526439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949141, 30.622368, 14.592182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307406, 0.144339, -0.940568,
		0.539340, 0.787905, 0.297184,
		0.783973, -0.598642, 0.164359,
		28.184332, 30.442776, 14.641490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176168, 31.236444, 14.293233>,  <27.635551, 30.861824, 14.526439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176168, 31.236444, 14.293233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.277273, 30.849434, 14.293579>,  <28.337936, 30.617228, 14.293787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.277273, 30.849434, 14.293579>,  <28.176168, 31.236444, 14.293233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277273, 30.849434, 14.293579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367376, 0.095146, -0.925193,
		0.895068, 0.234171, 0.379496,
		0.252761, -0.967528, 0.000866,
		28.353102, 30.559175, 14.293839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800083, 31.314699, 14.173407>,  <28.176168, 31.236444, 14.293233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800083, 31.314699, 14.173407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.714216, 30.938061, 14.069628>,  <28.662695, 30.712078, 14.007360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.714216, 30.938061, 14.069628>,  <28.800083, 31.314699, 14.173407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714216, 30.938061, 14.069628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341528, 0.176500, -0.923150,
		0.915028, -0.286780, 0.283692,
		-0.214669, -0.941597, -0.259446,
		28.649815, 30.655582, 13.991794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484081, 31.009043, 13.927136>,  <28.800083, 31.314699, 14.173407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484081, 31.009043, 13.927136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.178341, 30.795008, 13.783220>,  <28.994896, 30.666586, 13.696871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.178341, 30.795008, 13.783220>,  <29.484081, 31.009043, 13.927136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178341, 30.795008, 13.783220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288045, 0.215864, -0.932970,
		0.576886, -0.816752, -0.010867,
		-0.764351, -0.535088, -0.359790,
		28.949036, 30.634481, 13.675283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392105, 31.810190, 13.944308>,  <29.484081, 31.009043, 13.927136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392105, 31.810190, 13.944308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.552055, 32.106785, 13.728792>,  <29.648026, 32.284740, 13.599483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.552055, 32.106785, 13.728792>,  <29.392105, 31.810190, 13.944308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552055, 32.106785, 13.728792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344153, 0.423358, 0.838050,
		0.849504, -0.520543, -0.085893,
		0.399877, 0.741487, -0.538791,
		29.672018, 32.329231, 13.567155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213684, 31.814054, 14.090762>,  <29.392105, 31.810190, 13.944308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213684, 31.814054, 14.090762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.057238, 32.175346, 14.020101>,  <29.963369, 32.392120, 13.977704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.057238, 32.175346, 14.020101>,  <30.213684, 31.814054, 14.090762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057238, 32.175346, 14.020101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512358, 0.373137, 0.773471,
		0.764537, 0.212007, -0.608716,
		-0.391116, 0.903228, -0.176654,
		29.939903, 32.446316, 13.967104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811819, 32.268940, 13.921969>,  <30.213684, 31.814054, 14.090762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811819, 32.268940, 13.921969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.499777, 32.482857, 14.051847>,  <30.312551, 32.611206, 14.129774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.499777, 32.482857, 14.051847>,  <30.811819, 32.268940, 13.921969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499777, 32.482857, 14.051847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579353, 0.421567, 0.697590,
		0.236188, 0.732307, -0.638703,
		-0.780106, 0.534796, 0.324695,
		30.265745, 32.643295, 14.149256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035511, 33.009773, 13.983409>,  <30.811819, 32.268940, 13.921969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035511, 33.009773, 13.983409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.733988, 32.938854, 14.236499>,  <30.553074, 32.896301, 14.388352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.733988, 32.938854, 14.236499>,  <31.035511, 33.009773, 13.983409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733988, 32.938854, 14.236499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461353, 0.542853, 0.701758,
		-0.467898, 0.820899, -0.327408,
		-0.753807, -0.177301, 0.632724,
		30.507845, 32.885666, 14.426316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192324, 33.473568, 14.487830>,  <31.035511, 33.009773, 13.983409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192324, 33.473568, 14.487830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.907261, 33.261307, 14.671362>,  <30.736223, 33.133949, 14.781481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.907261, 33.261307, 14.671362>,  <31.192324, 33.473568, 14.487830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907261, 33.261307, 14.671362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402059, 0.227008, 0.887027,
		-0.574864, 0.816621, 0.051577,
		-0.712657, -0.530657, 0.458828,
		30.693464, 33.102108, 14.809011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846352, 33.904697, 14.967480>,  <31.192324, 33.473568, 14.487830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846352, 33.904697, 14.967480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.752907, 33.534370, 15.086332>,  <30.696840, 33.312176, 15.157644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.752907, 33.534370, 15.086332>,  <30.846352, 33.904697, 14.967480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752907, 33.534370, 15.086332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349165, 0.205327, 0.914289,
		-0.907474, 0.317339, 0.275296,
		-0.233614, -0.925817, 0.297132,
		30.682823, 33.256626, 15.175472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524294, 33.935329, 15.616495>,  <30.846352, 33.904697, 14.967480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524294, 33.935329, 15.616495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.675726, 33.565643, 15.596480>,  <30.766586, 33.343830, 15.584472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.675726, 33.565643, 15.596480>,  <30.524294, 33.935329, 15.616495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675726, 33.565643, 15.596480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375249, 0.103845, 0.921089,
		-0.846088, -0.367483, 0.386125,
		0.378581, -0.924215, -0.050036,
		30.789301, 33.288380, 15.581470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331518, 34.546417, 15.639671>,  <30.524294, 33.935329, 15.616495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331518, 34.546417, 15.639671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.584318, 34.844654, 15.555134>,  <30.735998, 35.023598, 15.504412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.584318, 34.844654, 15.555134>,  <30.331518, 34.546417, 15.639671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584318, 34.844654, 15.555134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223033, -0.086183, -0.970994,
		-0.742182, 0.660803, 0.111824,
		0.631998, 0.745595, -0.211344,
		30.773918, 35.068333, 15.491731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997614, 34.907303, 15.139866>,  <30.331518, 34.546417, 15.639671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997614, 34.907303, 15.139866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.379873, 35.022396, 15.114739>,  <30.609228, 35.091454, 15.099664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.379873, 35.022396, 15.114739>,  <29.997614, 34.907303, 15.139866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379873, 35.022396, 15.114739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042539, -0.076195, -0.996185,
		-0.291423, 0.954674, -0.060575,
		0.955648, 0.287734, -0.062816,
		30.666567, 35.108715, 15.095895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995152, 35.346218, 14.594584>,  <29.997614, 34.907303, 15.139866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995152, 35.346218, 14.594584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.384541, 35.262646, 14.631890>,  <30.618174, 35.212502, 14.654274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.384541, 35.262646, 14.631890>,  <29.995152, 35.346218, 14.594584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384541, 35.262646, 14.631890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119526, 0.116792, -0.985938,
		0.195097, 0.970932, 0.138667,
		0.973473, -0.208928, 0.093266,
		30.676582, 35.199966, 14.659870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410730, 35.870399, 14.241980>,  <29.995152, 35.346218, 14.594584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410730, 35.870399, 14.241980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.611792, 35.524654, 14.247921>,  <30.732430, 35.317207, 14.251486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.611792, 35.524654, 14.247921>,  <30.410730, 35.870399, 14.241980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.611792, 35.524654, 14.247921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345392, 0.185047, -0.920034,
		0.792491, 0.467590, 0.391558,
		0.502656, -0.864359, 0.014854,
		30.762589, 35.265347, 14.252378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933746, 35.998550, 13.721451>,  <30.410730, 35.870399, 14.241980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933746, 35.998550, 13.721451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.943327, 35.603054, 13.780528>,  <30.949076, 35.365757, 13.815974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.943327, 35.603054, 13.780528>,  <30.933746, 35.998550, 13.721451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943327, 35.603054, 13.780528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395823, -0.126285, -0.909602,
		0.918014, 0.080245, 0.388343,
		0.023950, -0.988743, 0.147694,
		30.950512, 35.306431, 13.824837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597946, 35.865013, 13.687953>,  <30.933746, 35.998550, 13.721451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597946, 35.865013, 13.687953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.374552, 35.545128, 13.599820>,  <31.240515, 35.353195, 13.546940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.374552, 35.545128, 13.599820>,  <31.597946, 35.865013, 13.687953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374552, 35.545128, 13.599820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309421, 0.045606, -0.949831,
		0.769644, -0.598643, 0.221979,
		-0.558486, -0.799717, -0.220333,
		31.207006, 35.305214, 13.533720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871870, 35.598141, 13.080195>,  <31.597946, 35.865013, 13.687953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871870, 35.598141, 13.080195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.519232, 35.411652, 13.109663>,  <31.307650, 35.299759, 13.127343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.519232, 35.411652, 13.109663>,  <31.871870, 35.598141, 13.080195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519232, 35.411652, 13.109663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005328, -0.165895, -0.986129,
		0.471979, -0.868972, 0.148737,
		-0.881593, -0.466225, 0.073669,
		31.254753, 35.271786, 13.131763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793922, 35.106995, 12.416741>,  <31.871870, 35.598141, 13.080195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793922, 35.106995, 12.416741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.424303, 35.106155, 12.569650>,  <31.202532, 35.105652, 12.661395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.424303, 35.106155, 12.569650>,  <31.793922, 35.106995, 12.416741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424303, 35.106155, 12.569650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370695, -0.239369, -0.897378,
		0.093388, -0.970927, 0.220410,
		-0.924048, -0.002100, 0.382271,
		31.147089, 35.105526, 12.684331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405958, 34.468769, 12.331793>,  <31.793922, 35.106995, 12.416741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405958, 34.468769, 12.331793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.166056, 34.788734, 12.340137>,  <31.022114, 34.980713, 12.345142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.166056, 34.788734, 12.340137>,  <31.405958, 34.468769, 12.331793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166056, 34.788734, 12.340137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308943, -0.207435, -0.928184,
		-0.738137, -0.563128, 0.371537,
		-0.599757, 0.799911, 0.020859,
		30.986128, 35.028709, 12.346395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.589485, 35.812454, 27.980925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.454220, 36.153904, 27.822445>,  <28.373060, 36.358772, 27.727356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.454220, 36.153904, 27.822445>,  <28.589485, 35.812454, 27.980925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454220, 36.153904, 27.822445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407843, -0.246483, -0.879153,
		-0.848121, -0.458885, -0.264792,
		-0.338163, 0.853622, -0.396200,
		28.352770, 36.409992, 27.703585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245743, 35.638294, 27.301617>,  <28.589485, 35.812454, 27.980925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245743, 35.638294, 27.301617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.357872, 36.022144, 27.292370>,  <28.425150, 36.252457, 27.286821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.357872, 36.022144, 27.292370>,  <28.245743, 35.638294, 27.301617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357872, 36.022144, 27.292370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333611, -0.119979, -0.935045,
		-0.900068, 0.254401, -0.353775,
		0.280322, 0.959628, -0.023118,
		28.441969, 36.310032, 27.285435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965281, 35.859764, 26.666735>,  <28.245743, 35.638294, 27.301617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965281, 35.859764, 26.666735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.257936, 36.114338, 26.764427>,  <28.433531, 36.267082, 26.823042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.257936, 36.114338, 26.764427>,  <27.965281, 35.859764, 26.666735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257936, 36.114338, 26.764427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271050, 0.057131, -0.960868,
		-0.625486, 0.769210, -0.130707,
		0.731642, 0.636438, 0.244229,
		28.477428, 36.305267, 26.837696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954361, 36.470783, 26.090649>,  <27.965281, 35.859764, 26.666735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954361, 36.470783, 26.090649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.306446, 36.452728, 26.279619>,  <28.517696, 36.441895, 26.393002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.306446, 36.452728, 26.279619>,  <27.954361, 36.470783, 26.090649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306446, 36.452728, 26.279619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468870, -0.071220, -0.880391,
		0.073385, 0.996439, -0.041525,
		0.880213, -0.045138, 0.472427,
		28.570511, 36.439186, 26.421347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370771, 36.807747, 25.657946>,  <27.954361, 36.470783, 26.090649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370771, 36.807747, 25.657946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.625141, 36.606174, 25.891752>,  <28.777763, 36.485233, 26.032036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.625141, 36.606174, 25.891752>,  <28.370771, 36.807747, 25.657946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625141, 36.606174, 25.891752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626058, -0.106030, -0.772534,
		0.451277, 0.857214, 0.248060,
		0.635925, -0.503927, 0.584515,
		28.815918, 36.454998, 26.067106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991951, 37.105213, 25.431036>,  <28.370771, 36.807747, 25.657946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991951, 37.105213, 25.431036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.110779, 36.772079, 25.617859>,  <29.182076, 36.572201, 25.729954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.110779, 36.772079, 25.617859>,  <28.991951, 37.105213, 25.431036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110779, 36.772079, 25.617859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753597, -0.095891, -0.650305,
		0.586380, 0.545159, 0.599133,
		0.297068, -0.832831, 0.467058,
		29.199900, 36.522232, 25.757977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724535, 37.142605, 25.727880>,  <28.991951, 37.105213, 25.431036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724535, 37.142605, 25.727880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.679775, 36.745468, 25.711157>,  <29.652920, 36.507187, 25.701122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.679775, 36.745468, 25.711157>,  <29.724535, 37.142605, 25.727880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679775, 36.745468, 25.711157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839003, -0.071849, -0.539363,
		0.532497, -0.095434, 0.841035,
		-0.111901, -0.992839, -0.041810,
		29.646204, 36.447617, 25.698614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290520, 36.801189, 25.971987>,  <29.724535, 37.142605, 25.727880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290520, 36.801189, 25.971987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.152897, 36.510242, 25.734480>,  <30.070324, 36.335674, 25.591976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.152897, 36.510242, 25.734480>,  <30.290520, 36.801189, 25.971987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152897, 36.510242, 25.734480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865177, 0.000116, -0.501468,
		0.364820, -0.686247, 0.629263,
		-0.344058, -0.727369, -0.593767,
		30.049679, 36.292030, 25.556351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850403, 36.339188, 25.791027>,  <30.290520, 36.801189, 25.971987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850403, 36.339188, 25.791027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.586830, 36.214359, 25.517262>,  <30.428686, 36.139462, 25.353003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.586830, 36.214359, 25.517262>,  <30.850403, 36.339188, 25.791027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586830, 36.214359, 25.517262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734517, -0.070794, -0.674888,
		0.162163, -0.947416, 0.275872,
		-0.658930, -0.312075, -0.684413,
		30.389151, 36.120735, 25.311937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153755, 35.819141, 25.354130>,  <30.850403, 36.339188, 25.791027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153755, 35.819141, 25.354130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.845556, 35.940205, 25.129725>,  <30.660637, 36.012840, 24.995081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.845556, 35.940205, 25.129725>,  <31.153755, 35.819141, 25.354130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845556, 35.940205, 25.129725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557961, -0.105376, -0.823150,
		-0.308249, -0.947256, -0.087679,
		-0.770495, 0.302656, -0.561014,
		30.614408, 36.031002, 24.961420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142008, 35.442520, 24.764320>,  <31.153755, 35.819141, 25.354130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142008, 35.442520, 24.764320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.943947, 35.772377, 24.654934>,  <30.825111, 35.970291, 24.589302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.943947, 35.772377, 24.654934>,  <31.142008, 35.442520, 24.764320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943947, 35.772377, 24.654934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430764, -0.040327, -0.901563,
		-0.754498, -0.564210, -0.335260,
		-0.495151, 0.824646, -0.273468,
		30.795401, 36.019772, 24.572893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744276, 35.271084, 24.167612>,  <31.142008, 35.442520, 24.764320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744276, 35.271084, 24.167612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.854952, 35.655468, 24.168051>,  <30.921358, 35.886097, 24.168314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.854952, 35.655468, 24.168051>,  <30.744276, 35.271084, 24.167612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854952, 35.655468, 24.168051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537009, -0.153675, -0.829461,
		-0.796909, 0.230094, -0.558564,
		0.276691, 0.960958, 0.001098,
		30.937960, 35.943756, 24.168381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764015, 34.497429, 24.258699>,  <30.744276, 35.271084, 24.167612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764015, 34.497429, 24.258699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.049839, 34.234119, 24.163969>,  <31.221333, 34.076134, 24.107132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.049839, 34.234119, 24.163969>,  <30.764015, 34.497429, 24.258699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049839, 34.234119, 24.163969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126666, -0.211190, 0.969203,
		-0.688013, -0.722550, -0.067527,
		0.714559, -0.658270, -0.236824,
		31.264206, 34.036640, 24.092922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490877, 33.808678, 24.524580>,  <30.764015, 34.497429, 24.258699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490877, 33.808678, 24.524580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.889904, 33.789761, 24.504110>,  <31.129320, 33.778412, 24.491829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.889904, 33.789761, 24.504110>,  <30.490877, 33.808678, 24.524580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889904, 33.789761, 24.504110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043034, -0.159443, 0.986269,
		-0.054799, -0.986074, -0.157020,
		0.997569, -0.047289, -0.051172,
		31.189175, 33.775574, 24.488758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634253, 33.139416, 24.829002>,  <30.490877, 33.808678, 24.524580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634253, 33.139416, 24.829002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.978590, 33.342182, 24.846798>,  <31.185192, 33.463844, 24.857475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.978590, 33.342182, 24.846798>,  <30.634253, 33.139416, 24.829002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978590, 33.342182, 24.846798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194860, -0.409143, 0.891421,
		0.470080, -0.758707, -0.450986,
		0.860845, 0.506918, 0.044488,
		31.236843, 33.494259, 24.860144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178230, 32.643642, 25.205685>,  <30.634253, 33.139416, 24.829002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178230, 32.643642, 25.205685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.385876, 32.985523, 25.205013>,  <31.510464, 33.190651, 25.204611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.385876, 32.985523, 25.205013>,  <31.178230, 32.643642, 25.205685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385876, 32.985523, 25.205013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304692, -0.183221, 0.934662,
		0.798551, -0.485708, -0.355534,
		0.519114, 0.854703, -0.001680,
		31.541611, 33.241936, 25.204510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812418, 32.408825, 25.539038>,  <31.178230, 32.643642, 25.205685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812418, 32.408825, 25.539038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759754, 32.802025, 25.590216>,  <31.728155, 33.037945, 25.620922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759754, 32.802025, 25.590216>,  <31.812418, 32.408825, 25.539038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759754, 32.802025, 25.590216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210949, -0.098327, 0.972539,
		0.968590, 0.155035, -0.194418,
		-0.131661, 0.983004, 0.127943,
		31.720257, 33.096928, 25.628599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316132, 32.577221, 26.009735>,  <31.812418, 32.408825, 25.539038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316132, 32.577221, 26.009735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072151, 32.893040, 26.036810>,  <31.925764, 33.082531, 26.053055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072151, 32.893040, 26.036810>,  <32.316132, 32.577221, 26.009735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072151, 32.893040, 26.036810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105891, -0.003444, 0.994372,
		0.785333, 0.613684, -0.081505,
		-0.609950, 0.789544, 0.067688,
		31.889166, 33.129902, 26.057116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614414, 32.913204, 26.486162>,  <32.316132, 32.577221, 26.009735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614414, 32.913204, 26.486162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.253922, 33.086529, 26.488060>,  <32.037624, 33.190521, 26.489199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.253922, 33.086529, 26.488060>,  <32.614414, 32.913204, 26.486162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253922, 33.086529, 26.488060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038945, 0.070082, 0.996781,
		0.431580, 0.898517, -0.080036,
		-0.901234, 0.433308, 0.004747,
		31.983551, 33.216522, 26.489485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668858, 33.450912, 26.962002>,  <32.614414, 32.913204, 26.486162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668858, 33.450912, 26.962002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272877, 33.399784, 26.937807>,  <32.035290, 33.369106, 26.923290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272877, 33.399784, 26.937807>,  <32.668858, 33.450912, 26.962002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272877, 33.399784, 26.937807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043096, -0.134683, 0.989951,
		-0.134683, 0.982610, 0.127821,
		-0.989951, -0.127821, -0.060486,
		31.975891, 33.361439, 26.919661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376938, 33.974072, 27.453777>,  <32.668858, 33.450912, 26.962002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376938, 33.974072, 27.453777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130447, 33.670147, 27.370882>,  <31.982552, 33.487793, 27.321146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130447, 33.670147, 27.370882>,  <32.376938, 33.974072, 27.453777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130447, 33.670147, 27.370882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270419, -0.043005, 0.961782,
		-0.739685, 0.648719, -0.178966,
		-0.616230, -0.759812, -0.207236,
		31.945578, 33.442204, 27.308712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817936, 34.159817, 27.881626>,  <32.376938, 33.974072, 27.453777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817936, 34.159817, 27.881626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.760283, 33.765945, 27.842352>,  <31.725691, 33.529625, 27.818789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.760283, 33.765945, 27.842352>,  <31.817936, 34.159817, 27.881626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760283, 33.765945, 27.842352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362203, -0.039840, 0.931247,
		-0.920888, 0.169785, -0.350910,
		-0.144132, -0.984675, -0.098185,
		31.717043, 33.470543, 27.812897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233717, 33.990620, 28.210764>,  <31.817936, 34.159817, 27.881626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233717, 33.990620, 28.210764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.411375, 33.632362, 28.201290>,  <31.517971, 33.417408, 28.195606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.411375, 33.632362, 28.201290>,  <31.233717, 33.990620, 28.210764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411375, 33.632362, 28.201290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261400, -0.154824, 0.952733,
		-0.856974, -0.416961, -0.302885,
		0.444147, -0.895641, -0.023686,
		31.544619, 33.363670, 28.194183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692011, 33.569050, 28.437572>,  <31.233717, 33.990620, 28.210764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692011, 33.569050, 28.437572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.060816, 33.416340, 28.463320>,  <31.282099, 33.324715, 28.478769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.060816, 33.416340, 28.463320>,  <30.692011, 33.569050, 28.437572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060816, 33.416340, 28.463320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109388, -0.097392, 0.989216,
		-0.371386, -0.919111, -0.131558,
		0.922013, -0.381772, 0.064370,
		31.337420, 33.301807, 28.482630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550425, 32.948486, 28.654221>,  <30.692011, 33.569050, 28.437572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550425, 32.948486, 28.654221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.933418, 33.037945, 28.727110>,  <31.163214, 33.091621, 28.770844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.933418, 33.037945, 28.727110>,  <30.550425, 32.948486, 28.654221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933418, 33.037945, 28.727110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082606, -0.392664, 0.915965,
		0.276404, -0.892075, -0.357495,
		0.957485, 0.223646, 0.182224,
		31.220663, 33.105038, 28.781776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791893, 32.456997, 29.152773>,  <30.550425, 32.948486, 28.654221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791893, 32.456997, 29.152773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.063665, 32.746815, 29.199102>,  <31.226728, 32.920704, 29.226900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.063665, 32.746815, 29.199102>,  <30.791893, 32.456997, 29.152773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063665, 32.746815, 29.199102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028115, -0.132032, 0.990847,
		0.733202, -0.676467, -0.069336,
		0.679430, 0.724541, 0.115825,
		31.267494, 32.964176, 29.233850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352930, 31.919447, 28.854980>,  <30.791893, 32.456997, 29.152773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352930, 31.919447, 28.854980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.151087, 31.632540, 29.047186>,  <30.029980, 31.460396, 29.162508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.151087, 31.632540, 29.047186>,  <30.352930, 31.919447, 28.854980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151087, 31.632540, 29.047186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318088, -0.362956, -0.875832,
		0.802613, -0.594800, -0.045004,
		-0.504610, -0.717270, 0.480512,
		29.999704, 31.417358, 29.191339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615187, 31.344019, 28.578083>,  <30.352930, 31.919447, 28.854980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615187, 31.344019, 28.578083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.240557, 31.290087, 28.707478>,  <30.015778, 31.257727, 28.785114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.240557, 31.290087, 28.707478>,  <30.615187, 31.344019, 28.578083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240557, 31.290087, 28.707478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301300, -0.161673, -0.939724,
		0.179004, -0.977590, 0.110794,
		-0.936577, -0.134832, 0.323488,
		29.959583, 31.249638, 28.804523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368694, 30.583473, 28.423655>,  <30.615187, 31.344019, 28.578083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368694, 30.583473, 28.423655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.108135, 30.886953, 28.426582>,  <29.951799, 31.069042, 28.428339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.108135, 30.886953, 28.426582>,  <30.368694, 30.583473, 28.423655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108135, 30.886953, 28.426582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008552, 0.002302, -0.999961,
		-0.758688, -0.651435, 0.004988,
		-0.651398, 0.758701, 0.007318,
		29.912716, 31.114563, 28.428778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.873114, 30.356226, 27.992243>,  <30.368694, 30.583473, 28.423655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.873114, 30.356226, 27.992243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.840572, 30.753506, 28.025553>,  <29.821047, 30.991875, 28.045538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.840572, 30.753506, 28.025553>,  <29.873114, 30.356226, 27.992243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840572, 30.753506, 28.025553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112979, 0.073822, -0.990851,
		-0.990261, -0.090019, 0.106205,
		-0.081355, 0.993200, 0.083273,
		29.816166, 31.051466, 28.050535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322853, 30.492357, 27.652449>,  <29.873114, 30.356226, 27.992243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322853, 30.492357, 27.652449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.499495, 30.850800, 27.670244>,  <29.605480, 31.065865, 27.680922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.499495, 30.850800, 27.670244>,  <29.322853, 30.492357, 27.652449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499495, 30.850800, 27.670244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240766, 0.166125, -0.956260,
		-0.864301, 0.411579, 0.289114,
		0.441606, 0.896106, 0.044488,
		29.631977, 31.119631, 27.683590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951908, 30.933577, 27.243433>,  <29.322853, 30.492357, 27.652449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951908, 30.933577, 27.243433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.293560, 31.138254, 27.280603>,  <29.498550, 31.261061, 27.302906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.293560, 31.138254, 27.280603>,  <28.951908, 30.933577, 27.243433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293560, 31.138254, 27.280603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107557, 0.348624, -0.931071,
		-0.508818, 0.785260, 0.352806,
		0.854129, 0.511692, 0.092926,
		29.549799, 31.291761, 27.308481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849854, 31.700140, 27.061504>,  <28.951908, 30.933577, 27.243433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849854, 31.700140, 27.061504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.227848, 31.579556, 27.010717>,  <29.454645, 31.507204, 26.980246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.227848, 31.579556, 27.010717>,  <28.849854, 31.700140, 27.061504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227848, 31.579556, 27.010717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019691, 0.439869, -0.897846,
		0.326517, 0.845952, 0.421606,
		0.944986, -0.301463, -0.126967,
		29.511345, 31.489117, 26.972628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052500, 32.169815, 26.469381>,  <28.849854, 31.700140, 27.061504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052500, 32.169815, 26.469381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.334076, 31.886021, 26.482683>,  <29.503021, 31.715746, 26.490665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.334076, 31.886021, 26.482683>,  <29.052500, 32.169815, 26.469381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334076, 31.886021, 26.482683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291732, 0.246129, -0.924291,
		0.647582, 0.660346, 0.380238,
		0.703939, -0.709481, 0.033256,
		29.545258, 31.673176, 26.492661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660810, 32.520283, 26.262918>,  <29.052500, 32.169815, 26.469381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660810, 32.520283, 26.262918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.676012, 32.126839, 26.192415>,  <29.685133, 31.890772, 26.150114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.676012, 32.126839, 26.192415>,  <29.660810, 32.520283, 26.262918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676012, 32.126839, 26.192415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226660, 0.180271, -0.957146,
		0.973232, -0.003576, 0.229796,
		0.038002, -0.983610, -0.176256,
		29.687412, 31.831755, 26.139538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298111, 32.411510, 25.874548>,  <29.660810, 32.520283, 26.262918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298111, 32.411510, 25.874548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.065113, 32.091686, 25.816025>,  <29.925314, 31.899792, 25.780910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.065113, 32.091686, 25.816025>,  <30.298111, 32.411510, 25.874548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065113, 32.091686, 25.816025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182084, 0.047067, -0.982156,
		0.792176, -0.598742, 0.118170,
		-0.582496, -0.799558, -0.146306,
		29.890364, 31.851818, 25.772133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650249, 31.978565, 25.398977>,  <30.298111, 32.411510, 25.874548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650249, 31.978565, 25.398977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.277422, 31.840948, 25.353579>,  <30.053724, 31.758379, 25.326340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.277422, 31.840948, 25.353579>,  <30.650249, 31.978565, 25.398977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277422, 31.840948, 25.353579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137288, -0.045520, -0.989485,
		0.335258, -0.937850, 0.089661,
		-0.932070, -0.344042, -0.113495,
		29.997801, 31.737736, 25.319530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652246, 31.410486, 24.837408>,  <30.650249, 31.978565, 25.398977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652246, 31.410486, 24.837408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.275703, 31.544563, 24.852835>,  <30.049778, 31.625010, 24.862091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.275703, 31.544563, 24.852835>,  <30.652246, 31.410486, 24.837408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275703, 31.544563, 24.852835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089476, -0.137784, -0.986412,
		-0.325325, -0.932019, 0.159696,
		-0.941360, 0.335194, 0.038568,
		29.993296, 31.645121, 24.864405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241879, 30.879261, 24.311916>,  <30.652246, 31.410486, 24.837408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241879, 30.879261, 24.311916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.018270, 31.204706, 24.375828>,  <29.884106, 31.399973, 24.414175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.018270, 31.204706, 24.375828>,  <30.241879, 30.879261, 24.311916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018270, 31.204706, 24.375828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234224, 0.029894, -0.971723,
		-0.795383, -0.580637, 0.173856,
		-0.559021, 0.813613, 0.159776,
		29.850563, 31.448790, 24.423761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704613, 30.714172, 24.025248>,  <30.241879, 30.879261, 24.311916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704613, 30.714172, 24.025248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.715612, 31.114014, 24.027815>,  <29.722212, 31.353918, 24.029354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.715612, 31.114014, 24.027815>,  <29.704613, 30.714172, 24.025248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715612, 31.114014, 24.027815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411560, 0.017172, -0.911221,
		-0.910968, 0.022418, 0.411868,
		0.027500, 0.999601, 0.006417,
		29.723862, 31.413895, 24.029739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068214, 30.803171, 23.849632>,  <29.704613, 30.714172, 24.025248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068214, 30.803171, 23.849632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.255146, 31.148540, 23.773623>,  <29.367304, 31.355762, 23.728016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.255146, 31.148540, 23.773623>,  <29.068214, 30.803171, 23.849632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255146, 31.148540, 23.773623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364102, -0.007899, -0.931326,
		-0.805628, 0.504422, 0.310682,
		0.467327, 0.863421, -0.190025,
		29.395344, 31.407566, 23.716616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516090, 31.239805, 23.705278>,  <29.068214, 30.803171, 23.849632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516090, 31.239805, 23.705278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.842710, 31.391901, 23.531536>,  <29.038683, 31.483158, 23.427290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.842710, 31.391901, 23.531536>,  <28.516090, 31.239805, 23.705278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842710, 31.391901, 23.531536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513004, 0.132925, -0.848032,
		-0.264719, 0.915286, 0.303604,
		0.816548, 0.380240, -0.434357,
		29.087675, 31.505974, 23.401228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288395, 31.632179, 23.102041>,  <28.516090, 31.239805, 23.705278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288395, 31.632179, 23.102041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.682302, 31.668291, 23.042610>,  <28.918648, 31.689959, 23.006952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.682302, 31.668291, 23.042610>,  <28.288395, 31.632179, 23.102041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682302, 31.668291, 23.042610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155288, 0.072465, -0.985208,
		-0.078176, 0.993277, 0.085381,
		0.984771, 0.090278, -0.148578,
		28.977734, 31.695375, 22.998037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347946, 32.251839, 22.729813>,  <28.288395, 31.632179, 23.102041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347946, 32.251839, 22.729813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.663794, 32.014130, 22.668701>,  <28.853302, 31.871504, 22.632034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.663794, 32.014130, 22.668701>,  <28.347946, 32.251839, 22.729813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663794, 32.014130, 22.668701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165357, 0.033687, -0.985658,
		0.590895, 0.803559, -0.071667,
		0.789620, -0.594271, -0.152780,
		28.900681, 31.835848, 22.622868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664967, 32.541252, 22.146214>,  <28.347946, 32.251839, 22.729813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664967, 32.541252, 22.146214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.785561, 32.159866, 22.147722>,  <28.857918, 31.931036, 22.148626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.785561, 32.159866, 22.147722>,  <28.664967, 32.541252, 22.146214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785561, 32.159866, 22.147722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149871, -0.051294, -0.987374,
		0.941618, 0.297114, -0.158361,
		0.301486, -0.953463, 0.003771,
		28.876007, 31.873827, 22.148853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198372, 32.481236, 21.689695>,  <28.664967, 32.541252, 22.146214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198372, 32.481236, 21.689695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.065485, 32.107594, 21.741966>,  <28.985754, 31.883408, 21.773329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.065485, 32.107594, 21.741966>,  <29.198372, 32.481236, 21.689695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065485, 32.107594, 21.741966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146109, -0.085908, -0.985531,
		0.931818, -0.346503, -0.107942,
		-0.332216, -0.934107, 0.130678,
		28.965820, 31.827362, 21.781170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511549, 32.135540, 21.167831>,  <29.198372, 32.481236, 21.689695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511549, 32.135540, 21.167831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.241631, 31.855997, 21.262697>,  <29.079679, 31.688271, 21.319616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.241631, 31.855997, 21.262697>,  <29.511549, 32.135540, 21.167831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241631, 31.855997, 21.262697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072229, -0.257277, -0.963634,
		0.734461, -0.667387, 0.123132,
		-0.674796, -0.698859, 0.237165,
		29.039192, 31.646339, 21.333847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617788, 31.537495, 20.730089>,  <29.511549, 32.135540, 21.167831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617788, 31.537495, 20.730089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.242292, 31.474670, 20.852793>,  <29.016994, 31.436975, 20.926414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.242292, 31.474670, 20.852793>,  <29.617788, 31.537495, 20.730089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242292, 31.474670, 20.852793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241808, -0.334050, -0.911010,
		0.245559, -0.929377, 0.275606,
		-0.938738, -0.157063, 0.306760,
		28.960670, 31.427551, 20.944820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385166, 30.808714, 20.557354>,  <29.617788, 31.537495, 20.730089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385166, 30.808714, 20.557354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.060793, 31.039326, 20.597351>,  <28.866169, 31.177692, 20.621349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.060793, 31.039326, 20.597351>,  <29.385166, 30.808714, 20.557354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060793, 31.039326, 20.597351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342896, -0.329755, -0.879593,
		-0.474138, -0.747580, 0.465099,
		-0.810935, 0.576529, 0.099993,
		28.817513, 31.212284, 20.627350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767269, 30.464907, 20.320515>,  <29.385166, 30.808714, 20.557354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767269, 30.464907, 20.320515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.625011, 30.838362, 20.303379>,  <28.539658, 31.062435, 20.293098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.625011, 30.838362, 20.303379>,  <28.767269, 30.464907, 20.320515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625011, 30.838362, 20.303379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322553, -0.165629, -0.931948,
		-0.877199, -0.317622, 0.360053,
		-0.355642, 0.933640, -0.042840,
		28.518318, 31.118454, 20.290527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182255, 30.414125, 20.113388>,  <28.767269, 30.464907, 20.320515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182255, 30.414125, 20.113388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.228956, 30.803064, 20.032480>,  <28.256977, 31.036427, 19.983936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.228956, 30.803064, 20.032480>,  <28.182255, 30.414125, 20.113388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228956, 30.803064, 20.032480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494991, -0.119595, -0.860628,
		-0.861018, 0.200603, 0.467339,
		0.116754, 0.972346, -0.202270,
		28.263983, 31.094769, 19.971800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569818, 30.597313, 19.861479>,  <28.182255, 30.414125, 20.113388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569818, 30.597313, 19.861479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.790052, 30.904718, 19.731100>,  <27.922194, 31.089161, 19.652872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.790052, 30.904718, 19.731100>,  <27.569818, 30.597313, 19.861479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790052, 30.904718, 19.731100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505437, -0.003850, -0.862855,
		-0.664370, 0.639823, 0.386315,
		0.550587, 0.768513, -0.325948,
		27.955229, 31.135273, 19.633316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134096, 30.986633, 19.565998>,  <27.569818, 30.597313, 19.861479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134096, 30.986633, 19.565998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.488266, 31.107908, 19.425087>,  <27.700768, 31.180674, 19.340540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.488266, 31.107908, 19.425087>,  <27.134096, 30.986633, 19.565998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488266, 31.107908, 19.425087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350492, -0.062228, -0.934496,
		-0.305247, 0.950898, 0.051166,
		0.885426, 0.303186, -0.352277,
		27.753893, 31.198864, 19.319405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972940, 31.478865, 19.082743>,  <27.134096, 30.986633, 19.565998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972940, 31.478865, 19.082743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.340977, 31.361946, 18.978436>,  <27.561798, 31.291796, 18.915852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.340977, 31.361946, 18.978436>,  <26.972940, 31.478865, 19.082743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340977, 31.361946, 18.978436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246038, 0.086771, -0.965368,
		0.304799, 0.952384, 0.007922,
		0.920088, -0.292295, -0.260770,
		27.617002, 31.274258, 18.900204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231520, 32.178749, 19.104603>,  <26.972940, 31.478865, 19.082743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231520, 32.178749, 19.104603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.973846, 32.461426, 18.987562>,  <26.819242, 32.631031, 18.917337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.973846, 32.461426, 18.987562>,  <27.231520, 32.178749, 19.104603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973846, 32.461426, 18.987562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210664, 0.203824, 0.956073,
		0.735289, 0.677526, 0.017575,
		-0.644183, 0.706692, -0.292600,
		26.780592, 32.673435, 18.899782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345348, 32.808426, 19.496153>,  <27.231520, 32.178749, 19.104603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345348, 32.808426, 19.496153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.966372, 32.868317, 19.383059>,  <26.738985, 32.904251, 19.315203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.966372, 32.868317, 19.383059>,  <27.345348, 32.808426, 19.496153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966372, 32.868317, 19.383059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220888, 0.333169, 0.916628,
		0.231440, 0.930903, -0.282585,
		-0.947441, 0.149725, -0.282734,
		26.682138, 32.913235, 19.298239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157074, 33.289371, 20.005003>,  <27.345348, 32.808426, 19.496153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157074, 33.289371, 20.005003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.826437, 33.124432, 19.851789>,  <26.628056, 33.025467, 19.759861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.826437, 33.124432, 19.851789>,  <27.157074, 33.289371, 20.005003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826437, 33.124432, 19.851789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475958, 0.148962, 0.866761,
		-0.300354, 0.898764, -0.319393,
		-0.826591, -0.412352, -0.383032,
		26.578461, 33.000725, 19.736879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513325, 33.845226, 20.133938>,  <27.157074, 33.289371, 20.005003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513325, 33.845226, 20.133938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.378912, 33.473080, 20.075279>,  <26.298264, 33.249794, 20.040085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.378912, 33.473080, 20.075279>,  <26.513325, 33.845226, 20.133938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378912, 33.473080, 20.075279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575472, 0.079555, 0.813943,
		-0.745597, 0.357901, -0.562132,
		-0.336031, -0.930365, -0.146645,
		26.278103, 33.193970, 20.031286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741106, 33.906906, 20.288321>,  <26.513325, 33.845226, 20.133938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741106, 33.906906, 20.288321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.899563, 33.540932, 20.319201>,  <25.994637, 33.321346, 20.337729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.899563, 33.540932, 20.319201>,  <25.741106, 33.906906, 20.288321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899563, 33.540932, 20.319201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248398, -0.025847, 0.968313,
		-0.883951, -0.402766, -0.237508,
		0.396143, -0.914938, 0.077198,
		26.018406, 33.266449, 20.342360>
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
