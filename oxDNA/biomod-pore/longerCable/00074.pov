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
	<23.969223, 35.328110, 34.716816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254841, 35.054134, 34.774784>,  <24.426212, 34.889751, 34.809566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254841, 35.054134, 34.774784>,  <23.969223, 35.328110, 34.716816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.254841, 35.054134, 34.774784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686884, 0.645365, -0.334209,
		0.135385, 0.338184, 0.931291,
		0.714046, -0.684935, 0.144920,
		24.469055, 34.848656, 34.818260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.620960, 35.702221, 35.049404>,  <23.969223, 35.328110, 34.716816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.620960, 35.702221, 35.049404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.697914, 35.380417, 34.824638>,  <24.744087, 35.187336, 34.689777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.697914, 35.380417, 34.824638>,  <24.620960, 35.702221, 35.049404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.697914, 35.380417, 34.824638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702435, 0.512754, -0.493629,
		0.685254, -0.299742, 0.663763,
		0.192385, -0.804511, -0.561916,
		24.755630, 35.139065, 34.656063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.321537, 35.650963, 35.016327>,  <24.620960, 35.702221, 35.049404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.321537, 35.650963, 35.016327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146854, 35.503540, 34.688072>,  <25.042044, 35.415085, 34.491119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146854, 35.503540, 34.688072>,  <25.321537, 35.650963, 35.016327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146854, 35.503540, 34.688072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614693, 0.543804, -0.571341,
		0.656841, -0.753950, -0.010932,
		-0.436707, -0.368560, -0.820640,
		25.015842, 35.392971, 34.441879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.191919, 36.171349, 34.562359>,  <25.321537, 35.650963, 35.016327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.191919, 36.171349, 34.562359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588717, 36.184933, 34.611015>,  <25.826796, 36.193081, 34.640209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588717, 36.184933, 34.611015>,  <25.191919, 36.171349, 34.562359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.588717, 36.184933, 34.611015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125738, -0.175425, -0.976430,
		-0.011818, 0.983907, -0.178290,
		0.991993, 0.033957, 0.121642,
		25.886314, 36.195122, 34.647507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.428169, 36.691383, 34.127750>,  <25.191919, 36.171349, 34.562359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.428169, 36.691383, 34.127750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732983, 36.440781, 34.193222>,  <25.915871, 36.290417, 34.232506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732983, 36.440781, 34.193222>,  <25.428169, 36.691383, 34.127750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732983, 36.440781, 34.193222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055785, -0.188310, -0.980524,
		0.645129, 0.756324, -0.108549,
		0.762035, -0.626509, 0.163675,
		25.961594, 36.252827, 34.242325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030388, 36.846310, 33.646656>,  <25.428169, 36.691383, 34.127750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030388, 36.846310, 33.646656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039583, 36.460487, 33.751801>,  <26.045101, 36.228992, 33.814888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039583, 36.460487, 33.751801>,  <26.030388, 36.846310, 33.646656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039583, 36.460487, 33.751801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040541, -0.261818, -0.964265,
		0.998913, 0.032823, 0.033086,
		0.022988, -0.964559, 0.262865,
		26.046480, 36.171120, 33.830662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574207, 36.505569, 33.291698>,  <26.030388, 36.846310, 33.646656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574207, 36.505569, 33.291698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369551, 36.187325, 33.421452>,  <26.246758, 35.996376, 33.499302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369551, 36.187325, 33.421452>,  <26.574207, 36.505569, 33.291698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369551, 36.187325, 33.421452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062335, -0.410918, -0.909539,
		0.856936, -0.445136, 0.259837,
		-0.511640, -0.795613, 0.324383,
		26.216059, 35.948639, 33.518768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001001, 36.047424, 33.210102>,  <26.574207, 36.505569, 33.291698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001001, 36.047424, 33.210102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636780, 35.883171, 33.229179>,  <26.418247, 35.784618, 33.240627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636780, 35.883171, 33.229179>,  <27.001001, 36.047424, 33.210102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636780, 35.883171, 33.229179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181112, -0.499975, -0.846891,
		0.371606, -0.762501, 0.529624,
		-0.910553, -0.410631, 0.047695,
		26.363613, 35.759983, 33.243488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090244, 35.402794, 33.129986>,  <27.001001, 36.047424, 33.210102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090244, 35.402794, 33.129986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698917, 35.412762, 33.047741>,  <26.464121, 35.418743, 32.998394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698917, 35.412762, 33.047741>,  <27.090244, 35.402794, 33.129986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698917, 35.412762, 33.047741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180919, -0.380410, -0.906949,
		-0.100818, -0.924482, 0.367653,
		-0.978317, 0.024921, -0.205609,
		26.405422, 35.420238, 32.986057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944984, 34.793957, 32.978786>,  <27.090244, 35.402794, 33.129986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944984, 34.793957, 32.978786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669006, 35.029942, 32.811016>,  <26.503420, 35.171532, 32.710354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669006, 35.029942, 32.811016>,  <26.944984, 34.793957, 32.978786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669006, 35.029942, 32.811016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158997, -0.441758, -0.882933,
		-0.706184, -0.675862, 0.210986,
		-0.689945, 0.589966, -0.419422,
		26.462023, 35.206932, 32.685188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457434, 34.423916, 32.639229>,  <26.944984, 34.793957, 32.978786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457434, 34.423916, 32.639229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443129, 34.781883, 32.461311>,  <26.434546, 34.996666, 32.354561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443129, 34.781883, 32.461311>,  <26.457434, 34.423916, 32.639229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443129, 34.781883, 32.461311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015891, -0.444509, -0.895633,
		-0.999234, -0.039097, 0.001675,
		-0.035761, 0.894921, -0.444790,
		26.432400, 35.050358, 32.327873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801662, 33.839653, 32.686146>,  <26.457434, 34.423916, 32.639229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801662, 33.839653, 32.686146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060558, 33.564095, 32.555603>,  <27.215897, 33.398762, 32.477276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060558, 33.564095, 32.555603>,  <26.801662, 33.839653, 32.686146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060558, 33.564095, 32.555603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756906, -0.631570, -0.167965,
		-0.090407, 0.355735, -0.930204,
		0.647240, -0.688892, -0.326356,
		27.254730, 33.357426, 32.457695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608757, 33.784554, 31.980614>,  <26.801662, 33.839653, 32.686146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608757, 33.784554, 31.980614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.755806, 33.452911, 32.149109>,  <26.844036, 33.253925, 32.250206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.755806, 33.452911, 32.149109>,  <26.608757, 33.784554, 31.980614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755806, 33.452911, 32.149109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693931, -0.546112, -0.469278,
		0.619122, -0.119791, -0.776105,
		0.367625, -0.829103, 0.421236,
		26.866093, 33.204182, 32.275478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.576452, 34.318844, 31.390842>,  <26.608757, 33.784554, 31.980614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.576452, 34.318844, 31.390842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404779, 34.587566, 31.149355>,  <26.301777, 34.748802, 31.004461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404779, 34.587566, 31.149355>,  <26.576452, 34.318844, 31.390842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404779, 34.587566, 31.149355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371238, 0.478135, 0.795971,
		0.823399, 0.565739, 0.044195,
		-0.429180, 0.671809, -0.603720,
		26.276026, 34.789108, 30.968239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934746, 34.922997, 31.519741>,  <26.576452, 34.318844, 31.390842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934746, 34.922997, 31.519741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552452, 34.952232, 31.405737>,  <26.323076, 34.969776, 31.337334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552452, 34.952232, 31.405737>,  <26.934746, 34.922997, 31.519741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552452, 34.952232, 31.405737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227651, 0.429990, 0.873661,
		0.186410, 0.899870, -0.394317,
		-0.955733, 0.073093, -0.285010,
		26.265732, 34.974159, 31.320234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609859, 35.677139, 31.493586>,  <26.934746, 34.922997, 31.519741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609859, 35.677139, 31.493586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333593, 35.409462, 31.603249>,  <26.167833, 35.248856, 31.669046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333593, 35.409462, 31.603249>,  <26.609859, 35.677139, 31.493586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333593, 35.409462, 31.603249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273739, 0.592810, 0.757392,
		-0.669365, 0.448056, -0.592617,
		-0.690664, -0.669195, 0.274156,
		26.126394, 35.208702, 31.685495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171980, 36.129230, 31.841759>,  <26.609859, 35.677139, 31.493586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171980, 36.129230, 31.841759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134834, 35.749207, 31.960926>,  <26.112547, 35.521191, 32.032425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134834, 35.749207, 31.960926>,  <26.171980, 36.129230, 31.841759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134834, 35.749207, 31.960926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150132, 0.309149, 0.939088,
		-0.984295, 0.042482, -0.171345,
		-0.092866, -0.950064, 0.297916,
		26.106974, 35.464188, 32.050301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.456764, 35.864872, 32.116192>,  <26.171980, 36.129230, 31.841759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.456764, 35.864872, 32.116192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767694, 35.681618, 32.288647>,  <25.954252, 35.571667, 32.392120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767694, 35.681618, 32.288647>,  <25.456764, 35.864872, 32.116192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767694, 35.681618, 32.288647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276458, 0.366845, 0.888254,
		-0.565099, -0.809654, 0.158503,
		0.777325, -0.458132, 0.431139,
		26.000893, 35.544178, 32.417988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.193914, 35.725807, 32.726952>,  <25.456764, 35.864872, 32.116192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.193914, 35.725807, 32.726952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572828, 35.623848, 32.804592>,  <25.800177, 35.562672, 32.851177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572828, 35.623848, 32.804592>,  <25.193914, 35.725807, 32.726952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.572828, 35.623848, 32.804592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139332, 0.217794, 0.965998,
		-0.288509, -0.942120, 0.170797,
		0.947285, -0.254902, 0.194103,
		25.857014, 35.547379, 32.862823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248232, 35.128613, 33.153381>,  <25.193914, 35.725807, 32.726952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.248232, 35.128613, 33.153381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575068, 35.351654, 33.211952>,  <25.771170, 35.485481, 33.247093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575068, 35.351654, 33.211952>,  <25.248232, 35.128613, 33.153381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.575068, 35.351654, 33.211952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255961, 0.123292, 0.958792,
		0.516575, -0.820898, 0.243467,
		0.817089, 0.557606, 0.146428,
		25.820194, 35.518936, 33.255882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.584393, 35.289440, 33.503159>,  <25.248232, 35.128613, 33.153381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.584393, 35.289440, 33.503159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474554, 35.267593, 33.887161>,  <24.408651, 35.254486, 34.117561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474554, 35.267593, 33.887161>,  <24.584393, 35.289440, 33.503159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.474554, 35.267593, 33.887161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531412, -0.840683, 0.104178,
		0.801372, 0.538767, 0.259871,
		-0.274597, -0.054613, 0.960007,
		24.392176, 35.251209, 34.175163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.272358, 35.119267, 33.893543>,  <24.584393, 35.289440, 33.503159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.272358, 35.119267, 33.893543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554417, 35.380135, 33.782230>,  <25.723652, 35.536655, 33.715443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554417, 35.380135, 33.782230>,  <25.272358, 35.119267, 33.893543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554417, 35.380135, 33.782230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194446, 0.199559, 0.960399,
		0.681877, -0.731334, 0.013907,
		0.705149, 0.652170, -0.278279,
		25.765961, 35.575787, 33.698746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815321, 34.925991, 34.288769>,  <25.272358, 35.119267, 33.893543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815321, 34.925991, 34.288769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900089, 35.301025, 34.178482>,  <25.950951, 35.526047, 34.112309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900089, 35.301025, 34.178482>,  <25.815321, 34.925991, 34.288769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900089, 35.301025, 34.178482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430390, 0.163760, 0.887664,
		0.877413, -0.306781, -0.368824,
		0.211920, 0.937586, -0.275721,
		25.963665, 35.582302, 34.095764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491127, 35.137909, 34.290020>,  <25.815321, 34.925991, 34.288769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491127, 35.137909, 34.290020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402040, 35.486889, 34.116020>,  <26.348589, 35.696278, 34.011620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402040, 35.486889, 34.116020>,  <26.491127, 35.137909, 34.290020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.402040, 35.486889, 34.116020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003233, 0.445546, 0.895253,
		0.974878, 0.200794, -0.096410,
		-0.222717, 0.872451, -0.435002,
		26.335226, 35.748623, 33.985519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018150, 35.535957, 34.434830>,  <26.491127, 35.137909, 34.290020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018150, 35.535957, 34.434830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702110, 35.773167, 34.372776>,  <26.512487, 35.915493, 34.335545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702110, 35.773167, 34.372776>,  <27.018150, 35.535957, 34.434830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702110, 35.773167, 34.372776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048254, 0.312471, 0.948701,
		0.611077, 0.742082, -0.275498,
		-0.790099, 0.593023, -0.155135,
		26.465080, 35.951073, 34.326237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127682, 36.112606, 34.899403>,  <27.018150, 35.535957, 34.434830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127682, 36.112606, 34.899403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737782, 36.141068, 34.814743>,  <26.503841, 36.158146, 34.763947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737782, 36.141068, 34.814743>,  <27.127682, 36.112606, 34.899403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737782, 36.141068, 34.814743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199436, 0.148864, 0.968537,
		0.100424, 0.986294, -0.130914,
		-0.974751, 0.071155, -0.211652,
		26.445356, 36.162415, 34.751247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817650, 36.725201, 35.022541>,  <27.127682, 36.112606, 34.899403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817650, 36.725201, 35.022541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549490, 36.430370, 35.056690>,  <26.388594, 36.253471, 35.077179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549490, 36.430370, 35.056690>,  <26.817650, 36.725201, 35.022541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549490, 36.430370, 35.056690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137471, 0.236449, 0.961870,
		-0.729154, 0.633101, -0.259841,
		-0.670400, -0.737072, 0.085375,
		26.348370, 36.209248, 35.082302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418591, 36.969711, 35.433388>,  <26.817650, 36.725201, 35.022541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418591, 36.969711, 35.433388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314653, 36.583450, 35.434052>,  <26.252291, 36.351696, 35.434448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314653, 36.583450, 35.434052>,  <26.418591, 36.969711, 35.433388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314653, 36.583450, 35.434052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123054, 0.034814, 0.991789,
		-0.957778, 0.257506, -0.127874,
		-0.259843, -0.965649, 0.001657,
		26.236700, 36.293755, 35.434547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984327, 37.037811, 35.791378>,  <26.418591, 36.969711, 35.433388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984327, 37.037811, 35.791378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729406, 36.808037, 35.996849>,  <26.576454, 36.670170, 36.120132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729406, 36.808037, 35.996849>,  <26.984327, 37.037811, 35.791378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729406, 36.808037, 35.996849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178344, 0.538540, 0.823510,
		-0.749693, 0.616436, -0.240765,
		-0.637302, -0.574440, 0.513677,
		26.538216, 36.635704, 36.150951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409466, 37.486458, 36.259872>,  <26.984327, 37.037811, 35.791378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409466, 37.486458, 36.259872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561373, 37.129185, 36.356201>,  <26.652517, 36.914822, 36.413998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561373, 37.129185, 36.356201>,  <26.409466, 37.486458, 36.259872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561373, 37.129185, 36.356201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408695, 0.395536, 0.822509,
		-0.829907, -0.213939, 0.515252,
		0.379767, -0.893186, 0.240822,
		26.675303, 36.861229, 36.428448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758068, 38.081547, 36.601894>,  <26.409466, 37.486458, 36.259872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758068, 38.081547, 36.601894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054022, 38.267040, 36.796841>,  <27.231594, 38.378338, 36.913807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054022, 38.267040, 36.796841>,  <26.758068, 38.081547, 36.601894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054022, 38.267040, 36.796841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550306, 0.000505, 0.834963,
		0.386956, -0.885973, 0.255571,
		0.739883, 0.463736, 0.487361,
		27.275988, 38.406162, 36.943050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752371, 37.775208, 37.252800>,  <26.758068, 38.081547, 36.601894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752371, 37.775208, 37.252800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897659, 38.147778, 37.243679>,  <26.984833, 38.371319, 37.238209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897659, 38.147778, 37.243679>,  <26.752371, 37.775208, 37.252800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897659, 38.147778, 37.243679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529403, 0.226463, 0.817586,
		0.766682, -0.284895, 0.575355,
		0.363222, 0.931424, -0.022801,
		27.006626, 38.427204, 37.236839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174471, 37.894333, 37.925343>,  <26.752371, 37.775208, 37.252800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174471, 37.894333, 37.925343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048023, 38.245838, 37.782322>,  <26.972155, 38.456741, 37.696510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048023, 38.245838, 37.782322>,  <27.174471, 37.894333, 37.925343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048023, 38.245838, 37.782322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203357, 0.305356, 0.930271,
		0.926669, 0.366787, 0.082174,
		-0.316119, 0.878763, -0.357552,
		26.953188, 38.509468, 37.675056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369802, 38.359798, 38.418747>,  <27.174471, 37.894333, 37.925343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369802, 38.359798, 38.418747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.109224, 38.593727, 38.225418>,  <26.952877, 38.734085, 38.109421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.109224, 38.593727, 38.225418>,  <27.369802, 38.359798, 38.418747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.109224, 38.593727, 38.225418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298289, 0.388315, 0.871915,
		0.697599, 0.712173, -0.078518,
		-0.651444, 0.584826, -0.483322,
		26.913792, 38.769176, 38.080421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351440, 39.093380, 38.765320>,  <27.369802, 38.359798, 38.418747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351440, 39.093380, 38.765320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.005486, 39.060192, 38.567295>,  <26.797913, 39.040279, 38.448479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.005486, 39.060192, 38.567295>,  <27.351440, 39.093380, 38.765320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.005486, 39.060192, 38.567295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498916, 0.250703, 0.829597,
		0.055280, 0.964502, -0.258225,
		-0.864886, -0.082972, -0.495064,
		26.746019, 39.035301, 38.418777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920584, 39.603668, 38.919220>,  <27.351440, 39.093380, 38.765320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920584, 39.603668, 38.919220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655731, 39.335007, 38.786278>,  <26.496820, 39.173809, 38.706512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655731, 39.335007, 38.786278>,  <26.920584, 39.603668, 38.919220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655731, 39.335007, 38.786278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658560, 0.309882, 0.685763,
		-0.357607, 0.672940, -0.647509,
		-0.662130, -0.671658, -0.332356,
		26.457092, 39.133511, 38.686569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.310694, 39.795891, 38.535767>,  <26.920584, 39.603668, 38.919220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.310694, 39.795891, 38.535767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205996, 39.469738, 38.742313>,  <26.143177, 39.274044, 38.866241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205996, 39.469738, 38.742313>,  <26.310694, 39.795891, 38.535767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205996, 39.469738, 38.742313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653634, 0.543405, 0.526758,
		-0.710108, -0.199640, -0.675197,
		-0.261744, -0.815386, 0.516368,
		26.127472, 39.225121, 38.897224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.529963, 39.641064, 38.541256>,  <26.310694, 39.795891, 38.535767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.529963, 39.641064, 38.541256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.746441, 39.535095, 38.860485>,  <25.876328, 39.471516, 39.052025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.746441, 39.535095, 38.860485>,  <25.529963, 39.641064, 38.541256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.746441, 39.535095, 38.860485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548780, 0.607836, 0.573913,
		-0.637139, -0.748568, 0.183577,
		0.541197, -0.264919, 0.798075,
		25.908800, 39.455620, 39.099907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652721, 39.175247, 37.903458>,  <25.529963, 39.641064, 38.541256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652721, 39.175247, 37.903458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036818, 39.178596, 38.015079>,  <26.267275, 39.180607, 38.082050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036818, 39.178596, 38.015079>,  <25.652721, 39.175247, 37.903458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036818, 39.178596, 38.015079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274449, -0.211517, -0.938050,
		0.051166, 0.977338, -0.205406,
		0.960239, 0.008377, 0.279052,
		26.324890, 39.181110, 38.098797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098572, 39.462646, 37.352272>,  <25.652721, 39.175247, 37.903458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098572, 39.462646, 37.352272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352098, 39.252354, 37.579212>,  <26.504213, 39.126179, 37.715378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352098, 39.252354, 37.579212>,  <26.098572, 39.462646, 37.352272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352098, 39.252354, 37.579212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467664, -0.323776, -0.822471,
		0.616091, 0.786625, 0.040650,
		0.633815, -0.525728, 0.567352,
		26.542244, 39.094635, 37.749416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750174, 39.664742, 37.109959>,  <26.098572, 39.462646, 37.352272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750174, 39.664742, 37.109959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801682, 39.310387, 37.288231>,  <26.832586, 39.097775, 37.395195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801682, 39.310387, 37.288231>,  <26.750174, 39.664742, 37.109959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801682, 39.310387, 37.288231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660835, -0.258435, -0.704633,
		0.739402, 0.385253, 0.552145,
		0.128769, -0.885885, 0.445676,
		26.840313, 39.044621, 37.421932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472116, 39.607559, 37.179527>,  <26.750174, 39.664742, 37.109959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472116, 39.607559, 37.179527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304615, 39.244884, 37.199780>,  <27.204113, 39.027279, 37.211929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304615, 39.244884, 37.199780>,  <27.472116, 39.607559, 37.179527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304615, 39.244884, 37.199780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566362, -0.304341, -0.765905,
		0.709844, -0.292053, 0.640957,
		-0.418755, -0.906687, 0.050627,
		27.178989, 38.972878, 37.214966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024973, 39.239227, 37.365974>,  <27.472116, 39.607559, 37.179527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024973, 39.239227, 37.365974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732838, 39.028336, 37.192245>,  <27.557556, 38.901802, 37.088009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732838, 39.028336, 37.192245>,  <28.024973, 39.239227, 37.365974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732838, 39.028336, 37.192245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624377, -0.257357, -0.737510,
		0.277059, -0.809813, 0.517146,
		-0.730336, -0.527228, -0.434326,
		27.513737, 38.870167, 37.061947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423008, 38.611305, 37.241936>,  <28.024973, 39.239227, 37.365974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423008, 38.611305, 37.241936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115030, 38.630543, 36.987419>,  <27.930244, 38.642086, 36.834709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115030, 38.630543, 36.987419>,  <28.423008, 38.611305, 37.241936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115030, 38.630543, 36.987419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573772, -0.384169, -0.723325,
		-0.279234, -0.922009, 0.268192,
		-0.769944, 0.048096, -0.636297,
		27.884047, 38.644970, 36.796532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106953, 38.737492, 37.157780>,  <28.423008, 38.611305, 37.241936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106953, 38.737492, 37.157780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268724, 38.452961, 37.387718>,  <29.365788, 38.282242, 37.525681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268724, 38.452961, 37.387718>,  <29.106953, 38.737492, 37.157780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268724, 38.452961, 37.387718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506090, -0.349473, -0.788506,
		0.761780, 0.609820, 0.218659,
		0.404431, -0.711329, 0.574845,
		29.390055, 38.239563, 37.560173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878563, 38.912338, 37.023552>,  <29.106953, 38.737492, 37.157780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878563, 38.912338, 37.023552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750433, 38.544022, 37.112579>,  <29.673555, 38.323032, 37.165997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750433, 38.544022, 37.112579>,  <29.878563, 38.912338, 37.023552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750433, 38.544022, 37.112579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522828, -0.367768, -0.769024,
		0.789963, -0.129973, 0.599221,
		-0.320327, -0.920790, 0.222570,
		29.654335, 38.267784, 37.179352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375652, 38.514359, 37.193329>,  <29.878563, 38.912338, 37.023552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375652, 38.514359, 37.193329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.084707, 38.320553, 36.998932>,  <29.910141, 38.204269, 36.882294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.084707, 38.320553, 36.998932>,  <30.375652, 38.514359, 37.193329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084707, 38.320553, 36.998932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583809, -0.064641, -0.809314,
		0.360713, -0.872389, 0.329884,
		-0.727361, -0.484519, -0.485992,
		29.866499, 38.175198, 36.853134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499487, 38.380920, 36.514694>,  <30.375652, 38.514359, 37.193329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499487, 38.380920, 36.514694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833830, 38.168201, 36.460228>,  <31.034435, 38.040569, 36.427547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833830, 38.168201, 36.460228>,  <30.499487, 38.380920, 36.514694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833830, 38.168201, 36.460228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112414, -0.076967, 0.990676,
		-0.537316, -0.843369, -0.004552,
		0.835856, -0.531794, -0.136163,
		31.084587, 38.008663, 36.419380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229296, 37.811768, 36.803623>,  <30.499487, 38.380920, 36.514694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229296, 37.811768, 36.803623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625263, 37.865852, 36.820473>,  <30.862844, 37.898304, 36.830582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625263, 37.865852, 36.820473>,  <30.229296, 37.811768, 36.803623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625263, 37.865852, 36.820473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015710, -0.400477, 0.916172,
		0.140747, -0.906276, -0.398565,
		0.989921, 0.135210, 0.042128,
		30.922239, 37.906414, 36.833111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432362, 37.441330, 36.275120>,  <30.229296, 37.811768, 36.803623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432362, 37.441330, 36.275120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806402, 37.390316, 36.142864>,  <31.030827, 37.359707, 36.063511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806402, 37.390316, 36.142864>,  <30.432362, 37.441330, 36.275120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806402, 37.390316, 36.142864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016803, -0.947910, 0.318095,
		-0.353987, -0.291894, -0.888533,
		0.935099, -0.127531, -0.330643,
		31.086931, 37.352058, 36.043671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554922, 36.865761, 35.750031>,  <30.432362, 37.441330, 36.275120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554922, 36.865761, 35.750031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897219, 36.919724, 35.949833>,  <31.102596, 36.952103, 36.069714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897219, 36.919724, 35.949833>,  <30.554922, 36.865761, 35.750031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897219, 36.919724, 35.949833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040719, -0.979974, 0.194916,
		0.515799, -0.146459, -0.844098,
		0.855742, 0.134908, 0.499506,
		31.153942, 36.960197, 36.099686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964117, 36.327370, 35.549606>,  <30.554922, 36.865761, 35.750031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964117, 36.327370, 35.549606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070599, 36.444138, 35.917068>,  <31.134487, 36.514198, 36.137547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070599, 36.444138, 35.917068>,  <30.964117, 36.327370, 35.549606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070599, 36.444138, 35.917068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190389, -0.950188, 0.246769,
		0.944928, 0.109211, -0.308520,
		0.266202, 0.291918, 0.918651,
		31.150459, 36.531712, 36.192665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548595, 36.793694, 35.408592>,  <30.964117, 36.327370, 35.549606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548595, 36.793694, 35.408592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823172, 36.766987, 35.698238>,  <31.987917, 36.750965, 35.872025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823172, 36.766987, 35.698238>,  <31.548595, 36.793694, 35.408592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823172, 36.766987, 35.698238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624014, -0.565355, 0.539425,
		0.373367, -0.822141, -0.429745,
		0.686442, -0.066763, 0.724113,
		32.029106, 36.746960, 35.915474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768959, 36.069805, 35.540665>,  <31.548595, 36.793694, 35.408592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768959, 36.069805, 35.540665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809324, 36.280640, 35.878185>,  <31.833544, 36.407139, 36.080696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809324, 36.280640, 35.878185>,  <31.768959, 36.069805, 35.540665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809324, 36.280640, 35.878185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427671, -0.742790, 0.515132,
		0.898284, -0.412853, 0.150461,
		0.100913, 0.527082, 0.843801,
		31.839598, 36.438763, 36.131325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248379, 35.759132, 35.923466>,  <31.768959, 36.069805, 35.540665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248379, 35.759132, 35.923466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016033, 35.956112, 36.182724>,  <31.876627, 36.074299, 36.338280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016033, 35.956112, 36.182724>,  <32.248379, 35.759132, 35.923466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016033, 35.956112, 36.182724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013798, -0.802092, 0.597042,
		0.813887, 0.337854, 0.472698,
		-0.580860, 0.492447, 0.648150,
		31.841776, 36.103848, 36.377171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590721, 35.725605, 36.568604>,  <32.248379, 35.759132, 35.923466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590721, 35.725605, 36.568604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208138, 35.796406, 36.661438>,  <31.978588, 35.838886, 36.717140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208138, 35.796406, 36.661438>,  <32.590721, 35.725605, 36.568604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208138, 35.796406, 36.661438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036847, -0.862012, 0.505547,
		0.289545, 0.474981, 0.830998,
		-0.956455, 0.176998, 0.232090,
		31.921202, 35.849506, 36.731064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472569, 35.616840, 37.345291>,  <32.590721, 35.725605, 36.568604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472569, 35.616840, 37.345291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129314, 35.571712, 37.144943>,  <31.923361, 35.544636, 37.024734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129314, 35.571712, 37.144943>,  <32.472569, 35.616840, 37.345291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129314, 35.571712, 37.144943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214411, -0.807668, 0.549273,
		-0.466509, 0.578744, 0.668899,
		-0.858136, -0.112822, -0.500873,
		31.871874, 35.537865, 36.994682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878389, 35.789665, 37.703529>,  <32.472569, 35.616840, 37.345291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878389, 35.789665, 37.703529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784723, 35.511520, 37.431751>,  <31.728523, 35.344635, 37.268684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784723, 35.511520, 37.431751>,  <31.878389, 35.789665, 37.703529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784723, 35.511520, 37.431751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417717, -0.559112, 0.716175,
		-0.877883, 0.451518, -0.159539,
		-0.234166, -0.695360, -0.679442,
		31.714474, 35.302914, 37.227921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235180, 35.770901, 37.741829>,  <31.878389, 35.789665, 37.703529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235180, 35.770901, 37.741829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374840, 35.418266, 37.614769>,  <31.458635, 35.206684, 37.538532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374840, 35.418266, 37.614769>,  <31.235180, 35.770901, 37.741829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374840, 35.418266, 37.614769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563040, -0.468333, 0.680919,
		-0.749054, -0.058894, -0.659886,
		0.349149, -0.881587, -0.317647,
		31.479584, 35.153790, 37.519474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637985, 35.373867, 37.590675>,  <31.235180, 35.770901, 37.741829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637985, 35.373867, 37.590675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952145, 35.142601, 37.679108>,  <31.140640, 35.003841, 37.732166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952145, 35.142601, 37.679108>,  <30.637985, 35.373867, 37.590675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952145, 35.142601, 37.679108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516146, -0.414555, 0.749492,
		-0.341678, -0.702760, -0.624007,
		0.785398, -0.578163, 0.221083,
		31.187763, 34.969151, 37.745434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715420, 36.047424, 37.165150>,  <30.637985, 35.373867, 37.590675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715420, 36.047424, 37.165150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091724, 35.999294, 37.038345>,  <31.317507, 35.970417, 36.962265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091724, 35.999294, 37.038345>,  <30.715420, 36.047424, 37.165150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091724, 35.999294, 37.038345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091525, 0.810103, -0.579099,
		0.326489, 0.573807, 0.751100,
		0.940760, -0.120325, -0.317007,
		31.373953, 35.963196, 36.943245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089214, 36.664757, 37.200932>,  <30.715420, 36.047424, 37.165150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089214, 36.664757, 37.200932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304642, 36.470573, 36.925461>,  <31.433899, 36.354065, 36.760178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304642, 36.470573, 36.925461>,  <31.089214, 36.664757, 37.200932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304642, 36.470573, 36.925461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116439, 0.852380, -0.509794,
		0.834498, 0.194370, 0.515591,
		0.538568, -0.485457, -0.688677,
		31.466211, 36.324936, 36.718857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805218, 36.979763, 37.110600>,  <31.089214, 36.664757, 37.200932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805218, 36.979763, 37.110600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681278, 36.800518, 36.775173>,  <31.606915, 36.692970, 36.573917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681278, 36.800518, 36.775173>,  <31.805218, 36.979763, 37.110600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681278, 36.800518, 36.775173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190836, 0.834708, -0.516570,
		0.931438, -0.320085, -0.173114,
		-0.309847, -0.448117, -0.838563,
		31.588324, 36.666084, 36.523605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350906, 36.885059, 36.547634>,  <31.805218, 36.979763, 37.110600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350906, 36.885059, 36.547634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983572, 36.916527, 36.392471>,  <31.763172, 36.935406, 36.299374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983572, 36.916527, 36.392471>,  <32.350906, 36.885059, 36.547634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983572, 36.916527, 36.392471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268573, 0.843755, -0.464699,
		0.290744, -0.530931, -0.795978,
		-0.918334, 0.078670, -0.387911,
		31.708073, 36.940128, 36.276096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475510, 37.162148, 35.860352>,  <32.350906, 36.885059, 36.547634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475510, 37.162148, 35.860352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084652, 37.196972, 35.937916>,  <31.850136, 37.217869, 35.984455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084652, 37.196972, 35.937916>,  <32.475510, 37.162148, 35.860352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084652, 37.196972, 35.937916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024610, 0.859791, -0.510052,
		-0.211128, -0.503169, -0.838001,
		-0.977149, 0.087063, 0.193909,
		31.791508, 37.223091, 35.996090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110802, 37.329124, 35.190418>,  <32.475510, 37.162148, 35.860352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110802, 37.329124, 35.190418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882401, 37.483452, 35.480274>,  <31.745361, 37.576050, 35.654186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882401, 37.483452, 35.480274>,  <32.110802, 37.329124, 35.190418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882401, 37.483452, 35.480274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028880, 0.872696, -0.487409,
		-0.820443, -0.299237, -0.487166,
		-0.570998, 0.385822, 0.724640,
		31.711102, 37.599197, 35.697666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473103, 37.661285, 34.946693>,  <32.110802, 37.329124, 35.190418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473103, 37.661285, 34.946693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605927, 37.827515, 35.285404>,  <31.685621, 37.927254, 35.488632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605927, 37.827515, 35.285404>,  <31.473103, 37.661285, 34.946693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605927, 37.827515, 35.285404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015234, 0.899964, -0.435699,
		-0.943136, 0.131777, 0.305171,
		0.332058, 0.415573, 0.846780,
		31.705544, 37.952187, 35.539440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067665, 38.255833, 35.005604>,  <31.473103, 37.661285, 34.946693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067665, 38.255833, 35.005604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335239, 38.447643, 34.778419>,  <32.495785, 38.562729, 34.642109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335239, 38.447643, 34.778419>,  <32.067665, 38.255833, 35.005604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335239, 38.447643, 34.778419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235493, -0.588015, -0.773810,
		-0.705034, 0.651378, -0.280417,
		0.668932, 0.479526, -0.567965,
		32.535919, 38.591499, 34.608028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963814, 37.909081, 34.385246>,  <32.067665, 38.255833, 35.005604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963814, 37.909081, 34.385246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262032, 38.159195, 34.293011>,  <32.440964, 38.309265, 34.237667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262032, 38.159195, 34.293011>,  <31.963814, 37.909081, 34.385246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262032, 38.159195, 34.293011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034748, -0.381999, -0.923509,
		-0.665548, 0.680506, -0.306525,
		0.745546, 0.625290, -0.230593,
		32.485695, 38.346783, 34.223831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719810, 38.411385, 33.798409>,  <31.963814, 37.909081, 34.385246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719810, 38.411385, 33.798409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118130, 38.375500, 33.791073>,  <32.357121, 38.353970, 33.786671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118130, 38.375500, 33.791073>,  <31.719810, 38.411385, 33.798409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118130, 38.375500, 33.791073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042420, -0.274467, -0.960660,
		0.081147, 0.957403, -0.277119,
		0.995799, -0.089711, -0.018341,
		32.416870, 38.348587, 33.785572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860792, 38.512337, 33.163589>,  <31.719810, 38.411385, 33.798409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860792, 38.512337, 33.163589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197876, 38.337688, 33.289577>,  <32.400127, 38.232899, 33.365170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197876, 38.337688, 33.289577>,  <31.860792, 38.512337, 33.163589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197876, 38.337688, 33.289577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118482, -0.420287, -0.899623,
		0.525171, 0.795438, -0.302448,
		0.842709, -0.436621, 0.314967,
		32.450687, 38.206703, 33.384068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298519, 38.717152, 32.636055>,  <31.860792, 38.512337, 33.163589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298519, 38.717152, 32.636055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427372, 38.387680, 32.822723>,  <32.504684, 38.189995, 32.934723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427372, 38.387680, 32.822723>,  <32.298519, 38.717152, 32.636055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427372, 38.387680, 32.822723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311118, -0.373462, -0.873918,
		0.894114, 0.426704, 0.135960,
		0.322128, -0.823681, 0.466672,
		32.524010, 38.140575, 32.962727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977428, 38.471340, 32.305088>,  <32.298519, 38.717152, 32.636055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977428, 38.471340, 32.305088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857960, 38.153618, 32.516701>,  <32.786278, 37.962986, 32.643669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857960, 38.153618, 32.516701>,  <32.977428, 38.471340, 32.305088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857960, 38.153618, 32.516701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118303, -0.580871, -0.805353,
		0.946994, -0.177953, 0.267460,
		-0.298675, -0.794306, 0.529029,
		32.768356, 37.915325, 32.675411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504810, 37.967510, 32.102997>,  <32.977428, 38.471340, 32.305088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504810, 37.967510, 32.102997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197578, 37.775906, 32.272987>,  <33.013241, 37.660942, 32.374981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197578, 37.775906, 32.272987>,  <33.504810, 37.967510, 32.102997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197578, 37.775906, 32.272987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014523, -0.676517, -0.736284,
		0.640190, -0.559352, 0.526575,
		-0.768079, -0.479009, 0.424976,
		32.967155, 37.632202, 32.400478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717152, 37.288242, 32.170475>,  <33.504810, 37.967510, 32.102997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717152, 37.288242, 32.170475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317589, 37.284687, 32.188816>,  <33.077850, 37.282555, 32.199821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317589, 37.284687, 32.188816>,  <33.717152, 37.288242, 32.170475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317589, 37.284687, 32.188816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022912, -0.762198, -0.646939,
		0.040697, -0.647283, 0.761162,
		-0.998909, -0.008889, 0.045850,
		33.017918, 37.282021, 32.202572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547943, 36.533710, 32.138256>,  <33.717152, 37.288242, 32.170475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547943, 36.533710, 32.138256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218067, 36.725822, 32.018776>,  <33.020142, 36.841087, 31.947086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218067, 36.725822, 32.018776>,  <33.547943, 36.533710, 32.138256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218067, 36.725822, 32.018776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095731, -0.639042, -0.763192,
		-0.557426, -0.600800, 0.572988,
		-0.824689, 0.480276, -0.298703,
		32.970661, 36.869907, 31.929165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017044, 36.027496, 32.104645>,  <33.547943, 36.533710, 32.138256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017044, 36.027496, 32.104645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902405, 36.308937, 31.844551>,  <32.833622, 36.477802, 31.688494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902405, 36.308937, 31.844551>,  <33.017044, 36.027496, 32.104645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902405, 36.308937, 31.844551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080055, -0.693923, -0.715585,
		-0.954699, -0.153033, 0.255206,
		-0.286601, 0.703599, -0.650236,
		32.816425, 36.520016, 31.649481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406559, 35.761425, 31.732244>,  <33.017044, 36.027496, 32.104645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406559, 35.761425, 31.732244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553623, 36.042892, 31.489040>,  <32.641861, 36.211773, 31.343119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553623, 36.042892, 31.489040>,  <32.406559, 35.761425, 31.732244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553623, 36.042892, 31.489040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154128, -0.598653, -0.786040,
		-0.917099, 0.382706, -0.111646,
		0.367659, 0.703669, -0.608010,
		32.663921, 36.253994, 31.306637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298779, 35.451847, 31.042013>,  <32.406559, 35.761425, 31.732244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298779, 35.451847, 31.042013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493484, 35.785812, 30.939270>,  <32.610310, 35.986191, 30.877625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493484, 35.785812, 30.939270>,  <32.298779, 35.451847, 31.042013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493484, 35.785812, 30.939270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198136, -0.391909, -0.898415,
		-0.850765, 0.386425, -0.356195,
		0.486765, 0.834915, -0.256857,
		32.639515, 36.036285, 30.862213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070297, 35.530067, 30.403625>,  <32.298779, 35.451847, 31.042013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070297, 35.530067, 30.403625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418888, 35.723614, 30.435619>,  <32.628044, 35.839741, 30.454815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418888, 35.723614, 30.435619>,  <32.070297, 35.530067, 30.403625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418888, 35.723614, 30.435619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395003, -0.595849, -0.699240,
		-0.290677, 0.640969, -0.710398,
		0.871482, 0.483862, 0.079985,
		32.680332, 35.868771, 30.459614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326839, 35.988472, 29.788910>,  <32.070297, 35.530067, 30.403625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326839, 35.988472, 29.788910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669651, 35.912197, 29.980381>,  <32.875340, 35.866432, 30.095264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669651, 35.912197, 29.980381>,  <32.326839, 35.988472, 29.788910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669651, 35.912197, 29.980381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352252, -0.461174, -0.814393,
		0.376052, 0.866577, -0.328070,
		0.857032, -0.190691, 0.478679,
		32.926762, 35.854988, 30.123985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793037, 36.013916, 29.209133>,  <32.326839, 35.988472, 29.788910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793037, 36.013916, 29.209133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978760, 35.829372, 29.511541>,  <33.090195, 35.718647, 29.692986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978760, 35.829372, 29.511541>,  <32.793037, 36.013916, 29.209133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978760, 35.829372, 29.511541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512429, -0.556290, -0.654185,
		0.722381, 0.691149, -0.021876,
		0.464308, -0.461361, 0.756018,
		33.118053, 35.690964, 29.738346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503708, 36.051643, 29.104477>,  <32.793037, 36.013916, 29.209133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503708, 36.051643, 29.104477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417488, 35.723438, 29.316248>,  <33.365757, 35.526516, 29.443312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417488, 35.723438, 29.316248>,  <33.503708, 36.051643, 29.104477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417488, 35.723438, 29.316248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529095, -0.553828, -0.642910,
		0.820729, 0.141539, 0.553508,
		-0.215551, -0.820513, 0.529430,
		33.352821, 35.477283, 29.475077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022335, 35.630043, 29.072203>,  <33.503708, 36.051643, 29.104477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022335, 35.630043, 29.072203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795628, 35.336475, 29.221941>,  <33.659603, 35.160336, 29.311783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795628, 35.336475, 29.221941>,  <34.022335, 35.630043, 29.072203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795628, 35.336475, 29.221941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309874, -0.610903, -0.728543,
		0.763379, -0.296917, 0.573665,
		-0.566771, -0.733919, 0.374344,
		33.625595, 35.116299, 29.334244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410172, 34.917610, 29.068729>,  <34.022335, 35.630043, 29.072203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410172, 34.917610, 29.068729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016293, 34.848015, 29.072706>,  <33.779964, 34.806255, 29.075092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016293, 34.848015, 29.072706>,  <34.410172, 34.917610, 29.068729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016293, 34.848015, 29.072706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123987, -0.739507, -0.661632,
		0.122469, -0.650274, 0.749763,
		-0.984697, -0.173991, 0.009941,
		33.720882, 34.795818, 29.075689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357201, 34.184010, 29.015013>,  <34.410172, 34.917610, 29.068729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357201, 34.184010, 29.015013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994141, 34.316006, 28.911257>,  <33.776306, 34.395203, 28.849003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994141, 34.316006, 28.911257>,  <34.357201, 34.184010, 29.015013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994141, 34.316006, 28.911257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026019, -0.661034, -0.749905,
		-0.418927, -0.673900, 0.608572,
		-0.907647, 0.329990, -0.259391,
		33.721848, 34.415001, 28.833439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067596, 33.627117, 28.772856>,  <34.357201, 34.184010, 29.015013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067596, 33.627117, 28.772856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833008, 33.907425, 28.610388>,  <33.692257, 34.075611, 28.512907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833008, 33.907425, 28.610388>,  <34.067596, 33.627117, 28.772856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833008, 33.907425, 28.610388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044504, -0.472825, -0.880032,
		-0.808749, -0.534187, 0.246109,
		-0.586468, 0.700772, -0.406170,
		33.657066, 34.117657, 28.488537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409008, 33.359844, 28.509701>,  <34.067596, 33.627117, 28.772856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409008, 33.359844, 28.509701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469521, 33.695694, 28.301027>,  <33.505829, 33.897202, 28.175823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469521, 33.695694, 28.301027>,  <33.409008, 33.359844, 28.509701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469521, 33.695694, 28.301027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064521, -0.535018, -0.842373,
		-0.986383, 0.093774, -0.135110,
		0.151279, 0.839620, -0.521682,
		33.514904, 33.947578, 28.144522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871799, 33.312790, 27.944487>,  <33.409008, 33.359844, 28.509701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871799, 33.312790, 27.944487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146721, 33.574081, 27.817421>,  <33.311672, 33.730858, 27.741182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146721, 33.574081, 27.817421>,  <32.871799, 33.312790, 27.944487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146721, 33.574081, 27.817421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041162, -0.471649, -0.880825,
		-0.725206, 0.592316, -0.351052,
		0.687300, 0.653230, -0.317662,
		33.352909, 33.770050, 27.722122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698128, 33.426788, 27.171391>,  <32.871799, 33.312790, 27.944487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698128, 33.426788, 27.171391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079391, 33.545052, 27.196934>,  <33.308151, 33.616009, 27.212259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079391, 33.545052, 27.196934>,  <32.698128, 33.426788, 27.171391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079391, 33.545052, 27.196934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095982, -0.095441, -0.990797,
		-0.286839, 0.950515, -0.119348,
		0.953158, 0.295655, 0.063856,
		33.365337, 33.633747, 27.216091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824524, 33.815899, 26.617781>,  <32.698128, 33.426788, 27.171391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824524, 33.815899, 26.617781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199829, 33.713169, 26.710480>,  <33.425011, 33.651531, 26.766098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199829, 33.713169, 26.710480>,  <32.824524, 33.815899, 26.617781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199829, 33.713169, 26.710480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161855, -0.266144, -0.950247,
		0.305727, 0.929089, -0.208144,
		0.938261, -0.256827, 0.231746,
		33.481308, 33.636120, 26.780003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233803, 34.142109, 26.147560>,  <32.824524, 33.815899, 26.617781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233803, 34.142109, 26.147560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413319, 33.818695, 26.299801>,  <33.521027, 33.624645, 26.391146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413319, 33.818695, 26.299801>,  <33.233803, 34.142109, 26.147560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413319, 33.818695, 26.299801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047098, -0.403909, -0.913586,
		0.892396, 0.427933, -0.143189,
		0.448789, -0.808536, 0.380602,
		33.547955, 33.576134, 26.413980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751888, 33.879833, 25.613626>,  <33.233803, 34.142109, 26.147560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751888, 33.879833, 25.613626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731972, 33.571690, 25.867893>,  <33.720024, 33.386803, 26.020454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731972, 33.571690, 25.867893>,  <33.751888, 33.879833, 25.613626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731972, 33.571690, 25.867893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056384, -0.637611, -0.768292,
		0.997167, -0.002410, 0.075181,
		-0.049788, -0.770354, 0.635669,
		33.717037, 33.340584, 26.058594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288960, 33.442329, 25.392601>,  <33.751888, 33.879833, 25.613626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288960, 33.442329, 25.392601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043045, 33.214333, 25.610643>,  <33.895496, 33.077534, 25.741468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043045, 33.214333, 25.610643>,  <34.288960, 33.442329, 25.392601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043045, 33.214333, 25.610643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053552, -0.719727, -0.692189,
		0.786871, -0.396359, 0.473005,
		-0.614790, -0.569994, 0.545106,
		33.858608, 33.043335, 25.774176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559456, 32.855389, 25.508480>,  <34.288960, 33.442329, 25.392601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559456, 32.855389, 25.508480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174805, 32.762295, 25.566584>,  <33.944012, 32.706440, 25.601446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174805, 32.762295, 25.566584>,  <34.559456, 32.855389, 25.508480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174805, 32.762295, 25.566584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027876, -0.609623, -0.792202,
		0.272928, -0.757756, 0.592719,
		-0.961631, -0.232736, 0.145260,
		33.886314, 32.692474, 25.610161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592590, 32.167992, 25.557934>,  <34.559456, 32.855389, 25.508480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592590, 32.167992, 25.557934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237198, 32.301071, 25.431496>,  <34.023964, 32.380920, 25.355633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237198, 32.301071, 25.431496>,  <34.592590, 32.167992, 25.557934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237198, 32.301071, 25.431496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032875, -0.640872, -0.766943,
		-0.457742, -0.691804, 0.558463,
		-0.888477, 0.332702, -0.316097,
		33.970654, 32.400883, 25.336666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176796, 31.581924, 25.571251>,  <34.592590, 32.167992, 25.557934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176796, 31.581924, 25.571251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958389, 31.830379, 25.346376>,  <33.827347, 31.979452, 25.211451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958389, 31.830379, 25.346376>,  <34.176796, 31.581924, 25.571251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958389, 31.830379, 25.346376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019256, -0.680177, -0.732794,
		-0.837552, -0.389294, 0.383350,
		-0.546018, 0.621136, -0.562188,
		33.794582, 32.016720, 25.177719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614487, 31.259607, 25.427889>,  <34.176796, 31.581924, 25.571251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614487, 31.259607, 25.427889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645840, 31.540369, 25.144711>,  <33.664650, 31.708826, 24.974804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645840, 31.540369, 25.144711>,  <33.614487, 31.259607, 25.427889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645840, 31.540369, 25.144711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052128, -0.712046, -0.700195,
		-0.995560, 0.017979, -0.092401,
		0.078383, 0.701902, -0.707947,
		33.669353, 31.750940, 24.932327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264622, 31.052423, 24.868048>,  <33.614487, 31.259607, 25.427889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264622, 31.052423, 24.868048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487000, 31.346636, 24.713173>,  <33.620426, 31.523163, 24.620247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487000, 31.346636, 24.713173>,  <33.264622, 31.052423, 24.868048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487000, 31.346636, 24.713173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299318, -0.611710, -0.732270,
		-0.775455, 0.291211, -0.560237,
		0.555948, 0.735532, -0.387189,
		33.653786, 31.567295, 24.597015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141518, 30.934725, 24.232328>,  <33.264622, 31.052423, 24.868048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141518, 30.934725, 24.232328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452919, 31.182417, 24.191351>,  <33.639759, 31.331032, 24.166765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452919, 31.182417, 24.191351>,  <33.141518, 30.934725, 24.232328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452919, 31.182417, 24.191351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292376, -0.502212, -0.813818,
		-0.555388, 0.603604, -0.572019,
		0.778499, 0.619229, -0.102443,
		33.686470, 31.368185, 24.160618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143673, 31.117908, 23.521702>,  <33.141518, 30.934725, 24.232328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143673, 31.117908, 23.521702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505684, 31.181580, 23.679480>,  <33.722889, 31.219782, 23.774145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505684, 31.181580, 23.679480>,  <33.143673, 31.117908, 23.521702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505684, 31.181580, 23.679480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419077, -0.492373, -0.762852,
		0.072784, 0.855705, -0.512319,
		0.905029, 0.159178, 0.394443,
		33.777191, 31.229334, 23.797813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490669, 31.345303, 22.964645>,  <33.143673, 31.117908, 23.521702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490669, 31.345303, 22.964645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766823, 31.210051, 23.220472>,  <33.932514, 31.128901, 23.373968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766823, 31.210051, 23.220472>,  <33.490669, 31.345303, 22.964645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766823, 31.210051, 23.220472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586608, -0.255757, -0.768427,
		0.423401, 0.905681, 0.021779,
		0.690379, -0.338128, 0.639567,
		33.973938, 31.108612, 23.412342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063046, 31.598585, 22.755592>,  <33.490669, 31.345303, 22.964645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063046, 31.598585, 22.755592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204037, 31.295147, 22.974787>,  <34.288631, 31.113083, 23.106304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204037, 31.295147, 22.974787>,  <34.063046, 31.598585, 22.755592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204037, 31.295147, 22.974787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689868, -0.185036, -0.699889,
		0.632331, 0.624734, 0.458110,
		0.352478, -0.758597, 0.547988,
		34.309780, 31.067568, 23.139183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712822, 31.617542, 22.577986>,  <34.063046, 31.598585, 22.755592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712822, 31.617542, 22.577986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608135, 31.261457, 22.727131>,  <34.545322, 31.047806, 22.816618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608135, 31.261457, 22.727131>,  <34.712822, 31.617542, 22.577986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608135, 31.261457, 22.727131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569071, -0.454363, -0.685355,
		0.779527, 0.032817, 0.625508,
		-0.261717, -0.890212, 0.372864,
		34.529621, 30.994394, 22.838989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299290, 31.258526, 22.412323>,  <34.712822, 31.617542, 22.577986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299290, 31.258526, 22.412323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033504, 30.968021, 22.482790>,  <34.874035, 30.793718, 22.525070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033504, 30.968021, 22.482790>,  <35.299290, 31.258526, 22.412323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033504, 30.968021, 22.482790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515300, -0.615981, -0.595847,
		0.541255, -0.305139, 0.783539,
		-0.664461, -0.726262, 0.176165,
		34.834167, 30.750143, 22.535639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797729, 30.683102, 22.480625>,  <35.299290, 31.258526, 22.412323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797729, 30.683102, 22.480625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429558, 30.535725, 22.428377>,  <35.208656, 30.447298, 22.397028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429558, 30.535725, 22.428377>,  <35.797729, 30.683102, 22.480625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429558, 30.535725, 22.428377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384216, -0.791076, -0.476001,
		0.072050, -0.488310, 0.869691,
		-0.920428, -0.368445, -0.130620,
		35.153431, 30.425192, 22.389191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777557, 29.986956, 22.755928>,  <35.797729, 30.683102, 22.480625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777557, 29.986956, 22.755928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467125, 30.004654, 22.504295>,  <35.280865, 30.015272, 22.353315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467125, 30.004654, 22.504295>,  <35.777557, 29.986956, 22.755928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467125, 30.004654, 22.504295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286512, -0.863905, -0.414220,
		-0.561793, -0.501707, 0.657783,
		-0.776080, 0.044244, -0.629081,
		35.234303, 30.017927, 22.315571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468147, 29.300339, 22.761036>,  <35.777557, 29.986956, 22.755928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468147, 29.300339, 22.761036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334286, 29.470991, 22.424942>,  <35.253971, 29.573383, 22.223286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334286, 29.470991, 22.424942>,  <35.468147, 29.300339, 22.761036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334286, 29.470991, 22.424942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397800, -0.744346, -0.536380,
		-0.854262, -0.513745, 0.079383,
		-0.334651, 0.426631, -0.840235,
		35.233891, 29.598980, 22.172871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061718, 28.844061, 22.458199>,  <35.468147, 29.300339, 22.761036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061718, 28.844061, 22.458199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157959, 29.099794, 22.166073>,  <35.215702, 29.253235, 21.990797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157959, 29.099794, 22.166073>,  <35.061718, 28.844061, 22.458199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157959, 29.099794, 22.166073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222839, -0.768705, -0.599529,
		-0.944697, -0.018495, -0.327422,
		0.240603, 0.639336, -0.730315,
		35.230141, 29.291595, 21.946978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112736, 28.365191, 21.894369>,  <35.061718, 28.844061, 22.458199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112736, 28.365191, 21.894369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247036, 28.704765, 21.731113>,  <35.327614, 28.908510, 21.633160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247036, 28.704765, 21.731113>,  <35.112736, 28.365191, 21.894369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247036, 28.704765, 21.731113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482509, -0.527128, -0.699515,
		-0.808987, 0.037930, -0.586602,
		0.335747, 0.848939, -0.408138,
		35.347759, 28.959448, 21.608671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215813, 28.345335, 21.130966>,  <35.112736, 28.365191, 21.894369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215813, 28.345335, 21.130966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470390, 28.622490, 21.266525>,  <35.623135, 28.788782, 21.347860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470390, 28.622490, 21.266525>,  <35.215813, 28.345335, 21.130966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470390, 28.622490, 21.266525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662380, -0.265838, -0.700416,
		-0.395216, 0.670253, -0.628144,
		0.636441, 0.692886, 0.338899,
		35.661324, 28.830357, 21.368195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403015, 28.662006, 20.545073>,  <35.215813, 28.345335, 21.130966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403015, 28.662006, 20.545073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684235, 28.694775, 20.827635>,  <35.852966, 28.714436, 20.997171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684235, 28.694775, 20.827635>,  <35.403015, 28.662006, 20.545073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684235, 28.694775, 20.827635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696369, -0.280700, -0.660514,
		0.144178, 0.956293, -0.254393,
		0.703053, 0.081920, 0.706403,
		35.895149, 28.719351, 21.039557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874306, 28.874962, 20.101236>,  <35.403015, 28.662006, 20.545073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874306, 28.874962, 20.101236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092342, 29.104828, 19.857059>,  <36.223164, 29.242746, 19.710554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092342, 29.104828, 19.857059>,  <35.874306, 28.874962, 20.101236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092342, 29.104828, 19.857059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045961, -0.747510, -0.662658,
		-0.837116, 0.333153, -0.433873,
		0.545091, 0.574663, -0.610441,
		36.255871, 29.277227, 19.673927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588058, 28.772850, 19.463936>,  <35.874306, 28.874962, 20.101236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588058, 28.772850, 19.463936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973633, 28.875998, 19.437620>,  <36.204979, 28.937885, 19.421831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973633, 28.875998, 19.437620>,  <35.588058, 28.772850, 19.463936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973633, 28.875998, 19.437620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185178, -0.827462, -0.530110,
		-0.191138, 0.498809, -0.845373,
		0.963937, 0.257868, -0.065791,
		36.262814, 28.953358, 19.417883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672192, 28.723993, 18.799782>,  <35.588058, 28.772850, 19.463936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672192, 28.723993, 18.799782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027885, 28.648977, 18.966681>,  <36.241302, 28.603968, 19.066820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027885, 28.648977, 18.966681>,  <35.672192, 28.723993, 18.799782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027885, 28.648977, 18.966681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167288, -0.715613, -0.678169,
		0.425771, 0.672850, -0.604973,
		0.889232, -0.187540, 0.417247,
		36.294655, 28.592716, 19.091854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285488, 28.795879, 18.297997>,  <35.672192, 28.723993, 18.799782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285488, 28.795879, 18.297997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287228, 28.522425, 18.589920>,  <36.288273, 28.358351, 18.765074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287228, 28.522425, 18.589920>,  <36.285488, 28.795879, 18.297997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287228, 28.522425, 18.589920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101309, -0.725759, -0.680449,
		0.994846, 0.076897, 0.066100,
		0.004351, -0.683638, 0.729808,
		36.288532, 28.317333, 18.808863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011826, 28.482317, 18.383661>,  <36.285488, 28.795879, 18.297997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011826, 28.482317, 18.383661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694138, 28.258284, 18.477907>,  <36.503525, 28.123863, 18.534454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694138, 28.258284, 18.477907>,  <37.011826, 28.482317, 18.383661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694138, 28.258284, 18.477907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265382, -0.668563, -0.694691,
		0.546609, -0.489212, 0.679625,
		-0.794223, -0.560085, 0.235615,
		36.455872, 28.090258, 18.548592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511448, 28.727089, 18.969683>,  <37.011826, 28.482317, 18.383661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511448, 28.727089, 18.969683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115025, 28.747917, 19.018818>,  <36.877171, 28.760414, 19.048300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115025, 28.747917, 19.018818>,  <37.511448, 28.727089, 18.969683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115025, 28.747917, 19.018818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068347, 0.988860, 0.132231,
		-0.114583, 0.139445, -0.983578,
		-0.991060, 0.052073, 0.122837,
		36.817707, 28.763538, 19.055670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426434, 29.377579, 19.175076>,  <37.511448, 28.727089, 18.969683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426434, 29.377579, 19.175076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051842, 29.248560, 19.230177>,  <36.827087, 29.171148, 19.263237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051842, 29.248560, 19.230177>,  <37.426434, 29.377579, 19.175076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051842, 29.248560, 19.230177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252641, 0.892791, 0.372957,
		-0.243282, 0.314463, -0.917566,
		-0.936476, -0.322548, 0.137754,
		36.770901, 29.151796, 19.271503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054829, 29.913242, 18.846987>,  <37.426434, 29.377579, 19.175076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054829, 29.913242, 18.846987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830296, 29.721926, 19.117140>,  <36.695576, 29.607136, 19.279232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830296, 29.721926, 19.117140>,  <37.054829, 29.913242, 18.846987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830296, 29.721926, 19.117140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104191, 0.850434, 0.515661,
		-0.821005, 0.219088, -0.527210,
		-0.561333, -0.478291, 0.675384,
		36.661896, 29.578438, 19.319756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430023, 30.379416, 19.022844>,  <37.054829, 29.913242, 18.846987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430023, 30.379416, 19.022844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456306, 30.118027, 19.324482>,  <36.472076, 29.961193, 19.505465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456306, 30.118027, 19.324482>,  <36.430023, 30.379416, 19.022844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456306, 30.118027, 19.324482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356350, 0.690524, 0.629438,
		-0.932039, -0.310080, -0.187491,
		0.065710, -0.653473, 0.754092,
		36.476021, 29.921986, 19.550709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927475, 30.517494, 19.513529>,  <36.430023, 30.379416, 19.022844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927475, 30.517494, 19.513529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170666, 30.295141, 19.740282>,  <36.316582, 30.161730, 19.876333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170666, 30.295141, 19.740282>,  <35.927475, 30.517494, 19.513529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170666, 30.295141, 19.740282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015973, 0.705292, 0.708737,
		-0.793792, -0.439952, 0.419924,
		0.607980, -0.555882, 0.566883,
		36.353058, 30.128376, 19.910347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674316, 30.697948, 20.280617>,  <35.927475, 30.517494, 19.513529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674316, 30.697948, 20.280617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029430, 30.520504, 20.329687>,  <36.242500, 30.414038, 20.359129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029430, 30.520504, 20.329687>,  <35.674316, 30.697948, 20.280617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029430, 30.520504, 20.329687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275005, 0.724987, 0.631479,
		-0.369071, -0.526880, 0.765627,
		0.887783, -0.443611, 0.122677,
		36.295765, 30.387421, 20.366489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790607, 30.656116, 21.010805>,  <35.674316, 30.697948, 20.280617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790607, 30.656116, 21.010805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169811, 30.604696, 20.894352>,  <36.397331, 30.573843, 20.824480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169811, 30.604696, 20.894352>,  <35.790607, 30.656116, 21.010805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169811, 30.604696, 20.894352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303973, 0.636689, 0.708680,
		0.094259, -0.760330, 0.642661,
		0.948006, -0.128552, -0.291133,
		36.454212, 30.566132, 20.807013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182358, 30.459515, 21.515961>,  <35.790607, 30.656116, 21.010805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182358, 30.459515, 21.515961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450958, 30.643358, 21.283463>,  <36.612118, 30.753666, 21.143963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450958, 30.643358, 21.283463>,  <36.182358, 30.459515, 21.515961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450958, 30.643358, 21.283463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336063, 0.510204, 0.791678,
		0.660420, -0.726945, 0.188142,
		0.671497, 0.459612, -0.581248,
		36.652409, 30.781242, 21.109089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786720, 30.394827, 21.841185>,  <36.182358, 30.459515, 21.515961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786720, 30.394827, 21.841185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852566, 30.694523, 21.584578>,  <36.892071, 30.874340, 21.430614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852566, 30.694523, 21.584578>,  <36.786720, 30.394827, 21.841185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852566, 30.694523, 21.584578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419351, 0.535521, 0.733050,
		0.892775, -0.389688, -0.226042,
		0.164611, 0.749240, -0.641516,
		36.901951, 30.919294, 21.392122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401020, 30.762802, 22.084181>,  <36.786720, 30.394827, 21.841185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401020, 30.762802, 22.084181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227417, 31.038935, 21.852636>,  <37.123257, 31.204615, 21.713709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227417, 31.038935, 21.852636>,  <37.401020, 30.762802, 22.084181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227417, 31.038935, 21.852636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201378, 0.700608, 0.684540,
		0.878115, 0.180524, -0.443086,
		-0.434006, 0.690332, -0.578861,
		37.097214, 31.246035, 21.678978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775089, 31.299194, 22.163849>,  <37.401020, 30.762802, 22.084181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775089, 31.299194, 22.163849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454838, 31.478621, 22.004957>,  <37.262688, 31.586275, 21.909622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454838, 31.478621, 22.004957>,  <37.775089, 31.299194, 22.163849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454838, 31.478621, 22.004957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186244, 0.816439, 0.546572,
		0.569486, 0.363617, -0.737203,
		-0.800624, 0.448564, -0.397229,
		37.214649, 31.613190, 21.885788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012859, 32.040657, 22.185873>,  <37.775089, 31.299194, 22.163849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012859, 32.040657, 22.185873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616257, 32.040638, 22.133856>,  <37.378296, 32.040627, 22.102646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616257, 32.040638, 22.133856>,  <38.012859, 32.040657, 22.185873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616257, 32.040638, 22.133856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068790, 0.848810, 0.524204,
		0.110357, 0.528698, -0.841606,
		-0.991509, -0.000044, -0.130041,
		37.318806, 32.040627, 22.094843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732670, 32.731346, 21.923958>,  <38.012859, 32.040657, 22.185873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732670, 32.731346, 21.923958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401009, 32.583225, 22.091471>,  <37.202011, 32.494354, 22.191978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401009, 32.583225, 22.091471>,  <37.732670, 32.731346, 21.923958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401009, 32.583225, 22.091471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257435, 0.917908, 0.301948,
		-0.496218, 0.142552, -0.856415,
		-0.829153, -0.370303, 0.418785,
		37.152264, 32.472134, 22.217106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378189, 33.383442, 21.887886>,  <37.732670, 32.731346, 21.923958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378189, 33.383442, 21.887886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202732, 33.121494, 22.134054>,  <37.097458, 32.964325, 22.281755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202732, 33.121494, 22.134054>,  <37.378189, 33.383442, 21.887886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202732, 33.121494, 22.134054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189363, 0.736798, 0.649053,
		-0.878485, 0.168163, -0.447197,
		-0.438641, -0.654866, 0.615422,
		37.071140, 32.925034, 22.318682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910713, 33.811478, 22.150087>,  <37.378189, 33.383442, 21.887886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910713, 33.811478, 22.150087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941147, 33.515785, 22.417746>,  <36.959408, 33.338371, 22.578341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941147, 33.515785, 22.417746>,  <36.910713, 33.811478, 22.150087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941147, 33.515785, 22.417746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127479, 0.658372, 0.741819,
		-0.988919, -0.141743, -0.044144,
		0.076085, -0.739226, 0.669145,
		36.963974, 33.294018, 22.618488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314316, 33.861774, 22.536417>,  <36.910713, 33.811478, 22.150087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314316, 33.861774, 22.536417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578613, 33.675930, 22.772230>,  <36.737194, 33.564423, 22.913719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578613, 33.675930, 22.772230>,  <36.314316, 33.861774, 22.536417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578613, 33.675930, 22.772230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346730, 0.507667, 0.788703,
		-0.665727, -0.725542, 0.174344,
		0.660746, -0.464611, 0.589535,
		36.776836, 33.536549, 22.949091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958324, 33.623760, 23.037477>,  <36.314316, 33.861774, 22.536417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958324, 33.623760, 23.037477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322895, 33.624126, 23.202066>,  <36.541637, 33.624344, 23.300819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322895, 33.624126, 23.202066>,  <35.958324, 33.623760, 23.037477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322895, 33.624126, 23.202066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408511, 0.121738, 0.904598,
		-0.049268, -0.992562, 0.111326,
		0.911422, 0.000910, 0.411471,
		36.596321, 33.624401, 23.325508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971214, 33.229450, 23.666357>,  <35.958324, 33.623760, 23.037477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971214, 33.229450, 23.666357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304924, 33.443645, 23.718884>,  <36.505150, 33.572163, 23.750399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304924, 33.443645, 23.718884>,  <35.971214, 33.229450, 23.666357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304924, 33.443645, 23.718884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328285, 0.291102, 0.898604,
		0.442963, -0.792790, 0.418651,
		0.834274, 0.535485, 0.131314,
		36.555206, 33.604290, 23.758278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070885, 33.194118, 24.339802>,  <35.971214, 33.229450, 23.666357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070885, 33.194118, 24.339802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312546, 33.501690, 24.256145>,  <36.457542, 33.686234, 24.205952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312546, 33.501690, 24.256145>,  <36.070885, 33.194118, 24.339802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312546, 33.501690, 24.256145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254261, 0.434751, 0.863911,
		0.755213, -0.468761, 0.458167,
		0.604156, 0.768931, -0.209142,
		36.493793, 33.732368, 24.193403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379211, 33.355312, 24.991447>,  <36.070885, 33.194118, 24.339802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379211, 33.355312, 24.991447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431488, 33.693085, 24.783655>,  <36.462852, 33.895748, 24.658979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431488, 33.693085, 24.783655>,  <36.379211, 33.355312, 24.991447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431488, 33.693085, 24.783655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209237, 0.535666, 0.818096,
		0.969093, 0.001779, 0.246691,
		0.130688, 0.844428, -0.519482,
		36.470695, 33.946415, 24.627811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912292, 33.850410, 25.273129>,  <36.379211, 33.355312, 24.991447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912292, 33.850410, 25.273129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677376, 34.081955, 25.046854>,  <36.536427, 34.220882, 24.911089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677376, 34.081955, 25.046854>,  <36.912292, 33.850410, 25.273129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677376, 34.081955, 25.046854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193685, 0.578096, 0.792648,
		0.785856, 0.575085, -0.227396,
		-0.587296, 0.578864, -0.565685,
		36.501186, 34.255615, 24.877148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197491, 34.609684, 25.259579>,  <36.912292, 33.850410, 25.273129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197491, 34.609684, 25.259579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804443, 34.612396, 25.185373>,  <36.568615, 34.614025, 25.140850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804443, 34.612396, 25.185373>,  <37.197491, 34.609684, 25.259579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804443, 34.612396, 25.185373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144437, 0.599825, 0.786986,
		0.116614, 0.800102, -0.588420,
		-0.982619, 0.006784, -0.185512,
		36.509659, 34.614433, 25.129719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041859, 35.305485, 25.239952>,  <37.197491, 34.609684, 25.259579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041859, 35.305485, 25.239952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690369, 35.118549, 25.278822>,  <36.479477, 35.006386, 25.302143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690369, 35.118549, 25.278822>,  <37.041859, 35.305485, 25.239952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690369, 35.118549, 25.278822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343783, 0.760844, 0.550391,
		-0.331155, 0.450233, -0.829233,
		-0.878721, -0.467341, 0.097175,
		36.426754, 34.978348, 25.307974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552513, 35.811546, 25.195019>,  <37.041859, 35.305485, 25.239952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552513, 35.811546, 25.195019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320568, 35.519688, 25.340006>,  <36.181400, 35.344574, 25.426998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320568, 35.519688, 25.340006>,  <36.552513, 35.811546, 25.195019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320568, 35.519688, 25.340006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422370, 0.649669, 0.632087,
		-0.696683, 0.213426, -0.684896,
		-0.579859, -0.729644, 0.362468,
		36.146610, 35.300793, 25.448746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970627, 36.152298, 25.338287>,  <36.552513, 35.811546, 25.195019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970627, 36.152298, 25.338287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911682, 35.823559, 25.558416>,  <35.876316, 35.626316, 25.690495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911682, 35.823559, 25.558416>,  <35.970627, 36.152298, 25.338287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911682, 35.823559, 25.558416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411255, 0.556931, 0.721594,
		-0.899530, -0.119990, -0.420057,
		-0.147359, -0.821846, 0.550323,
		35.867474, 35.577003, 25.723513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225330, 36.215275, 25.507566>,  <35.970627, 36.152298, 25.338287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225330, 36.215275, 25.507566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364735, 35.962547, 25.784504>,  <35.448376, 35.810909, 25.950666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364735, 35.962547, 25.784504>,  <35.225330, 36.215275, 25.507566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364735, 35.962547, 25.784504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435138, 0.545169, 0.716551,
		-0.830177, -0.550993, -0.084931,
		0.348512, -0.631821, 0.692345,
		35.469288, 35.773003, 25.992207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629536, 36.190510, 26.022997>,  <35.225330, 36.215275, 25.507566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629536, 36.190510, 26.022997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952801, 36.061253, 26.219954>,  <35.146759, 35.983700, 26.338127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952801, 36.061253, 26.219954>,  <34.629536, 36.190510, 26.022997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952801, 36.061253, 26.219954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372906, 0.366357, 0.852481,
		-0.455862, -0.872561, 0.175576,
		0.808165, -0.323140, 0.492391,
		35.195251, 35.964310, 26.367670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421158, 35.791862, 26.645006>,  <34.629536, 36.190510, 26.022997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421158, 35.791862, 26.645006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791260, 35.910896, 26.739111>,  <35.013321, 35.982315, 26.795574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791260, 35.910896, 26.739111>,  <34.421158, 35.791862, 26.645006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791260, 35.910896, 26.739111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357480, 0.476486, 0.803224,
		0.126927, -0.827288, 0.547251,
		0.925255, 0.297583, 0.235260,
		35.068836, 36.000172, 26.809689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496754, 35.647625, 27.469622>,  <34.421158, 35.791862, 26.645006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496754, 35.647625, 27.469622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791759, 35.895306, 27.361797>,  <34.968765, 36.043915, 27.297104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791759, 35.895306, 27.361797>,  <34.496754, 35.647625, 27.469622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791759, 35.895306, 27.361797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097072, 0.492209, 0.865048,
		0.668315, -0.611821, 0.423120,
		0.737517, 0.619197, -0.269559,
		35.013016, 36.081066, 27.280930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997269, 35.671833, 28.033381>,  <34.496754, 35.647625, 27.469622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997269, 35.671833, 28.033381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011295, 36.014748, 27.827925>,  <35.019711, 36.220497, 27.704651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011295, 36.014748, 27.827925>,  <34.997269, 35.671833, 28.033381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011295, 36.014748, 27.827925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059951, 0.514833, 0.855191,
		0.997585, 0.000805, 0.069449,
		0.035066, 0.857290, -0.513638,
		35.021816, 36.271935, 27.673834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505241, 36.061428, 28.411465>,  <34.997269, 35.671833, 28.033381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505241, 36.061428, 28.411465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315994, 36.326115, 28.178814>,  <35.202446, 36.484928, 28.039225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315994, 36.326115, 28.178814>,  <35.505241, 36.061428, 28.411465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315994, 36.326115, 28.178814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146547, 0.591881, 0.792591,
		0.868723, 0.460228, -0.183059,
		-0.473122, 0.661716, -0.581625,
		35.174057, 36.524628, 28.004326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744255, 36.559818, 28.716745>,  <35.505241, 36.061428, 28.411465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744255, 36.559818, 28.716745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441727, 36.706100, 28.499769>,  <35.260212, 36.793869, 28.369583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441727, 36.706100, 28.499769>,  <35.744255, 36.559818, 28.716745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441727, 36.706100, 28.499769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192720, 0.667820, 0.718941,
		0.625174, 0.648287, -0.434605,
		-0.756318, 0.365706, -0.542441,
		35.214832, 36.815811, 28.337036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943733, 37.252346, 28.596855>,  <35.744255, 36.559818, 28.716745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943733, 37.252346, 28.596855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546627, 37.214962, 28.566687>,  <35.308365, 37.192532, 28.548586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546627, 37.214962, 28.566687>,  <35.943733, 37.252346, 28.596855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546627, 37.214962, 28.566687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120098, 0.774282, 0.621340,
		0.000322, 0.625900, -0.779903,
		-0.992762, -0.093464, -0.075419,
		35.248798, 37.186924, 28.544062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845390, 37.943607, 28.592857>,  <35.943733, 37.252346, 28.596855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845390, 37.943607, 28.592857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498974, 37.757095, 28.665039>,  <35.291126, 37.645187, 28.708349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498974, 37.757095, 28.665039>,  <35.845390, 37.943607, 28.592857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498974, 37.757095, 28.665039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241381, 0.706005, 0.665802,
		-0.437850, 0.533051, -0.723978,
		-0.866039, -0.466276, 0.180456,
		35.239162, 37.617214, 28.719175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449390, 38.490784, 28.709227>,  <35.845390, 37.943607, 28.592857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449390, 38.490784, 28.709227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238102, 38.197533, 28.880577>,  <35.111328, 38.021584, 28.983387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238102, 38.197533, 28.880577>,  <35.449390, 38.490784, 28.709227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238102, 38.197533, 28.880577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246012, 0.615003, 0.749166,
		-0.812687, 0.290339, -0.505215,
		-0.528221, -0.733126, 0.428378,
		35.079636, 37.977596, 29.009090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821163, 38.781784, 28.918156>,  <35.449390, 38.490784, 28.709227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821163, 38.781784, 28.918156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850777, 38.459221, 29.152840>,  <34.868546, 38.265682, 29.293650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850777, 38.459221, 29.152840>,  <34.821163, 38.781784, 28.918156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850777, 38.459221, 29.152840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119064, 0.576967, 0.808043,
		-0.990122, -0.129679, -0.053299,
		0.074034, -0.806407, 0.586708,
		34.872986, 38.217300, 29.328852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136986, 38.703522, 29.345188>,  <34.821163, 38.781784, 28.918156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136986, 38.703522, 29.345188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426117, 38.500214, 29.532457>,  <34.599594, 38.378227, 29.644819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426117, 38.500214, 29.532457>,  <34.136986, 38.703522, 29.345188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426117, 38.500214, 29.532457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362393, 0.298051, 0.883084,
		-0.588386, -0.807976, 0.031244,
		0.722824, -0.508272, 0.468174,
		34.642963, 38.347733, 29.672909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809914, 38.321709, 29.958040>,  <34.136986, 38.703522, 29.345188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809914, 38.321709, 29.958040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200085, 38.318634, 30.046114>,  <34.434189, 38.316788, 30.098959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200085, 38.318634, 30.046114>,  <33.809914, 38.321709, 29.958040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200085, 38.318634, 30.046114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215544, 0.173657, 0.960929,
		-0.045628, -0.984776, 0.167732,
		0.975428, -0.007692, 0.220186,
		34.492714, 38.316326, 30.112169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859718, 37.873287, 30.634636>,  <33.809914, 38.321709, 29.958040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859718, 37.873287, 30.634636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190910, 38.096607, 30.613678>,  <34.389626, 38.230598, 30.601103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190910, 38.096607, 30.613678>,  <33.859718, 37.873287, 30.634636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190910, 38.096607, 30.613678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096147, 0.233396, 0.967617,
		0.552452, -0.796130, 0.246927,
		0.827981, 0.558303, -0.052395,
		34.439304, 38.264099, 30.597960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142052, 37.864445, 31.363121>,  <33.859718, 37.873287, 30.634636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142052, 37.864445, 31.363121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330860, 38.177792, 31.201363>,  <34.444145, 38.365799, 31.104307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330860, 38.177792, 31.201363>,  <34.142052, 37.864445, 31.363121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330860, 38.177792, 31.201363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030413, 0.472910, 0.880586,
		0.881064, -0.403353, 0.247046,
		0.472018, 0.783366, -0.404396,
		34.472466, 38.412800, 31.080044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672543, 38.062729, 31.769629>,  <34.142052, 37.864445, 31.363121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672543, 38.062729, 31.769629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632812, 38.409100, 31.573542>,  <34.608974, 38.616920, 31.455889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632812, 38.409100, 31.573542>,  <34.672543, 38.062729, 31.769629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632812, 38.409100, 31.573542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025534, 0.490274, 0.871194,
		0.994728, 0.099046, -0.026584,
		-0.099322, 0.865923, -0.490218,
		34.603016, 38.668877, 31.426476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168533, 38.496807, 32.043613>,  <34.672543, 38.062729, 31.769629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168533, 38.496807, 32.043613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898727, 38.754444, 31.899294>,  <34.736843, 38.909027, 31.812702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898727, 38.754444, 31.899294>,  <35.168533, 38.496807, 32.043613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898727, 38.754444, 31.899294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058507, 0.440542, 0.895824,
		0.735940, 0.625355, -0.259467,
		-0.674514, 0.644092, -0.360800,
		34.696373, 38.947670, 31.791054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677139, 38.639042, 31.675634>,  <35.168533, 38.496807, 32.043613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677139, 38.639042, 31.675634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959961, 38.519966, 31.932213>,  <36.129654, 38.448521, 32.086159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959961, 38.519966, 31.932213>,  <35.677139, 38.639042, 31.675634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959961, 38.519966, 31.932213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612467, -0.195643, -0.765904,
		0.353498, 0.934400, 0.043996,
		0.707053, -0.297691, 0.641448,
		36.172077, 38.430660, 32.124649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330620, 38.904911, 31.486727>,  <35.677139, 38.639042, 31.675634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330620, 38.904911, 31.486727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433548, 38.589062, 31.709541>,  <36.495304, 38.399551, 31.843229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433548, 38.589062, 31.709541>,  <36.330620, 38.904911, 31.486727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433548, 38.589062, 31.709541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734548, -0.214719, -0.643689,
		0.627875, 0.574802, 0.524762,
		0.257318, -0.789619, 0.557036,
		36.510742, 38.352177, 31.876652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988132, 38.860889, 31.285856>,  <36.330620, 38.904911, 31.486727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988132, 38.860889, 31.285856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930607, 38.516216, 31.480513>,  <36.896091, 38.309414, 31.597307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930607, 38.516216, 31.480513>,  <36.988132, 38.860889, 31.285856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930607, 38.516216, 31.480513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607440, -0.465076, -0.643989,
		0.781240, 0.202991, 0.590305,
		-0.143812, -0.861684, 0.486641,
		36.887463, 38.257710, 31.626505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585651, 38.638340, 31.415398>,  <36.988132, 38.860889, 31.285856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585651, 38.638340, 31.415398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354713, 38.311977, 31.427788>,  <37.216148, 38.116158, 31.435221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354713, 38.311977, 31.427788>,  <37.585651, 38.638340, 31.415398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354713, 38.311977, 31.427788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629026, -0.468652, -0.620236,
		0.520573, -0.338608, 0.783803,
		-0.577348, -0.815911, 0.030974,
		37.181511, 38.067204, 31.437080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054661, 38.077560, 31.650917>,  <37.585651, 38.638340, 31.415398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054661, 38.077560, 31.650917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742977, 37.918945, 31.456764>,  <37.555969, 37.823776, 31.340273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742977, 37.918945, 31.456764>,  <38.054661, 38.077560, 31.650917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742977, 37.918945, 31.456764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626658, -0.478485, -0.615103,
		0.011664, -0.783461, 0.621332,
		-0.779208, -0.396537, -0.485380,
		37.509216, 37.799984, 31.311150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259727, 37.451122, 31.444042>,  <38.054661, 38.077560, 31.650917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259727, 37.451122, 31.444042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947651, 37.520176, 31.203545>,  <37.760403, 37.561607, 31.059246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947651, 37.520176, 31.203545>,  <38.259727, 37.451122, 31.444042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947651, 37.520176, 31.203545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526505, -0.337773, -0.780194,
		-0.337773, -0.925260, 0.172635,
		0.780194, -0.172635, 0.601244,
		37.713593, 37.571968, 31.023170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099449, 36.941429, 31.035761>,  <38.259727, 37.451122, 31.444042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099449, 36.941429, 31.035761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916122, 37.206055, 30.798346>,  <37.806126, 37.364830, 30.655897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916122, 37.206055, 30.798346>,  <38.099449, 36.941429, 31.035761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916122, 37.206055, 30.798346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497361, -0.362555, -0.788153,
		-0.736601, -0.656423, -0.162872,
		-0.458312, 0.661561, -0.593538,
		37.778629, 37.404522, 30.620285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772945, 36.594807, 30.569782>,  <38.099449, 36.941429, 31.035761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772945, 36.594807, 30.569782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805374, 36.949760, 30.388247>,  <37.824833, 37.162735, 30.279324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805374, 36.949760, 30.388247>,  <37.772945, 36.594807, 30.569782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805374, 36.949760, 30.388247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195453, -0.460654, -0.865792,
		-0.977356, -0.018514, -0.210788,
		0.081071, 0.887387, -0.453842,
		37.829697, 37.215977, 30.252094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308540, 36.585934, 29.981239>,  <37.772945, 36.594807, 30.569782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308540, 36.585934, 29.981239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603867, 36.837814, 29.884609>,  <37.781063, 36.988945, 29.826632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603867, 36.837814, 29.884609>,  <37.308540, 36.585934, 29.981239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603867, 36.837814, 29.884609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143317, -0.496480, -0.856136,
		-0.659050, 0.597478, -0.456807,
		0.738317, 0.629705, -0.241577,
		37.825363, 37.026726, 29.812136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224014, 36.584454, 29.335632>,  <37.308540, 36.585934, 29.981239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224014, 36.584454, 29.335632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582703, 36.754776, 29.383926>,  <37.797916, 36.856972, 29.412903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582703, 36.754776, 29.383926>,  <37.224014, 36.584454, 29.335632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582703, 36.754776, 29.383926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306365, -0.400295, -0.863658,
		-0.319423, 0.811450, -0.489406,
		0.896722, 0.425809, 0.120736,
		37.851719, 36.882519, 29.420147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312683, 37.037735, 28.742468>,  <37.224014, 36.584454, 29.335632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312683, 37.037735, 28.742468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680038, 36.963615, 28.882307>,  <37.900452, 36.919144, 28.966209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680038, 36.963615, 28.882307>,  <37.312683, 37.037735, 28.742468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680038, 36.963615, 28.882307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277557, -0.327978, -0.902991,
		0.281987, 0.926333, -0.249780,
		0.918393, -0.185303, 0.349596,
		37.955555, 36.908024, 28.987186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748428, 37.123875, 28.114285>,  <37.312683, 37.037735, 28.742468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748428, 37.123875, 28.114285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989227, 36.946518, 28.379917>,  <38.133709, 36.840103, 28.539297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989227, 36.946518, 28.379917>,  <37.748428, 37.123875, 28.114285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989227, 36.946518, 28.379917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446875, -0.502149, -0.740371,
		0.661739, 0.742464, -0.104155,
		0.602001, -0.443388, 0.664080,
		38.169827, 36.813503, 28.579142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411480, 37.234440, 27.990335>,  <37.748428, 37.123875, 28.114285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411480, 37.234440, 27.990335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349216, 36.870937, 28.145216>,  <38.311859, 36.652836, 28.238144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349216, 36.870937, 28.145216>,  <38.411480, 37.234440, 27.990335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349216, 36.870937, 28.145216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346773, -0.417305, -0.840003,
		0.924943, 0.003518, 0.380090,
		-0.155658, -0.908760, 0.387203,
		38.302521, 36.598309, 28.261377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949348, 36.785454, 27.737099>,  <38.411480, 37.234440, 27.990335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949348, 36.785454, 27.737099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680271, 36.530579, 27.887554>,  <38.518826, 36.377655, 27.977827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680271, 36.530579, 27.887554>,  <38.949348, 36.785454, 27.737099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680271, 36.530579, 27.887554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253108, -0.675843, -0.692223,
		0.695286, -0.370449, 0.615910,
		-0.672691, -0.637185, 0.376140,
		38.478462, 36.339424, 28.000397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315281, 36.226002, 27.856020>,  <38.949348, 36.785454, 27.737099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315281, 36.226002, 27.856020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935051, 36.104771, 27.829035>,  <38.706913, 36.032032, 27.812843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935051, 36.104771, 27.829035>,  <39.315281, 36.226002, 27.856020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935051, 36.104771, 27.829035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264404, -0.676217, -0.687620,
		0.162785, -0.671471, 0.722929,
		-0.950575, -0.303079, -0.067462,
		38.649879, 36.013847, 27.808796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464737, 35.558723, 27.695328>,  <39.315281, 36.226002, 27.856020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464737, 35.558723, 27.695328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083488, 35.598888, 27.581152>,  <38.854740, 35.622986, 27.512646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083488, 35.598888, 27.581152>,  <39.464737, 35.558723, 27.695328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083488, 35.598888, 27.581152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144158, -0.678718, -0.720112,
		-0.266040, -0.727503, 0.632426,
		-0.953122, 0.100409, -0.285441,
		38.797550, 35.629013, 27.495520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285793, 34.878010, 27.718796>,  <39.464737, 35.558723, 27.695328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285793, 34.878010, 27.718796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041641, 35.086681, 27.480370>,  <38.895149, 35.211884, 27.337315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041641, 35.086681, 27.480370>,  <39.285793, 34.878010, 27.718796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041641, 35.086681, 27.480370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117817, -0.684339, -0.719582,
		-0.783302, -0.509441, 0.356241,
		-0.610375, 0.521679, -0.596065,
		38.858528, 35.243183, 27.301550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853931, 34.442421, 27.503202>,  <39.285793, 34.878010, 27.718796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853931, 34.442421, 27.503202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798912, 34.723354, 27.223831>,  <38.765900, 34.891914, 27.056208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798912, 34.723354, 27.223831>,  <38.853931, 34.442421, 27.503202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798912, 34.723354, 27.223831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094919, -0.692539, -0.715108,
		-0.985937, -0.164655, 0.028591,
		-0.137546, 0.702338, -0.698428,
		38.757648, 34.934055, 27.014303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363590, 34.162899, 27.057360>,  <38.853931, 34.442421, 27.503202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363590, 34.162899, 27.057360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556122, 34.427002, 26.826748>,  <38.671638, 34.585464, 26.688381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556122, 34.427002, 26.826748>,  <38.363590, 34.162899, 27.057360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556122, 34.427002, 26.826748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113331, -0.699086, -0.705999,
		-0.869184, 0.274478, -0.411316,
		0.481327, 0.660258, -0.576528,
		38.700520, 34.625080, 26.653790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963306, 34.224606, 26.423445>,  <38.363590, 34.162899, 27.057360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963306, 34.224606, 26.423445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334564, 34.338665, 26.327755>,  <38.557320, 34.407101, 26.270340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334564, 34.338665, 26.327755>,  <37.963306, 34.224606, 26.423445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334564, 34.338665, 26.327755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026065, -0.591346, -0.805996,
		-0.371296, 0.754320, -0.541425,
		0.928149, 0.285150, -0.239226,
		38.613010, 34.424210, 26.255987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012142, 34.444935, 25.796879>,  <37.963306, 34.224606, 26.423445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012142, 34.444935, 25.796879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398590, 34.355133, 25.847803>,  <38.630459, 34.301250, 25.878359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398590, 34.355133, 25.847803>,  <38.012142, 34.444935, 25.796879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398590, 34.355133, 25.847803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055360, -0.662061, -0.747403,
		0.252087, 0.715032, -0.652059,
		0.966120, -0.224509, 0.127313,
		38.688427, 34.287781, 25.885998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247025, 34.384388, 25.105822>,  <38.012142, 34.444935, 25.796879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247025, 34.384388, 25.105822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469948, 34.180939, 25.368338>,  <38.603703, 34.058868, 25.525848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469948, 34.180939, 25.368338>,  <38.247025, 34.384388, 25.105822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469948, 34.180939, 25.368338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085312, -0.751158, -0.654586,
		0.825914, 0.420793, -0.375233,
		0.557305, -0.508619, 0.656291,
		38.637138, 34.028355, 25.565226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920284, 34.170841, 24.699411>,  <38.247025, 34.384388, 25.105822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920284, 34.170841, 24.699411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843731, 33.934814, 25.013147>,  <38.797798, 33.793198, 25.201389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843731, 33.934814, 25.013147>,  <38.920284, 34.170841, 24.699411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843731, 33.934814, 25.013147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124653, -0.807252, -0.576893,
		0.973567, -0.012639, 0.228051,
		-0.191386, -0.590071, 0.784339,
		38.786316, 33.757793, 25.248449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406322, 33.562241, 24.681541>,  <38.920284, 34.170841, 24.699411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406322, 33.562241, 24.681541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101933, 33.441807, 24.911417>,  <38.919300, 33.369549, 25.049343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101933, 33.441807, 24.911417>,  <39.406322, 33.562241, 24.681541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101933, 33.441807, 24.911417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065110, -0.916766, -0.394083,
		0.645509, -0.262468, 0.717237,
		-0.760973, -0.301083, 0.574691,
		38.873642, 33.351482, 25.083824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694324, 32.948853, 25.055235>,  <39.406322, 33.562241, 24.681541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694324, 32.948853, 25.055235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294804, 32.933750, 25.042831>,  <39.055092, 32.924686, 25.035389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294804, 32.933750, 25.042831>,  <39.694324, 32.948853, 25.055235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294804, 32.933750, 25.042831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045919, -0.942297, -0.331614,
		-0.016699, -0.332642, 0.942905,
		-0.998805, -0.037759, -0.031010,
		38.995163, 32.922421, 25.033529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537132, 32.280567, 25.146431>,  <39.694324, 32.948853, 25.055235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537132, 32.280567, 25.146431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185524, 32.425056, 25.021959>,  <38.974560, 32.511749, 24.947277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185524, 32.425056, 25.021959>,  <39.537132, 32.280567, 25.146431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185524, 32.425056, 25.021959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233432, -0.895161, -0.379732,
		-0.415723, -0.261155, 0.871190,
		-0.879025, 0.361227, -0.311177,
		38.921818, 32.533424, 24.928606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968849, 31.790083, 25.350788>,  <39.537132, 32.280567, 25.146431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968849, 31.790083, 25.350788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801208, 32.022007, 25.071312>,  <38.700623, 32.161163, 24.903625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801208, 32.022007, 25.071312>,  <38.968849, 31.790083, 25.350788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801208, 32.022007, 25.071312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417053, -0.806487, -0.419102,
		-0.806487, 0.115745, 0.579813,
		0.419102, -0.579813, 0.698692,
		38.675476, 32.195950, 24.861704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241413, 31.489204, 25.268238>,  <38.968849, 31.790083, 25.350788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241413, 31.489204, 25.268238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320690, 31.670317, 24.920511>,  <38.368256, 31.778984, 24.711876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320690, 31.670317, 24.920511>,  <38.241413, 31.489204, 25.268238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320690, 31.670317, 24.920511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321310, -0.807888, -0.494042,
		-0.926002, 0.377234, -0.014632,
		0.198190, 0.452782, -0.869315,
		38.380146, 31.806152, 24.659718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711464, 31.249561, 24.839247>,  <38.241413, 31.489204, 25.268238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711464, 31.249561, 24.839247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008572, 31.366543, 24.598326>,  <38.186836, 31.436731, 24.453773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008572, 31.366543, 24.598326>,  <37.711464, 31.249561, 24.839247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008572, 31.366543, 24.598326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210716, -0.751749, -0.624878,
		-0.635527, 0.591054, -0.496750,
		0.742768, 0.292454, -0.602301,
		38.231403, 31.454279, 24.417635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493996, 31.093678, 24.061880>,  <37.711464, 31.249561, 24.839247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493996, 31.093678, 24.061880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889130, 31.153902, 24.046333>,  <38.126209, 31.190037, 24.037004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889130, 31.153902, 24.046333>,  <37.493996, 31.093678, 24.061880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889130, 31.153902, 24.046333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097005, -0.792039, -0.602715,
		-0.121532, 0.591613, -0.797010,
		0.987836, 0.150564, -0.038869,
		38.185482, 31.199072, 24.034672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727108, 30.994377, 23.344147>,  <37.493996, 31.093678, 24.061880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727108, 30.994377, 23.344147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054581, 30.914177, 23.559393>,  <38.251064, 30.866056, 23.688541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054581, 30.914177, 23.559393>,  <37.727108, 30.994377, 23.344147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054581, 30.914177, 23.559393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195817, -0.783437, -0.589816,
		0.539836, 0.588241, -0.602121,
		0.818677, -0.200498, 0.538115,
		38.300182, 30.854027, 23.720827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334850, 30.834948, 22.779972>,  <37.727108, 30.994377, 23.344147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334850, 30.834948, 22.779972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455807, 30.713728, 23.141462>,  <38.528381, 30.640997, 23.358356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455807, 30.713728, 23.141462>,  <38.334850, 30.834948, 22.779972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455807, 30.713728, 23.141462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412108, -0.813353, -0.410638,
		0.859492, 0.496606, -0.121062,
		0.302391, -0.303050, 0.903726,
		38.546524, 30.622812, 23.412580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118618, 30.729010, 22.770803>,  <38.334850, 30.834948, 22.779972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118618, 30.729010, 22.770803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972214, 30.513081, 23.074020>,  <38.884373, 30.383524, 23.255951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972214, 30.513081, 23.074020>,  <39.118618, 30.729010, 22.770803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972214, 30.513081, 23.074020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325625, -0.837361, -0.439084,
		0.871783, 0.086130, 0.482260,
		-0.366008, -0.539822, 0.758044,
		38.862411, 30.351133, 23.301434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576412, 30.264666, 22.811537>,  <39.118618, 30.729010, 22.770803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576412, 30.264666, 22.811537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282974, 30.085066, 23.015593>,  <39.106911, 29.977306, 23.138027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282974, 30.085066, 23.015593>,  <39.576412, 30.264666, 22.811537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282974, 30.085066, 23.015593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307530, -0.888730, -0.339977,
		0.606027, -0.092520, 0.790045,
		-0.733591, -0.448998, 0.510142,
		39.062897, 29.950367, 23.168634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901760, 29.687632, 23.009398>,  <39.576412, 30.264666, 22.811537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901760, 29.687632, 23.009398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511421, 29.612856, 23.054611>,  <39.277218, 29.567989, 23.081739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511421, 29.612856, 23.054611>,  <39.901760, 29.687632, 23.009398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511421, 29.612856, 23.054611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166074, -0.970979, -0.172100,
		0.141925, -0.149172, 0.978573,
		-0.975847, -0.186941, 0.113033,
		39.218666, 29.556774, 23.088520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962296, 29.007860, 23.163462>,  <39.901760, 29.687632, 23.009398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962296, 29.007860, 23.163462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573925, 29.060265, 23.083319>,  <39.340904, 29.091707, 23.035233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573925, 29.060265, 23.083319>,  <39.962296, 29.007860, 23.163462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573925, 29.060265, 23.083319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046449, -0.924150, -0.379195,
		-0.234840, -0.358863, 0.903365,
		-0.970923, 0.131010, -0.200359,
		39.282646, 29.099567, 23.023211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628761, 28.502384, 23.450409>,  <39.962296, 29.007860, 23.163462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628761, 28.502384, 23.450409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394142, 28.598738, 23.141106>,  <39.253368, 28.656549, 22.955523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394142, 28.598738, 23.141106>,  <39.628761, 28.502384, 23.450409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394142, 28.598738, 23.141106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017551, -0.950742, -0.309487,
		-0.809722, -0.195101, 0.553431,
		-0.586551, 0.240886, -0.773260,
		39.218178, 28.671003, 22.909128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355968, 27.890966, 23.173031>,  <39.628761, 28.502384, 23.450409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355968, 27.890966, 23.173031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318932, 27.605900, 23.451176>,  <39.296707, 27.434860, 23.618063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318932, 27.605900, 23.451176>,  <39.355968, 27.890966, 23.173031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318932, 27.605900, 23.451176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149911, 0.700382, 0.697848,
		-0.984354, -0.039625, -0.171688,
		-0.092595, -0.712668, 0.695364,
		39.291153, 27.392099, 23.659784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763809, 28.049158, 23.585573>,  <39.355968, 27.890966, 23.173031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763809, 28.049158, 23.585573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980721, 27.792385, 23.802408>,  <39.110867, 27.638321, 23.932508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980721, 27.792385, 23.802408>,  <38.763809, 28.049158, 23.585573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980721, 27.792385, 23.802408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084292, 0.600367, 0.795270,
		-0.835962, -0.476949, 0.271454,
		0.542275, -0.641934, 0.542087,
		39.143402, 27.599804, 23.965034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320049, 27.852667, 24.166059>,  <38.763809, 28.049158, 23.585573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320049, 27.852667, 24.166059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709129, 27.803410, 24.244736>,  <38.942577, 27.773855, 24.291943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709129, 27.803410, 24.244736>,  <38.320049, 27.852667, 24.166059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709129, 27.803410, 24.244736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131618, 0.405316, 0.904652,
		-0.191127, -0.905844, 0.378043,
		0.972701, -0.123146, 0.196692,
		39.000938, 27.766466, 24.303743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355846, 27.630089, 24.824995>,  <38.320049, 27.852667, 24.166059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355846, 27.630089, 24.824995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720013, 27.773943, 24.743216>,  <38.938515, 27.860254, 24.694147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720013, 27.773943, 24.743216>,  <38.355846, 27.630089, 24.824995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720013, 27.773943, 24.743216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041876, 0.411561, 0.910420,
		0.411561, -0.837426, 0.359633,
		-0.910420, -0.359633, 0.204450,
		38.993137, 27.881832, 24.681881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658356, 27.546131, 25.457565>,  <38.355846, 27.630089, 24.824995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658356, 27.546131, 25.457565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900688, 27.803560, 25.270466>,  <39.046085, 27.958017, 25.158207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900688, 27.803560, 25.270466>,  <38.658356, 27.546131, 25.457565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900688, 27.803560, 25.270466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036154, 0.565043, 0.824269,
		0.794775, -0.516275, 0.319050,
		0.605826, 0.643573, -0.467748,
		39.082436, 27.996632, 25.130142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138660, 27.698238, 25.989584>,  <38.658356, 27.546131, 25.457565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138660, 27.698238, 25.989584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152237, 27.980684, 25.706671>,  <39.160381, 28.150152, 25.536922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152237, 27.980684, 25.706671>,  <39.138660, 27.698238, 25.989584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152237, 27.980684, 25.706671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132221, 0.698296, 0.703492,
		0.990639, -0.117395, -0.069662,
		0.033941, 0.706117, -0.707281,
		39.162418, 28.192520, 25.494486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795044, 28.064363, 26.283842>,  <39.138660, 27.698238, 25.989584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795044, 28.064363, 26.283842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635136, 28.315077, 26.016312>,  <39.539188, 28.465504, 25.855793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635136, 28.315077, 26.016312>,  <39.795044, 28.064363, 26.283842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635136, 28.315077, 26.016312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017405, 0.724346, 0.689217,
		0.916449, 0.287171, -0.278665,
		-0.399773, 0.626782, -0.668824,
		39.515205, 28.503111, 25.815664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125706, 28.735628, 26.297745>,  <39.795044, 28.064363, 26.283842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125706, 28.735628, 26.297745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757011, 28.793159, 26.153681>,  <39.535793, 28.827679, 26.067242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757011, 28.793159, 26.153681>,  <40.125706, 28.735628, 26.297745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757011, 28.793159, 26.153681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143779, 0.735771, 0.661792,
		0.360180, 0.661782, -0.657507,
		-0.921736, 0.143828, -0.360160,
		39.480492, 28.836308, 26.045633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049866, 29.495380, 26.202160>,  <40.125706, 28.735628, 26.297745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049866, 29.495380, 26.202160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677349, 29.352852, 26.232426>,  <39.453838, 29.267334, 26.250586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677349, 29.352852, 26.232426>,  <40.049866, 29.495380, 26.202160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677349, 29.352852, 26.232426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248622, 0.773580, 0.582891,
		-0.266228, 0.524032, -0.809020,
		-0.931295, -0.356322, 0.075663,
		39.397961, 29.245955, 26.255125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593704, 30.104347, 26.052874>,  <40.049866, 29.495380, 26.202160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593704, 30.104347, 26.052874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361187, 29.846725, 26.251789>,  <39.221676, 29.692152, 26.371138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361187, 29.846725, 26.251789>,  <39.593704, 30.104347, 26.052874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361187, 29.846725, 26.251789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385634, 0.756209, 0.528615,
		-0.716510, 0.115509, -0.687948,
		-0.581292, -0.644054, 0.497287,
		39.186798, 29.653509, 26.400974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968796, 30.410728, 26.118444>,  <39.593704, 30.104347, 26.052874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968796, 30.410728, 26.118444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917770, 30.115351, 26.383301>,  <38.887154, 29.938124, 26.542213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917770, 30.115351, 26.383301>,  <38.968796, 30.410728, 26.118444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917770, 30.115351, 26.383301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528253, 0.615612, 0.584782,
		-0.839450, -0.275178, -0.468616,
		-0.127566, -0.738443, 0.662139,
		38.879501, 29.893818, 26.581944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231686, 30.401484, 26.351318>,  <38.968796, 30.410728, 26.118444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231686, 30.401484, 26.351318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480724, 30.253405, 26.627094>,  <38.630146, 30.164557, 26.792559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480724, 30.253405, 26.627094>,  <38.231686, 30.401484, 26.351318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480724, 30.253405, 26.627094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301974, 0.699127, 0.648099,
		-0.721932, -0.611697, 0.323484,
		0.622597, -0.370200, 0.689439,
		38.667503, 30.142345, 26.833925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965179, 30.518745, 26.970840>,  <38.231686, 30.401484, 26.351318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965179, 30.518745, 26.970840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340176, 30.460154, 27.097116>,  <38.565174, 30.424997, 27.172882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340176, 30.460154, 27.097116>,  <37.965179, 30.518745, 26.970840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340176, 30.460154, 27.097116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118617, 0.718303, 0.685544,
		-0.327180, -0.680135, 0.656025,
		0.937488, -0.146481, 0.315690,
		38.621422, 30.416210, 27.191824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946045, 30.440878, 27.711548>,  <37.965179, 30.518745, 26.970840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946045, 30.440878, 27.711548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320679, 30.555138, 27.630352>,  <38.545460, 30.623693, 27.581635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320679, 30.555138, 27.630352>,  <37.946045, 30.440878, 27.711548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320679, 30.555138, 27.630352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065225, 0.711241, 0.699916,
		0.344306, -0.642293, 0.684772,
		0.936589, 0.285650, -0.202991,
		38.601654, 30.640833, 27.569454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221306, 30.495178, 28.353100>,  <37.946045, 30.440878, 27.711548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221306, 30.495178, 28.353100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500092, 30.694611, 28.146933>,  <38.667362, 30.814270, 28.023233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500092, 30.694611, 28.146933>,  <38.221306, 30.495178, 28.353100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500092, 30.694611, 28.146933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157680, 0.594606, 0.788404,
		0.699552, -0.630763, 0.335806,
		0.696968, 0.498580, -0.515416,
		38.709183, 30.844185, 27.992308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709602, 30.579782, 28.859221>,  <38.221306, 30.495178, 28.353100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709602, 30.579782, 28.859221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765438, 30.846096, 28.566032>,  <38.798939, 31.005884, 28.390120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765438, 30.846096, 28.566032>,  <38.709602, 30.579782, 28.859221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765438, 30.846096, 28.566032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133720, 0.720761, 0.680163,
		0.981139, -0.192958, 0.011583,
		0.139591, 0.665786, -0.732969,
		38.807316, 31.045832, 28.346142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233986, 31.006266, 29.122732>,  <38.709602, 30.579782, 28.859221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233986, 31.006266, 29.122732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052135, 31.202726, 28.825523>,  <38.943024, 31.320602, 28.647198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052135, 31.202726, 28.825523>,  <39.233986, 31.006266, 29.122732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052135, 31.202726, 28.825523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289937, 0.870389, 0.397943,
		0.842170, -0.034513, -0.538107,
		-0.454628, 0.491153, -0.743022,
		38.915749, 31.350073, 28.602617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744640, 31.519846, 28.816391>,  <39.233986, 31.006266, 29.122732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744640, 31.519846, 28.816391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370438, 31.638283, 28.739296>,  <39.145916, 31.709345, 28.693039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370438, 31.638283, 28.739296>,  <39.744640, 31.519846, 28.816391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370438, 31.638283, 28.739296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228716, 0.923361, 0.308371,
		0.269273, 0.244402, -0.931536,
		-0.935511, 0.296094, -0.192738,
		39.089783, 31.727112, 28.681475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868908, 32.168381, 28.547026>,  <39.744640, 31.519846, 28.816391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868908, 32.168381, 28.547026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483902, 32.148308, 28.653641>,  <39.252899, 32.136265, 28.717609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483902, 32.148308, 28.653641>,  <39.868908, 32.168381, 28.547026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483902, 32.148308, 28.653641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085971, 0.875601, 0.475323,
		-0.257233, 0.480421, -0.838467,
		-0.962518, -0.050184, 0.266536,
		39.195148, 32.133251, 28.733601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626377, 32.781731, 28.418318>,  <39.868908, 32.168381, 28.547026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626377, 32.781731, 28.418318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315235, 32.661457, 28.639057>,  <39.128551, 32.589294, 28.771502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315235, 32.661457, 28.639057>,  <39.626377, 32.781731, 28.418318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315235, 32.661457, 28.639057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199216, 0.950803, 0.237249,
		-0.596036, 0.074607, -0.799484,
		-0.777852, -0.300679, 0.551850,
		39.081879, 32.571255, 28.804611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058525, 33.225143, 28.261484>,  <39.626377, 32.781731, 28.418318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058525, 33.225143, 28.261484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006607, 33.065556, 28.624577>,  <38.975456, 32.969803, 28.842432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006607, 33.065556, 28.624577>,  <39.058525, 33.225143, 28.261484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006607, 33.065556, 28.624577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139079, 0.913752, 0.381726,
		-0.981738, -0.076699, -0.174092,
		-0.129799, -0.398967, 0.907732,
		38.967667, 32.945866, 28.896896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400391, 33.560322, 28.538666>,  <39.058525, 33.225143, 28.261484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400391, 33.560322, 28.538666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604618, 33.398926, 28.842381>,  <38.727154, 33.302086, 29.024609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604618, 33.398926, 28.842381>,  <38.400391, 33.560322, 28.538666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604618, 33.398926, 28.842381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066141, 0.898871, 0.433193,
		-0.857291, -0.170953, 0.485620,
		0.510566, -0.403492, 0.759287,
		38.757790, 33.277878, 29.070168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093166, 33.819038, 29.122311>,  <38.400391, 33.560322, 28.538666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093166, 33.819038, 29.122311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460930, 33.681870, 29.199343>,  <38.681587, 33.599567, 29.245562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460930, 33.681870, 29.199343>,  <38.093166, 33.819038, 29.122311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460930, 33.681870, 29.199343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288590, 0.920901, 0.262025,
		-0.267203, -0.185332, 0.945650,
		0.919412, -0.342919, 0.192582,
		38.736755, 33.578995, 29.257118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201908, 34.136795, 29.702028>,  <38.093166, 33.819038, 29.122311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201908, 34.136795, 29.702028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560482, 34.028522, 29.561665>,  <38.775627, 33.963558, 29.477448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560482, 34.028522, 29.561665>,  <38.201908, 34.136795, 29.702028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560482, 34.028522, 29.561665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393637, 0.850085, 0.349866,
		0.203600, -0.451762, 0.868595,
		0.896436, -0.270679, -0.350908,
		38.829414, 33.947319, 29.456392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735390, 33.997555, 30.287573>,  <38.201908, 34.136795, 29.702028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735390, 33.997555, 30.287573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957809, 34.112305, 29.975544>,  <39.091259, 34.181156, 29.788326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957809, 34.112305, 29.975544>,  <38.735390, 33.997555, 30.287573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957809, 34.112305, 29.975544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356700, 0.765355, 0.535721,
		0.750717, -0.576138, 0.323245,
		0.556047, 0.286873, -0.780074,
		39.124622, 34.198368, 29.741522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554634, 34.035873, 30.421389>,  <38.735390, 33.997555, 30.287573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554634, 34.035873, 30.421389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480518, 34.279125, 30.112625>,  <39.436047, 34.425076, 29.927366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480518, 34.279125, 30.112625>,  <39.554634, 34.035873, 30.421389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480518, 34.279125, 30.112625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454914, 0.749358, 0.481162,
		0.871045, -0.261997, -0.415496,
		-0.185293, 0.608129, -0.771911,
		39.424931, 34.461563, 29.881052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176414, 34.459221, 30.435043>,  <39.554634, 34.035873, 30.421389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176414, 34.459221, 30.435043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898537, 34.641472, 30.212406>,  <39.731808, 34.750824, 30.078823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898537, 34.641472, 30.212406>,  <40.176414, 34.459221, 30.435043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898537, 34.641472, 30.212406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206663, 0.867603, 0.452278,
		0.688973, 0.199170, -0.696884,
		-0.694699, 0.455628, -0.556594,
		39.690128, 34.778160, 30.045427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518559, 34.915180, 30.047234>,  <40.176414, 34.459221, 30.435043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518559, 34.915180, 30.047234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151093, 35.062790, 30.103624>,  <39.930611, 35.151356, 30.137459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151093, 35.062790, 30.103624>,  <40.518559, 34.915180, 30.047234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151093, 35.062790, 30.103624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393655, 0.825411, 0.404639,
		0.032957, 0.427225, -0.903545,
		-0.918667, 0.369021, 0.140976,
		39.875492, 35.173496, 30.145918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550915, 35.609604, 29.892832>,  <40.518559, 34.915180, 30.047234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550915, 35.609604, 29.892832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211884, 35.596931, 30.104721>,  <40.008465, 35.589329, 30.231855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211884, 35.596931, 30.104721>,  <40.550915, 35.609604, 29.892832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211884, 35.596931, 30.104721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298165, 0.797323, 0.524760,
		-0.438985, 0.602721, -0.666348,
		-0.847579, -0.031680, 0.529723,
		39.957611, 35.587429, 30.263638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301586, 36.324226, 29.861177>,  <40.550915, 35.609604, 29.892832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301586, 36.324226, 29.861177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122318, 36.134968, 30.164564>,  <40.014759, 36.021412, 30.346596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122318, 36.134968, 30.164564>,  <40.301586, 36.324226, 29.861177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122318, 36.134968, 30.164564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087115, 0.821294, 0.563814,
		-0.889693, 0.318759, -0.326861,
		-0.448170, -0.473147, 0.758469,
		39.987865, 35.993023, 30.392105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976700, 36.954304, 30.221018>,  <40.301586, 36.324226, 29.861177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976700, 36.954304, 30.221018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980961, 36.669010, 30.501354>,  <39.983517, 36.497833, 30.669556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980961, 36.669010, 30.501354>,  <39.976700, 36.954304, 30.221018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980961, 36.669010, 30.501354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133454, 0.693598, 0.707892,
		-0.990998, -0.101071, -0.087795,
		0.010653, -0.713236, 0.700843,
		39.984158, 36.455040, 30.711607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332775, 36.968254, 30.638676>,  <39.976700, 36.954304, 30.221018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332775, 36.968254, 30.638676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616238, 36.811310, 30.873236>,  <39.786316, 36.717144, 31.013971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616238, 36.811310, 30.873236>,  <39.332775, 36.968254, 30.638676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616238, 36.811310, 30.873236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255217, 0.632285, 0.731491,
		-0.657780, -0.668033, 0.347934,
		0.708654, -0.392362, 0.586398,
		39.828835, 36.693600, 31.049154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997925, 36.931782, 31.263105>,  <39.332775, 36.968254, 30.638676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997925, 36.931782, 31.263105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383652, 36.893875, 31.361986>,  <39.615089, 36.871132, 31.421314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383652, 36.893875, 31.361986>,  <38.997925, 36.931782, 31.263105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383652, 36.893875, 31.361986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173683, 0.478255, 0.860875,
		-0.199810, -0.873092, 0.444731,
		0.964319, -0.094770, 0.247202,
		39.672947, 36.865444, 31.436146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991402, 36.747566, 31.954056>,  <38.997925, 36.931782, 31.263105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991402, 36.747566, 31.954056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366539, 36.880802, 31.915052>,  <39.591621, 36.960743, 31.891651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366539, 36.880802, 31.915052>,  <38.991402, 36.747566, 31.954056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366539, 36.880802, 31.915052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144589, 0.630369, 0.762711,
		0.315519, -0.701202, 0.639346,
		0.937839, 0.333093, -0.097507,
		39.647892, 36.980728, 31.885799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346157, 36.567894, 32.562386>,  <38.991402, 36.747566, 31.954056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346157, 36.567894, 32.562386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555027, 36.870422, 32.404747>,  <39.680347, 37.051941, 32.310165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555027, 36.870422, 32.404747>,  <39.346157, 36.567894, 32.562386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555027, 36.870422, 32.404747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148597, 0.374343, 0.915307,
		0.839794, -0.536510, 0.083085,
		0.522174, 0.756323, -0.394095,
		39.711678, 37.097321, 32.286518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054794, 36.638256, 32.987312>,  <39.346157, 36.567894, 32.562386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054794, 36.638256, 32.987312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943520, 36.986874, 32.825813>,  <39.876755, 37.196045, 32.728912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943520, 36.986874, 32.825813>,  <40.054794, 36.638256, 32.987312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943520, 36.986874, 32.825813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006642, 0.422080, 0.906535,
		0.960504, 0.249505, -0.123206,
		-0.278188, 0.871548, -0.403752,
		39.860062, 37.248337, 32.704689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403591, 37.092182, 33.471024>,  <40.054794, 36.638256, 32.987312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403591, 37.092182, 33.471024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161045, 37.320297, 33.249359>,  <40.015518, 37.457165, 33.116360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161045, 37.320297, 33.249359>,  <40.403591, 37.092182, 33.471024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161045, 37.320297, 33.249359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253223, 0.522133, 0.814405,
		0.753790, 0.634153, -0.172193,
		-0.606365, 0.570287, -0.554161,
		39.979134, 37.491383, 33.083111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671913, 37.828239, 33.697205>,  <40.403591, 37.092182, 33.471024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671913, 37.828239, 33.697205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303574, 37.813614, 33.541927>,  <40.082569, 37.804836, 33.448761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303574, 37.813614, 33.541927>,  <40.671913, 37.828239, 33.697205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303574, 37.813614, 33.541927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331786, 0.596471, 0.730849,
		0.204824, 0.801801, -0.561392,
		-0.920850, -0.036566, -0.388198,
		40.027317, 37.802643, 33.425468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401897, 38.554813, 33.772015>,  <40.671913, 37.828239, 33.697205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401897, 38.554813, 33.772015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059734, 38.363853, 33.691643>,  <39.854439, 38.249279, 33.643421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059734, 38.363853, 33.691643>,  <40.401897, 38.554813, 33.772015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059734, 38.363853, 33.691643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471166, 0.556056, 0.684693,
		-0.215145, 0.680360, -0.700587,
		-0.855403, -0.477401, -0.200930,
		39.803112, 38.220634, 33.631363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892406, 39.075024, 33.695038>,  <40.401897, 38.554813, 33.772015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892406, 39.075024, 33.695038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722374, 38.730701, 33.806988>,  <39.620354, 38.524109, 33.874157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722374, 38.730701, 33.806988>,  <39.892406, 39.075024, 33.695038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722374, 38.730701, 33.806988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418644, 0.461110, 0.782378,
		-0.802524, 0.215404, -0.556377,
		-0.425079, -0.860801, 0.279874,
		39.594849, 38.472462, 33.890949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149891, 39.175243, 33.866600>,  <39.892406, 39.075024, 33.695038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149891, 39.175243, 33.866600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224319, 38.841190, 34.073647>,  <39.268978, 38.640759, 34.197876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224319, 38.841190, 34.073647>,  <39.149891, 39.175243, 33.866600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224319, 38.841190, 34.073647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469234, 0.387328, 0.793597,
		-0.863248, -0.390550, -0.319803,
		0.186071, -0.835133, 0.517619,
		39.280140, 38.590649, 34.228931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573597, 39.090752, 34.186298>,  <39.149891, 39.175243, 33.866600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573597, 39.090752, 34.186298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802353, 38.860035, 34.419624>,  <38.939606, 38.721607, 34.559620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802353, 38.860035, 34.419624>,  <38.573597, 39.090752, 34.186298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802353, 38.860035, 34.419624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535388, 0.276313, 0.798130,
		-0.621530, -0.768742, -0.150785,
		0.571892, -0.576790, 0.583312,
		38.973919, 38.686996, 34.594620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188999, 38.579300, 34.529026>,  <38.573597, 39.090752, 34.186298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188999, 38.579300, 34.529026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517422, 38.614647, 34.754612>,  <38.714474, 38.635853, 34.889965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517422, 38.614647, 34.754612>,  <38.188999, 38.579300, 34.529026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517422, 38.614647, 34.754612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565643, -0.007159, 0.824619,
		0.076909, -0.996062, 0.044108,
		0.821055, 0.088370, 0.563966,
		38.763737, 38.641155, 34.923801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073887, 38.067104, 35.012486>,  <38.188999, 38.579300, 34.529026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073887, 38.067104, 35.012486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370964, 38.282337, 35.171921>,  <38.549210, 38.411476, 35.267582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370964, 38.282337, 35.171921>,  <38.073887, 38.067104, 35.012486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370964, 38.282337, 35.171921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567112, 0.188907, 0.801684,
		0.356079, -0.821449, 0.445454,
		0.742692, 0.538085, 0.398588,
		38.593773, 38.443764, 35.291496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184063, 37.787998, 35.753700>,  <38.073887, 38.067104, 35.012486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184063, 37.787998, 35.753700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283188, 38.172890, 35.708622>,  <38.342663, 38.403824, 35.681576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283188, 38.172890, 35.708622>,  <38.184063, 37.787998, 35.753700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283188, 38.172890, 35.708622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390897, 0.205742, 0.897145,
		0.886446, -0.178277, 0.427120,
		0.247817, 0.962230, -0.112691,
		38.357533, 38.461559, 35.674816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309494, 37.934845, 36.425137>,  <38.184063, 37.787998, 35.753700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309494, 37.934845, 36.425137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303188, 38.285007, 36.231880>,  <38.299404, 38.495106, 36.115929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303188, 38.285007, 36.231880>,  <38.309494, 37.934845, 36.425137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303188, 38.285007, 36.231880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403455, 0.436546, 0.804146,
		0.914864, 0.207598, 0.346305,
		-0.015761, 0.875403, -0.483137,
		38.298462, 38.547626, 36.086941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595299, 38.499588, 36.868889>,  <38.309494, 37.934845, 36.425137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595299, 38.499588, 36.868889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326832, 38.648769, 36.612625>,  <38.165752, 38.738277, 36.458866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326832, 38.648769, 36.612625>,  <38.595299, 38.499588, 36.868889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326832, 38.648769, 36.612625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455470, 0.474397, 0.753323,
		0.584878, 0.797406, -0.148531,
		-0.671167, 0.372951, -0.640659,
		38.125481, 38.760654, 36.420429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508648, 39.143089, 37.009342>,  <38.595299, 38.499588, 36.868889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508648, 39.143089, 37.009342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165260, 39.096806, 36.809483>,  <37.959229, 39.069035, 36.689568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165260, 39.096806, 36.809483>,  <38.508648, 39.143089, 37.009342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165260, 39.096806, 36.809483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474651, 0.548279, 0.688546,
		0.194275, 0.828252, -0.525600,
		-0.858465, -0.115709, -0.499648,
		37.907722, 39.062092, 36.659588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195679, 39.775391, 37.022091>,  <38.508648, 39.143089, 37.009342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195679, 39.775391, 37.022091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886326, 39.535496, 36.939915>,  <37.700714, 39.391560, 36.890610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886326, 39.535496, 36.939915>,  <38.195679, 39.775391, 37.022091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886326, 39.535496, 36.939915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533619, 0.440898, 0.721706,
		-0.342252, 0.667779, -0.661010,
		-0.773379, -0.599733, -0.205441,
		37.654312, 39.355576, 36.878281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542130, 40.114639, 37.035126>,  <38.195679, 39.775391, 37.022091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542130, 40.114639, 37.035126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406063, 39.742321, 37.088646>,  <37.324425, 39.518929, 37.120758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406063, 39.742321, 37.088646>,  <37.542130, 40.114639, 37.035126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406063, 39.742321, 37.088646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534093, 0.308341, 0.787192,
		-0.773972, 0.196315, -0.602020,
		-0.340164, -0.930799, 0.133797,
		37.304012, 39.463081, 37.128784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889576, 40.156761, 37.063290>,  <37.542130, 40.114639, 37.035126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889576, 40.156761, 37.063290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981266, 39.818817, 37.256645>,  <37.036282, 39.616051, 37.372658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981266, 39.818817, 37.256645>,  <36.889576, 40.156761, 37.063290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981266, 39.818817, 37.256645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506724, 0.320437, 0.800344,
		-0.831076, -0.428404, -0.354659,
		0.229225, -0.844861, 0.483390,
		37.050034, 39.565357, 37.401661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253544, 39.960110, 37.383080>,  <36.889576, 40.156761, 37.063290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253544, 39.960110, 37.383080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511051, 39.715626, 37.567245>,  <36.665554, 39.568935, 37.677746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511051, 39.715626, 37.567245>,  <36.253544, 39.960110, 37.383080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511051, 39.715626, 37.567245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493960, 0.127601, 0.860071,
		-0.584436, -0.781111, -0.219770,
		0.643768, -0.611214, 0.460412,
		36.704182, 39.532261, 37.705368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788399, 39.554638, 37.832520>,  <36.253544, 39.960110, 37.383080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788399, 39.554638, 37.832520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153057, 39.475777, 37.976765>,  <36.371853, 39.428459, 38.063313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153057, 39.475777, 37.976765>,  <35.788399, 39.554638, 37.832520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153057, 39.475777, 37.976765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379538, -0.067241, 0.922729,
		-0.157678, -0.978063, -0.136129,
		0.911640, -0.197160, 0.360610,
		36.426548, 39.416630, 38.084949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771946, 38.946445, 38.261223>,  <35.788399, 39.554638, 37.832520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771946, 38.946445, 38.261223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083500, 39.164124, 38.385921>,  <36.270432, 39.294731, 38.460743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083500, 39.164124, 38.385921>,  <35.771946, 38.946445, 38.261223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083500, 39.164124, 38.385921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263142, -0.167642, 0.950080,
		0.569290, -0.822040, 0.012626,
		0.778887, 0.544193, 0.311751,
		36.317165, 39.327381, 38.479446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087681, 38.537437, 38.831314>,  <35.771946, 38.946445, 38.261223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087681, 38.537437, 38.831314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204967, 38.916225, 38.883881>,  <36.275341, 39.143497, 38.915421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204967, 38.916225, 38.883881>,  <36.087681, 38.537437, 38.831314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204967, 38.916225, 38.883881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260717, -0.053046, 0.963957,
		0.919810, -0.316910, 0.231337,
		0.293216, 0.946971, 0.131416,
		36.292931, 39.200317, 38.923306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438061, 38.501617, 39.396389>,  <36.087681, 38.537437, 38.831314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438061, 38.501617, 39.396389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321564, 38.882076, 39.355408>,  <36.251667, 39.110352, 39.330818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321564, 38.882076, 39.355408>,  <36.438061, 38.501617, 39.396389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321564, 38.882076, 39.355408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332787, -0.000319, 0.943002,
		0.896900, 0.308739, 0.316622,
		-0.291243, 0.951147, -0.102458,
		36.234192, 39.167419, 39.324669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317841, 38.620506, 40.154999>,  <36.438061, 38.501617, 39.396389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317841, 38.620506, 40.154999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168427, 38.942635, 39.970856>,  <36.078777, 39.135910, 39.860371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168427, 38.942635, 39.970856>,  <36.317841, 38.620506, 40.154999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168427, 38.942635, 39.970856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684364, 0.095764, 0.722824,
		0.626190, 0.585056, 0.515360,
		-0.373540, 0.805319, -0.460358,
		36.056366, 39.184231, 39.832748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321178, 39.225563, 40.583599>,  <36.317841, 38.620506, 40.154999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321178, 39.225563, 40.583599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013649, 39.242409, 40.328373>,  <35.829132, 39.252518, 40.175236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013649, 39.242409, 40.328373>,  <36.321178, 39.225563, 40.583599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013649, 39.242409, 40.328373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622953, -0.274558, 0.732494,
		-0.144337, 0.960648, 0.237325,
		-0.768828, 0.042116, -0.638067,
		35.783001, 39.255043, 40.136951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815559, 39.566780, 40.949165>,  <36.321178, 39.225563, 40.583599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815559, 39.566780, 40.949165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628487, 39.355770, 40.665478>,  <35.516243, 39.229164, 40.495266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628487, 39.355770, 40.665478>,  <35.815559, 39.566780, 40.949165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628487, 39.355770, 40.665478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649827, -0.338702, 0.680445,
		-0.599164, 0.779103, -0.184393,
		-0.467683, -0.527521, -0.709221,
		35.488182, 39.197514, 40.452713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081303, 39.708614, 41.087883>,  <35.815559, 39.566780, 40.949165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081303, 39.708614, 41.087883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102940, 39.368851, 40.877899>,  <35.115921, 39.164993, 40.751907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102940, 39.368851, 40.877899>,  <35.081303, 39.708614, 41.087883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102940, 39.368851, 40.877899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660797, -0.424595, 0.618924,
		-0.748613, 0.313417, -0.584250,
		0.054088, -0.849405, -0.524963,
		35.119167, 39.114029, 40.720409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430195, 39.536549, 41.069141>,  <35.081303, 39.708614, 41.087883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430195, 39.536549, 41.069141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669479, 39.218552, 41.028877>,  <34.813049, 39.027756, 41.004719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669479, 39.218552, 41.028877>,  <34.430195, 39.536549, 41.069141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669479, 39.218552, 41.028877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500843, -0.468986, 0.727467,
		-0.625539, -0.384763, -0.678718,
		0.598212, -0.794990, -0.100663,
		34.848942, 38.980053, 40.998680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071091, 38.908485, 41.170044>,  <34.430195, 39.536549, 41.069141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071091, 38.908485, 41.170044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449081, 38.795414, 41.235905>,  <34.675877, 38.727573, 41.275421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449081, 38.795414, 41.235905>,  <34.071091, 38.908485, 41.170044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449081, 38.795414, 41.235905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302378, -0.562687, 0.769383,
		-0.124835, -0.776839, -0.617201,
		0.944978, -0.282674, 0.164656,
		34.732574, 38.710613, 41.285301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555481, 38.302460, 41.178234>,  <34.071091, 38.908485, 41.170044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555481, 38.302460, 41.178234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690937, 37.947464, 41.303253>,  <33.772209, 37.734467, 41.378265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690937, 37.947464, 41.303253>,  <33.555481, 38.302460, 41.178234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690937, 37.947464, 41.303253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937596, 0.290406, -0.191256,
		0.078972, 0.357810, 0.930449,
		0.338641, -0.887489, 0.312547,
		33.792530, 37.681217, 41.397018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863316, 38.442291, 41.774822>,  <33.555481, 38.302460, 41.178234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863316, 38.442291, 41.774822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003071, 38.137505, 41.556713>,  <34.086926, 37.954632, 41.425846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003071, 38.137505, 41.556713>,  <33.863316, 38.442291, 41.774822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003071, 38.137505, 41.556713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799642, 0.545807, -0.250336,
		0.488364, -0.348561, 0.800004,
		0.349390, -0.761971, -0.545276,
		34.107887, 37.908913, 41.393131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615700, 38.296005, 41.831245>,  <33.863316, 38.442291, 41.774822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615700, 38.296005, 41.831245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492523, 38.165936, 41.473598>,  <34.418617, 38.087894, 41.259010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492523, 38.165936, 41.473598>,  <34.615700, 38.296005, 41.831245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492523, 38.165936, 41.473598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764682, 0.474562, -0.435950,
		0.566071, -0.817957, 0.102518,
		-0.307938, -0.325173, -0.894112,
		34.400143, 38.068382, 41.205364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086426, 38.045536, 41.453724>,  <34.615700, 38.296005, 41.831245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086426, 38.045536, 41.453724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834400, 38.207565, 41.188713>,  <34.683186, 38.304783, 41.029709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834400, 38.207565, 41.188713>,  <35.086426, 38.045536, 41.453724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834400, 38.207565, 41.188713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757517, 0.508311, -0.409620,
		0.170844, -0.759960, -0.627115,
		-0.630064, 0.405069, -0.662524,
		34.645382, 38.329086, 40.989956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311287, 37.838551, 40.725430>,  <35.086426, 38.045536, 41.453724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311287, 37.838551, 40.725430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092541, 38.173180, 40.738632>,  <34.961292, 38.373959, 40.746552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092541, 38.173180, 40.738632>,  <35.311287, 37.838551, 40.725430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092541, 38.173180, 40.738632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681784, 0.467862, -0.562384,
		-0.485916, -0.285046, -0.826217,
		-0.546861, 0.836573, 0.033002,
		34.928482, 38.424152, 40.748531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110565, 37.965298, 40.093468>,  <35.311287, 37.838551, 40.725430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110565, 37.965298, 40.093468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142220, 38.305859, 40.300869>,  <35.161213, 38.510197, 40.425308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142220, 38.305859, 40.300869>,  <35.110565, 37.965298, 40.093468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142220, 38.305859, 40.300869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550216, 0.396425, -0.734922,
		-0.831264, 0.343444, -0.437087,
		0.079133, 0.851407, 0.518502,
		35.165958, 38.561279, 40.456421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967331, 38.417912, 39.549179>,  <35.110565, 37.965298, 40.093468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967331, 38.417912, 39.549179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122089, 38.667965, 39.820332>,  <35.214943, 38.817997, 39.983025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122089, 38.667965, 39.820332>,  <34.967331, 38.417912, 39.549179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122089, 38.667965, 39.820332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519790, 0.459361, -0.720281,
		-0.761662, 0.631031, -0.147210,
		0.386897, 0.625129, 0.677882,
		35.238159, 38.855503, 40.023697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906082, 39.060486, 39.197044>,  <34.967331, 38.417912, 39.549179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906082, 39.060486, 39.197044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176701, 39.105911, 39.488079>,  <35.339073, 39.133167, 39.662701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176701, 39.105911, 39.488079>,  <34.906082, 39.060486, 39.197044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176701, 39.105911, 39.488079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567725, 0.548847, -0.613559,
		-0.469012, 0.828173, 0.306850,
		0.676547, 0.113560, 0.727591,
		35.379665, 39.139980, 39.706356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147026, 39.852543, 39.168781>,  <34.906082, 39.060486, 39.197044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147026, 39.852543, 39.168781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421867, 39.615818, 39.337376>,  <35.586773, 39.473782, 39.438534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421867, 39.615818, 39.337376>,  <35.147026, 39.852543, 39.168781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421867, 39.615818, 39.337376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656890, 0.258115, -0.708429,
		0.310467, 0.763631, 0.566107,
		0.687099, -0.591814, 0.421486,
		35.627998, 39.438274, 39.463821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687679, 40.150372, 39.655777>,  <35.147026, 39.852543, 39.168781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687679, 40.150372, 39.655777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008465, 39.914062, 39.691174>,  <36.200935, 39.772278, 39.712410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008465, 39.914062, 39.691174>,  <35.687679, 40.150372, 39.655777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008465, 39.914062, 39.691174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064489, -0.061641, -0.996013,
		0.593875, 0.804477, -0.011336,
		0.801969, -0.590776, 0.088487,
		36.249054, 39.736828, 39.717720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142540, 40.416065, 39.187054>,  <35.687679, 40.150372, 39.655777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142540, 40.416065, 39.187054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231331, 40.033470, 39.262794>,  <36.284607, 39.803913, 39.308239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231331, 40.033470, 39.262794>,  <36.142540, 40.416065, 39.187054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231331, 40.033470, 39.262794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137296, -0.161598, -0.977259,
		0.965337, 0.242927, 0.095452,
		0.221978, -0.956490, 0.189349,
		36.297924, 39.746525, 39.319599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744453, 40.364796, 38.908375>,  <36.142540, 40.416065, 39.187054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744453, 40.364796, 38.908375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651051, 39.978577, 38.954330>,  <36.595009, 39.746845, 38.981903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651051, 39.978577, 38.954330>,  <36.744453, 40.364796, 38.908375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651051, 39.978577, 38.954330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322414, -0.188357, -0.927669,
		0.917347, -0.179571, 0.355287,
		-0.233504, -0.965544, 0.114893,
		36.581001, 39.688915, 38.988800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352528, 39.989208, 38.903675>,  <36.744453, 40.364796, 38.908375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352528, 39.989208, 38.903675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043621, 39.769913, 38.775272>,  <36.858276, 39.638336, 38.698231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043621, 39.769913, 38.775272>,  <37.352528, 39.989208, 38.903675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043621, 39.769913, 38.775272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490920, -0.194248, -0.849273,
		0.403245, -0.813454, 0.419150,
		-0.772263, -0.548234, -0.321011,
		36.811943, 39.605442, 38.678970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557259, 39.262829, 38.704350>,  <37.352528, 39.989208, 38.903675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557259, 39.262829, 38.704350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231075, 39.363163, 38.495693>,  <37.035366, 39.423363, 38.370499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231075, 39.363163, 38.495693>,  <37.557259, 39.262829, 38.704350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231075, 39.363163, 38.495693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443199, -0.309073, -0.841456,
		-0.372296, -0.917362, 0.140863,
		-0.815457, 0.250841, -0.521641,
		36.986439, 39.438416, 38.339203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523342, 38.726105, 38.336647>,  <37.557259, 39.262829, 38.704350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523342, 38.726105, 38.336647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273487, 38.978691, 38.152874>,  <37.123573, 39.130245, 38.042610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273487, 38.978691, 38.152874>,  <37.523342, 38.726105, 38.336647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273487, 38.978691, 38.152874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345593, -0.304047, -0.887762,
		-0.700283, -0.713304, -0.028313,
		-0.624635, 0.631469, -0.459432,
		37.086098, 39.168133, 38.015045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988590, 38.380219, 37.808578>,  <37.523342, 38.726105, 38.336647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988590, 38.380219, 37.808578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039700, 38.759773, 37.693134>,  <37.070366, 38.987507, 37.623867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039700, 38.759773, 37.693134>,  <36.988590, 38.380219, 37.808578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039700, 38.759773, 37.693134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165717, -0.307330, -0.937063,
		-0.977861, 0.071903, -0.196514,
		0.127772, 0.948883, -0.288611,
		37.078030, 39.044437, 37.606552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919601, 38.262375, 37.073845>,  <36.988590, 38.380219, 37.808578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919601, 38.262375, 37.073845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020699, 38.649330, 37.067131>,  <37.081356, 38.881504, 37.063103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020699, 38.649330, 37.067131>,  <36.919601, 38.262375, 37.073845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020699, 38.649330, 37.067131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407534, -0.122173, -0.904980,
		-0.877517, 0.221889, -0.425122,
		0.252744, 0.967388, -0.016782,
		37.096523, 38.939545, 37.062096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638264, 38.567356, 36.370827>,  <36.919601, 38.262375, 37.073845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638264, 38.567356, 36.370827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920952, 38.802067, 36.528931>,  <37.090565, 38.942894, 36.623795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920952, 38.802067, 36.528931>,  <36.638264, 38.567356, 36.370827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920952, 38.802067, 36.528931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510752, -0.036551, -0.858950,
		-0.489567, 0.808921, -0.325531,
		0.706722, 0.586780, 0.395264,
		37.132969, 38.978100, 36.647511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917103, 38.934799, 35.788265>,  <36.638264, 38.567356, 36.370827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917103, 38.934799, 35.788265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202873, 38.989426, 36.062767>,  <37.374336, 39.022202, 36.227467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202873, 38.989426, 36.062767>,  <36.917103, 38.934799, 35.788265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202873, 38.989426, 36.062767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699697, -0.145794, -0.699406,
		0.004538, 0.979844, -0.199712,
		0.714426, 0.136564, 0.686255,
		37.417202, 39.030396, 36.268642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510620, 39.393425, 35.540188>,  <36.917103, 38.934799, 35.788265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510620, 39.393425, 35.540188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721432, 39.235420, 35.841175>,  <37.847919, 39.140617, 36.021767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721432, 39.235420, 35.841175>,  <37.510620, 39.393425, 35.540188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721432, 39.235420, 35.841175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751230, -0.197456, -0.629813,
		0.397362, 0.897206, 0.192679,
		0.527026, -0.395010, 0.752469,
		37.879539, 39.116917, 36.066917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115398, 39.720219, 35.453156>,  <37.510620, 39.393425, 35.540188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115398, 39.720219, 35.453156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169529, 39.380489, 35.657249>,  <38.202007, 39.176651, 35.779705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169529, 39.380489, 35.657249>,  <38.115398, 39.720219, 35.453156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169529, 39.380489, 35.657249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707923, -0.277407, -0.649531,
		0.693204, 0.449106, 0.563713,
		0.135330, -0.849323, 0.510232,
		38.210129, 39.125694, 35.810318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882286, 39.567196, 35.570431>,  <38.115398, 39.720219, 35.453156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882286, 39.567196, 35.570431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675282, 39.224937, 35.567379>,  <38.551079, 39.019585, 35.565548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675282, 39.224937, 35.567379>,  <38.882286, 39.567196, 35.570431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675282, 39.224937, 35.567379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695509, -0.415425, -0.586250,
		0.498451, -0.308698, 0.810094,
		-0.517508, -0.855644, -0.007633,
		38.520027, 38.968243, 35.565090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573181, 39.298885, 35.552910>,  <38.882286, 39.567196, 35.570431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573181, 39.298885, 35.552910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283901, 39.028011, 35.498653>,  <39.110332, 38.865486, 35.466099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283901, 39.028011, 35.498653>,  <39.573181, 39.298885, 35.552910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283901, 39.028011, 35.498653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490213, -0.364983, -0.791504,
		0.486492, -0.638907, 0.595922,
		-0.723199, -0.677189, -0.135640,
		39.066940, 38.824856, 35.457962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949661, 38.665791, 35.487377>,  <39.573181, 39.298885, 35.552910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949661, 38.665791, 35.487377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583462, 38.616871, 35.334068>,  <39.363743, 38.587521, 35.242081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583462, 38.616871, 35.334068>,  <39.949661, 38.665791, 35.487377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583462, 38.616871, 35.334068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401513, -0.337870, -0.851253,
		-0.025392, -0.933213, 0.358425,
		-0.915501, -0.122297, -0.383276,
		39.308811, 38.580181, 35.219086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835941, 37.928020, 35.197525>,  <39.949661, 38.665791, 35.487377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835941, 37.928020, 35.197525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573780, 38.166088, 35.011528>,  <39.416481, 38.308929, 34.899929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573780, 38.166088, 35.011528>,  <39.835941, 37.928020, 35.197525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573780, 38.166088, 35.011528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241615, -0.418091, -0.875684,
		-0.715588, -0.686278, 0.130218,
		-0.655406, 0.595166, -0.464996,
		39.377159, 38.344639, 34.872028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931728, 37.405056, 35.777493>,  <39.835941, 37.928020, 35.197525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931728, 37.405056, 35.777493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228252, 37.138069, 35.749352>,  <40.406166, 36.977875, 35.732468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228252, 37.138069, 35.749352>,  <39.931728, 37.405056, 35.777493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228252, 37.138069, 35.749352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199141, 0.318847, -0.926650,
		0.640944, 0.672920, 0.369283,
		0.741306, -0.667469, -0.070357,
		40.450645, 36.937828, 35.728245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671333, 37.741566, 35.647152>,  <39.931728, 37.405056, 35.777493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671333, 37.741566, 35.647152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684502, 37.380047, 35.476471>,  <40.692402, 37.163136, 35.374062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684502, 37.380047, 35.476471>,  <40.671333, 37.741566, 35.647152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684502, 37.380047, 35.476471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074126, 0.427962, -0.900752,
		0.996705, -0.001972, 0.081086,
		0.032925, -0.903794, -0.426698,
		40.694378, 37.108910, 35.348461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191628, 37.745804, 35.130241>,  <40.671333, 37.741566, 35.647152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191628, 37.745804, 35.130241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942326, 37.444405, 35.046535>,  <40.792744, 37.263565, 34.996311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942326, 37.444405, 35.046535>,  <41.191628, 37.745804, 35.130241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942326, 37.444405, 35.046535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304316, 0.480195, -0.822681,
		0.720379, -0.449056, -0.528585,
		-0.623254, -0.753499, -0.209268,
		40.755348, 37.218353, 34.983757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785965, 37.336155, 34.904034>,  <41.191628, 37.745804, 35.130241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785965, 37.336155, 34.904034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182289, 37.321259, 34.956043>,  <42.420082, 37.312321, 34.987247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182289, 37.321259, 34.956043>,  <41.785965, 37.336155, 34.904034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182289, 37.321259, 34.956043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134045, -0.398278, 0.907418,
		0.017995, -0.916509, -0.399610,
		0.990812, -0.037236, 0.130020,
		42.479534, 37.310089, 34.995049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079727, 36.736393, 34.979649>,  <41.785965, 37.336155, 34.904034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079727, 36.736393, 34.979649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346615, 36.947178, 35.190220>,  <42.506748, 37.073650, 35.316563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346615, 36.947178, 35.190220>,  <42.079727, 36.736393, 34.979649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346615, 36.947178, 35.190220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193107, -0.560211, 0.805527,
		0.719393, -0.639121, -0.272024,
		0.667220, 0.526961, 0.526431,
		42.546780, 37.105267, 35.348148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665642, 36.328362, 35.465061>,  <42.079727, 36.736393, 34.979649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665642, 36.328362, 35.465061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543949, 36.686810, 35.594307>,  <42.470932, 36.901878, 35.671856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543949, 36.686810, 35.594307>,  <42.665642, 36.328362, 35.465061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543949, 36.686810, 35.594307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438868, -0.432910, 0.787391,
		0.845480, 0.097746, 0.524986,
		-0.304236, 0.896122, 0.323119,
		42.452679, 36.955647, 35.691242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888260, 36.261528, 36.085133>,  <42.665642, 36.328362, 35.465061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888260, 36.261528, 36.085133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567730, 36.483875, 35.996689>,  <42.375412, 36.617283, 35.943623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567730, 36.483875, 35.996689>,  <42.888260, 36.261528, 36.085133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567730, 36.483875, 35.996689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531514, -0.491925, 0.689567,
		0.274540, 0.670090, 0.689643,
		-0.801325, 0.555868, -0.221109,
		42.327332, 36.650635, 35.930355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617077, 36.452881, 36.666553>,  <42.888260, 36.261528, 36.085133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617077, 36.452881, 36.666553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308868, 36.466949, 36.411976>,  <42.123943, 36.475391, 36.259228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308868, 36.466949, 36.411976>,  <42.617077, 36.452881, 36.666553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308868, 36.466949, 36.411976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627941, -0.213427, 0.748424,
		-0.109513, 0.976326, 0.186534,
		-0.770517, 0.035170, -0.636448,
		42.077713, 36.477501, 36.221043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619106, 37.208118, 36.669151>,  <42.617077, 36.452881, 36.666553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619106, 37.208118, 36.669151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659912, 37.606022, 36.666561>,  <42.684395, 37.844765, 36.665005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659912, 37.606022, 36.666561>,  <42.619106, 37.208118, 36.669151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659912, 37.606022, 36.666561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973345, -0.098470, 0.207131,
		0.205408, -0.027435, -0.978292,
		0.102015, 0.994762, -0.006477,
		42.690517, 37.904449, 36.664619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298447, 37.318260, 36.323441>,  <42.619106, 37.208118, 36.669151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298447, 37.318260, 36.323441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221352, 37.622101, 36.571911>,  <43.175095, 37.804405, 36.720993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221352, 37.622101, 36.571911>,  <43.298447, 37.318260, 36.323441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221352, 37.622101, 36.571911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964338, 0.029604, 0.263014,
		0.181396, 0.649717, -0.738216,
		-0.192739, 0.759600, 0.621176,
		43.163528, 37.849979, 36.758263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770004, 36.822113, 36.189034>,  <43.298447, 37.318260, 36.323441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770004, 36.822113, 36.189034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617706, 36.462276, 36.274609>,  <43.526329, 36.246376, 36.325954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617706, 36.462276, 36.274609>,  <43.770004, 36.822113, 36.189034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617706, 36.462276, 36.274609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064731, -0.204865, -0.976647,
		0.922413, -0.385698, 0.019769,
		-0.380741, -0.899593, 0.213937,
		43.503483, 36.192398, 36.338791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149654, 36.453045, 35.794376>,  <43.770004, 36.822113, 36.189034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149654, 36.453045, 35.794376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800598, 36.265671, 35.849602>,  <43.591164, 36.153248, 35.882736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800598, 36.265671, 35.849602>,  <44.149654, 36.453045, 35.794376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800598, 36.265671, 35.849602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100386, -0.104618, -0.989433,
		0.477930, -0.877281, 0.044269,
		-0.872643, -0.468436, 0.138066,
		43.538807, 36.125141, 35.891022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016315, 35.767860, 35.567322>,  <44.149654, 36.453045, 35.794376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016315, 35.767860, 35.567322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705696, 36.019325, 35.550541>,  <43.519325, 36.170204, 35.540474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705696, 36.019325, 35.550541>,  <44.016315, 35.767860, 35.567322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705696, 36.019325, 35.550541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105700, 0.064350, -0.992314,
		-0.621133, -0.775009, -0.116421,
		-0.776544, 0.628665, -0.041949,
		43.472733, 36.207924, 35.537956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851173, 35.690350, 35.616318>,  <44.016315, 35.767860, 35.567322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.851173, 35.690350, 35.616318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815872, 35.501785, 35.265324>,  <44.794689, 35.388649, 35.054726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815872, 35.501785, 35.265324>,  <44.851173, 35.690350, 35.616318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815872, 35.501785, 35.265324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990050, 0.055410, -0.129345,
		0.109596, -0.880173, 0.461827,
		-0.088257, -0.471407, -0.877488,
		44.789394, 35.360363, 35.002075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364098, 35.199764, 35.623817>,  <44.851173, 35.690350, 35.616318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364098, 35.199764, 35.623817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302364, 35.325581, 35.249172>,  <45.265324, 35.401070, 35.024384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302364, 35.325581, 35.249172>,  <45.364098, 35.199764, 35.623817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302364, 35.325581, 35.249172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977948, 0.183639, -0.099472,
		0.140710, -0.931311, -0.335948,
		-0.154333, 0.314543, -0.936613,
		45.256065, 35.419945, 34.968189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.582500, 34.776733, 35.253769>,  <45.364098, 35.199764, 35.623817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.582500, 34.776733, 35.253769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.608109, 35.136303, 35.080410>,  <45.623474, 35.352047, 34.976395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.608109, 35.136303, 35.080410>,  <45.582500, 34.776733, 35.253769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.608109, 35.136303, 35.080410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982319, 0.019792, 0.186165,
		0.175926, -0.437650, -0.881767,
		0.064023, 0.898928, -0.433394,
		45.627316, 35.405983, 34.950394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.934036, 34.815639, 34.526054>,  <45.582500, 34.776733, 35.253769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.934036, 34.815639, 34.526054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978371, 35.136745, 34.760418>,  <46.004971, 35.329407, 34.901035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978371, 35.136745, 34.760418>,  <45.934036, 34.815639, 34.526054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.978371, 35.136745, 34.760418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987575, -0.155046, 0.025613,
		0.111404, 0.575791, -0.809971,
		0.110835, 0.802761, 0.585910,
		46.011620, 35.377575, 34.936192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385010, 35.315128, 34.131268>,  <45.934036, 34.815639, 34.526054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385010, 35.315128, 34.131268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.415348, 35.300186, 34.529835>,  <46.433552, 35.291222, 34.768974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.415348, 35.300186, 34.529835>,  <46.385010, 35.315128, 34.131268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.415348, 35.300186, 34.529835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933606, -0.348285, -0.084126,
		0.350181, 0.936644, 0.008461,
		0.075850, -0.037359, 0.996419,
		46.438103, 35.288979, 34.828762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.906128, 35.807972, 34.482880>,  <46.385010, 35.315128, 34.131268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.906128, 35.807972, 34.482880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.852108, 35.445862, 34.643997>,  <46.819695, 35.228596, 34.740669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.852108, 35.445862, 34.643997>,  <46.906128, 35.807972, 34.482880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.852108, 35.445862, 34.643997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990801, -0.126915, 0.046965,
		0.008604, 0.405430, 0.914086,
		-0.135052, -0.905273, 0.402793,
		46.811592, 35.174278, 34.764835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.381809, 35.681686, 34.986103>,  <46.906128, 35.807972, 34.482880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.381809, 35.681686, 34.986103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.305759, 35.325504, 34.820717>,  <47.260132, 35.111797, 34.721485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.305759, 35.325504, 34.820717>,  <47.381809, 35.681686, 34.986103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.305759, 35.325504, 34.820717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971980, -0.111427, -0.206973,
		0.138229, -0.441226, 0.886686,
		-0.190123, -0.890451, -0.413461,
		47.248722, 35.058369, 34.696678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.748280, 35.156479, 35.277081>,  <47.381809, 35.681686, 34.986103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.748280, 35.156479, 35.277081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.681705, 35.047527, 34.898006>,  <47.641762, 34.982155, 34.670563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.681705, 35.047527, 34.898006>,  <47.748280, 35.156479, 35.277081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.681705, 35.047527, 34.898006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965928, -0.238217, -0.101171,
		-0.198198, -0.932234, 0.302750,
		-0.166436, -0.272383, -0.947685,
		47.631775, 34.965813, 34.613701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.003643, 31.411713, 29.428194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.665077, 31.566002, 29.281332>,  <34.461937, 31.658575, 29.193214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.665077, 31.566002, 29.281332>,  <35.003643, 31.411713, 29.428194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665077, 31.566002, 29.281332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023775, 0.661397, 0.749660,
		0.531996, 0.643251, -0.550644,
		-0.846413, 0.385725, -0.367153,
		34.411152, 31.681719, 29.171186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069149, 32.057426, 29.624302>,  <35.003643, 31.411713, 29.428194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069149, 32.057426, 29.624302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.711670, 32.102764, 29.450659>,  <34.497181, 32.129967, 29.346474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.711670, 32.102764, 29.450659>,  <35.069149, 32.057426, 29.624302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711670, 32.102764, 29.450659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133635, 0.856401, 0.498718,
		0.428297, 0.503717, -0.750220,
		-0.893702, 0.113344, -0.434108,
		34.443558, 32.136768, 29.320427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219246, 32.767040, 29.372543>,  <35.069149, 32.057426, 29.624302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219246, 32.767040, 29.372543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843792, 32.649529, 29.444832>,  <34.618519, 32.579021, 29.488205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843792, 32.649529, 29.444832>,  <35.219246, 32.767040, 29.372543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843792, 32.649529, 29.444832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136437, 0.797477, 0.587720,
		-0.316780, 0.526997, -0.788622,
		-0.938635, -0.293775, 0.180723,
		34.562202, 32.561398, 29.499048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762321, 33.365326, 29.322256>,  <35.219246, 32.767040, 29.372543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762321, 33.365326, 29.322256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.564781, 33.093243, 29.538933>,  <34.446259, 32.929993, 29.668938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.564781, 33.093243, 29.538933>,  <34.762321, 33.365326, 29.322256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564781, 33.093243, 29.538933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278082, 0.713783, 0.642794,
		-0.823885, 0.166807, -0.541654,
		-0.493846, -0.680212, 0.541689,
		34.416626, 32.889179, 29.701439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185425, 33.708424, 29.515438>,  <34.762321, 33.365326, 29.322256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185425, 33.708424, 29.515438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.197815, 33.403198, 29.773670>,  <34.205250, 33.220062, 29.928610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.197815, 33.403198, 29.773670>,  <34.185425, 33.708424, 29.515438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197815, 33.403198, 29.773670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015040, 0.645461, 0.763645,
		-0.999407, -0.033360, 0.008514,
		0.030970, -0.763064, 0.645580,
		34.207108, 33.174278, 29.967344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582333, 33.797791, 30.051916>,  <34.185425, 33.708424, 29.515438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582333, 33.797791, 30.051916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.857952, 33.555119, 30.210485>,  <34.023323, 33.409515, 30.305626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.857952, 33.555119, 30.210485>,  <33.582333, 33.797791, 30.051916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857952, 33.555119, 30.210485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063071, 0.595130, 0.801151,
		-0.721964, -0.527030, 0.448338,
		0.689050, -0.606679, 0.396422,
		34.064667, 33.373116, 30.329412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345886, 33.556377, 30.810509>,  <33.582333, 33.797791, 30.051916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345886, 33.556377, 30.810509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.745499, 33.545357, 30.796728>,  <33.985264, 33.538746, 30.788460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.745499, 33.545357, 30.796728>,  <33.345886, 33.556377, 30.810509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745499, 33.545357, 30.796728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044014, 0.674179, 0.737256,
		0.002915, -0.738054, 0.674735,
		0.999027, -0.027549, -0.034450,
		34.045208, 33.537090, 30.786392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520161, 33.550014, 31.515537>,  <33.345886, 33.556377, 30.810509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520161, 33.550014, 31.515537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.846001, 33.675282, 31.320251>,  <34.041504, 33.750443, 31.203079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.846001, 33.675282, 31.320251>,  <33.520161, 33.550014, 31.515537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846001, 33.675282, 31.320251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181762, 0.661491, 0.727594,
		0.550811, -0.681435, 0.481927,
		0.814598, 0.313171, -0.488215,
		34.090382, 33.769234, 31.173786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126637, 33.505615, 32.010864>,  <33.520161, 33.550014, 31.515537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126637, 33.505615, 32.010864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.295544, 33.743568, 31.737278>,  <34.396889, 33.886341, 31.573126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.295544, 33.743568, 31.737278>,  <34.126637, 33.505615, 32.010864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295544, 33.743568, 31.737278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320373, 0.607897, 0.726514,
		0.847967, -0.525909, 0.066114,
		0.422271, 0.594879, -0.683964,
		34.422226, 33.922031, 31.532089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731491, 33.722298, 32.340611>,  <34.126637, 33.505615, 32.010864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731491, 33.722298, 32.340611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.681492, 33.993576, 32.050941>,  <34.651493, 34.156342, 31.877140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.681492, 33.993576, 32.050941>,  <34.731491, 33.722298, 32.340611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681492, 33.993576, 32.050941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320754, 0.718328, 0.617351,
		0.938878, -0.155112, -0.307324,
		-0.125001, 0.678193, -0.724175,
		34.643993, 34.197033, 31.833689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376801, 34.117393, 32.285267>,  <34.731491, 33.722298, 32.340611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376801, 34.117393, 32.285267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.082951, 34.340378, 32.130573>,  <34.906643, 34.474171, 32.037758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.082951, 34.340378, 32.130573>,  <35.376801, 34.117393, 32.285267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082951, 34.340378, 32.130573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283876, 0.770261, 0.571062,
		0.616236, 0.309729, -0.724100,
		-0.734621, 0.557464, -0.386738,
		34.862564, 34.507618, 32.014553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745647, 34.710110, 32.211487>,  <35.376801, 34.117393, 32.285267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745647, 34.710110, 32.211487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.359570, 34.814030, 32.199528>,  <35.127922, 34.876381, 32.192352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.359570, 34.814030, 32.199528>,  <35.745647, 34.710110, 32.211487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359570, 34.814030, 32.199528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196879, 0.797116, 0.570828,
		0.172130, 0.545077, -0.820525,
		-0.965199, 0.259801, -0.029893,
		35.070011, 34.891972, 32.190559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749668, 35.307072, 31.902035>,  <35.745647, 34.710110, 32.211487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749668, 35.307072, 31.902035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.417484, 35.278214, 32.122990>,  <35.218174, 35.260899, 32.255562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.417484, 35.278214, 32.122990>,  <35.749668, 35.307072, 31.902035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417484, 35.278214, 32.122990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267533, 0.818098, 0.509060,
		-0.488631, 0.570536, -0.660097,
		-0.830461, -0.072145, 0.552385,
		35.168346, 35.256569, 32.288704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528221, 35.975643, 32.029388>,  <35.749668, 35.307072, 31.902035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528221, 35.975643, 32.029388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.358669, 35.762863, 32.322609>,  <35.256939, 35.635197, 32.498539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.358669, 35.762863, 32.322609>,  <35.528221, 35.975643, 32.029388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358669, 35.762863, 32.322609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247191, 0.710682, 0.658656,
		-0.871334, 0.460393, -0.169751,
		-0.423879, -0.531948, 0.733047,
		35.231506, 35.603279, 32.542522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132679, 36.504478, 32.436672>,  <35.528221, 35.975643, 32.029388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132679, 36.504478, 32.436672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.123520, 36.171974, 32.658833>,  <35.118023, 35.972469, 32.792130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.123520, 36.171974, 32.658833>,  <35.132679, 36.504478, 32.436672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123520, 36.171974, 32.658833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214536, 0.538523, 0.814842,
		-0.976448, 0.137812, 0.166006,
		-0.022897, -0.831265, 0.555405,
		35.116650, 35.922596, 32.825455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728851, 36.607594, 32.957420>,  <35.132679, 36.504478, 32.436672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728851, 36.607594, 32.957420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.945526, 36.305016, 33.104046>,  <35.075531, 36.123470, 33.192020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.945526, 36.305016, 33.104046>,  <34.728851, 36.607594, 32.957420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945526, 36.305016, 33.104046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192728, 0.536235, 0.821771,
		-0.818185, -0.374499, 0.436261,
		0.541691, -0.756441, 0.366563,
		35.108032, 36.078083, 33.214016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660069, 36.639919, 33.666821>,  <34.728851, 36.607594, 32.957420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660069, 36.639919, 33.666821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.988224, 36.411880, 33.649166>,  <35.185120, 36.275059, 33.638573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.988224, 36.411880, 33.649166>,  <34.660069, 36.639919, 33.666821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988224, 36.411880, 33.649166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407753, 0.529167, 0.744123,
		-0.400870, -0.628467, 0.666583,
		0.820391, -0.570098, -0.044132,
		35.234341, 36.240852, 33.635925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789852, 36.343086, 34.347050>,  <34.660069, 36.639919, 33.666821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789852, 36.343086, 34.347050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133900, 36.331974, 34.143318>,  <35.340328, 36.325306, 34.021080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133900, 36.331974, 34.143318>,  <34.789852, 36.343086, 34.347050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133900, 36.331974, 34.143318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441336, 0.541188, 0.715778,
		0.255759, -0.840443, 0.477749,
		0.860122, -0.027781, -0.509331,
		35.391937, 36.323639, 33.990520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217766, 36.144585, 34.812405>,  <34.789852, 36.343086, 34.347050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217766, 36.144585, 34.812405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.456387, 36.307152, 34.535580>,  <35.599560, 36.404690, 34.369484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.456387, 36.307152, 34.535580>,  <35.217766, 36.144585, 34.812405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456387, 36.307152, 34.535580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572819, 0.388370, 0.721836,
		0.562142, -0.827041, -0.001119,
		0.596553, 0.406415, -0.692063,
		35.635353, 36.429077, 34.327961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759342, 36.282421, 35.235111>,  <35.217766, 36.144585, 34.812405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759342, 36.282421, 35.235111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830521, 36.492676, 34.902355>,  <35.873226, 36.618828, 34.702702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830521, 36.492676, 34.902355>,  <35.759342, 36.282421, 35.235111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830521, 36.492676, 34.902355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581248, 0.626004, 0.519875,
		0.794032, -0.576044, -0.194130,
		0.177945, 0.525635, -0.831892,
		35.883904, 36.650368, 34.652786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582237, 36.333572, 35.177998>,  <35.759342, 36.282421, 35.235111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582237, 36.333572, 35.177998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.420174, 36.636051, 34.972469>,  <36.322937, 36.817539, 34.849152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.420174, 36.636051, 34.972469>,  <36.582237, 36.333572, 35.177998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420174, 36.636051, 34.972469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536270, 0.651748, 0.536320,
		0.740446, -0.058254, -0.669586,
		-0.405159, 0.756195, -0.513824,
		36.298626, 36.862911, 34.818321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068874, 36.868191, 35.061939>,  <36.582237, 36.333572, 35.177998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068874, 36.868191, 35.061939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749374, 37.084946, 34.957359>,  <36.557674, 37.215000, 34.894611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749374, 37.084946, 34.957359>,  <37.068874, 36.868191, 35.061939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749374, 37.084946, 34.957359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421506, 0.814067, 0.399533,
		0.429345, 0.208922, -0.878644,
		-0.798747, 0.541891, -0.261454,
		36.509750, 37.247513, 34.878922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780754, 37.120029, 35.024601>,  <37.068874, 36.868191, 35.061939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780754, 37.120029, 35.024601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.033386, 36.851139, 35.179115>,  <38.184963, 36.689804, 35.271824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.033386, 36.851139, 35.179115>,  <37.780754, 37.120029, 35.024601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033386, 36.851139, 35.179115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209522, -0.627679, -0.749746,
		0.746465, 0.392588, -0.537276,
		0.631578, -0.672230, 0.386284,
		38.222858, 36.649471, 35.295002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173492, 36.853443, 34.511314>,  <37.780754, 37.120029, 35.024601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173492, 36.853443, 34.511314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.235168, 36.563084, 34.779430>,  <38.272175, 36.388866, 34.940300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.235168, 36.563084, 34.779430>,  <38.173492, 36.853443, 34.511314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235168, 36.563084, 34.779430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459866, -0.653170, -0.601574,
		0.874500, -0.215491, -0.434528,
		0.154187, -0.725901, 0.670294,
		38.281425, 36.345314, 34.980518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516190, 36.334759, 34.148640>,  <38.173492, 36.853443, 34.511314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516190, 36.334759, 34.148640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.378571, 36.143566, 34.471912>,  <38.295998, 36.028851, 34.665878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.378571, 36.143566, 34.471912>,  <38.516190, 36.334759, 34.148640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378571, 36.143566, 34.471912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181654, -0.810585, -0.556735,
		0.921212, -0.338355, 0.192054,
		-0.344050, -0.477984, 0.808184,
		38.275356, 36.000172, 34.714367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874039, 35.747246, 34.089138>,  <38.516190, 36.334759, 34.148640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874039, 35.747246, 34.089138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.564117, 35.661392, 34.327000>,  <38.378162, 35.609879, 34.469715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.564117, 35.661392, 34.327000>,  <38.874039, 35.747246, 34.089138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564117, 35.661392, 34.327000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167291, -0.837467, -0.520253,
		0.609664, -0.502574, 0.612967,
		-0.774805, -0.214636, 0.594649,
		38.331676, 35.597000, 34.505394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989971, 35.073696, 34.376461>,  <38.874039, 35.747246, 34.089138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989971, 35.073696, 34.376461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.593674, 35.126152, 34.390511>,  <38.355896, 35.157623, 34.398941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.593674, 35.126152, 34.390511>,  <38.989971, 35.073696, 34.376461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593674, 35.126152, 34.390511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133240, -0.889644, -0.436785,
		-0.026028, -0.437422, 0.898880,
		-0.990742, 0.131136, 0.035127,
		38.296452, 35.165493, 34.401047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723022, 34.425797, 34.708263>,  <38.989971, 35.073696, 34.376461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723022, 34.425797, 34.708263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.410099, 34.583565, 34.515423>,  <38.222343, 34.678226, 34.399719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.410099, 34.583565, 34.515423>,  <38.723022, 34.425797, 34.708263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410099, 34.583565, 34.515423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077319, -0.829484, -0.553152,
		-0.618068, -0.395463, 0.679412,
		-0.782313, 0.394417, -0.482101,
		38.175404, 34.701889, 34.370792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235111, 33.992382, 34.818848>,  <38.723022, 34.425797, 34.708263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235111, 33.992382, 34.818848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156902, 34.184444, 34.476803>,  <38.109978, 34.299683, 34.271576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156902, 34.184444, 34.476803>,  <38.235111, 33.992382, 34.818848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156902, 34.184444, 34.476803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293855, -0.860566, -0.416024,
		-0.935640, 0.169939, 0.309353,
		-0.195519, 0.480154, -0.855117,
		38.098248, 34.328491, 34.220268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574532, 33.712753, 34.657158>,  <38.235111, 33.992382, 34.818848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574532, 33.712753, 34.657158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.651859, 33.892380, 34.308224>,  <37.698257, 34.000156, 34.098862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.651859, 33.892380, 34.308224>,  <37.574532, 33.712753, 34.657158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651859, 33.892380, 34.308224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348457, -0.799719, -0.488903,
		-0.917172, 0.398487, 0.001876,
		0.193321, 0.449062, -0.872336,
		37.709854, 34.027100, 34.046524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954544, 33.631832, 34.299629>,  <37.574532, 33.712753, 34.657158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954544, 33.631832, 34.299629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248825, 33.708363, 34.039742>,  <37.425392, 33.754280, 33.883808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248825, 33.708363, 34.039742>,  <36.954544, 33.631832, 34.299629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248825, 33.708363, 34.039742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385346, -0.670650, -0.633828,
		-0.557004, 0.716675, -0.419670,
		0.735701, 0.191326, -0.649722,
		37.469536, 33.765762, 33.844826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624237, 33.758663, 33.641911>,  <36.954544, 33.631832, 34.299629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624237, 33.758663, 33.641911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.006275, 33.674164, 33.558807>,  <37.235500, 33.623463, 33.508945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.006275, 33.674164, 33.558807>,  <36.624237, 33.758663, 33.641911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006275, 33.674164, 33.558807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295457, -0.626535, -0.721221,
		0.022192, 0.750219, -0.660817,
		0.955098, -0.211248, -0.207753,
		37.292805, 33.610790, 33.496483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732418, 33.852333, 33.030899>,  <36.624237, 33.758663, 33.641911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732418, 33.852333, 33.030899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040432, 33.605602, 33.096100>,  <37.225239, 33.457561, 33.135220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040432, 33.605602, 33.096100>,  <36.732418, 33.852333, 33.030899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040432, 33.605602, 33.096100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249297, -0.526079, -0.813075,
		0.587285, 0.585456, -0.558872,
		0.770031, -0.616832, 0.163006,
		37.271442, 33.420551, 33.145000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117249, 33.762264, 32.274830>,  <36.732418, 33.852333, 33.030899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117249, 33.762264, 32.274830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.236259, 33.458786, 32.506645>,  <37.307667, 33.276699, 32.645733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.236259, 33.458786, 32.506645>,  <37.117249, 33.762264, 32.274830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236259, 33.458786, 32.506645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112955, -0.574788, -0.810469,
		0.948009, 0.306595, -0.085314,
		0.297523, -0.758695, 0.579536,
		37.325516, 33.231178, 32.680508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577492, 33.383003, 31.848534>,  <37.117249, 33.762264, 32.274830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577492, 33.383003, 31.848534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.499908, 33.123917, 32.143246>,  <37.453358, 32.968464, 32.320072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.499908, 33.123917, 32.143246>,  <37.577492, 33.383003, 31.848534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499908, 33.123917, 32.143246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001146, -0.751190, -0.660085,
		0.981009, -0.127184, 0.146441,
		-0.193957, -0.647717, 0.736778,
		37.441723, 32.929600, 32.364281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979046, 32.837711, 31.703918>,  <37.577492, 33.383003, 31.848534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979046, 32.837711, 31.703918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.689800, 32.703743, 31.945560>,  <37.516254, 32.623363, 32.090546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.689800, 32.703743, 31.945560>,  <37.979046, 32.837711, 31.703918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689800, 32.703743, 31.945560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133227, -0.790534, -0.597752,
		0.677763, -0.512723, 0.527022,
		-0.723110, -0.334921, 0.604103,
		37.472866, 32.603268, 32.126793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065247, 32.076859, 31.781603>,  <37.979046, 32.837711, 31.703918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065247, 32.076859, 31.781603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.687054, 32.175220, 31.867010>,  <37.460136, 32.234238, 31.918255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.687054, 32.175220, 31.867010>,  <38.065247, 32.076859, 31.781603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687054, 32.175220, 31.867010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325657, -0.707998, -0.626647,
		-0.002928, -0.662018, 0.749482,
		-0.945484, 0.245908, 0.213518,
		37.403408, 32.248993, 31.931065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811165, 31.559544, 32.016235>,  <38.065247, 32.076859, 31.781603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811165, 31.559544, 32.016235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482098, 31.753780, 31.897964>,  <37.284657, 31.870321, 31.827003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482098, 31.753780, 31.897964>,  <37.811165, 31.559544, 32.016235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482098, 31.753780, 31.897964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205929, -0.739269, -0.641150,
		-0.529918, -0.466565, 0.708169,
		-0.822667, 0.485589, -0.295672,
		37.235298, 31.899458, 31.809263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296646, 31.050240, 32.014889>,  <37.811165, 31.559544, 32.016235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296646, 31.050240, 32.014889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.137245, 31.337729, 31.786982>,  <37.041607, 31.510221, 31.650238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.137245, 31.337729, 31.786982>,  <37.296646, 31.050240, 32.014889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137245, 31.337729, 31.786982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437562, -0.694950, -0.570599,
		-0.806063, 0.021925, 0.591424,
		-0.398500, 0.718724, -0.569767,
		37.017696, 31.553345, 31.616051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586044, 30.844818, 31.868097>,  <37.296646, 31.050240, 32.014889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586044, 30.844818, 31.868097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682968, 31.099773, 31.575518>,  <36.741123, 31.252747, 31.399969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682968, 31.099773, 31.575518>,  <36.586044, 30.844818, 31.868097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682968, 31.099773, 31.575518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474428, -0.579785, -0.662395,
		-0.846287, 0.507527, 0.161905,
		0.242313, 0.637389, -0.731450,
		36.755661, 31.290991, 31.356083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.989738, 30.863617, 31.398129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263916, 31.028257, 31.157879>,  <36.428421, 31.127041, 31.013729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263916, 31.028257, 31.157879>,  <35.989738, 30.863617, 31.398129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263916, 31.028257, 31.157879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261211, -0.630980, -0.730502,
		-0.679658, 0.657608, -0.324986,
		0.685444, 0.411602, -0.600625,
		36.469547, 31.151737, 30.977692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658230, 31.198376, 30.841885>,  <35.989738, 30.863617, 31.398129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658230, 31.198376, 30.841885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.028774, 31.086826, 30.740629>,  <36.251102, 31.019896, 30.679876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.028774, 31.086826, 30.740629>,  <35.658230, 31.198376, 30.841885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028774, 31.086826, 30.740629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363290, -0.484325, -0.795895,
		0.099353, 0.829251, -0.549974,
		0.926363, -0.278875, -0.253140,
		36.306683, 31.003164, 30.664688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736912, 31.378685, 30.151045>,  <35.658230, 31.198376, 30.841885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736912, 31.378685, 30.151045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033672, 31.119230, 30.218994>,  <36.211727, 30.963558, 30.259764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033672, 31.119230, 30.218994>,  <35.736912, 31.378685, 30.151045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033672, 31.119230, 30.218994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191777, -0.448034, -0.873205,
		0.642501, 0.615253, -0.456789,
		0.741899, -0.648637, 0.169871,
		36.256241, 30.924639, 30.269955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112057, 31.435673, 29.561119>,  <35.736912, 31.378685, 30.151045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112057, 31.435673, 29.561119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.237644, 31.088270, 29.714542>,  <36.312996, 30.879829, 29.806597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.237644, 31.088270, 29.714542>,  <36.112057, 31.435673, 29.561119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237644, 31.088270, 29.714542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182384, -0.451638, -0.873361,
		0.931749, 0.204257, -0.300204,
		0.313974, -0.868506, 0.383561,
		36.331837, 30.827719, 29.829611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573204, 31.228361, 29.132839>,  <36.112057, 31.435673, 29.561119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573204, 31.228361, 29.132839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.453362, 30.899376, 29.326246>,  <36.381458, 30.701984, 29.442291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.453362, 30.899376, 29.326246>,  <36.573204, 31.228361, 29.132839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453362, 30.899376, 29.326246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128190, -0.467500, -0.874649,
		0.945413, -0.324030, 0.034633,
		-0.299604, -0.822465, 0.483518,
		36.363480, 30.652636, 29.471302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989773, 30.695568, 28.862926>,  <36.573204, 31.228361, 29.132839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989773, 30.695568, 28.862926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.692894, 30.495342, 29.041178>,  <36.514767, 30.375208, 29.148129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.692894, 30.495342, 29.041178>,  <36.989773, 30.695568, 28.862926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692894, 30.495342, 29.041178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071783, -0.601732, -0.795466,
		0.666329, -0.622379, 0.410671,
		-0.742195, -0.500563, 0.445627,
		36.470234, 30.345173, 29.174866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255417, 29.951807, 28.930206>,  <36.989773, 30.695568, 28.862926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255417, 29.951807, 28.930206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.856819, 29.930916, 28.956343>,  <36.617661, 29.918381, 28.972025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.856819, 29.930916, 28.956343>,  <37.255417, 29.951807, 28.930206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856819, 29.930916, 28.956343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022850, -0.581452, -0.813259,
		0.080470, -0.811902, 0.578221,
		-0.996495, -0.052230, 0.065341,
		36.557869, 29.915247, 28.975945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131733, 29.305754, 28.881109>,  <37.255417, 29.951807, 28.930206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131733, 29.305754, 28.881109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.773537, 29.466444, 28.804462>,  <36.558620, 29.562859, 28.758474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.773537, 29.466444, 28.804462>,  <37.131733, 29.305754, 28.881109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773537, 29.466444, 28.804462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067330, -0.547834, -0.833873,
		-0.439960, -0.733823, 0.517627,
		-0.895490, 0.401723, -0.191617,
		36.504890, 29.586962, 28.746977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642105, 28.723234, 28.969151>,  <37.131733, 29.305754, 28.881109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642105, 28.723234, 28.969151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.492565, 29.003103, 28.725613>,  <36.402843, 29.171024, 28.579489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.492565, 29.003103, 28.725613>,  <36.642105, 28.723234, 28.969151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492565, 29.003103, 28.725613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038150, -0.667490, -0.743641,
		-0.926706, -0.254779, 0.276230,
		-0.373845, 0.699675, -0.608847,
		36.380413, 29.213005, 28.542959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994587, 28.389372, 28.642353>,  <36.642105, 28.723234, 28.969151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994587, 28.389372, 28.642353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.085270, 28.706697, 28.416342>,  <36.139679, 28.897093, 28.280735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.085270, 28.706697, 28.416342>,  <35.994587, 28.389372, 28.642353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085270, 28.706697, 28.416342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077620, -0.593005, -0.801449,
		-0.970864, 0.137840, -0.196018,
		0.226711, 0.793312, -0.565029,
		36.153282, 28.944691, 28.246834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471413, 28.383087, 28.128944>,  <35.994587, 28.389372, 28.642353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471413, 28.383087, 28.128944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.795429, 28.571653, 27.989458>,  <35.989838, 28.684793, 27.905767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.795429, 28.571653, 27.989458>,  <35.471413, 28.383087, 28.128944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795429, 28.571653, 27.989458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112607, -0.708690, -0.696475,
		-0.575459, 0.524906, -0.627153,
		0.810041, 0.471415, -0.348715,
		36.038441, 28.713078, 27.884844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352276, 28.205435, 27.515947>,  <35.471413, 28.383087, 28.128944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352276, 28.205435, 27.515947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729431, 28.338678, 27.516045>,  <35.955723, 28.418625, 27.516104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729431, 28.338678, 27.516045>,  <35.352276, 28.205435, 27.515947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729431, 28.338678, 27.516045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222759, -0.629987, -0.743973,
		-0.247670, 0.701538, -0.668210,
		0.942888, 0.333109, 0.000245,
		36.012299, 28.438612, 27.516119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482616, 28.352009, 26.856325>,  <35.352276, 28.205435, 27.515947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482616, 28.352009, 26.856325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.835896, 28.289761, 27.033298>,  <36.047863, 28.252413, 27.139482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.835896, 28.289761, 27.033298>,  <35.482616, 28.352009, 26.856325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835896, 28.289761, 27.033298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278366, -0.585286, -0.761546,
		0.377461, 0.795753, -0.473604,
		0.883196, -0.155619, 0.442433,
		36.100853, 28.243074, 27.166029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041649, 28.544588, 26.313185>,  <35.482616, 28.352009, 26.856325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041649, 28.544588, 26.313185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231632, 28.317514, 26.582153>,  <36.345623, 28.181271, 26.743534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231632, 28.317514, 26.582153>,  <36.041649, 28.544588, 26.313185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231632, 28.317514, 26.582153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531968, -0.423476, -0.733265,
		0.701016, 0.705978, 0.100855,
		0.474959, -0.567683, 0.672421,
		36.374119, 28.147209, 26.783880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745876, 28.582043, 26.111185>,  <36.041649, 28.544588, 26.313185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745876, 28.582043, 26.111185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707073, 28.261030, 26.346655>,  <36.683792, 28.068422, 26.487936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707073, 28.261030, 26.346655>,  <36.745876, 28.582043, 26.111185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707073, 28.261030, 26.346655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513329, -0.547068, -0.661218,
		0.852691, 0.238040, 0.465032,
		-0.097008, -0.802530, 0.588673,
		36.677971, 28.020271, 26.523256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427208, 28.071217, 25.998178>,  <36.745876, 28.582043, 26.111185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427208, 28.071217, 25.998178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.173508, 27.826395, 26.187122>,  <37.021290, 27.679502, 26.300488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.173508, 27.826395, 26.187122>,  <37.427208, 28.071217, 25.998178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173508, 27.826395, 26.187122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376066, -0.778052, -0.503199,
		0.675503, -0.141515, 0.723650,
		-0.634247, -0.612053, 0.472357,
		36.983234, 27.642778, 26.328829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854370, 27.489248, 26.287598>,  <37.427208, 28.071217, 25.998178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854370, 27.489248, 26.287598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.478317, 27.354736, 26.265472>,  <37.252686, 27.274029, 26.252197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.478317, 27.354736, 26.265472>,  <37.854370, 27.489248, 26.287598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478317, 27.354736, 26.265472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319116, -0.811680, -0.489224,
		0.119619, -0.477589, 0.870402,
		-0.940136, -0.336280, -0.055314,
		37.196278, 27.253853, 26.248878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882408, 26.833673, 26.516050>,  <37.854370, 27.489248, 26.287598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882408, 26.833673, 26.516050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.529491, 26.832939, 26.327770>,  <37.317741, 26.832499, 26.214802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.529491, 26.832939, 26.327770>,  <37.882408, 26.833673, 26.516050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529491, 26.832939, 26.327770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239043, -0.863193, -0.444697,
		-0.405491, -0.504870, 0.762026,
		-0.882290, -0.001836, -0.470702,
		37.264805, 26.832388, 26.186560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606533, 26.053932, 26.471178>,  <37.882408, 26.833673, 26.516050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606533, 26.053932, 26.471178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.422165, 26.284317, 26.201120>,  <37.311543, 26.422548, 26.039085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.422165, 26.284317, 26.201120>,  <37.606533, 26.053932, 26.471178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422165, 26.284317, 26.201120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131868, -0.707878, -0.693916,
		-0.877588, -0.408872, 0.250327,
		-0.460924, 0.575962, -0.675142,
		37.283886, 26.457106, 25.998577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205883, 25.673279, 26.202961>,  <37.606533, 26.053932, 26.471178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205883, 25.673279, 26.202961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.268936, 25.945490, 25.916735>,  <37.306770, 26.108816, 25.744999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.268936, 25.945490, 25.916735>,  <37.205883, 25.673279, 26.202961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268936, 25.945490, 25.916735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203745, -0.731446, -0.650750,
		-0.966250, -0.043212, -0.253956,
		0.157635, 0.680529, -0.715564,
		37.316227, 26.149649, 25.702066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775776, 25.454599, 25.544498>,  <37.205883, 25.673279, 26.202961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775776, 25.454599, 25.544498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.066971, 25.705807, 25.434500>,  <37.241688, 25.856531, 25.368500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.066971, 25.705807, 25.434500>,  <36.775776, 25.454599, 25.544498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066971, 25.705807, 25.434500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250601, -0.617108, -0.745907,
		-0.638146, 0.474098, -0.606630,
		0.727989, 0.628020, -0.274996,
		37.285366, 25.894213, 25.352001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634033, 25.511379, 24.820606>,  <36.775776, 25.454599, 25.544498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634033, 25.511379, 24.820606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005928, 25.651791, 24.865088>,  <37.229065, 25.736038, 24.891777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005928, 25.651791, 24.865088>,  <36.634033, 25.511379, 24.820606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005928, 25.651791, 24.865088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280568, -0.479745, -0.831340,
		-0.238475, 0.804128, -0.544525,
		0.929737, 0.351031, 0.111205,
		37.284847, 25.757099, 24.898449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933929, 25.772612, 24.174704>,  <36.634033, 25.511379, 24.820606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933929, 25.772612, 24.174704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.235527, 25.685061, 24.422440>,  <37.416485, 25.632530, 24.571081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.235527, 25.685061, 24.422440>,  <36.933929, 25.772612, 24.174704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235527, 25.685061, 24.422440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298577, -0.725623, -0.619937,
		0.585098, 0.652351, -0.481766,
		0.753997, -0.218879, 0.619338,
		37.461727, 25.619396, 24.608240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606880, 26.271072, 23.608604>,  <36.933929, 25.772612, 24.174704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606880, 26.271072, 23.608604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.337704, 26.478586, 23.397696>,  <36.176197, 26.603094, 23.271151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.337704, 26.478586, 23.397696>,  <36.606880, 26.271072, 23.608604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337704, 26.478586, 23.397696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192731, 0.811172, 0.552136,
		0.714149, 0.269932, -0.645855,
		-0.672939, 0.518784, -0.527273,
		36.135822, 26.634222, 23.239513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560925, 26.983360, 23.822777>,  <36.606880, 26.271072, 23.608604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560925, 26.983360, 23.822777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.294693, 27.005322, 23.525055>,  <36.134953, 27.018497, 23.346422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.294693, 27.005322, 23.525055>,  <36.560925, 26.983360, 23.822777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294693, 27.005322, 23.525055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198701, 0.948260, 0.247631,
		0.719388, 0.312712, -0.620235,
		-0.665581, 0.054902, -0.744303,
		36.095020, 27.021791, 23.301764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631435, 27.565041, 23.545441>,  <36.560925, 26.983360, 23.822777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631435, 27.565041, 23.545441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.262794, 27.461653, 23.429621>,  <36.041611, 27.399620, 23.360128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.262794, 27.461653, 23.429621>,  <36.631435, 27.565041, 23.545441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262794, 27.461653, 23.429621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295529, 0.950913, 0.091799,
		0.251610, 0.170173, -0.952750,
		-0.921604, -0.258468, -0.289551,
		35.986313, 27.384113, 23.342756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361614, 28.220881, 23.355385>,  <36.631435, 27.565041, 23.545441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361614, 28.220881, 23.355385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033794, 27.996109, 23.400240>,  <35.837101, 27.861246, 23.427153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033794, 27.996109, 23.400240>,  <36.361614, 28.220881, 23.355385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033794, 27.996109, 23.400240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513005, 0.806726, 0.293288,
		-0.255272, 0.182836, -0.949425,
		-0.819550, -0.561928, 0.112139,
		35.787930, 27.827530, 23.433882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742279, 28.600706, 23.113012>,  <36.361614, 28.220881, 23.355385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742279, 28.600706, 23.113012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.609379, 28.314077, 23.358332>,  <35.529640, 28.142099, 23.505524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.609379, 28.314077, 23.358332>,  <35.742279, 28.600706, 23.113012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609379, 28.314077, 23.358332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497943, 0.685496, 0.531176,
		-0.801040, -0.128905, -0.584567,
		-0.332248, -0.716574, 0.613297,
		35.509705, 28.099106, 23.542320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050854, 28.796711, 23.219810>,  <35.742279, 28.600706, 23.113012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050854, 28.796711, 23.219810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136097, 28.564030, 23.533806>,  <35.187241, 28.424421, 23.722204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136097, 28.564030, 23.533806>,  <35.050854, 28.796711, 23.219810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136097, 28.564030, 23.533806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586415, 0.566482, 0.578978,
		-0.781476, -0.583712, -0.220401,
		0.213103, -0.581704, 0.784989,
		35.200027, 28.389519, 23.769302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399673, 28.787594, 23.516624>,  <35.050854, 28.796711, 23.219810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399673, 28.787594, 23.516624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.629940, 28.648588, 23.812689>,  <34.768101, 28.565184, 23.990328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.629940, 28.648588, 23.812689>,  <34.399673, 28.787594, 23.516624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629940, 28.648588, 23.812689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557308, 0.495627, 0.666155,
		-0.598343, -0.795982, 0.091643,
		0.575668, -0.347516, 0.740162,
		34.802639, 28.544334, 24.034737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948639, 28.820921, 24.192230>,  <34.399673, 28.787594, 23.516624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948639, 28.820921, 24.192230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.325981, 28.802061, 24.323593>,  <34.552387, 28.790745, 24.402411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.325981, 28.802061, 24.323593>,  <33.948639, 28.820921, 24.192230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325981, 28.802061, 24.323593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241497, 0.581151, 0.777138,
		-0.227498, -0.812429, 0.536847,
		0.943358, -0.047151, 0.328409,
		34.608990, 28.787916, 24.422115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879673, 28.684341, 24.925619>,  <33.948639, 28.820921, 24.192230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879673, 28.684341, 24.925619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.256447, 28.812777, 24.886305>,  <34.482510, 28.889837, 24.862717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.256447, 28.812777, 24.886305>,  <33.879673, 28.684341, 24.925619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256447, 28.812777, 24.886305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132750, 0.624924, 0.769316,
		0.308437, -0.711599, 0.631263,
		0.941936, 0.321086, -0.098285,
		34.539028, 28.909103, 24.856819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234215, 28.668034, 25.606211>,  <33.879673, 28.684341, 24.925619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234215, 28.668034, 25.606211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.431530, 28.939096, 25.388056>,  <34.549919, 29.101734, 25.257162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.431530, 28.939096, 25.388056>,  <34.234215, 28.668034, 25.606211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431530, 28.939096, 25.388056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105447, 0.668939, 0.735799,
		0.863452, -0.305451, 0.401436,
		0.493287, 0.677658, -0.545388,
		34.579517, 29.142393, 25.224440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776047, 28.894304, 25.980320>,  <34.234215, 28.668034, 25.606211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776047, 28.894304, 25.980320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.724682, 29.184832, 25.710217>,  <34.693863, 29.359148, 25.548155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.724682, 29.184832, 25.710217>,  <34.776047, 28.894304, 25.980320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724682, 29.184832, 25.710217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036635, 0.683904, 0.728652,
		0.991044, 0.068832, -0.114432,
		-0.128415, 0.726318, -0.675257,
		34.686157, 29.402727, 25.507639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181801, 29.226267, 26.238770>,  <34.776047, 28.894304, 25.980320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181801, 29.226267, 26.238770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970963, 29.489481, 26.023672>,  <34.844460, 29.647409, 25.894613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970963, 29.489481, 26.023672>,  <35.181801, 29.226267, 26.238770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970963, 29.489481, 26.023672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087442, 0.671418, 0.735902,
		0.845298, 0.340866, -0.411438,
		-0.527091, 0.658033, -0.537743,
		34.812836, 29.686892, 25.862349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506283, 29.875708, 26.327969>,  <35.181801, 29.226267, 26.238770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506283, 29.875708, 26.327969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.144993, 29.983952, 26.194731>,  <34.928219, 30.048897, 26.114788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.144993, 29.983952, 26.194731>,  <35.506283, 29.875708, 26.327969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144993, 29.983952, 26.194731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076689, 0.661884, 0.745673,
		0.422254, 0.699057, -0.577080,
		-0.903228, 0.270608, -0.333094,
		34.874023, 30.065134, 26.094803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484154, 30.610205, 26.297054>,  <35.506283, 29.875708, 26.327969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484154, 30.610205, 26.297054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.098083, 30.506628, 26.311970>,  <34.866444, 30.444481, 26.320919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.098083, 30.506628, 26.311970>,  <35.484154, 30.610205, 26.297054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098083, 30.506628, 26.311970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149486, 0.662838, 0.733689,
		-0.214700, 0.702563, -0.678461,
		-0.965173, -0.258943, 0.037288,
		34.808533, 30.428946, 26.323156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144554, 31.307995, 26.254457>,  <35.484154, 30.610205, 26.297054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144554, 31.307995, 26.254457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.934612, 31.004286, 26.408360>,  <34.808647, 30.822062, 26.500702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.934612, 31.004286, 26.408360>,  <35.144554, 31.307995, 26.254457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934612, 31.004286, 26.408360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332445, 0.598970, 0.728502,
		-0.783588, 0.254447, -0.566787,
		-0.524853, -0.759270, 0.384756,
		34.777157, 30.776505, 26.523787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617443, 31.764914, 26.655678>,  <35.144554, 31.307995, 26.254457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617443, 31.764914, 26.655678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.590107, 31.386578, 26.782621>,  <34.573708, 31.159576, 26.858788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.590107, 31.386578, 26.782621>,  <34.617443, 31.764914, 26.655678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590107, 31.386578, 26.782621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349102, 0.320661, 0.880514,
		-0.934590, -0.050618, -0.352108,
		-0.068337, -0.945841, 0.317357,
		34.569607, 31.102825, 26.877829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933147, 31.670725, 26.999224>,  <34.617443, 31.764914, 26.655678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933147, 31.670725, 26.999224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.135624, 31.356876, 27.142412>,  <34.257111, 31.168568, 27.228325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.135624, 31.356876, 27.142412>,  <33.933147, 31.670725, 26.999224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135624, 31.356876, 27.142412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308332, 0.222999, 0.924772,
		-0.805423, -0.578482, -0.129045,
		0.506187, -0.784621, 0.357973,
		34.287479, 31.121490, 27.249804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475544, 31.175922, 27.349401>,  <33.933147, 31.670725, 26.999224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475544, 31.175922, 27.349401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.844048, 31.126566, 27.496941>,  <34.065151, 31.096952, 27.585464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.844048, 31.126566, 27.496941>,  <33.475544, 31.175922, 27.349401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844048, 31.126566, 27.496941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326414, 0.270388, 0.905729,
		-0.211491, -0.954811, 0.208822,
		0.921263, -0.123391, 0.368848,
		34.120426, 31.089548, 27.607595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354912, 30.902147, 27.985783>,  <33.475544, 31.175922, 27.349401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354912, 30.902147, 27.985783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.734982, 31.023804, 28.013103>,  <33.963024, 31.096798, 28.029495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.734982, 31.023804, 28.013103>,  <33.354912, 30.902147, 27.985783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734982, 31.023804, 28.013103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159654, 0.286637, 0.944643,
		0.267725, -0.908481, 0.320913,
		0.950176, 0.304139, 0.068303,
		34.020035, 31.115047, 28.033594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602386, 30.663473, 28.654758>,  <33.354912, 30.902147, 27.985783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602386, 30.663473, 28.654758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826424, 30.974401, 28.540171>,  <33.960846, 31.160959, 28.471418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826424, 30.974401, 28.540171>,  <33.602386, 30.663473, 28.654758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826424, 30.974401, 28.540171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128166, 0.422941, 0.897048,
		0.818455, -0.465715, 0.336513,
		0.560093, 0.777323, -0.286470,
		33.994453, 31.207598, 28.454229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172752, 30.753801, 29.249937>,  <33.602386, 30.663473, 28.654758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172752, 30.753801, 29.249937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.127716, 31.084625, 29.029648>,  <34.100693, 31.283119, 28.897474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.127716, 31.084625, 29.029648>,  <34.172752, 30.753801, 29.249937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127716, 31.084625, 29.029648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188008, 0.526505, 0.829123,
		0.975692, 0.196894, 0.096214,
		-0.112592, 0.827058, -0.550725,
		34.093937, 31.332743, 28.864429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.748848, 32.299072, 33.516773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.616566, 32.585403, 33.270771>,  <37.537197, 32.757202, 33.123169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.616566, 32.585403, 33.270771>,  <37.748848, 32.299072, 33.516773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616566, 32.585403, 33.270771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437150, 0.693734, 0.572393,
		0.836382, -0.079557, -0.542342,
		-0.330704, 0.715824, -0.615005,
		37.517353, 32.800152, 33.086269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326519, 32.737446, 33.439991>,  <37.748848, 32.299072, 33.516773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326519, 32.737446, 33.439991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.992947, 32.943462, 33.360714>,  <37.792801, 33.067074, 33.313148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.992947, 32.943462, 33.360714>,  <38.326519, 32.737446, 33.439991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992947, 32.943462, 33.360714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328580, 0.751939, 0.571509,
		0.443382, 0.411479, -0.796302,
		-0.833935, 0.515046, -0.198193,
		37.742767, 33.097977, 33.301258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562065, 33.345253, 33.271626>,  <38.326519, 32.737446, 33.439991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562065, 33.345253, 33.271626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.174206, 33.423882, 33.329796>,  <37.941490, 33.471058, 33.364700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.174206, 33.423882, 33.329796>,  <38.562065, 33.345253, 33.271626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174206, 33.423882, 33.329796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238188, 0.893819, 0.379940,
		-0.055299, 0.403046, -0.913508,
		-0.969644, 0.196576, 0.145428,
		37.883312, 33.482853, 33.373425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558521, 33.992413, 33.095055>,  <38.562065, 33.345253, 33.271626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558521, 33.992413, 33.095055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.222118, 33.910225, 33.295250>,  <38.020275, 33.860912, 33.415367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.222118, 33.910225, 33.295250>,  <38.558521, 33.992413, 33.095055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222118, 33.910225, 33.295250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091079, 0.858103, 0.505335,
		-0.533304, 0.470574, -0.702956,
		-0.841006, -0.205473, 0.500490,
		37.969818, 33.848583, 33.445396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252834, 34.657364, 33.038548>,  <38.558521, 33.992413, 33.095055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252834, 34.657364, 33.038548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.082157, 34.446228, 33.332302>,  <37.979752, 34.319546, 33.508553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.082157, 34.446228, 33.332302>,  <38.252834, 34.657364, 33.038548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082157, 34.446228, 33.332302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072527, 0.829370, 0.553973,
		-0.901483, 0.183114, -0.392170,
		-0.426694, -0.527840, 0.734382,
		37.954147, 34.287876, 33.552616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512192, 34.900967, 33.264095>,  <38.252834, 34.657364, 33.038548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512192, 34.900967, 33.264095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.670532, 34.713688, 33.580093>,  <37.765537, 34.601318, 33.769691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.670532, 34.713688, 33.580093>,  <37.512192, 34.900967, 33.264095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670532, 34.713688, 33.580093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115154, 0.828166, 0.548526,
		-0.911064, -0.308108, 0.273919,
		0.395855, -0.468200, 0.789992,
		37.789288, 34.573227, 33.817093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115669, 35.154434, 33.795345>,  <37.512192, 34.900967, 33.264095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115669, 35.154434, 33.795345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.438244, 35.017471, 33.988182>,  <37.631790, 34.935291, 34.103886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.438244, 35.017471, 33.988182>,  <37.115669, 35.154434, 33.795345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438244, 35.017471, 33.988182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031363, 0.789366, 0.613121,
		-0.590486, -0.509564, 0.625836,
		0.806438, -0.342411, 0.482091,
		37.680176, 34.914749, 34.132809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996384, 35.152172, 34.460758>,  <37.115669, 35.154434, 33.795345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996384, 35.152172, 34.460758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396053, 35.168427, 34.459961>,  <37.635853, 35.178181, 34.459484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396053, 35.168427, 34.459961>,  <36.996384, 35.152172, 34.460758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396053, 35.168427, 34.459961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030339, 0.776855, 0.628948,
		0.027106, -0.628367, 0.777445,
		0.999172, 0.040635, -0.001993,
		37.695805, 35.180618, 34.459362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185471, 35.340363, 35.169922>,  <36.996384, 35.152172, 34.460758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185471, 35.340363, 35.169922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.527336, 35.417244, 34.977009>,  <37.732456, 35.463375, 34.861259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.527336, 35.417244, 34.977009>,  <37.185471, 35.340363, 35.169922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527336, 35.417244, 34.977009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239953, 0.677536, 0.695247,
		0.460394, -0.709931, 0.532949,
		0.854669, 0.192205, -0.482284,
		37.783737, 35.474907, 34.832325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712288, 35.363598, 35.715157>,  <37.185471, 35.340363, 35.169922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712288, 35.363598, 35.715157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.884243, 35.557098, 35.410213>,  <37.987415, 35.673199, 35.227249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.884243, 35.557098, 35.410213>,  <37.712288, 35.363598, 35.715157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884243, 35.557098, 35.410213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371179, 0.675017, 0.637634,
		0.823058, -0.557080, 0.110622,
		0.429885, 0.483749, -0.762355,
		38.013210, 35.702225, 35.181507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366623, 35.480968, 35.989384>,  <37.712288, 35.363598, 35.715157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366623, 35.480968, 35.989384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.319458, 35.750683, 35.697784>,  <38.291161, 35.912514, 35.522827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.319458, 35.750683, 35.697784>,  <38.366623, 35.480968, 35.989384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319458, 35.750683, 35.697784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588106, 0.638940, 0.495871,
		0.800143, -0.370257, -0.471891,
		-0.117910, 0.674289, -0.728994,
		38.284084, 35.952969, 35.479088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039886, 35.796764, 35.845181>,  <38.366623, 35.480968, 35.989384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039886, 35.796764, 35.845181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.769806, 36.055988, 35.704262>,  <38.607758, 36.211525, 35.619709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.769806, 36.055988, 35.704262>,  <39.039886, 35.796764, 35.845181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769806, 36.055988, 35.704262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487490, 0.750485, 0.446235,
		0.553582, 0.129559, -0.822655,
		-0.675204, 0.648064, -0.352296,
		38.567245, 36.250408, 35.598572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412243, 36.404339, 35.548328>,  <39.039886, 35.796764, 35.845181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412243, 36.404339, 35.548328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.051018, 36.537155, 35.657303>,  <38.834282, 36.616844, 35.722687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.051018, 36.537155, 35.657303>,  <39.412243, 36.404339, 35.548328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051018, 36.537155, 35.657303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423716, 0.792496, 0.438651,
		-0.070256, 0.511567, -0.856367,
		-0.903066, 0.332039, 0.272436,
		38.780098, 36.636768, 35.739033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258244, 37.112133, 35.491512>,  <39.412243, 36.404339, 35.548328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258244, 37.112133, 35.491512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.095932, 37.081238, 35.855793>,  <38.998543, 37.062698, 36.074360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.095932, 37.081238, 35.855793>,  <39.258244, 37.112133, 35.491512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095932, 37.081238, 35.855793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676924, 0.644097, 0.356248,
		-0.614096, 0.761034, -0.209075,
		-0.405782, -0.077242, 0.910700,
		38.974197, 37.058064, 36.129002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423935, 37.415607, 34.817825>,  <39.258244, 37.112133, 35.491512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423935, 37.415607, 34.817825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.379406, 37.775002, 34.647968>,  <39.352688, 37.990639, 34.546055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.379406, 37.775002, 34.647968>,  <39.423935, 37.415607, 34.817825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379406, 37.775002, 34.647968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165509, -0.404572, -0.899404,
		-0.979905, -0.170406, -0.103671,
		-0.111321, 0.898490, -0.424646,
		39.346008, 38.044548, 34.520576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957916, 37.400791, 34.239376>,  <39.423935, 37.415607, 34.817825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957916, 37.400791, 34.239376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.180485, 37.716595, 34.135780>,  <39.314026, 37.906075, 34.073624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.180485, 37.716595, 34.135780>,  <38.957916, 37.400791, 34.239376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180485, 37.716595, 34.135780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101613, -0.374015, -0.921839,
		-0.824663, 0.486615, -0.288334,
		0.556422, 0.789505, -0.258991,
		39.347412, 37.953445, 34.058083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800575, 37.427990, 33.550709>,  <38.957916, 37.400791, 34.239376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800575, 37.427990, 33.550709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.120293, 37.668137, 33.561169>,  <39.312122, 37.812225, 33.567444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.120293, 37.668137, 33.561169>,  <38.800575, 37.427990, 33.550709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120293, 37.668137, 33.561169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295647, -0.354980, -0.886895,
		-0.523181, 0.716622, -0.461231,
		0.799296, 0.600368, 0.026148,
		39.360081, 37.848248, 33.569012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844887, 37.884037, 32.940624>,  <38.800575, 37.427990, 33.550709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844887, 37.884037, 32.940624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.213978, 37.838005, 33.087776>,  <39.435432, 37.810387, 33.176067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.213978, 37.838005, 33.087776>,  <38.844887, 37.884037, 32.940624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213978, 37.838005, 33.087776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329859, -0.258037, -0.908080,
		0.199426, 0.959257, -0.200138,
		0.922725, -0.115077, 0.367879,
		39.490795, 37.803482, 33.198139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204418, 38.262337, 32.424332>,  <38.844887, 37.884037, 32.940624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204418, 38.262337, 32.424332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.451420, 38.024380, 32.630161>,  <39.599621, 37.881603, 32.753658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.451420, 38.024380, 32.630161>,  <39.204418, 38.262337, 32.424332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451420, 38.024380, 32.630161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210115, -0.505675, -0.836747,
		0.757985, 0.624815, -0.187259,
		0.617504, -0.594895, 0.514577,
		39.636669, 37.845913, 32.784534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776070, 38.353916, 32.088215>,  <39.204418, 38.262337, 32.424332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776070, 38.353916, 32.088215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.791096, 38.000053, 32.274101>,  <39.800110, 37.787735, 32.385635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.791096, 38.000053, 32.274101>,  <39.776070, 38.353916, 32.088215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791096, 38.000053, 32.274101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249716, -0.441983, -0.861564,
		0.967590, 0.148410, 0.204312,
		0.037563, -0.884661, 0.464719,
		39.802364, 37.734653, 32.413517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389751, 38.075027, 31.807098>,  <39.776070, 38.353916, 32.088215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389751, 38.075027, 31.807098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.190201, 37.764259, 31.960726>,  <40.070469, 37.577797, 32.052902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.190201, 37.764259, 31.960726>,  <40.389751, 38.075027, 31.807098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190201, 37.764259, 31.960726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404745, -0.600714, -0.689437,
		0.766356, -0.188496, 0.614140,
		-0.498879, -0.776924, 0.384068,
		40.040539, 37.531181, 32.075947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838310, 37.430000, 31.642111>,  <40.389751, 38.075027, 31.807098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838310, 37.430000, 31.642111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.483250, 37.276047, 31.743252>,  <40.270214, 37.183674, 31.803936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.483250, 37.276047, 31.743252>,  <40.838310, 37.430000, 31.642111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483250, 37.276047, 31.743252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124970, -0.729792, -0.672151,
		0.443232, -0.565037, 0.695901,
		-0.887653, -0.384886, 0.252854,
		40.216953, 37.160580, 31.819109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947430, 36.639938, 31.815891>,  <40.838310, 37.430000, 31.642111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947430, 36.639938, 31.815891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.578407, 36.739738, 31.698151>,  <40.356995, 36.799618, 31.627506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.578407, 36.739738, 31.698151>,  <40.947430, 36.639938, 31.815891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578407, 36.739738, 31.698151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000469, -0.763559, -0.645738,
		-0.385866, -0.595591, 0.704542,
		-0.922555, 0.249498, -0.294352,
		40.301640, 36.814587, 31.609844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673641, 35.940018, 31.699572>,  <40.947430, 36.639938, 31.815891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673641, 35.940018, 31.699572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.396336, 36.151817, 31.504015>,  <40.229954, 36.278896, 31.386681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.396336, 36.151817, 31.504015>,  <40.673641, 35.940018, 31.699572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396336, 36.151817, 31.504015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082979, -0.732505, -0.675685,
		-0.715888, -0.427862, 0.551759,
		-0.693267, 0.529500, -0.488888,
		40.188358, 36.310669, 31.357347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965057, 35.531906, 31.632507>,  <40.673641, 35.940018, 31.699572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965057, 35.531906, 31.632507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.980541, 35.808403, 31.343872>,  <39.989834, 35.974300, 31.170691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.980541, 35.808403, 31.343872>,  <39.965057, 35.531906, 31.632507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980541, 35.808403, 31.343872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113227, -0.714443, -0.690471,
		-0.992815, 0.108434, 0.050608,
		0.038714, 0.691240, -0.721587,
		39.992157, 36.015774, 31.127396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327816, 35.531734, 31.354313>,  <39.965057, 35.531906, 31.632507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327816, 35.531734, 31.354313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.561829, 35.666252, 31.059111>,  <39.702236, 35.746964, 30.881990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.561829, 35.666252, 31.059111>,  <39.327816, 35.531734, 31.354313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561829, 35.666252, 31.059111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306349, -0.750928, -0.585028,
		-0.750928, 0.568345, -0.336291,
		0.585028, 0.336291, -0.738004,
		39.737335, 35.767139, 30.837709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813198, 35.523258, 30.786142>,  <39.327816, 35.531734, 31.354313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813198, 35.523258, 30.786142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.173744, 35.547771, 30.614658>,  <39.390072, 35.562481, 30.511768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.173744, 35.547771, 30.614658>,  <38.813198, 35.523258, 30.786142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173744, 35.547771, 30.614658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269434, -0.695658, -0.665932,
		-0.339049, 0.715754, -0.610526,
		0.901361, 0.061288, -0.428710,
		39.444153, 35.566158, 30.486046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754780, 35.786907, 30.092623>,  <38.813198, 35.523258, 30.786142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754780, 35.786907, 30.092623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.093853, 35.575119, 30.105865>,  <39.297295, 35.448044, 30.113811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.093853, 35.575119, 30.105865>,  <38.754780, 35.786907, 30.092623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093853, 35.575119, 30.105865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333373, -0.580193, -0.743128,
		0.412676, 0.618897, -0.668330,
		0.847679, -0.529475, 0.033108,
		39.348156, 35.416275, 30.115797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819084, 36.235722, 29.538368>,  <38.754780, 35.786907, 30.092623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819084, 36.235722, 29.538368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.654613, 36.420368, 29.223955>,  <38.555931, 36.531155, 29.035307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.654613, 36.420368, 29.223955>,  <38.819084, 36.235722, 29.538368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654613, 36.420368, 29.223955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115292, 0.829037, 0.547180,
		0.904235, 0.315611, -0.287661,
		-0.411178, 0.461614, -0.786031,
		38.531261, 36.558853, 28.988146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161457, 36.849083, 29.409224>,  <38.819084, 36.235722, 29.538368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161457, 36.849083, 29.409224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.782055, 36.854515, 29.282631>,  <38.554413, 36.857777, 29.206675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.782055, 36.854515, 29.282631>,  <39.161457, 36.849083, 29.409224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782055, 36.854515, 29.282631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209799, 0.721615, 0.659740,
		0.237342, 0.692161, -0.681602,
		-0.948501, 0.013584, -0.316484,
		38.497505, 36.858589, 29.187685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971302, 37.501247, 29.630018>,  <39.161457, 36.849083, 29.409224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971302, 37.501247, 29.630018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.617653, 37.334885, 29.544838>,  <38.405464, 37.235069, 29.493731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.617653, 37.334885, 29.544838>,  <38.971302, 37.501247, 29.630018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617653, 37.334885, 29.544838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402971, 0.448017, 0.798057,
		-0.236509, 0.791395, -0.563700,
		-0.884126, -0.415902, -0.212949,
		38.352417, 37.210114, 29.480953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512917, 38.050137, 29.581173>,  <38.971302, 37.501247, 29.630018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512917, 38.050137, 29.581173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.301483, 37.714954, 29.635469>,  <38.174622, 37.513844, 29.668047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.301483, 37.714954, 29.635469>,  <38.512917, 38.050137, 29.581173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301483, 37.714954, 29.635469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504101, 0.438517, 0.744033,
		-0.682991, 0.324859, -0.654209,
		-0.528588, -0.837955, 0.135741,
		38.142906, 37.463566, 29.676191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873306, 38.373463, 29.757019>,  <38.512917, 38.050137, 29.581173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873306, 38.373463, 29.757019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853226, 37.998138, 29.893867>,  <37.841179, 37.772942, 29.975977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853226, 37.998138, 29.893867>,  <37.873306, 38.373463, 29.757019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853226, 37.998138, 29.893867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669213, 0.285880, 0.685876,
		-0.741373, -0.194524, -0.642283,
		-0.050197, -0.938314, 0.342122,
		37.838165, 37.716644, 29.996504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178913, 38.207550, 29.865528>,  <37.873306, 38.373463, 29.757019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178913, 38.207550, 29.865528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.374966, 37.947369, 30.097626>,  <37.492596, 37.791260, 30.236885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.374966, 37.947369, 30.097626>,  <37.178913, 38.207550, 29.865528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374966, 37.947369, 30.097626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635415, 0.189059, 0.748668,
		-0.596674, -0.735640, -0.320646,
		0.490129, -0.650454, 0.580243,
		37.522003, 37.752232, 30.271698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700581, 37.787182, 30.185659>,  <37.178913, 38.207550, 29.865528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700581, 37.787182, 30.185659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.021591, 37.733761, 30.418251>,  <37.214195, 37.701706, 30.557806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.021591, 37.733761, 30.418251>,  <36.700581, 37.787182, 30.185659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021591, 37.733761, 30.418251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579136, 0.059841, 0.813032,
		-0.143383, -0.989233, -0.029324,
		0.802523, -0.133557, 0.581480,
		37.262348, 37.693695, 30.592695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399956, 37.372284, 30.727936>,  <36.700581, 37.787182, 30.185659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399956, 37.372284, 30.727936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.733818, 37.513142, 30.897327>,  <36.934135, 37.597656, 30.998962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.733818, 37.513142, 30.897327>,  <36.399956, 37.372284, 30.727936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733818, 37.513142, 30.897327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504081, 0.178627, 0.844982,
		0.221907, -0.918743, 0.326601,
		0.834661, 0.352140, 0.423483,
		36.984215, 37.618786, 31.024372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381229, 37.063614, 31.354973>,  <36.399956, 37.372284, 30.727936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381229, 37.063614, 31.354973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.623074, 37.379322, 31.397860>,  <36.768181, 37.568748, 31.423592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.623074, 37.379322, 31.397860>,  <36.381229, 37.063614, 31.354973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623074, 37.379322, 31.397860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392841, 0.178385, 0.902139,
		0.692906, -0.587564, 0.417912,
		0.604614, 0.789270, 0.107215,
		36.804459, 37.616104, 31.430023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662838, 37.058102, 32.122520>,  <36.381229, 37.063614, 31.354973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662838, 37.058102, 32.122520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.713772, 37.424072, 31.969316>,  <36.744331, 37.643654, 31.877394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.713772, 37.424072, 31.969316>,  <36.662838, 37.058102, 32.122520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713772, 37.424072, 31.969316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473234, 0.395412, 0.787209,
		0.871684, 0.081013, 0.483325,
		0.127338, 0.914924, -0.383013,
		36.751972, 37.698551, 31.854412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919827, 37.445465, 32.673561>,  <36.662838, 37.058102, 32.122520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919827, 37.445465, 32.673561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.769810, 37.717117, 32.421169>,  <36.679802, 37.880108, 32.269733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.769810, 37.717117, 32.421169>,  <36.919827, 37.445465, 32.673561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769810, 37.717117, 32.421169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518953, 0.410196, 0.749952,
		0.768137, 0.608709, 0.198595,
		-0.375039, 0.679127, -0.630977,
		36.657299, 37.920856, 32.231876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060444, 38.043098, 33.070477>,  <36.919827, 37.445465, 32.673561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060444, 38.043098, 33.070477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.799950, 38.118919, 32.776550>,  <36.643654, 38.164413, 32.600193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.799950, 38.118919, 32.776550>,  <37.060444, 38.043098, 33.070477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799950, 38.118919, 32.776550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689292, 0.257290, 0.677258,
		0.317440, 0.947560, -0.036898,
		-0.651236, 0.189555, -0.734820,
		36.604580, 38.175785, 32.556103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.944851, 34.314449, 26.027016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555111, 34.325695, 25.937698>,  <39.321266, 34.332443, 25.884108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555111, 34.325695, 25.937698>,  <39.944851, 34.314449, 26.027016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555111, 34.325695, 25.937698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104311, 0.822752, 0.558747,
		0.199425, 0.567705, -0.798712,
		-0.974345, 0.028113, -0.223295,
		39.262806, 34.334129, 25.870710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741932, 35.033688, 25.876831>,  <39.944851, 34.314449, 26.027016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741932, 35.033688, 25.876831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405807, 34.857834, 26.003698>,  <39.204132, 34.752323, 26.079819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405807, 34.857834, 26.003698>,  <39.741932, 35.033688, 25.876831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405807, 34.857834, 26.003698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229536, 0.818592, 0.526517,
		-0.491106, 0.369638, -0.788786,
		-0.840314, -0.439631, 0.317170,
		39.153713, 34.725945, 26.098848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221729, 35.508507, 25.812429>,  <39.741932, 35.033688, 25.876831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221729, 35.508507, 25.812429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099785, 35.256111, 26.097782>,  <39.026619, 35.104675, 26.268993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099785, 35.256111, 26.097782>,  <39.221729, 35.508507, 25.812429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099785, 35.256111, 26.097782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461227, 0.753160, 0.469063,
		-0.833264, -0.186032, -0.520638,
		-0.304863, -0.630985, 0.713384,
		39.008327, 35.066814, 26.311798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732510, 35.877506, 26.169184>,  <39.221729, 35.508507, 25.812429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732510, 35.877506, 26.169184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728039, 35.575577, 26.431515>,  <38.725357, 35.394417, 26.588913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728039, 35.575577, 26.431515>,  <38.732510, 35.877506, 26.169184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728039, 35.575577, 26.431515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482953, 0.578373, 0.657451,
		-0.875575, -0.309387, -0.371010,
		-0.011175, -0.754828, 0.655828,
		38.724686, 35.349129, 26.628263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035454, 35.936329, 26.528028>,  <38.732510, 35.877506, 26.169184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035454, 35.936329, 26.528028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263779, 35.711861, 26.767784>,  <38.400772, 35.577179, 26.911636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263779, 35.711861, 26.767784>,  <38.035454, 35.936329, 26.528028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263779, 35.711861, 26.767784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349456, 0.494546, 0.795805,
		-0.743005, -0.663713, 0.086189,
		0.570811, -0.561168, 0.599388,
		38.435020, 35.543510, 26.947601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547100, 35.621452, 27.114916>,  <38.035454, 35.936329, 26.528028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547100, 35.621452, 27.114916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926567, 35.595566, 27.238743>,  <38.154247, 35.580032, 27.313040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926567, 35.595566, 27.238743>,  <37.547100, 35.621452, 27.114916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926567, 35.595566, 27.238743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241069, 0.485621, 0.840273,
		-0.204713, -0.871771, 0.445094,
		0.948672, -0.064716, 0.309570,
		38.211170, 35.576153, 27.331614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478813, 35.465374, 27.784370>,  <37.547100, 35.621452, 27.114916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478813, 35.465374, 27.784370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845245, 35.625729, 27.787863>,  <38.065105, 35.721943, 27.789959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845245, 35.625729, 27.787863>,  <37.478813, 35.465374, 27.784370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845245, 35.625729, 27.787863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207278, 0.454786, 0.866144,
		0.343256, -0.795272, 0.499718,
		0.916085, 0.400890, 0.008734,
		38.120071, 35.745995, 27.790483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694584, 35.394825, 28.472429>,  <37.478813, 35.465374, 27.784370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694584, 35.394825, 28.472429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933262, 35.681377, 28.327787>,  <38.076469, 35.853310, 28.241003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933262, 35.681377, 28.327787>,  <37.694584, 35.394825, 28.472429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933262, 35.681377, 28.327787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083156, 0.503386, 0.860051,
		0.798149, -0.483117, 0.359938,
		0.596694, 0.716380, -0.361603,
		38.112270, 35.896290, 28.219307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113998, 35.507076, 28.993549>,  <37.694584, 35.394825, 28.472429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113998, 35.507076, 28.993549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163700, 35.825764, 28.756975>,  <38.193520, 36.016975, 28.615030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163700, 35.825764, 28.756975>,  <38.113998, 35.507076, 28.993549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163700, 35.825764, 28.756975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385521, 0.587988, 0.711086,
		0.914295, 0.139657, 0.380212,
		0.124252, 0.796722, -0.591435,
		38.200977, 36.064781, 28.579544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879654, 35.340897, 29.200075>,  <38.113998, 35.507076, 28.993549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879654, 35.340897, 29.200075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150436, 35.206341, 29.461939>,  <39.312904, 35.125607, 29.619057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150436, 35.206341, 29.461939>,  <38.879654, 35.340897, 29.200075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150436, 35.206341, 29.461939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056869, -0.862883, -0.502194,
		0.733827, 0.377191, -0.565000,
		0.676952, -0.336393, 0.654657,
		39.353523, 35.105423, 29.658337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447029, 35.121521, 28.753611>,  <38.879654, 35.340897, 29.200075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447029, 35.121521, 28.753611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410114, 34.917416, 29.095633>,  <39.387966, 34.794952, 29.300846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410114, 34.917416, 29.095633>,  <39.447029, 35.121521, 28.753611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410114, 34.917416, 29.095633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141799, -0.843232, -0.518511,
		0.985584, -0.169098, 0.005467,
		-0.092289, -0.510261, 0.855054,
		39.382427, 34.764336, 29.352148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778664, 34.448689, 28.669949>,  <39.447029, 35.121521, 28.753611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778664, 34.448689, 28.669949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574100, 34.381386, 29.007030>,  <39.451363, 34.341003, 29.209280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574100, 34.381386, 29.007030>,  <39.778664, 34.448689, 28.669949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574100, 34.381386, 29.007030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174631, -0.939832, -0.293631,
		0.841406, -0.297328, 0.451256,
		-0.511409, -0.168260, 0.842703,
		39.420677, 34.330910, 29.259842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060394, 33.769016, 29.061153>,  <39.778664, 34.448689, 28.669949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060394, 33.769016, 29.061153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676220, 33.829281, 29.154839>,  <39.445713, 33.865440, 29.211050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676220, 33.829281, 29.154839>,  <40.060394, 33.769016, 29.061153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676220, 33.829281, 29.154839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206472, -0.949606, -0.235834,
		0.186879, -0.274863, 0.943147,
		-0.960440, 0.150661, 0.234212,
		39.388088, 33.874477, 29.225101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924179, 33.370480, 29.620766>,  <40.060394, 33.769016, 29.061153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924179, 33.370480, 29.620766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558285, 33.426510, 29.469164>,  <39.338749, 33.460129, 29.378202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558285, 33.426510, 29.469164>,  <39.924179, 33.370480, 29.620766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558285, 33.426510, 29.469164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033465, -0.961026, -0.274424,
		-0.402674, -0.238341, 0.883769,
		-0.914732, 0.140079, -0.379004,
		39.283867, 33.468533, 29.355463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487530, 32.822170, 30.006353>,  <39.924179, 33.370480, 29.620766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487530, 32.822170, 30.006353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226181, 32.956291, 29.734859>,  <39.069374, 33.036766, 29.571962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226181, 32.956291, 29.734859>,  <39.487530, 32.822170, 30.006353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226181, 32.956291, 29.734859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214239, -0.941808, -0.259037,
		-0.726094, -0.023835, 0.687183,
		-0.653368, 0.335306, -0.678734,
		39.030170, 33.056885, 29.531239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826004, 32.316647, 30.025078>,  <39.487530, 32.822170, 30.006353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826004, 32.316647, 30.025078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859425, 32.511414, 29.677301>,  <38.879478, 32.628273, 29.468636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859425, 32.511414, 29.677301>,  <38.826004, 32.316647, 30.025078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859425, 32.511414, 29.677301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230373, -0.839421, -0.492241,
		-0.969509, 0.241425, 0.042035,
		0.083555, 0.486916, -0.869443,
		38.884491, 32.657490, 29.416468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291695, 32.112423, 29.692486>,  <38.826004, 32.316647, 30.025078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291695, 32.112423, 29.692486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500614, 32.279228, 29.394949>,  <38.625965, 32.379311, 29.216427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500614, 32.279228, 29.394949>,  <38.291695, 32.112423, 29.692486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500614, 32.279228, 29.394949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294401, -0.730465, -0.616237,
		-0.800331, 0.540849, -0.258753,
		0.522301, 0.417017, -0.743840,
		38.657303, 32.404335, 29.171797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921253, 32.146378, 29.065006>,  <38.291695, 32.112423, 29.692486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921253, 32.146378, 29.065006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312195, 32.124638, 28.983202>,  <38.546761, 32.111591, 28.934120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312195, 32.124638, 28.983202>,  <37.921253, 32.146378, 29.065006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312195, 32.124638, 28.983202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183680, -0.697770, -0.692372,
		-0.105068, 0.714257, -0.691952,
		0.977355, -0.054352, -0.204508,
		38.605400, 32.108334, 28.921850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929897, 32.173702, 28.356899>,  <37.921253, 32.146378, 29.065006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929897, 32.173702, 28.356899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269791, 32.008232, 28.487638>,  <38.473724, 31.908949, 28.566082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269791, 32.008232, 28.487638>,  <37.929897, 32.173702, 28.356899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269791, 32.008232, 28.487638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096867, -0.731898, -0.674494,
		0.518242, 0.541478, -0.661988,
		0.849731, -0.413676, 0.326849,
		38.524712, 31.884129, 28.585693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337112, 32.098717, 27.723845>,  <37.929897, 32.173702, 28.356899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337112, 32.098717, 27.723845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486038, 31.857342, 28.005907>,  <38.575394, 31.712517, 28.175144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486038, 31.857342, 28.005907>,  <38.337112, 32.098717, 27.723845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486038, 31.857342, 28.005907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037546, -0.749367, -0.661090,
		0.927345, 0.272612, -0.256347,
		0.372319, -0.603434, 0.705157,
		38.597733, 31.676311, 28.217455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019180, 31.972431, 27.424076>,  <38.337112, 32.098717, 27.723845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019180, 31.972431, 27.424076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920063, 31.692324, 27.691874>,  <38.860592, 31.524260, 27.852552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920063, 31.692324, 27.691874>,  <39.019180, 31.972431, 27.424076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920063, 31.692324, 27.691874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119570, -0.707868, -0.696151,
		0.961407, -0.092447, 0.259133,
		-0.247789, -0.700269, 0.669496,
		38.845726, 31.482243, 27.892723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500462, 31.498383, 27.261766>,  <39.019180, 31.972431, 27.424076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500462, 31.498383, 27.261766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229694, 31.308867, 27.487083>,  <39.067234, 31.195156, 27.622274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229694, 31.308867, 27.487083>,  <39.500462, 31.498383, 27.261766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229694, 31.308867, 27.487083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144663, -0.835998, -0.529320,
		0.721698, -0.276821, 0.634446,
		-0.676922, -0.473791, 0.563293,
		39.026619, 31.166729, 27.656071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823364, 30.937927, 27.339399>,  <39.500462, 31.498383, 27.261766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823364, 30.937927, 27.339399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446579, 30.842579, 27.433954>,  <39.220509, 30.785370, 27.490686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446579, 30.842579, 27.433954>,  <39.823364, 30.937927, 27.339399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446579, 30.842579, 27.433954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094624, -0.864120, -0.494311,
		0.322096, -0.443256, 0.836527,
		-0.941966, -0.238371, 0.236387,
		39.163990, 30.771069, 27.504869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.686954, 32.361237, 25.755033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.065388, 32.481018, 25.705641>,  <33.292450, 32.552887, 25.676006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.065388, 32.481018, 25.705641>,  <32.686954, 32.361237, 25.755033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065388, 32.481018, 25.705641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013492, 0.417312, 0.908663,
		0.323630, -0.858009, 0.398854,
		0.946087, 0.299452, -0.123479,
		33.349213, 32.570854, 25.668596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954304, 32.366562, 26.418612>,  <32.686954, 32.361237, 25.755033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954304, 32.366562, 26.418612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.222630, 32.576454, 26.208981>,  <33.383625, 32.702389, 26.083202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.222630, 32.576454, 26.208981>,  <32.954304, 32.366562, 26.418612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222630, 32.576454, 26.208981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197860, 0.554422, 0.808373,
		0.714743, -0.645964, 0.268091,
		0.670816, 0.524735, -0.524080,
		33.423874, 32.733875, 26.051756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568649, 32.302692, 26.797388>,  <32.954304, 32.366562, 26.418612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568649, 32.302692, 26.797388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.615086, 32.626751, 26.567539>,  <33.642948, 32.821186, 26.429630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.615086, 32.626751, 26.567539>,  <33.568649, 32.302692, 26.797388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615086, 32.626751, 26.567539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119963, 0.562863, 0.817799,
		0.985967, -0.163874, -0.031843,
		0.116093, 0.810143, -0.574623,
		33.649914, 32.869793, 26.395153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199665, 32.634293, 26.952736>,  <33.568649, 32.302692, 26.797388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199665, 32.634293, 26.952736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.987522, 32.924301, 26.776976>,  <33.860237, 33.098305, 26.671518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.987522, 32.924301, 26.776976>,  <34.199665, 32.634293, 26.952736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987522, 32.924301, 26.776976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017974, 0.527798, 0.849179,
		0.847586, 0.442468, -0.292952,
		-0.530354, 0.725018, -0.439402,
		33.828415, 33.141808, 26.645155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624821, 33.245995, 27.137342>,  <34.199665, 32.634293, 26.952736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624821, 33.245995, 27.137342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.256382, 33.360394, 27.031673>,  <34.035320, 33.429031, 26.968271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.256382, 33.360394, 27.031673>,  <34.624821, 33.245995, 27.137342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256382, 33.360394, 27.031673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062405, 0.561297, 0.825259,
		0.384302, 0.776628, -0.499160,
		-0.921096, 0.285998, -0.264173,
		33.980053, 33.446194, 26.952421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521538, 34.046371, 27.419506>,  <34.624821, 33.245995, 27.137342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521538, 34.046371, 27.419506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.155758, 33.904819, 27.340967>,  <33.936291, 33.819889, 27.293844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.155758, 33.904819, 27.340967>,  <34.521538, 34.046371, 27.419506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155758, 33.904819, 27.340967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373630, 0.551795, 0.745602,
		-0.155507, 0.755178, -0.636808,
		-0.914450, -0.353877, -0.196349,
		33.881424, 33.798656, 27.282063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157448, 34.688778, 27.312326>,  <34.521538, 34.046371, 27.419506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157448, 34.688778, 27.312326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.902466, 34.409698, 27.443092>,  <33.749477, 34.242252, 27.521551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.902466, 34.409698, 27.443092>,  <34.157448, 34.688778, 27.312326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902466, 34.409698, 27.443092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291890, 0.611347, 0.735565,
		-0.713059, 0.373465, -0.593356,
		-0.637454, -0.697696, 0.326916,
		33.711231, 34.200390, 27.541166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564800, 35.078465, 27.559858>,  <34.157448, 34.688778, 27.312326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564800, 35.078465, 27.559858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.543556, 34.725952, 27.747698>,  <33.530811, 34.514446, 27.860401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.543556, 34.725952, 27.747698>,  <33.564800, 35.078465, 27.559858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543556, 34.725952, 27.747698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454117, 0.440136, 0.774634,
		-0.889358, -0.172110, -0.423581,
		-0.053111, -0.881282, 0.469596,
		33.527622, 34.461567, 27.888577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918198, 34.953621, 27.853132>,  <33.564800, 35.078465, 27.559858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918198, 34.953621, 27.853132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.145672, 34.709152, 28.073338>,  <33.282158, 34.562469, 28.205460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.145672, 34.709152, 28.073338>,  <32.918198, 34.953621, 27.853132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145672, 34.709152, 28.073338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384571, 0.394066, 0.834756,
		-0.727117, -0.686426, -0.010938,
		0.568688, -0.611172, 0.550512,
		33.316277, 34.525803, 28.238491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534401, 34.847141, 28.462013>,  <32.918198, 34.953621, 27.853132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534401, 34.847141, 28.462013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.890495, 34.711212, 28.583340>,  <33.104153, 34.629654, 28.656136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.890495, 34.711212, 28.583340>,  <32.534401, 34.847141, 28.462013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890495, 34.711212, 28.583340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176471, 0.356578, 0.917448,
		-0.419927, -0.870270, 0.257470,
		0.890236, -0.339825, 0.303314,
		33.157566, 34.609264, 28.674334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425724, 34.602268, 29.175562>,  <32.534401, 34.847141, 28.462013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425724, 34.602268, 29.175562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.818481, 34.653378, 29.119610>,  <33.054134, 34.684044, 29.086039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.818481, 34.653378, 29.119610>,  <32.425724, 34.602268, 29.175562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818481, 34.653378, 29.119610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071864, 0.431964, 0.899023,
		0.175289, -0.892795, 0.414959,
		0.981891, 0.127769, -0.139878,
		33.113049, 34.691708, 29.077646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690067, 34.371361, 29.827145>,  <32.425724, 34.602268, 29.175562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690067, 34.371361, 29.827145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.991531, 34.575119, 29.661009>,  <33.172409, 34.697376, 29.561327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.991531, 34.575119, 29.661009>,  <32.690067, 34.371361, 29.827145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991531, 34.575119, 29.661009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032398, 0.602362, 0.797565,
		0.656464, -0.614550, 0.437473,
		0.753661, 0.509400, -0.415339,
		33.217628, 34.727940, 29.536407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295528, 34.510654, 30.317419>,  <32.690067, 34.371361, 29.827145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295528, 34.510654, 30.317419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.304729, 34.806114, 30.047939>,  <33.310249, 34.983391, 29.886251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.304729, 34.806114, 30.047939>,  <33.295528, 34.510654, 30.317419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304729, 34.806114, 30.047939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048061, 0.672280, 0.738735,
		0.998580, -0.049370, -0.020037,
		0.023001, 0.738648, -0.673698,
		33.311630, 35.027710, 29.845829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637703, 35.004791, 30.711548>,  <33.295528, 34.510654, 30.317419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637703, 35.004791, 30.711548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.501064, 35.231571, 30.411715>,  <33.419079, 35.367638, 30.231813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.501064, 35.231571, 30.411715>,  <33.637703, 35.004791, 30.711548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501064, 35.231571, 30.411715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215522, 0.729054, 0.649639,
		0.914800, 0.383469, -0.126856,
		-0.341601, 0.566949, -0.749585,
		33.398582, 35.401657, 30.186840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373577, 34.994175, 30.857300>,  <33.637703, 35.004791, 30.711548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373577, 34.994175, 30.857300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.466278, 34.767246, 31.173386>,  <34.521900, 34.631088, 31.363037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.466278, 34.767246, 31.173386>,  <34.373577, 34.994175, 30.857300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466278, 34.767246, 31.173386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062823, -0.801904, -0.594141,
		0.970744, 0.187337, -0.150202,
		0.231752, -0.567323, 0.790212,
		34.535805, 34.597050, 31.410450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056156, 34.635277, 30.735085>,  <34.373577, 34.994175, 30.857300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056156, 34.635277, 30.735085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.831421, 34.415451, 30.982410>,  <34.696579, 34.283554, 31.130806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.831421, 34.415451, 30.982410>,  <35.056156, 34.635277, 30.735085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831421, 34.415451, 30.982410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135967, -0.798620, -0.586276,
		0.815995, -0.245324, 0.523420,
		-0.561841, -0.549566, 0.618314,
		34.662868, 34.250580, 31.167904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310226, 33.974686, 30.817995>,  <35.056156, 34.635277, 30.735085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310226, 33.974686, 30.817995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.922199, 33.919136, 30.897684>,  <34.689384, 33.885807, 30.945498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.922199, 33.919136, 30.897684>,  <35.310226, 33.974686, 30.817995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922199, 33.919136, 30.897684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039438, -0.899547, -0.435041,
		0.239626, -0.414160, 0.878095,
		-0.970064, -0.138878, 0.199221,
		34.631180, 33.877472, 30.957451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296425, 33.261429, 30.853756>,  <35.310226, 33.974686, 30.817995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296425, 33.261429, 30.853756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.910069, 33.363457, 30.835884>,  <34.678253, 33.424675, 30.825161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.910069, 33.363457, 30.835884>,  <35.296425, 33.261429, 30.853756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910069, 33.363457, 30.835884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175478, -0.771603, -0.611421,
		-0.190431, -0.582725, 0.790043,
		-0.965890, 0.255068, -0.044681,
		34.620300, 33.439976, 30.822479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967949, 32.623390, 30.870228>,  <35.296425, 33.261429, 30.853756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967949, 32.623390, 30.870228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701786, 32.869495, 30.701141>,  <34.542088, 33.017159, 30.599689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701786, 32.869495, 30.701141>,  <34.967949, 32.623390, 30.870228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701786, 32.869495, 30.701141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192751, -0.688689, -0.698967,
		-0.721170, -0.383615, 0.576848,
		-0.665403, 0.615262, -0.422719,
		34.502163, 33.054073, 30.574327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358700, 32.207645, 30.805370>,  <34.967949, 32.623390, 30.870228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358700, 32.207645, 30.805370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.290089, 32.506809, 30.548868>,  <34.248924, 32.686310, 30.394968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.290089, 32.506809, 30.548868>,  <34.358700, 32.207645, 30.805370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290089, 32.506809, 30.548868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311814, -0.658651, -0.684800,
		-0.934533, 0.082493, 0.346183,
		-0.171523, 0.747913, -0.641253,
		34.238632, 32.731182, 30.356493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828499, 31.930286, 30.381414>,  <34.358700, 32.207645, 30.805370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828499, 31.930286, 30.381414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.988365, 32.238697, 30.183107>,  <34.084286, 32.423744, 30.064123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.988365, 32.238697, 30.183107>,  <33.828499, 31.930286, 30.381414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988365, 32.238697, 30.183107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002621, -0.539878, -0.841739,
		-0.916656, 0.337716, -0.213752,
		0.399669, 0.771025, -0.495768,
		34.108265, 32.470005, 30.034376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396313, 31.950249, 29.759087>,  <33.828499, 31.930286, 30.381414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396313, 31.950249, 29.759087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.741219, 32.140675, 29.689962>,  <33.948162, 32.254929, 29.648487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.741219, 32.140675, 29.689962>,  <33.396313, 31.950249, 29.759087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741219, 32.140675, 29.689962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117424, -0.519835, -0.846158,
		-0.492660, 0.709319, -0.504136,
		0.862263, 0.476066, -0.172810,
		33.999897, 32.283493, 29.638119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155186, 32.151653, 29.118290>,  <33.396313, 31.950249, 29.759087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155186, 32.151653, 29.118290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.551399, 32.143154, 29.172541>,  <33.789127, 32.138054, 29.205091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.551399, 32.143154, 29.172541>,  <33.155186, 32.151653, 29.118290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551399, 32.143154, 29.172541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097523, -0.586430, -0.804107,
		0.096618, 0.809721, -0.578806,
		0.990532, -0.021245, 0.135626,
		33.848560, 32.136780, 29.213228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506847, 32.433537, 28.487358>,  <33.155186, 32.151653, 29.118290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506847, 32.433537, 28.487358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.749931, 32.192471, 28.694235>,  <33.895782, 32.047832, 28.818361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.749931, 32.192471, 28.694235>,  <33.506847, 32.433537, 28.487358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749931, 32.192471, 28.694235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328402, -0.402253, -0.854602,
		0.723077, 0.689198, -0.046538,
		0.607710, -0.602660, 0.517194,
		33.932243, 32.011673, 28.849394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071125, 32.441025, 28.170029>,  <33.506847, 32.433537, 28.487358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071125, 32.441025, 28.170029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.098080, 32.106907, 28.388290>,  <34.114254, 31.906435, 28.519247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.098080, 32.106907, 28.388290>,  <34.071125, 32.441025, 28.170029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098080, 32.106907, 28.388290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400085, -0.478377, -0.781721,
		0.913997, 0.270984, 0.301955,
		0.067386, -0.835298, 0.545652,
		34.118294, 31.856318, 28.551987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805477, 32.203194, 28.234190>,  <34.071125, 32.441025, 28.170029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805477, 32.203194, 28.234190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.562931, 31.890926, 28.294691>,  <34.417404, 31.703566, 28.330992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.562931, 31.890926, 28.294691>,  <34.805477, 32.203194, 28.234190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562931, 31.890926, 28.294691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506638, -0.525885, -0.683201,
		0.612895, -0.337639, 0.714395,
		-0.606364, -0.780670, 0.151251,
		34.381023, 31.656725, 28.340067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261452, 31.548571, 28.223152>,  <34.805477, 32.203194, 28.234190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261452, 31.548571, 28.223152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.881447, 31.431152, 28.180624>,  <34.653442, 31.360703, 28.155107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.881447, 31.431152, 28.180624>,  <35.261452, 31.548571, 28.223152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881447, 31.431152, 28.180624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266023, -0.582855, -0.767797,
		0.163413, -0.757702, 0.631811,
		-0.950015, -0.293544, -0.106320,
		34.596443, 31.343088, 28.148727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349159, 30.884733, 28.072342>,  <35.261452, 31.548571, 28.223152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349159, 30.884733, 28.072342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.976818, 30.947392, 27.940292>,  <34.753414, 30.984987, 27.861063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.976818, 30.947392, 27.940292>,  <35.349159, 30.884733, 28.072342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976818, 30.947392, 27.940292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217855, -0.487408, -0.845561,
		-0.293359, -0.859009, 0.419577,
		-0.930849, 0.156646, -0.330124,
		34.697563, 30.994385, 27.841255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415684, 30.187086, 28.380632>,  <35.349159, 30.884733, 28.072342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415684, 30.187086, 28.380632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.715878, 29.958759, 28.513866>,  <35.895992, 29.821764, 28.593807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.715878, 29.958759, 28.513866>,  <35.415684, 30.187086, 28.380632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715878, 29.958759, 28.513866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000793, 0.504771, 0.863253,
		-0.660888, -0.647593, 0.379275,
		0.750484, -0.570815, 0.333083,
		35.941021, 29.787516, 28.613791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249306, 29.826519, 29.046114>,  <35.415684, 30.187086, 28.380632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249306, 29.826519, 29.046114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.647434, 29.853455, 29.018415>,  <35.886311, 29.869616, 29.001797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.647434, 29.853455, 29.018415>,  <35.249306, 29.826519, 29.046114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647434, 29.853455, 29.018415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034926, 0.417501, 0.908005,
		0.090056, -0.906178, 0.413197,
		0.995324, 0.067341, -0.069248,
		35.946030, 29.873657, 28.997641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441402, 29.883831, 29.700609>,  <35.249306, 29.826519, 29.046114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441402, 29.883831, 29.700609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.788364, 29.994286, 29.535025>,  <35.996540, 30.060558, 29.435673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.788364, 29.994286, 29.535025>,  <35.441402, 29.883831, 29.700609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788364, 29.994286, 29.535025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287803, 0.400252, 0.870039,
		0.405960, -0.873805, 0.267696,
		0.867391, 0.276157, -0.413970,
		36.048584, 30.077126, 29.410835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024666, 29.619162, 30.124630>,  <35.441402, 29.883831, 29.700609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024666, 29.619162, 30.124630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.144318, 29.932909, 29.907269>,  <36.216110, 30.121157, 29.776852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.144318, 29.932909, 29.907269>,  <36.024666, 29.619162, 30.124630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144318, 29.932909, 29.907269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470503, 0.374196, 0.799127,
		0.830150, -0.494716, -0.257114,
		0.299131, 0.784368, -0.543404,
		36.234058, 30.168219, 29.744247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762749, 29.646950, 30.205381>,  <36.024666, 29.619162, 30.124630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762749, 29.646950, 30.205381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.620224, 30.005239, 30.099009>,  <36.534710, 30.220213, 30.035185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.620224, 30.005239, 30.099009>,  <36.762749, 29.646950, 30.205381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620224, 30.005239, 30.099009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471223, 0.418033, 0.776658,
		0.806840, 0.151419, -0.571036,
		-0.356313, 0.895724, -0.265933,
		36.513329, 30.273956, 30.019228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241020, 30.071898, 30.429106>,  <36.762749, 29.646950, 30.205381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241020, 30.071898, 30.429106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949421, 30.337242, 30.361553>,  <36.774464, 30.496449, 30.321022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949421, 30.337242, 30.361553>,  <37.241020, 30.071898, 30.429106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949421, 30.337242, 30.361553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392545, 0.607245, 0.690769,
		0.560781, 0.437273, -0.703077,
		-0.728995, 0.663359, -0.168882,
		36.730724, 30.536249, 30.310888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517868, 30.815323, 30.280151>,  <37.241020, 30.071898, 30.429106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517868, 30.815323, 30.280151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.141769, 30.844603, 30.413158>,  <36.916107, 30.862171, 30.492964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.141769, 30.844603, 30.413158>,  <37.517868, 30.815323, 30.280151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141769, 30.844603, 30.413158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299715, 0.641323, 0.706311,
		-0.161550, 0.763771, -0.624944,
		-0.940251, 0.073201, 0.332519,
		36.859695, 30.866564, 30.512915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548435, 31.576382, 30.356464>,  <37.517868, 30.815323, 30.280151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548435, 31.576382, 30.356464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.221031, 31.441921, 30.542816>,  <37.024590, 31.361244, 30.654627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.221031, 31.441921, 30.542816>,  <37.548435, 31.576382, 30.356464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221031, 31.441921, 30.542816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086059, 0.730047, 0.677957,
		-0.568010, 0.595008, -0.568622,
		-0.818510, -0.336151, 0.465879,
		36.975479, 31.341076, 30.682579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086861, 32.112751, 30.435291>,  <37.548435, 31.576382, 30.356464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086861, 32.112751, 30.435291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.958736, 31.856926, 30.714823>,  <36.881863, 31.703432, 30.882542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.958736, 31.856926, 30.714823>,  <37.086861, 32.112751, 30.435291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958736, 31.856926, 30.714823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146757, 0.695290, 0.703586,
		-0.935876, 0.327925, -0.128849,
		-0.320311, -0.639560, 0.698830,
		36.862644, 31.665058, 30.924473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570995, 32.518642, 30.862631>,  <37.086861, 32.112751, 30.435291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570995, 32.518642, 30.862631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.707577, 32.214863, 31.084137>,  <36.789524, 32.032597, 31.217041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.707577, 32.214863, 31.084137>,  <36.570995, 32.518642, 30.862631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707577, 32.214863, 31.084137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149624, 0.625580, 0.765678,
		-0.927914, -0.178584, 0.327235,
		0.341449, -0.759446, 0.553764,
		36.810013, 31.987030, 31.250267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241020, 32.628315, 31.438229>,  <36.570995, 32.518642, 30.862631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241020, 32.628315, 31.438229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.535244, 32.381840, 31.550842>,  <36.711777, 32.233955, 31.618410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.535244, 32.381840, 31.550842>,  <36.241020, 32.628315, 31.438229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535244, 32.381840, 31.550842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058335, 0.471640, 0.879860,
		-0.674946, -0.630764, 0.382864,
		0.735558, -0.616192, 0.281536,
		36.755913, 32.196983, 31.635303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225822, 32.420471, 32.199089>,  <36.241020, 32.628315, 31.438229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225822, 32.420471, 32.199089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.610958, 32.327709, 32.143726>,  <36.842041, 32.272053, 32.110508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.610958, 32.327709, 32.143726>,  <36.225822, 32.420471, 32.199089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610958, 32.327709, 32.143726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227759, 0.421842, 0.877596,
		-0.145136, -0.876509, 0.458986,
		0.962840, -0.231909, -0.138408,
		36.899811, 32.258137, 32.102203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496735, 32.181664, 32.905647>,  <36.225822, 32.420471, 32.199089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496735, 32.181664, 32.905647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.798958, 32.308720, 32.676479>,  <36.980293, 32.384953, 32.538979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.798958, 32.308720, 32.676479>,  <36.496735, 32.181664, 32.905647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798958, 32.308720, 32.676479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452587, 0.379165, 0.807093,
		0.473599, -0.869100, 0.142719,
		0.755558, 0.317646, -0.572915,
		37.025627, 32.404015, 32.504604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102417, 32.060650, 33.297874>,  <36.496735, 32.181664, 32.905647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102417, 32.060650, 33.297874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.235283, 32.319592, 33.023472>,  <37.315002, 32.474957, 32.858829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.235283, 32.319592, 33.023472>,  <37.102417, 32.060650, 33.297874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235283, 32.319592, 33.023472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401140, 0.561294, 0.723903,
		0.853670, -0.515639, -0.073236,
		0.332165, 0.647352, -0.686004,
		37.334934, 32.513798, 32.817669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.847111, 30.193342, 27.553148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.461166, 30.251633, 27.465696>,  <39.229599, 30.286608, 27.413225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.461166, 30.251633, 27.465696>,  <39.847111, 30.193342, 27.553148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461166, 30.251633, 27.465696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022970, -0.875692, -0.482323,
		-0.261741, -0.460355, 0.848272,
		-0.964864, 0.145728, -0.218630,
		39.171707, 30.295351, 27.400106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453705, 29.591650, 27.747530>,  <39.847111, 30.193342, 27.553148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453705, 29.591650, 27.747530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.234219, 29.766829, 27.462683>,  <39.102528, 29.871937, 27.291775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.234219, 29.766829, 27.462683>,  <39.453705, 29.591650, 27.747530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234219, 29.766829, 27.462683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126613, -0.885516, -0.447025,
		-0.826365, -0.155126, 0.541347,
		-0.548716, 0.437947, -0.712118,
		39.069603, 29.898212, 27.249046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951614, 29.018608, 27.563347>,  <39.453705, 29.591650, 27.747530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951614, 29.018608, 27.563347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.946014, 29.288654, 27.268314>,  <38.942654, 29.450682, 27.091295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.946014, 29.288654, 27.268314>,  <38.951614, 29.018608, 27.563347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946014, 29.288654, 27.268314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073677, -0.736343, -0.672585,
		-0.997184, 0.044926, 0.060049,
		-0.014000, 0.675115, -0.737580,
		38.941814, 29.491188, 27.047041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484734, 28.695608, 27.046120>,  <38.951614, 29.018608, 27.563347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484734, 28.695608, 27.046120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.664528, 28.998838, 26.857107>,  <38.772404, 29.180777, 26.743700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.664528, 28.998838, 26.857107>,  <38.484734, 28.695608, 27.046120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664528, 28.998838, 26.857107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034246, -0.543217, -0.838894,
		-0.892631, 0.360888, -0.270128,
		0.449485, 0.758074, -0.472533,
		38.799374, 29.226261, 26.715347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179241, 28.883207, 26.342419>,  <38.484734, 28.695608, 27.046120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179241, 28.883207, 26.342419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.562592, 28.992216, 26.308365>,  <38.792603, 29.057621, 26.287931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.562592, 28.992216, 26.308365>,  <38.179241, 28.883207, 26.342419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562592, 28.992216, 26.308365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072748, -0.521429, -0.850188,
		-0.276088, 0.808606, -0.519550,
		0.958375, 0.272523, -0.085136,
		38.850105, 29.073973, 26.282824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298756, 28.930367, 25.569811>,  <38.179241, 28.883207, 26.342419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298756, 28.930367, 25.569811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.676895, 28.930611, 25.700232>,  <38.903778, 28.930758, 25.778484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.676895, 28.930611, 25.700232>,  <38.298756, 28.930367, 25.569811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676895, 28.930611, 25.700232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295866, -0.421819, -0.857048,
		0.137012, 0.906680, -0.398948,
		0.945352, 0.000610, 0.326050,
		38.960503, 28.930794, 25.798046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748844, 29.290594, 25.058121>,  <38.298756, 28.930367, 25.569811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748844, 29.290594, 25.058121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.963322, 29.043545, 25.288265>,  <39.092007, 28.895315, 25.426352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.963322, 29.043545, 25.288265>,  <38.748844, 29.290594, 25.058121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963322, 29.043545, 25.288265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212579, -0.560854, -0.800158,
		0.816890, 0.551348, -0.169431,
		0.536191, -0.617623, 0.575361,
		39.124180, 28.858257, 25.460873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277660, 29.144703, 24.608370>,  <38.748844, 29.290594, 25.058121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277660, 29.144703, 24.608370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.279430, 28.861664, 24.891010>,  <39.280495, 28.691839, 25.060595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.279430, 28.861664, 24.891010>,  <39.277660, 29.144703, 24.608370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279430, 28.861664, 24.891010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308433, -0.671190, -0.674072,
		0.951236, 0.220925, 0.215274,
		0.004430, -0.707599, 0.706600,
		39.280758, 28.649384, 25.102991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913464, 28.777979, 24.499491>,  <39.277660, 29.144703, 24.608370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913464, 28.777979, 24.499491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.651791, 28.549263, 24.697523>,  <39.494789, 28.412033, 24.816343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.651791, 28.549263, 24.697523>,  <39.913464, 28.777979, 24.499491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651791, 28.549263, 24.697523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153002, -0.741087, -0.653744,
		0.740703, -0.351916, 0.572288,
		-0.654178, -0.571791, 0.495082,
		39.455536, 28.377726, 24.846048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225548, 28.169098, 24.450687>,  <39.913464, 28.777979, 24.499491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225548, 28.169098, 24.450687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.839260, 28.085922, 24.512835>,  <39.607487, 28.036016, 24.550123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.839260, 28.085922, 24.512835>,  <40.225548, 28.169098, 24.450687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839260, 28.085922, 24.512835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100121, -0.850631, -0.516143,
		0.239488, -0.482896, 0.842293,
		-0.965723, -0.207941, 0.155368,
		39.549541, 28.023540, 24.559444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225250, 27.423441, 24.665359>,  <40.225548, 28.169098, 24.450687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225250, 27.423441, 24.665359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.861546, 27.545895, 24.552565>,  <39.643322, 27.619368, 24.484888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.861546, 27.545895, 24.552565>,  <40.225250, 27.423441, 24.665359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861546, 27.545895, 24.552565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088502, -0.804214, -0.587713,
		-0.406697, -0.509431, 0.758339,
		-0.909266, 0.306136, -0.281986,
		39.588764, 27.637735, 24.467968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794479, 26.749315, 24.704498>,  <40.225250, 27.423441, 24.665359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794479, 26.749315, 24.704498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.582630, 27.005287, 24.481792>,  <39.455521, 27.158871, 24.348169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.582630, 27.005287, 24.481792>,  <39.794479, 26.749315, 24.704498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582630, 27.005287, 24.481792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143810, -0.714621, -0.684569,
		-0.835954, -0.282495, 0.470509,
		-0.529622, 0.639932, -0.556765,
		39.423744, 27.197268, 24.314764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127808, 26.394915, 24.485271>,  <39.794479, 26.749315, 24.704498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127808, 26.394915, 24.485271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.185791, 26.701420, 24.234886>,  <39.220581, 26.885323, 24.084656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.185791, 26.701420, 24.234886>,  <39.127808, 26.394915, 24.485271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185791, 26.701420, 24.234886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233918, -0.588170, -0.774170,
		-0.961389, 0.258647, 0.093981,
		0.144959, 0.766262, -0.625963,
		39.229279, 26.931299, 24.047098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303139, 26.167248, 25.164051>,  <39.127808, 26.394915, 24.485271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303139, 26.167248, 25.164051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.197647, 26.510511, 24.987867>,  <39.134350, 26.716471, 24.882156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.197647, 26.510511, 24.987867>,  <39.303139, 26.167248, 25.164051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197647, 26.510511, 24.987867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858615, -0.000764, 0.512620,
		0.439574, 0.513379, 0.737032,
		-0.263732, 0.858161, -0.440459,
		39.118526, 26.767960, 24.855730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613071, 26.095116, 25.019577>,  <39.303139, 26.167248, 25.164051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613071, 26.095116, 25.019577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.218811, 26.038527, 24.982742>,  <37.982254, 26.004574, 24.960642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.218811, 26.038527, 24.982742>,  <38.613071, 26.095116, 25.019577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218811, 26.038527, 24.982742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164878, 0.689902, 0.704876,
		-0.036189, 0.709944, -0.703327,
		-0.985650, -0.141472, -0.092087,
		37.923115, 25.996084, 24.955116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134464, 26.670816, 24.773088>,  <38.613071, 26.095116, 25.019577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134464, 26.670816, 24.773088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.852516, 26.444433, 24.944132>,  <37.683346, 26.308603, 25.046759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.852516, 26.444433, 24.944132>,  <38.134464, 26.670816, 24.773088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852516, 26.444433, 24.944132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246600, 0.760743, 0.600383,
		-0.665092, 0.317743, -0.675790,
		-0.704869, -0.565960, 0.427608,
		37.641056, 26.274645, 25.072414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477116, 26.997381, 24.763577>,  <38.134464, 26.670816, 24.773088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477116, 26.997381, 24.763577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.451340, 26.737595, 25.066637>,  <37.435875, 26.581722, 25.248474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.451340, 26.737595, 25.066637>,  <37.477116, 26.997381, 24.763577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451340, 26.737595, 25.066637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376122, 0.719047, 0.584383,
		-0.924326, -0.247311, -0.290617,
		-0.064443, -0.649468, 0.757653,
		37.432007, 26.542753, 25.293934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748203, 26.926811, 24.905903>,  <37.477116, 26.997381, 24.763577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748203, 26.926811, 24.905903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.938992, 26.810780, 25.237770>,  <37.053467, 26.741161, 25.436892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.938992, 26.810780, 25.237770>,  <36.748203, 26.926811, 24.905903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938992, 26.810780, 25.237770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576639, 0.609124, 0.544477,
		-0.663313, -0.738121, 0.123265,
		0.476973, -0.290079, 0.829669,
		37.082085, 26.723757, 25.486671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227020, 26.968716, 25.478813>,  <36.748203, 26.926811, 24.905903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227020, 26.968716, 25.478813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.552258, 26.911386, 25.704500>,  <36.747398, 26.876989, 25.839912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.552258, 26.911386, 25.704500>,  <36.227020, 26.968716, 25.478813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552258, 26.911386, 25.704500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424022, 0.518259, 0.742707,
		-0.398855, -0.843129, 0.360621,
		0.813093, -0.143321, 0.564216,
		36.796185, 26.868391, 25.873764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963436, 26.800957, 26.126635>,  <36.227020, 26.968716, 25.478813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963436, 26.800957, 26.126635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.331467, 26.946560, 26.184534>,  <36.552284, 27.033922, 26.219275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.331467, 26.946560, 26.184534>,  <35.963436, 26.800957, 26.126635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331467, 26.946560, 26.184534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358783, 0.634715, 0.684406,
		0.157256, -0.681641, 0.714588,
		0.920079, 0.364009, 0.144749,
		36.607491, 27.055763, 26.227959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157227, 26.798292, 26.850885>,  <35.963436, 26.800957, 26.126635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157227, 26.798292, 26.850885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.402508, 27.067602, 26.685631>,  <36.549679, 27.229187, 26.586479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.402508, 27.067602, 26.685631>,  <36.157227, 26.798292, 26.850885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402508, 27.067602, 26.685631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335087, 0.695329, 0.635794,
		0.715327, -0.251437, 0.651986,
		0.613207, 0.673273, -0.413135,
		36.586472, 27.269585, 26.561689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536869, 27.004366, 27.338289>,  <36.157227, 26.798292, 26.850885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536869, 27.004366, 27.338289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.578362, 27.309937, 27.083525>,  <36.603256, 27.493279, 26.930666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.578362, 27.309937, 27.083525>,  <36.536869, 27.004366, 27.338289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578362, 27.309937, 27.083525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241239, 0.640571, 0.729022,
		0.964906, 0.078024, 0.250737,
		0.103734, 0.763925, -0.636913,
		36.609482, 27.539114, 26.892450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009113, 27.469864, 27.706688>,  <36.536869, 27.004366, 27.338289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009113, 27.469864, 27.706688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.826084, 27.676659, 27.417315>,  <36.716267, 27.800735, 27.243690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.826084, 27.676659, 27.417315>,  <37.009113, 27.469864, 27.706688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826084, 27.676659, 27.417315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079976, 0.786373, 0.612553,
		0.885570, 0.338142, -0.318473,
		-0.457569, 0.516989, -0.723432,
		36.688812, 27.831755, 27.200285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148716, 28.171839, 27.902657>,  <37.009113, 27.469864, 27.706688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148716, 28.171839, 27.902657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.848183, 28.213236, 27.641953>,  <36.667862, 28.238073, 27.485531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.848183, 28.213236, 27.641953>,  <37.148716, 28.171839, 27.902657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848183, 28.213236, 27.641953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228841, 0.885487, 0.404405,
		0.618978, 0.452992, -0.641611,
		-0.751331, 0.103491, -0.651760,
		36.622784, 28.244284, 27.446424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335720, 28.777298, 27.568613>,  <37.148716, 28.171839, 27.902657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335720, 28.777298, 27.568613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.941319, 28.719973, 27.534544>,  <36.704678, 28.685577, 27.514103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.941319, 28.719973, 27.534544>,  <37.335720, 28.777298, 27.568613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941319, 28.719973, 27.534544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166690, 0.839393, 0.517333,
		-0.002649, 0.524290, -0.851536,
		-0.986006, -0.143313, -0.085171,
		36.645515, 28.676979, 27.508993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976555, 29.419912, 27.404421>,  <37.335720, 28.777298, 27.568613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976555, 29.419912, 27.404421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.676456, 29.199835, 27.551077>,  <36.496399, 29.067789, 27.639071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.676456, 29.199835, 27.551077>,  <36.976555, 29.419912, 27.404421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676456, 29.199835, 27.551077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246945, 0.747590, 0.616544,
		-0.613313, 0.372019, -0.696742,
		-0.750243, -0.550192, 0.366639,
		36.451382, 29.034777, 27.661068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393776, 29.951710, 27.494398>,  <36.976555, 29.419912, 27.404421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393776, 29.951710, 27.494398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.329380, 29.635303, 27.730490>,  <36.290741, 29.445459, 27.872145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.329380, 29.635303, 27.730490>,  <36.393776, 29.951710, 27.494398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329380, 29.635303, 27.730490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385530, 0.600922, 0.700186,
		-0.908542, -0.114826, -0.401706,
		-0.160994, -0.791017, 0.590231,
		36.281082, 29.397999, 27.907558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930870, 30.157082, 27.843941>,  <36.393776, 29.951710, 27.494398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930870, 30.157082, 27.843941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.024960, 29.840973, 28.070265>,  <36.081413, 29.651308, 28.206059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.024960, 29.840973, 28.070265>,  <35.930870, 30.157082, 27.843941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024960, 29.840973, 28.070265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149325, 0.545847, 0.824471,
		-0.960403, -0.278422, 0.010387,
		0.235221, -0.790274, 0.565808,
		36.095528, 29.603891, 28.240007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071976, 30.242439, 27.733509>,  <35.930870, 30.157082, 27.843941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071976, 30.242439, 27.733509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.820961, 30.520956, 27.594156>,  <34.670353, 30.688066, 27.510546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.820961, 30.520956, 27.594156>,  <35.071976, 30.242439, 27.733509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820961, 30.520956, 27.594156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126532, -0.350300, -0.928052,
		-0.768234, -0.626470, 0.131724,
		-0.627539, 0.696294, -0.348381,
		34.632698, 30.729845, 27.489641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591206, 29.894854, 27.300022>,  <35.071976, 30.242439, 27.733509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591206, 29.894854, 27.300022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.587498, 30.273977, 27.172541>,  <34.585274, 30.501451, 27.096052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.587498, 30.273977, 27.172541>,  <34.591206, 29.894854, 27.300022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587498, 30.273977, 27.172541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047592, -0.317939, -0.946916,
		-0.998824, -0.023941, -0.042162,
		-0.009265, 0.947809, -0.318704,
		34.584717, 30.558319, 27.076929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949787, 29.896654, 26.964029>,  <34.591206, 29.894854, 27.300022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949787, 29.896654, 26.964029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.210415, 30.169996, 26.832283>,  <34.366791, 30.334002, 26.753235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.210415, 30.169996, 26.832283>,  <33.949787, 29.896654, 26.964029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210415, 30.169996, 26.832283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048638, -0.395655, -0.917110,
		-0.757030, 0.613579, -0.224559,
		0.651568, 0.683357, -0.329366,
		34.405884, 30.375004, 26.733473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597317, 30.065966, 26.359028>,  <33.949787, 29.896654, 26.964029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597317, 30.065966, 26.359028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.973751, 30.200733, 26.347366>,  <34.199612, 30.281593, 26.340368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.973751, 30.200733, 26.347366>,  <33.597317, 30.065966, 26.359028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973751, 30.200733, 26.347366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096331, -0.349716, -0.931890,
		-0.324166, 0.874177, -0.361568,
		0.941083, 0.336918, -0.029156,
		34.256077, 30.301809, 26.338619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728554, 30.513367, 25.779594>,  <33.597317, 30.065966, 26.359028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728554, 30.513367, 25.779594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091721, 30.373468, 25.872002>,  <34.309620, 30.289530, 25.927446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091721, 30.373468, 25.872002>,  <33.728554, 30.513367, 25.779594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091721, 30.373468, 25.872002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119825, -0.311585, -0.942633,
		0.401664, 0.883512, -0.240984,
		0.907914, -0.349746, 0.231019,
		34.364094, 30.268545, 25.941307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084946, 30.598143, 25.242487>,  <33.728554, 30.513367, 25.779594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084946, 30.598143, 25.242487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.298790, 30.306955, 25.414185>,  <34.427097, 30.132242, 25.517204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.298790, 30.306955, 25.414185>,  <34.084946, 30.598143, 25.242487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298790, 30.306955, 25.414185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178708, -0.399056, -0.899343,
		0.825987, 0.557508, -0.083246,
		0.534611, -0.727969, 0.429246,
		34.459171, 30.088564, 25.542959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330624, 30.257221, 24.647669>,  <34.084946, 30.598143, 25.242487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330624, 30.257221, 24.647669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.466095, 30.008068, 24.929752>,  <34.547379, 29.858576, 25.099003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.466095, 30.008068, 24.929752>,  <34.330624, 30.257221, 24.647669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466095, 30.008068, 24.929752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289141, -0.644335, -0.707976,
		0.895374, 0.443680, -0.038122,
		0.338678, -0.622881, 0.705207,
		34.567699, 29.821203, 25.141314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852074, 30.667847, 24.278282>,  <34.330624, 30.257221, 24.647669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852074, 30.667847, 24.278282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.584705, 30.787441, 24.005867>,  <34.424282, 30.859198, 23.842417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.584705, 30.787441, 24.005867>,  <34.852074, 30.667847, 24.278282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584705, 30.787441, 24.005867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303994, 0.725855, 0.617026,
		0.678820, 0.619467, -0.394289,
		-0.668424, 0.298989, -0.681040,
		34.384178, 30.877138, 23.801556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964520, 31.354460, 24.288101>,  <34.852074, 30.667847, 24.278282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964520, 31.354460, 24.288101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.585072, 31.311306, 24.169117>,  <34.357403, 31.285414, 24.097727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.585072, 31.311306, 24.169117>,  <34.964520, 31.354460, 24.288101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585072, 31.311306, 24.169117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246319, 0.841872, 0.480185,
		0.198618, 0.528783, -0.825191,
		-0.948619, -0.107887, -0.297460,
		34.300488, 31.278940, 24.079880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777603, 32.034985, 24.223118>,  <34.964520, 31.354460, 24.288101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777603, 32.034985, 24.223118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423149, 31.851772, 24.194925>,  <34.210476, 31.741846, 24.178011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423149, 31.851772, 24.194925>,  <34.777603, 32.034985, 24.223118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423149, 31.851772, 24.194925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390967, 0.657250, 0.644334,
		-0.248800, 0.598526, -0.761489,
		-0.886140, -0.458028, -0.070480,
		34.157307, 31.714363, 24.173780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323631, 32.467758, 23.989998>,  <34.777603, 32.034985, 24.223118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323631, 32.467758, 23.989998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.112350, 32.194794, 24.192112>,  <33.985580, 32.031013, 24.313381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.112350, 32.194794, 24.192112>,  <34.323631, 32.467758, 23.989998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112350, 32.194794, 24.192112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390316, 0.723606, 0.569251,
		-0.754093, 0.103459, -0.648568,
		-0.528202, -0.682415, 0.505285,
		33.953892, 31.990068, 24.343697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746983, 32.880699, 24.193909>,  <34.323631, 32.467758, 23.989998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746983, 32.880699, 24.193909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.721298, 32.534779, 24.393106>,  <33.705887, 32.327225, 24.512625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.721298, 32.534779, 24.393106>,  <33.746983, 32.880699, 24.193909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721298, 32.534779, 24.393106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420885, 0.475936, 0.772231,
		-0.904839, -0.160012, -0.394542,
		-0.064210, -0.864801, 0.497992,
		33.702034, 32.275337, 24.542503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097755, 32.931099, 24.451271>,  <33.746983, 32.880699, 24.193909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097755, 32.931099, 24.451271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.292931, 32.654297, 24.664078>,  <33.410034, 32.488216, 24.791761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.292931, 32.654297, 24.664078>,  <33.097755, 32.931099, 24.451271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292931, 32.654297, 24.664078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052393, 0.585180, 0.809209,
		-0.871306, -0.422715, 0.249273,
		0.487935, -0.692009, 0.532018,
		33.439312, 32.446693, 24.823683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729950, 32.701290, 25.070518>,  <33.097755, 32.931099, 24.451271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729950, 32.701290, 25.070518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.111034, 32.615005, 25.156132>,  <33.339684, 32.563236, 25.207500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.111034, 32.615005, 25.156132>,  <32.729950, 32.701290, 25.070518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111034, 32.615005, 25.156132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108510, 0.416419, 0.902674,
		-0.283843, -0.883213, 0.373320,
		0.952711, -0.215709, 0.214035,
		33.396847, 32.550293, 25.220343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.132595, 28.623699, 21.685312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.000797, 28.491020, 22.038902>,  <38.921719, 28.411413, 22.251057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.000797, 28.491020, 22.038902>,  <39.132595, 28.623699, 21.685312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000797, 28.491020, 22.038902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008289, 0.935205, 0.354010,
		-0.944121, 0.123972, -0.305396,
		-0.329495, -0.331697, 0.883974,
		38.901947, 28.391512, 22.304094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511841, 29.046169, 21.849237>,  <39.132595, 28.623699, 21.685312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511841, 29.046169, 21.849237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.706768, 28.929567, 22.178492>,  <38.823723, 28.859606, 22.376043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.706768, 28.929567, 22.178492>,  <38.511841, 29.046169, 21.849237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706768, 28.929567, 22.178492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024334, 0.946803, 0.320893,
		-0.872886, -0.136346, 0.468486,
		0.487316, -0.291503, 0.823133,
		38.852962, 28.842115, 22.425432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075336, 29.300652, 22.544024>,  <38.511841, 29.046169, 21.849237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075336, 29.300652, 22.544024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.433231, 29.237612, 22.711168>,  <38.647968, 29.199787, 22.811455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.433231, 29.237612, 22.711168>,  <38.075336, 29.300652, 22.544024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433231, 29.237612, 22.711168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115168, 0.822591, 0.556849,
		-0.431488, -0.546358, 0.717852,
		0.894737, -0.157600, 0.417861,
		38.701653, 29.190332, 22.836527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989410, 29.189974, 23.209860>,  <38.075336, 29.300652, 22.544024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989410, 29.189974, 23.209860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.367302, 29.313370, 23.165472>,  <38.594040, 29.387407, 23.138840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.367302, 29.313370, 23.165472>,  <37.989410, 29.189974, 23.209860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367302, 29.313370, 23.165472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129344, 0.661755, 0.738479,
		0.301245, -0.683313, 0.665083,
		0.944734, 0.308488, -0.110967,
		38.650723, 29.405916, 23.132181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098724, 29.338274, 23.849977>,  <37.989410, 29.189974, 23.209860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098724, 29.338274, 23.849977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.394588, 29.512077, 23.644411>,  <38.572105, 29.616360, 23.521070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.394588, 29.512077, 23.644411>,  <38.098724, 29.338274, 23.849977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394588, 29.512077, 23.644411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117035, 0.835051, 0.537581,
		0.662731, -0.337479, 0.668503,
		0.739655, 0.434510, -0.513917,
		38.616486, 29.642431, 23.490236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446598, 29.741587, 24.384331>,  <38.098724, 29.338274, 23.849977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446598, 29.741587, 24.384331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.550301, 29.912304, 24.037775>,  <38.612522, 30.014734, 23.829842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.550301, 29.912304, 24.037775>,  <38.446598, 29.741587, 24.384331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550301, 29.912304, 24.037775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090602, 0.903853, 0.418139,
		0.961549, -0.029909, 0.272999,
		0.259257, 0.426795, -0.866390,
		38.628078, 30.040342, 23.777859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981014, 30.225782, 24.606291>,  <38.446598, 29.741587, 24.384331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981014, 30.225782, 24.606291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.836693, 30.324949, 24.246656>,  <38.750099, 30.384449, 24.030876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.836693, 30.324949, 24.246656>,  <38.981014, 30.225782, 24.606291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836693, 30.324949, 24.246656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117458, 0.944267, 0.307511,
		0.925215, 0.216557, -0.311579,
		-0.360807, 0.247916, -0.899086,
		38.728451, 30.399324, 23.976931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376499, 30.775501, 24.475996>,  <38.981014, 30.225782, 24.606291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376499, 30.775501, 24.475996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.074478, 30.806866, 24.215611>,  <38.893265, 30.825684, 24.059380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.074478, 30.806866, 24.215611>,  <39.376499, 30.775501, 24.475996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074478, 30.806866, 24.215611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066063, 0.978673, 0.194509,
		0.652331, 0.189869, -0.733767,
		-0.755049, 0.078410, -0.650962,
		38.847961, 30.830389, 24.020321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475822, 31.288740, 23.960503>,  <39.376499, 30.775501, 24.475996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475822, 31.288740, 23.960503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.076103, 31.273771, 23.960810>,  <38.836273, 31.264790, 23.960993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.076103, 31.273771, 23.960810>,  <39.475822, 31.288740, 23.960503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076103, 31.273771, 23.960810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035404, 0.951593, 0.305315,
		-0.012155, 0.305074, -0.952251,
		-0.999299, -0.037424, 0.000766,
		38.776314, 31.262545, 23.961039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171803, 31.834360, 23.578068>,  <39.475822, 31.288740, 23.960503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171803, 31.834360, 23.578068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.908943, 31.716366, 23.855526>,  <38.751228, 31.645569, 24.022001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.908943, 31.716366, 23.855526>,  <39.171803, 31.834360, 23.578068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908943, 31.716366, 23.855526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014545, 0.925033, 0.379608,
		-0.753622, 0.239369, -0.612174,
		-0.657147, -0.294985, 0.693644,
		38.711800, 31.627871, 24.063620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905239, 32.430641, 23.621168>,  <39.171803, 31.834360, 23.578068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905239, 32.430641, 23.621168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.741299, 32.235367, 23.929375>,  <38.642937, 32.118202, 24.114298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.741299, 32.235367, 23.929375>,  <38.905239, 32.430641, 23.621168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741299, 32.235367, 23.929375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174119, 0.871061, 0.459277,
		-0.895381, 0.054072, -0.442006,
		-0.409848, -0.488190, 0.770516,
		38.618343, 32.088909, 24.160530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260681, 32.759914, 23.805962>,  <38.905239, 32.430641, 23.621168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260681, 32.759914, 23.805962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.427887, 32.577415, 24.120184>,  <38.528210, 32.467915, 24.308718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.427887, 32.577415, 24.120184>,  <38.260681, 32.759914, 23.805962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427887, 32.577415, 24.120184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041906, 0.854127, 0.518374,
		-0.907474, -0.249607, 0.337917,
		0.418013, -0.456250, 0.785558,
		38.553291, 32.440540, 24.355852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565083, 32.825573, 23.653082>,  <38.260681, 32.759914, 23.805962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565083, 32.825573, 23.653082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.304367, 33.047592, 23.446360>,  <37.147938, 33.180805, 23.322327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.304367, 33.047592, 23.446360>,  <37.565083, 32.825573, 23.653082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304367, 33.047592, 23.446360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136890, -0.584150, -0.800018,
		-0.745942, -0.592191, 0.304764,
		-0.651791, 0.555048, -0.516807,
		37.108829, 33.214108, 23.291317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012863, 32.312656, 23.408255>,  <37.565083, 32.825573, 23.653082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012863, 32.312656, 23.408255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.992657, 32.619919, 23.152948>,  <36.980534, 32.804276, 22.999765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.992657, 32.619919, 23.152948>,  <37.012863, 32.312656, 23.408255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992657, 32.619919, 23.152948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029175, -0.639943, -0.767869,
		-0.998297, -0.020167, 0.054737,
		-0.050514, 0.768158, -0.638265,
		36.977501, 32.850365, 22.961470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322971, 32.274937, 23.193344>,  <37.012863, 32.312656, 23.408255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322971, 32.274937, 23.193344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.579777, 32.441368, 22.935759>,  <36.733860, 32.541229, 22.781208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.579777, 32.441368, 22.935759>,  <36.322971, 32.274937, 23.193344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579777, 32.441368, 22.935759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067498, -0.805990, -0.588067,
		-0.763712, 0.421016, -0.489376,
		0.642018, 0.416083, -0.643963,
		36.772381, 32.566193, 22.742569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059177, 31.906822, 22.644157>,  <36.322971, 32.274937, 23.193344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059177, 31.906822, 22.644157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.400726, 32.075928, 22.522717>,  <36.605656, 32.177391, 22.449852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.400726, 32.075928, 22.522717>,  <36.059177, 31.906822, 22.644157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400726, 32.075928, 22.522717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130394, -0.738459, -0.661570,
		-0.503885, 0.525308, -0.685675,
		0.853872, 0.422763, -0.303602,
		36.656887, 32.202755, 22.431637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005947, 32.203815, 22.011383>,  <36.059177, 31.906822, 22.644157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005947, 32.203815, 22.011383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.399513, 32.139694, 22.042925>,  <36.635651, 32.101219, 22.061850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.399513, 32.139694, 22.042925>,  <36.005947, 32.203815, 22.011383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399513, 32.139694, 22.042925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040935, -0.631942, -0.773934,
		0.173899, 0.758255, -0.628338,
		0.983912, -0.160307, 0.078855,
		36.694687, 32.091602, 22.066582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148026, 32.125256, 21.283680>,  <36.005947, 32.203815, 22.011383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148026, 32.125256, 21.283680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.477100, 31.973452, 21.452986>,  <36.674545, 31.882370, 21.554569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.477100, 31.973452, 21.452986>,  <36.148026, 32.125256, 21.283680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477100, 31.973452, 21.452986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103588, -0.632007, -0.768009,
		0.558972, 0.675679, -0.480634,
		0.822691, -0.379507, 0.423266,
		36.723907, 31.859600, 21.579966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708595, 32.128639, 20.819357>,  <36.148026, 32.125256, 21.283680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708595, 32.128639, 20.819357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.848980, 31.860743, 21.081127>,  <36.933212, 31.700005, 21.238190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.848980, 31.860743, 21.081127>,  <36.708595, 32.128639, 20.819357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848980, 31.860743, 21.081127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134320, -0.655644, -0.743027,
		0.926706, 0.348676, -0.140146,
		0.350961, -0.669743, 0.654424,
		36.954269, 31.659821, 21.277454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272537, 31.808846, 20.519030>,  <36.708595, 32.128639, 20.819357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272537, 31.808846, 20.519030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.145885, 31.547569, 20.794155>,  <37.069893, 31.390804, 20.959230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.145885, 31.547569, 20.794155>,  <37.272537, 31.808846, 20.519030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145885, 31.547569, 20.794155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104243, -0.696769, -0.709680,
		0.942804, -0.296405, 0.152526,
		-0.316629, -0.653190, 0.687815,
		37.050896, 31.351612, 21.000500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435654, 31.223063, 20.216908>,  <37.272537, 31.808846, 20.519030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435654, 31.223063, 20.216908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.202137, 31.096560, 20.516016>,  <37.062027, 31.020658, 20.695482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.202137, 31.096560, 20.516016>,  <37.435654, 31.223063, 20.216908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202137, 31.096560, 20.516016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090340, -0.889992, -0.446936,
		0.806859, -0.328473, 0.491002,
		-0.583795, -0.316258, 0.747773,
		37.027000, 31.001682, 20.740349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617023, 30.532164, 20.272711>,  <37.435654, 31.223063, 20.216908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617023, 30.532164, 20.272711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.251850, 30.552586, 20.434671>,  <37.032745, 30.564838, 20.531847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.251850, 30.552586, 20.434671>,  <37.617023, 30.532164, 20.272711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251850, 30.552586, 20.434671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235301, -0.876481, -0.420017,
		0.333442, -0.478721, 0.812184,
		-0.912934, 0.051057, 0.404899,
		36.977970, 30.567904, 20.556141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488075, 29.880388, 20.471924>,  <37.617023, 30.532164, 20.272711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488075, 29.880388, 20.471924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.111137, 30.013395, 20.456900>,  <36.884975, 30.093199, 20.447886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.111137, 30.013395, 20.456900>,  <37.488075, 29.880388, 20.471924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111137, 30.013395, 20.456900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280291, -0.845653, -0.454212,
		-0.182796, -0.417498, 0.890102,
		-0.942349, 0.332516, -0.037561,
		36.828434, 30.113150, 20.445631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931061, 29.340519, 20.788382>,  <37.488075, 29.880388, 20.471924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931061, 29.340519, 20.788382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.806934, 29.584993, 20.497135>,  <36.732456, 29.731678, 20.322388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.806934, 29.584993, 20.497135>,  <36.931061, 29.340519, 20.788382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806934, 29.584993, 20.497135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434519, -0.772428, -0.463193,
		-0.845515, 0.172644, 0.505271,
		-0.310318, 0.611186, -0.728117,
		36.713840, 29.768349, 20.278700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140190, 29.322042, 20.622461>,  <36.931061, 29.340519, 20.788382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140190, 29.322042, 20.622461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.293068, 29.466595, 20.282265>,  <36.384792, 29.553326, 20.078146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.293068, 29.466595, 20.282265>,  <36.140190, 29.322042, 20.622461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293068, 29.466595, 20.282265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449864, -0.731176, -0.512840,
		-0.807188, 0.578608, -0.116877,
		0.382191, 0.361379, -0.850491,
		36.407726, 29.575008, 20.027117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027599, 29.944277, 20.999622>,  <36.140190, 29.322042, 20.622461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027599, 29.944277, 20.999622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.831287, 29.675848, 21.221901>,  <35.713501, 29.514790, 21.355268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.831287, 29.675848, 21.221901>,  <36.027599, 29.944277, 20.999622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831287, 29.675848, 21.221901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766032, 0.636218, 0.091774,
		-0.415131, -0.380641, -0.826304,
		-0.490776, -0.671073, 0.555697,
		35.684055, 29.474525, 21.388611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319740, 30.016882, 20.876278>,  <36.027599, 29.944277, 20.999622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319740, 30.016882, 20.876278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.310207, 29.799879, 21.212162>,  <35.304489, 29.669678, 21.413692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.310207, 29.799879, 21.212162>,  <35.319740, 30.016882, 20.876278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310207, 29.799879, 21.212162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527185, 0.720490, 0.450522,
		-0.849416, -0.431947, -0.303173,
		-0.023831, -0.542509, 0.839712,
		35.303059, 29.637127, 21.464075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682606, 30.121267, 21.116249>,  <35.319740, 30.016882, 20.876278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682606, 30.121267, 21.116249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.881496, 29.975832, 21.431355>,  <35.000832, 29.888571, 21.620419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.881496, 29.975832, 21.431355>,  <34.682606, 30.121267, 21.116249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881496, 29.975832, 21.431355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566268, 0.551913, 0.612153,
		-0.657348, -0.750464, 0.068537,
		0.497225, -0.363588, 0.787763,
		35.030663, 29.866756, 21.667683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120617, 30.019739, 21.565990>,  <34.682606, 30.121267, 21.116249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120617, 30.019739, 21.565990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.453526, 30.023178, 21.787712>,  <34.653271, 30.025242, 21.920744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.453526, 30.023178, 21.787712>,  <34.120617, 30.019739, 21.565990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453526, 30.023178, 21.787712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493019, 0.468684, 0.732985,
		-0.253492, -0.883324, 0.394311,
		0.832270, 0.008597, 0.554303,
		34.703205, 30.025757, 21.954002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951031, 29.911842, 22.184122>,  <34.120617, 30.019739, 21.565990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951031, 29.911842, 22.184122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.316761, 30.054329, 22.261179>,  <34.536201, 30.139820, 22.307413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.316761, 30.054329, 22.261179>,  <33.951031, 29.911842, 22.184122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316761, 30.054329, 22.261179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367906, 0.531833, 0.762757,
		0.169251, -0.768286, 0.617325,
		0.914330, 0.356215, 0.192644,
		34.591061, 30.161194, 22.318972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969822, 29.795099, 22.844471>,  <33.951031, 29.911842, 22.184122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969822, 29.795099, 22.844471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.237743, 30.080523, 22.762302>,  <34.398495, 30.251776, 22.713001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.237743, 30.080523, 22.762302>,  <33.969822, 29.795099, 22.844471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237743, 30.080523, 22.762302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350507, 0.547723, 0.759700,
		0.654605, -0.436848, 0.616974,
		0.669804, 0.713557, -0.205424,
		34.438686, 30.294590, 22.700676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358044, 29.760586, 23.305038>,  <33.969822, 29.795099, 22.844471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358044, 29.760586, 23.305038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.399834, 30.133083, 23.165398>,  <34.424908, 30.356583, 23.081614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.399834, 30.133083, 23.165398>,  <34.358044, 29.760586, 23.305038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399834, 30.133083, 23.165398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288421, 0.364305, 0.885492,
		0.951787, 0.008180, 0.306649,
		0.104471, 0.931244, -0.349100,
		34.431175, 30.412457, 23.060667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744980, 30.091829, 23.872330>,  <34.358044, 29.760586, 23.305038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744980, 30.091829, 23.872330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.598831, 30.387526, 23.646046>,  <34.511143, 30.564943, 23.510275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.598831, 30.387526, 23.646046>,  <34.744980, 30.091829, 23.872330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598831, 30.387526, 23.646046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265871, 0.499537, 0.824485,
		0.892085, 0.451649, 0.014025,
		-0.365372, 0.739240, -0.565710,
		34.489220, 30.609297, 23.476332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201733, 29.944014, 24.428005>,  <34.744980, 30.091829, 23.872330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201733, 29.944014, 24.428005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.996044, 29.716530, 24.684801>,  <34.872631, 29.580040, 24.838879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.996044, 29.716530, 24.684801>,  <35.201733, 29.944014, 24.428005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996044, 29.716530, 24.684801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273262, -0.818164, -0.505901,
		0.812962, -0.084713, 0.576122,
		-0.514218, -0.568710, 0.641988,
		34.841778, 29.545918, 24.877398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621563, 29.571964, 24.875952>,  <35.201733, 29.944014, 24.428005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621563, 29.571964, 24.875952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.272957, 29.378242, 24.845186>,  <35.063793, 29.262009, 24.826727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.272957, 29.378242, 24.845186>,  <35.621563, 29.571964, 24.875952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272957, 29.378242, 24.845186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466255, -0.769808, -0.435892,
		0.151897, -0.415745, 0.896707,
		-0.871512, -0.484305, -0.076912,
		35.011505, 29.232950, 24.822113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794514, 28.835659, 24.893854>,  <35.621563, 29.571964, 24.875952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794514, 28.835659, 24.893854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.435326, 28.818201, 24.718702>,  <35.219810, 28.807726, 24.613611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.435326, 28.818201, 24.718702>,  <35.794514, 28.835659, 24.893854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435326, 28.818201, 24.718702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280285, -0.823844, -0.492669,
		-0.339243, -0.565134, 0.752022,
		-0.897973, -0.043646, -0.437882,
		35.165936, 28.805107, 24.587337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496887, 28.163752, 25.072041>,  <35.794514, 28.835659, 24.893854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496887, 28.163752, 25.072041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.324192, 28.304358, 24.739767>,  <35.220573, 28.388721, 24.540403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.324192, 28.304358, 24.739767>,  <35.496887, 28.163752, 25.072041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324192, 28.304358, 24.739767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403448, -0.748425, -0.526394,
		-0.806742, -0.562402, 0.181305,
		-0.431738, 0.351517, -0.830685,
		35.194672, 28.409813, 24.490562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511909, 27.524097, 24.672827>,  <35.496887, 28.163752, 25.072041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511909, 27.524097, 24.672827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.414700, 27.786900, 24.387371>,  <35.356373, 27.944582, 24.216097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.414700, 27.786900, 24.387371>,  <35.511909, 27.524097, 24.672827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414700, 27.786900, 24.387371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258994, -0.665040, -0.700460,
		-0.934807, -0.355054, -0.008542,
		-0.243020, 0.657007, -0.713641,
		35.341793, 27.984001, 24.173279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076309, 27.119968, 24.322971>,  <35.511909, 27.524097, 24.672827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076309, 27.119968, 24.322971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.238354, 27.411676, 24.102407>,  <35.335579, 27.586700, 23.970070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.238354, 27.411676, 24.102407>,  <35.076309, 27.119968, 24.322971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238354, 27.411676, 24.102407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089826, -0.631944, -0.769791,
		-0.909844, 0.262320, -0.321515,
		0.405111, 0.729270, -0.551407,
		35.359886, 27.630457, 23.936985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746986, 26.993851, 23.716352>,  <35.076309, 27.119968, 24.322971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746986, 26.993851, 23.716352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.075676, 27.216013, 23.665285>,  <35.272888, 27.349310, 23.634644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.075676, 27.216013, 23.665285>,  <34.746986, 26.993851, 23.716352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075676, 27.216013, 23.665285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277181, -0.585250, -0.762006,
		-0.497940, 0.590769, -0.634860,
		0.821722, 0.555404, -0.127669,
		35.322193, 27.382635, 23.626984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810921, 27.014769, 22.911144>,  <34.746986, 26.993851, 23.716352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810921, 27.014769, 22.911144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.157314, 27.129774, 23.074802>,  <35.365150, 27.198778, 23.172997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.157314, 27.129774, 23.074802>,  <34.810921, 27.014769, 22.911144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157314, 27.129774, 23.074802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456414, -0.788759, -0.411759,
		0.204331, 0.543318, -0.814282,
		0.865988, 0.287514, 0.409146,
		35.417110, 27.216028, 23.197546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225113, 26.854233, 22.410500>,  <34.810921, 27.014769, 22.911144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225113, 26.854233, 22.410500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.462673, 26.894239, 22.729818>,  <35.605209, 26.918243, 22.921410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.462673, 26.894239, 22.729818>,  <35.225113, 26.854233, 22.410500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462673, 26.894239, 22.729818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550818, -0.773775, -0.312844,
		0.586411, 0.625514, -0.514640,
		0.593904, 0.100018, 0.798295,
		35.640846, 26.924246, 22.969307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.400097, 37.934578, 34.751152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742363, 37.728291, 34.768429>,  <35.947723, 37.604519, 34.778793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742363, 37.728291, 34.768429>,  <35.400097, 37.934578, 34.751152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742363, 37.728291, 34.768429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306160, -0.571727, -0.761180,
		0.417248, 0.638094, -0.647101,
		0.855669, -0.515717, 0.043193,
		35.999065, 37.573574, 34.781387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759281, 37.850445, 34.066994>,  <35.400097, 37.934578, 34.751152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759281, 37.850445, 34.066994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.866684, 37.543865, 34.300385>,  <35.931126, 37.359917, 34.440418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.866684, 37.543865, 34.300385>,  <35.759281, 37.850445, 34.066994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866684, 37.543865, 34.300385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270713, -0.641356, -0.717897,
		0.924454, 0.034808, -0.379701,
		0.268511, -0.766454, 0.583482,
		35.947239, 37.313931, 34.475430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944935, 37.383369, 33.596466>,  <35.759281, 37.850445, 34.066994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944935, 37.383369, 33.596466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939827, 37.160954, 33.928890>,  <35.936764, 37.027504, 34.128345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939827, 37.160954, 33.928890>,  <35.944935, 37.383369, 33.596466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939827, 37.160954, 33.928890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308606, -0.788361, -0.532211,
		0.951104, -0.263265, -0.161531,
		-0.012767, -0.556038, 0.831059,
		35.935997, 36.994141, 34.178207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435127, 36.953136, 33.365242>,  <35.944935, 37.383369, 33.596466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435127, 36.953136, 33.365242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.220470, 36.785107, 33.657967>,  <36.091675, 36.684288, 33.833603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.220470, 36.785107, 33.657967>,  <36.435127, 36.953136, 33.365242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220470, 36.785107, 33.657967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189332, -0.785214, -0.589570,
		0.822292, -0.454946, 0.341849,
		-0.536647, -0.420075, 0.731811,
		36.059475, 36.659084, 33.877510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532135, 36.166759, 33.303669>,  <36.435127, 36.953136, 33.365242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532135, 36.166759, 33.303669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.193810, 36.214527, 33.511646>,  <35.990814, 36.243187, 33.636433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.193810, 36.214527, 33.511646>,  <36.532135, 36.166759, 33.303669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193810, 36.214527, 33.511646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436713, -0.714762, -0.546257,
		0.306404, -0.689097, 0.656705,
		-0.845812, 0.119416, 0.519944,
		35.940067, 36.250351, 33.667629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285053, 35.580200, 33.377632>,  <36.532135, 36.166759, 33.303669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285053, 35.580200, 33.377632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.959171, 35.795807, 33.463154>,  <35.763641, 35.925171, 33.514469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.959171, 35.795807, 33.463154>,  <36.285053, 35.580200, 33.377632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959171, 35.795807, 33.463154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570193, -0.677572, -0.464517,
		-0.105512, -0.500357, 0.859366,
		-0.814707, 0.539017, 0.213808,
		35.714760, 35.957512, 33.527298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836685, 35.097023, 33.672024>,  <36.285053, 35.580200, 33.377632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836685, 35.097023, 33.672024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609276, 35.394833, 33.532047>,  <35.472832, 35.573521, 33.448059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609276, 35.394833, 33.532047>,  <35.836685, 35.097023, 33.672024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609276, 35.394833, 33.532047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541419, -0.658889, -0.522237,
		-0.619391, -0.107441, 0.777696,
		-0.568525, 0.744529, -0.349939,
		35.438721, 35.618191, 33.427063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201954, 34.843269, 33.576080>,  <35.836685, 35.097023, 33.672024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201954, 34.843269, 33.576080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162548, 35.180344, 33.364353>,  <35.138905, 35.382587, 33.237316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162548, 35.180344, 33.364353>,  <35.201954, 34.843269, 33.576080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162548, 35.180344, 33.364353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581729, -0.480320, -0.656417,
		-0.807395, 0.243251, 0.537534,
		-0.098515, 0.842687, -0.529314,
		35.132996, 35.433151, 33.205559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418827, 34.976936, 33.400093>,  <35.201954, 34.843269, 33.576080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418827, 34.976936, 33.400093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.647846, 35.176441, 33.139812>,  <34.785259, 35.296146, 32.983643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.647846, 35.176441, 33.139812>,  <34.418827, 34.976936, 33.400093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647846, 35.176441, 33.139812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439707, -0.483070, -0.757167,
		-0.691985, 0.719637, -0.057272,
		0.572551, 0.498765, -0.650706,
		34.819611, 35.326073, 32.944599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978569, 35.261395, 32.793659>,  <34.418827, 34.976936, 33.400093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978569, 35.261395, 32.793659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.349545, 35.293102, 32.647472>,  <34.572132, 35.312126, 32.559761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.349545, 35.293102, 32.647472>,  <33.978569, 35.261395, 32.793659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349545, 35.293102, 32.647472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303494, -0.411443, -0.859422,
		-0.218495, 0.907982, -0.357532,
		0.927443, 0.079271, -0.365466,
		34.627777, 35.316883, 32.537834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917381, 35.478504, 32.205177>,  <33.978569, 35.261395, 32.793659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917381, 35.478504, 32.205177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267265, 35.285130, 32.191498>,  <34.477196, 35.169106, 32.183289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267265, 35.285130, 32.191498>,  <33.917381, 35.478504, 32.205177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267265, 35.285130, 32.191498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314402, -0.512333, -0.799166,
		0.368824, 0.709792, -0.600137,
		0.874712, -0.483436, -0.034199,
		34.529678, 35.140099, 32.181236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998653, 35.367603, 31.399981>,  <33.917381, 35.478504, 32.205177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998653, 35.367603, 31.399981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.242126, 35.118526, 31.596659>,  <34.388210, 34.969082, 31.714664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.242126, 35.118526, 31.596659>,  <33.998653, 35.367603, 31.399981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242126, 35.118526, 31.596659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166703, -0.706256, -0.688050,
		0.775703, 0.336837, -0.533691,
		0.608683, -0.622690, 0.491693,
		34.424732, 34.931721, 31.744167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020756, 35.624939, 30.675064>,  <33.998653, 35.367603, 31.399981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020756, 35.624939, 30.675064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.658760, 35.690243, 30.517918>,  <33.441563, 35.729424, 30.423630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.658760, 35.690243, 30.517918>,  <34.020756, 35.624939, 30.675064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658760, 35.690243, 30.517918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172636, 0.703077, 0.689841,
		0.388835, 0.692121, -0.608093,
		-0.904989, 0.163255, -0.392866,
		33.387264, 35.739220, 30.400059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954590, 36.331394, 30.635880>,  <34.020756, 35.624939, 30.675064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954590, 36.331394, 30.635880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571449, 36.227913, 30.585932>,  <33.341564, 36.165825, 30.555964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571449, 36.227913, 30.585932>,  <33.954590, 36.331394, 30.635880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571449, 36.227913, 30.585932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276036, 0.708567, 0.649412,
		-0.079530, 0.656508, -0.750115,
		-0.957851, -0.258706, -0.124867,
		33.284096, 36.150303, 30.548471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588306, 36.877918, 30.585751>,  <33.954590, 36.331394, 30.635880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588306, 36.877918, 30.585751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.287464, 36.631027, 30.678146>,  <33.106956, 36.482891, 30.733583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.287464, 36.631027, 30.678146>,  <33.588306, 36.877918, 30.585751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287464, 36.631027, 30.678146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357826, 0.676787, 0.643366,
		-0.553436, 0.401228, -0.729880,
		-0.752110, -0.617232, 0.230989,
		33.061832, 36.445858, 30.747442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110012, 37.291599, 30.628160>,  <33.588306, 36.877918, 30.585751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110012, 37.291599, 30.628160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.963490, 36.977859, 30.828403>,  <32.875576, 36.789616, 30.948549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.963490, 36.977859, 30.828403>,  <33.110012, 37.291599, 30.628160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963490, 36.977859, 30.828403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293995, 0.608004, 0.737494,
		-0.882827, 0.122976, -0.453314,
		-0.366311, -0.784352, 0.500608,
		32.853596, 36.742554, 30.978586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438496, 37.429508, 30.899811>,  <33.110012, 37.291599, 30.628160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438496, 37.429508, 30.899811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581421, 37.141434, 31.137688>,  <32.667175, 36.968590, 31.280415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581421, 37.141434, 31.137688>,  <32.438496, 37.429508, 30.899811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581421, 37.141434, 31.137688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253822, 0.537887, 0.803898,
		-0.898834, -0.438189, 0.009395,
		0.357313, -0.720186, 0.594693,
		32.688614, 36.925377, 31.316095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932787, 37.521908, 31.568464>,  <32.438496, 37.429508, 30.899811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932787, 37.521908, 31.568464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.226944, 37.284988, 31.700150>,  <32.403439, 37.142838, 31.779161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.226944, 37.284988, 31.700150>,  <31.932787, 37.521908, 31.568464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226944, 37.284988, 31.700150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211667, 0.260741, 0.941919,
		-0.643736, -0.762364, 0.066378,
		0.735392, -0.592297, 0.329215,
		32.447563, 37.107300, 31.798914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716076, 37.159649, 32.098648>,  <31.932787, 37.521908, 31.568464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716076, 37.159649, 32.098648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.111412, 37.173084, 32.158051>,  <32.348614, 37.181145, 32.193691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.111412, 37.173084, 32.158051>,  <31.716076, 37.159649, 32.098648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111412, 37.173084, 32.158051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149544, 0.397631, 0.905277,
		-0.028641, -0.916930, 0.398018,
		0.988340, 0.033593, 0.148510,
		32.407913, 37.183163, 32.202602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992584, 36.813515, 32.761402>,  <31.716076, 37.159649, 32.098648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992584, 36.813515, 32.761402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.275761, 37.074661, 32.653637>,  <32.445667, 37.231350, 32.588978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.275761, 37.074661, 32.653637>,  <31.992584, 36.813515, 32.761402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275761, 37.074661, 32.653637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035274, 0.348300, 0.936719,
		0.705392, -0.672644, 0.223546,
		0.707940, 0.652869, -0.269414,
		32.488144, 37.270523, 32.572811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359554, 36.839733, 33.308369>,  <31.992584, 36.813515, 32.761402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359554, 36.839733, 33.308369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476383, 37.175755, 33.125500>,  <32.546482, 37.377365, 33.015778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476383, 37.175755, 33.125500>,  <32.359554, 36.839733, 33.308369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476383, 37.175755, 33.125500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184848, 0.419419, 0.888774,
		0.938362, -0.344097, -0.032779,
		0.292076, 0.840050, -0.457173,
		32.564007, 37.427769, 32.988346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908360, 37.115280, 33.664551>,  <32.359554, 36.839733, 33.308369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908360, 37.115280, 33.664551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.817005, 37.428196, 33.432735>,  <32.762192, 37.615944, 33.293648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.817005, 37.428196, 33.432735>,  <32.908360, 37.115280, 33.664551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817005, 37.428196, 33.432735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256298, 0.622581, 0.739394,
		0.939230, 0.020332, -0.342687,
		-0.228384, 0.782291, -0.579536,
		32.748489, 37.662884, 33.258873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474899, 37.552605, 33.845001>,  <32.908360, 37.115280, 33.664551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474899, 37.552605, 33.845001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.187283, 37.779514, 33.684414>,  <33.014713, 37.915661, 33.588062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.187283, 37.779514, 33.684414>,  <33.474899, 37.552605, 33.845001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187283, 37.779514, 33.684414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108649, 0.662336, 0.741287,
		0.686418, 0.489399, -0.537883,
		-0.719045, 0.567274, -0.401467,
		32.971569, 37.949696, 33.563972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679436, 38.226650, 33.885769>,  <33.474899, 37.552605, 33.845001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679436, 38.226650, 33.885769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.282043, 38.249817, 33.846474>,  <33.043610, 38.263718, 33.822895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.282043, 38.249817, 33.846474>,  <33.679436, 38.226650, 33.885769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282043, 38.249817, 33.846474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034996, 0.665071, 0.745960,
		0.108539, 0.744531, -0.658705,
		-0.993476, 0.057913, -0.098242,
		32.984001, 38.267193, 33.817001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608257, 38.947453, 33.962170>,  <33.679436, 38.226650, 33.885769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608257, 38.947453, 33.962170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.261536, 38.768555, 34.050362>,  <33.053501, 38.661217, 34.103279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.261536, 38.768555, 34.050362>,  <33.608257, 38.947453, 33.962170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261536, 38.768555, 34.050362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049237, 0.516774, 0.854705,
		-0.496206, 0.730009, -0.469964,
		-0.866808, -0.447249, 0.220483,
		33.001492, 38.634380, 34.116505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563992, 38.891735, 33.206108>,  <33.608257, 38.947453, 33.962170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563992, 38.891735, 33.206108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.365234, 39.087528, 33.492744>,  <33.245979, 39.205002, 33.664726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.365234, 39.087528, 33.492744>,  <33.563992, 38.891735, 33.206108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365234, 39.087528, 33.492744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864034, 0.202098, 0.461087,
		0.080872, 0.848272, -0.523349,
		-0.496895, 0.489480, 0.716592,
		33.216167, 39.234371, 33.707722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911308, 39.319756, 32.583263>,  <33.563992, 38.891735, 33.206108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911308, 39.319756, 32.583263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206043, 39.558468, 32.456188>,  <34.382885, 39.701694, 32.379944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206043, 39.558468, 32.456188>,  <33.911308, 39.319756, 32.583263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206043, 39.558468, 32.456188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089600, -0.379552, -0.920821,
		-0.670106, 0.706960, -0.226197,
		0.736838, 0.596781, -0.317684,
		34.427094, 39.737503, 32.360882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626236, 39.757278, 32.021797>,  <33.911308, 39.319756, 32.583263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626236, 39.757278, 32.021797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016155, 39.672180, 31.994913>,  <34.250107, 39.621120, 31.978785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016155, 39.672180, 31.994913>,  <33.626236, 39.757278, 32.021797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016155, 39.672180, 31.994913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127020, -0.281547, -0.951103,
		0.183422, 0.935666, -0.301474,
		0.974794, -0.212746, -0.067206,
		34.308594, 39.608356, 31.974751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813377, 39.765678, 31.285976>,  <33.626236, 39.757278, 32.021797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813377, 39.765678, 31.285976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.093666, 39.516865, 31.425726>,  <34.261837, 39.367577, 31.509577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.093666, 39.516865, 31.425726>,  <33.813377, 39.765678, 31.285976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093666, 39.516865, 31.425726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066995, -0.430173, -0.900257,
		0.710284, 0.654235, -0.259757,
		0.700720, -0.622036, 0.349375,
		34.303883, 39.330254, 31.530539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395416, 39.789379, 30.861769>,  <33.813377, 39.765678, 31.285976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395416, 39.789379, 30.861769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.438698, 39.430405, 31.032833>,  <34.464664, 39.215019, 31.135471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.438698, 39.430405, 31.032833>,  <34.395416, 39.789379, 30.861769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438698, 39.430405, 31.032833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156432, -0.409459, -0.898817,
		0.981744, 0.164154, 0.096084,
		0.108202, -0.897439, 0.427662,
		34.471157, 39.161171, 31.161131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138020, 39.476826, 30.732822>,  <34.395416, 39.789379, 30.861769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138020, 39.476826, 30.732822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.930939, 39.146145, 30.820961>,  <34.806690, 38.947735, 30.873844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.930939, 39.146145, 30.820961>,  <35.138020, 39.476826, 30.732822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930939, 39.146145, 30.820961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334192, -0.432483, -0.837421,
		0.787594, -0.359892, 0.500173,
		-0.517698, -0.826702, 0.220348,
		34.775631, 38.898136, 30.887066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552029, 38.921143, 30.701330>,  <35.138020, 39.476826, 30.732822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552029, 38.921143, 30.701330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.204670, 38.739849, 30.620869>,  <34.996254, 38.631073, 30.572592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.204670, 38.739849, 30.620869>,  <35.552029, 38.921143, 30.701330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204670, 38.739849, 30.620869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410742, -0.430199, -0.803878,
		0.277811, -0.780708, 0.559747,
		-0.868396, -0.453238, -0.201155,
		34.944153, 38.603878, 30.560522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763577, 38.408848, 30.451427>,  <35.552029, 38.921143, 30.701330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763577, 38.408848, 30.451427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.379784, 38.381714, 30.342031>,  <35.149509, 38.365433, 30.276394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.379784, 38.381714, 30.342031>,  <35.763577, 38.408848, 30.451427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379784, 38.381714, 30.342031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274821, -0.439595, -0.855120,
		-0.062221, -0.895631, 0.440424,
		-0.959480, -0.067832, -0.273491,
		35.091938, 38.361366, 30.259985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716137, 37.674446, 30.218353>,  <35.763577, 38.408848, 30.451427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716137, 37.674446, 30.218353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.388466, 37.854195, 30.075798>,  <35.191864, 37.962044, 29.990265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.388466, 37.854195, 30.075798>,  <35.716137, 37.674446, 30.218353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388466, 37.854195, 30.075798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206188, -0.349098, -0.914121,
		-0.535197, -0.822309, 0.193318,
		-0.819176, 0.449375, -0.356387,
		35.142712, 37.989006, 29.968882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341427, 37.192951, 29.878525>,  <35.716137, 37.674446, 30.218353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341427, 37.192951, 29.878525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160423, 37.512180, 29.719368>,  <35.051823, 37.703716, 29.623875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160423, 37.512180, 29.719368>,  <35.341427, 37.192951, 29.878525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160423, 37.512180, 29.719368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015342, -0.453089, -0.891334,
		-0.891628, -0.397231, 0.217270,
		-0.452508, 0.798072, -0.397892,
		35.024670, 37.751602, 29.600000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629097, 36.947758, 29.642874>,  <35.341427, 37.192951, 29.878525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629097, 36.947758, 29.642874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.759262, 37.266758, 29.439659>,  <34.837360, 37.458157, 29.317730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.759262, 37.266758, 29.439659>,  <34.629097, 36.947758, 29.642874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759262, 37.266758, 29.439659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053027, -0.521043, -0.851882,
		-0.944084, 0.304153, -0.127265,
		0.325413, 0.797499, -0.508036,
		34.856888, 37.506008, 29.287249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176418, 37.005199, 29.055893>,  <34.629097, 36.947758, 29.642874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176418, 37.005199, 29.055893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518410, 37.188587, 28.958883>,  <34.723606, 37.298618, 28.900679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518410, 37.188587, 28.958883>,  <34.176418, 37.005199, 29.055893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518410, 37.188587, 28.958883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029497, -0.509819, -0.859776,
		-0.517820, 0.727938, -0.449409,
		0.854981, 0.458466, -0.242522,
		34.774902, 37.326126, 28.886127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971058, 37.171581, 28.398243>,  <34.176418, 37.005199, 29.055893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971058, 37.171581, 28.398243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368149, 37.171513, 28.446390>,  <34.606403, 37.171471, 28.475279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368149, 37.171513, 28.446390>,  <33.971058, 37.171581, 28.398243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368149, 37.171513, 28.446390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099969, -0.555808, -0.825278,
		0.067046, 0.831311, -0.551749,
		0.992729, -0.000174, 0.120370,
		34.665966, 37.171459, 28.482502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185772, 37.149857, 27.718225>,  <33.971058, 37.171581, 28.398243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185772, 37.149857, 27.718225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524853, 37.062752, 27.911715>,  <34.728302, 37.010490, 28.027809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524853, 37.062752, 27.911715>,  <34.185772, 37.149857, 27.718225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524853, 37.062752, 27.911715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313080, -0.530746, -0.787584,
		0.428239, 0.819078, -0.381736,
		0.847698, -0.217760, 0.483723,
		34.779163, 36.997425, 28.056831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625996, 37.414158, 27.269451>,  <34.185772, 37.149857, 27.718225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625996, 37.414158, 27.269451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796421, 37.138981, 27.504471>,  <34.898674, 36.973877, 27.645483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796421, 37.138981, 27.504471>,  <34.625996, 37.414158, 27.269451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796421, 37.138981, 27.504471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427667, -0.419146, -0.800886,
		0.797228, 0.592501, 0.115627,
		0.426061, -0.687939, 0.587548,
		34.924240, 36.932598, 27.680735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177299, 37.303802, 26.879808>,  <34.625996, 37.414158, 27.269451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177299, 37.303802, 26.879808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.116405, 37.006851, 27.140789>,  <35.079868, 36.828678, 27.297377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.116405, 37.006851, 27.140789>,  <35.177299, 37.303802, 26.879808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116405, 37.006851, 27.140789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393439, -0.651107, -0.649050,
		0.906658, 0.157890, 0.391205,
		-0.152238, -0.742382, 0.652452,
		35.070736, 36.784138, 27.336525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844868, 37.089821, 26.952211>,  <35.177299, 37.303802, 26.879808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844868, 37.089821, 26.952211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.615196, 36.782013, 27.064037>,  <35.477394, 36.597328, 27.131132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.615196, 36.782013, 27.064037>,  <35.844868, 37.089821, 26.952211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615196, 36.782013, 27.064037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509537, -0.603135, -0.613677,
		0.640855, -0.209910, 0.738406,
		-0.574175, -0.769523, 0.279566,
		35.442944, 36.551155, 27.147907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216908, 36.479122, 27.143393>,  <35.844868, 37.089821, 26.952211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216908, 36.479122, 27.143393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.862984, 36.333790, 27.026705>,  <35.650631, 36.246590, 26.956692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.862984, 36.333790, 27.026705>,  <36.216908, 36.479122, 27.143393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862984, 36.333790, 27.026705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463337, -0.619822, -0.633356,
		0.049305, -0.695564, 0.716770,
		-0.884809, -0.363333, -0.291721,
		35.597542, 36.224789, 26.939188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305061, 35.770954, 26.961639>,  <36.216908, 36.479122, 27.143393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305061, 35.770954, 26.961639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.947922, 35.806030, 26.784946>,  <35.733639, 35.827076, 26.678930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.947922, 35.806030, 26.784946>,  <36.305061, 35.770954, 26.961639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947922, 35.806030, 26.784946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308721, -0.594949, -0.742109,
		-0.327887, -0.798965, 0.504128,
		-0.892850, 0.087693, -0.441734,
		35.680065, 35.832336, 26.652426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975010, 35.034935, 26.906839>,  <36.305061, 35.770954, 26.961639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975010, 35.034935, 26.906839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824970, 35.260288, 26.612383>,  <35.734947, 35.395500, 26.435709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824970, 35.260288, 26.612383>,  <35.975010, 35.034935, 26.906839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824970, 35.260288, 26.612383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305336, -0.674717, -0.671957,
		-0.875256, -0.476818, 0.081062,
		-0.375095, 0.563384, -0.736140,
		35.712440, 35.429302, 26.391541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802303, 34.569519, 26.474352>,  <35.975010, 35.034935, 26.906839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802303, 34.569519, 26.474352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793827, 34.877659, 26.219442>,  <35.788742, 35.062542, 26.066496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793827, 34.877659, 26.219442>,  <35.802303, 34.569519, 26.474352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793827, 34.877659, 26.219442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121115, -0.630745, -0.766480,
		-0.992412, -0.093428, -0.079933,
		-0.021193, 0.770345, -0.637275,
		35.787468, 35.108761, 26.028259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360916, 34.361534, 25.892628>,  <35.802303, 34.569519, 26.474352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360916, 34.361534, 25.892628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596081, 34.653133, 25.752386>,  <35.737179, 34.828094, 25.668242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596081, 34.653133, 25.752386>,  <35.360916, 34.361534, 25.892628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596081, 34.653133, 25.752386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219289, -0.560818, -0.798371,
		-0.778635, 0.392489, -0.489572,
		0.587912, 0.728997, -0.350604,
		35.772453, 34.871834, 25.647205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224583, 34.428955, 25.237522>,  <35.360916, 34.361534, 25.892628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224583, 34.428955, 25.237522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.587482, 34.595222, 25.263191>,  <35.805222, 34.694981, 25.278593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.587482, 34.595222, 25.263191>,  <35.224583, 34.428955, 25.237522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587482, 34.595222, 25.263191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273946, -0.468231, -0.840068,
		-0.319140, 0.779732, -0.538672,
		0.907251, 0.415666, 0.064173,
		35.859657, 34.719921, 25.282444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349758, 34.748943, 24.597775>,  <35.224583, 34.428955, 25.237522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349758, 34.748943, 24.597775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.706581, 34.701290, 24.772148>,  <35.920673, 34.672699, 24.876772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.706581, 34.701290, 24.772148>,  <35.349758, 34.748943, 24.597775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706581, 34.701290, 24.772148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332015, -0.481649, -0.811037,
		0.306592, 0.868228, -0.390104,
		0.892058, -0.119137, 0.435934,
		35.974197, 34.665550, 24.902929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774117, 34.995594, 24.163855>,  <35.349758, 34.748943, 24.597775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774117, 34.995594, 24.163855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004501, 34.751400, 24.381323>,  <36.142731, 34.604881, 24.511803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004501, 34.751400, 24.381323>,  <35.774117, 34.995594, 24.163855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004501, 34.751400, 24.381323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353676, -0.413502, -0.839005,
		0.737011, 0.675514, -0.022244,
		0.575958, -0.610489, 0.543669,
		36.177288, 34.568253, 24.544424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532192, 35.079136, 23.883818>,  <35.774117, 34.995594, 24.163855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532192, 35.079136, 23.883818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507763, 34.737011, 24.089621>,  <36.493103, 34.531738, 24.213102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507763, 34.737011, 24.089621>,  <36.532192, 35.079136, 23.883818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507763, 34.737011, 24.089621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452452, -0.483192, -0.749541,
		0.889695, 0.187010, 0.416498,
		-0.061077, -0.855308, 0.514507,
		36.489441, 34.480419, 24.243973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145592, 34.826374, 23.998508>,  <36.532192, 35.079136, 23.883818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145592, 34.826374, 23.998508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.975803, 34.469158, 24.058256>,  <36.873932, 34.254829, 24.094105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.975803, 34.469158, 24.058256>,  <37.145592, 34.826374, 23.998508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975803, 34.469158, 24.058256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622283, -0.407562, -0.668325,
		0.657715, -0.190734, 0.728719,
		-0.424471, -0.893036, 0.149369,
		36.848461, 34.201248, 24.103067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692520, 34.260990, 24.004511>,  <37.145592, 34.826374, 23.998508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692520, 34.260990, 24.004511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.343933, 34.075947, 23.939352>,  <37.134781, 33.964920, 23.900257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.343933, 34.075947, 23.939352>,  <37.692520, 34.260990, 24.004511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343933, 34.075947, 23.939352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429197, -0.558620, -0.709742,
		0.237333, -0.688434, 0.685370,
		-0.871472, -0.462604, -0.162895,
		37.082493, 33.937164, 23.890484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738842, 33.435196, 23.985018>,  <37.692520, 34.260990, 24.004511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738842, 33.435196, 23.985018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.406677, 33.518051, 23.778135>,  <37.207378, 33.567764, 23.654005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.406677, 33.518051, 23.778135>,  <37.738842, 33.435196, 23.985018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406677, 33.518051, 23.778135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272761, -0.658311, -0.701590,
		-0.485812, -0.723685, 0.490171,
		-0.830415, 0.207141, -0.517208,
		37.157555, 33.580193, 23.622972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722042, 33.062519, 24.610458>,  <37.738842, 33.435196, 23.985018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722042, 33.062519, 24.610458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.070549, 32.892605, 24.708811>,  <38.279652, 32.790657, 24.767822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.070549, 32.892605, 24.708811>,  <37.722042, 33.062519, 24.610458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070549, 32.892605, 24.708811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081200, 0.618808, 0.781334,
		-0.484053, -0.660782, 0.573638,
		0.871263, -0.424787, 0.245880,
		38.331928, 32.765167, 24.782576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686295, 32.941757, 25.321081>,  <37.722042, 33.062519, 24.610458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686295, 32.941757, 25.321081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.077415, 32.915901, 25.241364>,  <38.312088, 32.900387, 25.193533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.077415, 32.915901, 25.241364>,  <37.686295, 32.941757, 25.321081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077415, 32.915901, 25.241364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193857, 0.639919, 0.743588,
		0.079470, -0.765719, 0.638246,
		0.977806, -0.064636, -0.199294,
		38.370758, 32.896511, 25.181576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082527, 32.795399, 25.897493>,  <37.686295, 32.941757, 25.321081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082527, 32.795399, 25.897493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.332077, 32.987885, 25.651171>,  <38.481808, 33.103374, 25.503376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.332077, 32.987885, 25.651171>,  <38.082527, 32.795399, 25.897493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332077, 32.987885, 25.651171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133872, 0.710507, 0.690839,
		0.769978, -0.513432, 0.378842,
		0.623869, 0.481214, -0.615809,
		38.519238, 33.132248, 25.466429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621624, 33.005848, 26.343172>,  <38.082527, 32.795399, 25.897493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621624, 33.005848, 26.343172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633152, 33.239655, 26.018824>,  <38.640068, 33.379936, 25.824215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633152, 33.239655, 26.018824>,  <38.621624, 33.005848, 26.343172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633152, 33.239655, 26.018824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068856, 0.810444, 0.581755,
		0.997210, 0.039067, 0.063604,
		0.028820, 0.584512, -0.810873,
		38.641800, 33.415009, 25.775562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142391, 33.561756, 26.397778>,  <38.621624, 33.005848, 26.343172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142391, 33.561756, 26.397778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.845680, 33.675426, 26.154795>,  <38.667652, 33.743629, 26.009005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.845680, 33.675426, 26.154795>,  <39.142391, 33.561756, 26.397778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845680, 33.675426, 26.154795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077770, 0.863225, 0.498793,
		0.666119, 0.417237, -0.618223,
		-0.741780, 0.284176, -0.607459,
		38.623146, 33.760681, 25.972557>
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
