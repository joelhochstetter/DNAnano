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
	<24.601711, 34.829971, 34.874153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.372541, 35.085575, 35.079453>,  <24.235039, 35.238937, 35.202633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.372541, 35.085575, 35.079453>,  <24.601711, 34.829971, 34.874153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.372541, 35.085575, 35.079453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546501, 0.764525, -0.341816,
		-0.610813, 0.084654, -0.787236,
		-0.572925, 0.639012, 0.513245,
		24.200665, 35.277279, 35.233425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.235325, 34.470169, 34.636581>,  <24.601711, 34.829971, 34.874153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.235325, 34.470169, 34.636581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620504, 34.559429, 34.697163>,  <25.851612, 34.612984, 34.733509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620504, 34.559429, 34.697163>,  <25.235325, 34.470169, 34.636581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620504, 34.559429, 34.697163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219276, 0.320901, 0.921380,
		0.157005, -0.920450, 0.357942,
		0.962948, 0.223149, 0.151449,
		25.909389, 34.626373, 34.742596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.489580, 34.240074, 35.253826>,  <25.235325, 34.470169, 34.636581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.489580, 34.240074, 35.253826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737652, 34.542995, 35.171982>,  <25.886496, 34.724751, 35.122875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737652, 34.542995, 35.171982>,  <25.489580, 34.240074, 35.253826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737652, 34.542995, 35.171982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345811, 0.498044, 0.795215,
		0.704124, -0.422421, 0.570762,
		0.620180, 0.757306, -0.204607,
		25.923706, 34.770187, 35.110600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821238, 34.490101, 35.978039>,  <25.489580, 34.240074, 35.253826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821238, 34.490101, 35.978039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889515, 34.800686, 35.735397>,  <25.930481, 34.987038, 35.589813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889515, 34.800686, 35.735397>,  <25.821238, 34.490101, 35.978039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.889515, 34.800686, 35.735397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286837, 0.628131, 0.723309,
		0.942650, 0.050532, 0.329937,
		0.170693, 0.776465, -0.606602,
		25.940723, 35.033627, 35.553417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332722, 34.933781, 36.280746>,  <25.821238, 34.490101, 35.978039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.332722, 34.933781, 36.280746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127031, 35.178947, 36.040779>,  <26.003616, 35.326046, 35.896797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127031, 35.178947, 36.040779>,  <26.332722, 34.933781, 36.280746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.127031, 35.178947, 36.040779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145720, 0.626881, 0.765367,
		0.845185, 0.480991, -0.233044,
		-0.514225, 0.612917, -0.599921,
		25.972763, 35.362823, 35.860802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500406, 35.640152, 36.337906>,  <26.332722, 34.933781, 36.280746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500406, 35.640152, 36.337906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105192, 35.698444, 36.317722>,  <25.868063, 35.733421, 36.305611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105192, 35.698444, 36.317722>,  <26.500406, 35.640152, 36.337906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105192, 35.698444, 36.317722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053363, 0.630048, 0.774721,
		0.144692, 0.762760, -0.630287,
		-0.988037, 0.145730, -0.050460,
		25.808781, 35.742165, 36.302586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378820, 36.434525, 36.212589>,  <26.500406, 35.640152, 36.337906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.378820, 36.434525, 36.212589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029617, 36.296978, 36.350933>,  <25.820095, 36.214451, 36.433937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029617, 36.296978, 36.350933>,  <26.378820, 36.434525, 36.212589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.029617, 36.296978, 36.350933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043518, 0.761240, 0.647009,
		-0.485765, 0.549791, -0.679531,
		-0.873006, -0.343866, 0.345858,
		25.767715, 36.193817, 36.454689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769812, 36.978512, 36.277821>,  <26.378820, 36.434525, 36.212589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769812, 36.978512, 36.277821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716463, 36.691074, 36.550831>,  <25.684454, 36.518612, 36.714638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716463, 36.691074, 36.550831>,  <25.769812, 36.978512, 36.277821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.716463, 36.691074, 36.550831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042536, 0.692194, 0.720457,
		-0.990153, 0.067057, -0.122885,
		-0.133372, -0.718590, 0.682525,
		25.676451, 36.475498, 36.755589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.096359, 37.090496, 36.654907>,  <25.769812, 36.978512, 36.277821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.096359, 37.090496, 36.654907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345856, 36.876419, 36.882771>,  <25.495554, 36.747974, 37.019489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345856, 36.876419, 36.882771>,  <25.096359, 37.090496, 36.654907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.345856, 36.876419, 36.882771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069057, 0.763694, 0.641874,
		-0.778574, -0.361024, 0.513308,
		0.623742, -0.535194, 0.569661,
		25.532978, 36.715862, 37.053669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.808603, 37.104069, 37.328438>,  <25.096359, 37.090496, 36.654907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.808603, 37.104069, 37.328438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185413, 36.996849, 37.409172>,  <25.411499, 36.932518, 37.457611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185413, 36.996849, 37.409172>,  <24.808603, 37.104069, 37.328438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185413, 36.996849, 37.409172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018367, 0.641809, 0.766644,
		-0.335038, -0.718492, 0.609524,
		0.942026, -0.268050, 0.201834,
		25.468021, 36.916435, 37.469723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.852863, 37.141018, 38.117676>,  <24.808603, 37.104069, 37.328438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.852863, 37.141018, 38.117676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216545, 37.177113, 37.955093>,  <25.434753, 37.198769, 37.857544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216545, 37.177113, 37.955093>,  <24.852863, 37.141018, 38.117676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216545, 37.177113, 37.955093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154670, 0.833161, 0.530962,
		0.386554, -0.545619, 0.743557,
		0.909205, 0.090240, -0.406452,
		25.489307, 37.204185, 37.833157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.453634, 37.355209, 38.578735>,  <24.852863, 37.141018, 38.117676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.453634, 37.355209, 38.578735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536133, 37.465076, 38.203072>,  <25.585632, 37.530994, 37.977673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536133, 37.465076, 38.203072>,  <25.453634, 37.355209, 38.578735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536133, 37.465076, 38.203072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128955, 0.943795, 0.304339,
		0.969966, -0.183877, 0.159234,
		0.206245, 0.274664, -0.939160,
		25.598007, 37.547474, 37.921322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094408, 37.862408, 38.554714>,  <25.453634, 37.355209, 38.578735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094408, 37.862408, 38.554714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877142, 37.927547, 38.225243>,  <25.746782, 37.966633, 38.027561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877142, 37.927547, 38.225243>,  <26.094408, 37.862408, 38.554714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877142, 37.927547, 38.225243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261948, 0.964914, 0.018034,
		0.797717, -0.205966, -0.566767,
		-0.543167, 0.162849, -0.823681,
		25.714191, 37.976402, 37.978138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416365, 37.957245, 37.904636>,  <26.094408, 37.862408, 38.554714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416365, 37.957245, 37.904636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085644, 38.162930, 37.995838>,  <25.887211, 38.286339, 38.050560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085644, 38.162930, 37.995838>,  <26.416365, 37.957245, 37.904636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085644, 38.162930, 37.995838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560013, 0.790518, 0.247926,
		-0.052758, 0.332672, -0.941566,
		-0.826802, 0.514209, 0.228007,
		25.837603, 38.317192, 38.064240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271669, 38.303890, 37.370441>,  <26.416365, 37.957245, 37.904636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271669, 38.303890, 37.370441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919941, 38.151535, 37.256092>,  <25.708904, 38.060123, 37.187481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919941, 38.151535, 37.256092>,  <26.271669, 38.303890, 37.370441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919941, 38.151535, 37.256092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475425, 0.667111, 0.573528,
		-0.027737, 0.640227, -0.767685,
		-0.879319, -0.380884, -0.285876,
		25.656145, 38.037270, 37.170330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396540, 37.722836, 37.068722>,  <26.271669, 38.303890, 37.370441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396540, 37.722836, 37.068722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199238, 37.640289, 37.406742>,  <26.080856, 37.590763, 37.609554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199238, 37.640289, 37.406742>,  <26.396540, 37.722836, 37.068722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199238, 37.640289, 37.406742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143818, -0.938738, -0.313190,
		0.857913, -0.276017, 0.433359,
		-0.493256, -0.206365, 0.845052,
		26.051262, 37.578381, 37.660259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708582, 37.199142, 37.368958>,  <26.396540, 37.722836, 37.068722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708582, 37.199142, 37.368958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.330204, 37.188801, 37.498272>,  <26.103176, 37.182594, 37.575863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.330204, 37.188801, 37.498272>,  <26.708582, 37.199142, 37.368958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.330204, 37.188801, 37.498272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130834, -0.881683, -0.453340,
		0.296761, -0.471133, 0.830642,
		-0.945947, -0.025858, 0.323289,
		26.046419, 37.181042, 37.595257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699902, 36.594696, 37.734890>,  <26.708582, 37.199142, 37.368958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699902, 36.594696, 37.734890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326397, 36.695213, 37.632957>,  <26.102293, 36.755524, 37.571796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326397, 36.695213, 37.632957>,  <26.699902, 36.594696, 37.734890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326397, 36.695213, 37.632957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129405, -0.900924, -0.414236,
		-0.333677, -0.353821, 0.873768,
		-0.933763, 0.251291, -0.254831,
		26.046268, 36.770599, 37.556507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257187, 36.025249, 37.918350>,  <26.699902, 36.594696, 37.734890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.257187, 36.025249, 37.918350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055737, 36.239182, 37.646965>,  <25.934866, 36.367542, 37.484135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055737, 36.239182, 37.646965>,  <26.257187, 36.025249, 37.918350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055737, 36.239182, 37.646965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235901, -0.840621, -0.487552,
		-0.831084, -0.085499, 0.549535,
		-0.503636, 0.534833, -0.678458,
		25.904648, 36.399632, 37.443424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573450, 35.687599, 37.768368>,  <26.257187, 36.025249, 37.918350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573450, 35.687599, 37.768368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622234, 35.910892, 37.440098>,  <25.651505, 36.044868, 37.243137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622234, 35.910892, 37.440098>,  <25.573450, 35.687599, 37.768368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.622234, 35.910892, 37.440098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417362, -0.721345, -0.552693,
		-0.900519, 0.409925, 0.145007,
		0.121962, 0.558231, -0.820673,
		25.658823, 36.078362, 37.193897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.988749, 35.997307, 37.395813>,  <25.573450, 35.687599, 37.768368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.988749, 35.997307, 37.395813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069025, 36.239666, 37.087891>,  <25.117191, 36.385082, 36.903137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069025, 36.239666, 37.087891>,  <24.988749, 35.997307, 37.395813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.069025, 36.239666, 37.087891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368072, -0.774862, -0.513919,
		-0.907880, -0.180206, -0.378523,
		0.200692, 0.605900, -0.769810,
		25.129232, 36.421436, 36.856949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.575853, 35.800152, 36.726280>,  <24.988749, 35.997307, 37.395813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.575853, 35.800152, 36.726280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930471, 35.965343, 36.642872>,  <25.143242, 36.064461, 36.592827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930471, 35.965343, 36.642872>,  <24.575853, 35.800152, 36.726280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.930471, 35.965343, 36.642872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136140, -0.663644, -0.735556,
		-0.442156, 0.623717, -0.644574,
		0.886546, 0.412983, -0.208521,
		25.196436, 36.089237, 36.580315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.581806, 36.056129, 36.017166>,  <24.575853, 35.800152, 36.726280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.581806, 36.056129, 36.017166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.949472, 35.959419, 36.141537>,  <25.170073, 35.901394, 36.216160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.949472, 35.959419, 36.141537>,  <24.581806, 36.056129, 36.017166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.949472, 35.959419, 36.141537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181491, -0.440616, -0.879158,
		0.349561, 0.864523, -0.361119,
		0.919167, -0.241779, 0.310925,
		25.225224, 35.886887, 36.234814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.855928, 35.787388, 35.378662>,  <24.581806, 36.056129, 36.017166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.855928, 35.787388, 35.378662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201599, 35.844570, 35.571644>,  <25.409000, 35.878880, 35.687435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201599, 35.844570, 35.571644>,  <24.855928, 35.787388, 35.378662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.201599, 35.844570, 35.571644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489271, -0.462696, -0.739274,
		0.117545, 0.874914, -0.469796,
		0.864174, 0.142959, 0.482458,
		25.460852, 35.887459, 35.716381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364553, 36.095203, 35.013142>,  <24.855928, 35.787388, 35.378662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.364553, 36.095203, 35.013142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546946, 35.858177, 35.278759>,  <25.656380, 35.715961, 35.438129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546946, 35.858177, 35.278759>,  <25.364553, 36.095203, 35.013142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546946, 35.858177, 35.278759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354777, -0.563257, -0.746240,
		0.816221, 0.575857, -0.046606,
		0.455979, -0.592562, 0.664043,
		25.683739, 35.680408, 35.477974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057034, 36.079632, 34.734989>,  <25.364553, 36.095203, 35.013142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057034, 36.079632, 34.734989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016834, 35.759865, 34.971916>,  <25.992716, 35.568005, 35.114071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016834, 35.759865, 34.971916>,  <26.057034, 36.079632, 34.734989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016834, 35.759865, 34.971916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341188, -0.586921, -0.734244,
		0.934608, 0.128302, 0.331734,
		-0.100497, -0.799414, 0.592315,
		25.986685, 35.520042, 35.149612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673820, 35.829334, 34.842350>,  <26.057034, 36.079632, 34.734989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673820, 35.829334, 34.842350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437126, 35.512543, 34.902496>,  <26.295109, 35.322468, 34.938583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437126, 35.512543, 34.902496>,  <26.673820, 35.829334, 34.842350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.437126, 35.512543, 34.902496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527087, -0.521250, -0.671176,
		0.609940, -0.317902, 0.725887,
		-0.591737, -0.791983, 0.150370,
		26.259605, 35.274948, 34.947609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095989, 35.194027, 34.948750>,  <26.673820, 35.829334, 34.842350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095989, 35.194027, 34.948750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736309, 35.110226, 34.795101>,  <26.520502, 35.059944, 34.702911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736309, 35.110226, 34.795101>,  <27.095989, 35.194027, 34.948750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736309, 35.110226, 34.795101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436465, -0.490977, -0.753949,
		-0.030637, -0.845605, 0.532929,
		-0.899199, -0.209506, -0.384119,
		26.466549, 35.047375, 34.679867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881212, 34.482635, 34.997627>,  <27.095989, 35.194027, 34.948750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881212, 34.482635, 34.997627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758919, 34.667377, 34.664589>,  <26.685543, 34.778221, 34.464764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758919, 34.667377, 34.664589>,  <26.881212, 34.482635, 34.997627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758919, 34.667377, 34.664589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634099, -0.553553, -0.539905,
		-0.710244, -0.693016, -0.123621,
		-0.305732, 0.461852, -0.832598,
		26.667198, 34.805935, 34.414810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597748, 33.967640, 34.586082>,  <26.881212, 34.482635, 34.997627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597748, 33.967640, 34.586082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708960, 34.275158, 34.355724>,  <26.775686, 34.459667, 34.217510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708960, 34.275158, 34.355724>,  <26.597748, 33.967640, 34.586082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708960, 34.275158, 34.355724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229432, -0.635332, -0.737370,
		-0.932770, 0.072883, -0.353028,
		0.278032, 0.768793, -0.575896,
		26.792370, 34.505795, 34.182957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164619, 33.445316, 34.302853>,  <26.597748, 33.967640, 34.586082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164619, 33.445316, 34.302853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134012, 33.417599, 33.904991>,  <26.115648, 33.400967, 33.666275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134012, 33.417599, 33.904991>,  <26.164619, 33.445316, 34.302853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134012, 33.417599, 33.904991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438558, 0.893562, -0.095991,
		0.895439, -0.443560, -0.037983,
		-0.076518, -0.069297, -0.994657,
		26.111057, 33.396809, 33.606594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824390, 33.632011, 33.928036>,  <26.164619, 33.445316, 34.302853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824390, 33.632011, 33.928036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503523, 33.706383, 33.701073>,  <26.311003, 33.751007, 33.564896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503523, 33.706383, 33.701073>,  <26.824390, 33.632011, 33.928036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.503523, 33.706383, 33.701073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346959, 0.918532, -0.189520,
		0.485948, -0.348895, -0.801329,
		-0.802168, 0.185932, -0.567411,
		26.262873, 33.762161, 33.530849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013746, 33.854137, 33.231964>,  <26.824390, 33.632011, 33.928036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013746, 33.854137, 33.231964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697254, 34.035118, 33.396519>,  <26.507359, 34.143707, 33.495251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697254, 34.035118, 33.396519>,  <27.013746, 33.854137, 33.231964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697254, 34.035118, 33.396519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429222, 0.890079, -0.153386,
		-0.435570, 0.055214, -0.898460,
		-0.791232, 0.452449, 0.411391,
		26.459885, 34.170853, 33.519936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760717, 34.197342, 32.737980>,  <27.013746, 33.854137, 33.231964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760717, 34.197342, 32.737980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653946, 34.396023, 33.068321>,  <26.589882, 34.515232, 33.266525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653946, 34.396023, 33.068321>,  <26.760717, 34.197342, 32.737980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653946, 34.396023, 33.068321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500167, 0.803900, -0.321835,
		-0.823761, 0.327158, -0.463019,
		-0.266930, 0.496702, 0.825855,
		26.573868, 34.545033, 33.316078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106262, 34.806580, 32.768261>,  <26.760717, 34.197342, 32.737980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106262, 34.806580, 32.768261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082525, 34.937103, 32.390903>,  <27.068283, 35.015419, 32.164490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082525, 34.937103, 32.390903>,  <27.106262, 34.806580, 32.768261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082525, 34.937103, 32.390903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990780, -0.134558, 0.015779,
		-0.121792, 0.935636, 0.331288,
		-0.059341, 0.326312, -0.943398,
		27.064724, 35.034996, 32.107883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433857, 35.111446, 32.730904>,  <27.106262, 34.806580, 32.768261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433857, 35.111446, 32.730904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580170, 34.985649, 32.380524>,  <26.667957, 34.910172, 32.170296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580170, 34.985649, 32.380524>,  <26.433857, 35.111446, 32.730904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580170, 34.985649, 32.380524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903001, -0.347838, -0.252189,
		-0.225378, 0.883233, -0.411223,
		0.365780, -0.314497, -0.875955,
		26.689903, 34.891300, 32.117737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.992460, 35.498684, 32.216988>,  <26.433857, 35.111446, 32.730904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.992460, 35.498684, 32.216988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083061, 35.120678, 32.122631>,  <26.137421, 34.893875, 32.066017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083061, 35.120678, 32.122631>,  <25.992460, 35.498684, 32.216988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083061, 35.120678, 32.122631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960850, -0.177111, -0.213072,
		0.159577, 0.274916, -0.948133,
		0.226501, -0.945015, -0.235890,
		26.151012, 34.837173, 32.051865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709951, 35.294632, 31.430943>,  <25.992460, 35.498684, 32.216988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709951, 35.294632, 31.430943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736101, 34.961731, 31.651152>,  <25.751791, 34.761990, 31.783278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736101, 34.961731, 31.651152>,  <25.709951, 35.294632, 31.430943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736101, 34.961731, 31.651152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941232, -0.234641, -0.242952,
		0.331374, -0.502286, -0.798686,
		0.065373, -0.832257, 0.550522,
		25.755713, 34.712055, 31.816309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262037, 34.753330, 31.086489>,  <25.709951, 35.294632, 31.430943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262037, 34.753330, 31.086489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322973, 34.582512, 31.443010>,  <25.359535, 34.480019, 31.656923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322973, 34.582512, 31.443010>,  <25.262037, 34.753330, 31.086489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.322973, 34.582512, 31.443010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884922, -0.460539, -0.069407,
		0.440120, -0.778159, -0.448066,
		0.152342, -0.427050, 0.891302,
		25.368675, 34.454395, 31.710402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.663887, 34.396889, 31.112265>,  <25.262037, 34.753330, 31.086489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.663887, 34.396889, 31.112265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832081, 34.297268, 31.461245>,  <24.932997, 34.237495, 31.670631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832081, 34.297268, 31.461245>,  <24.663887, 34.396889, 31.112265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.832081, 34.297268, 31.461245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774615, -0.599211, 0.202283,
		0.472402, -0.760868, -0.444878,
		0.420486, -0.249050, 0.872448,
		24.958227, 34.222553, 31.722979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.842627, 34.807701, 31.679882>,  <24.663887, 34.396889, 31.112265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.842627, 34.807701, 31.679882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.084179, 35.005207, 31.930170>,  <25.229111, 35.123711, 32.080341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.084179, 35.005207, 31.930170>,  <24.842627, 34.807701, 31.679882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.084179, 35.005207, 31.930170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517258, -0.354510, 0.778952,
		0.606441, -0.794054, 0.041321,
		0.603881, 0.493762, 0.625720,
		25.265343, 35.153336, 32.117886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.718048, 35.043583, 32.334351>,  <24.842627, 34.807701, 31.679882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.718048, 35.043583, 32.334351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.649900, 34.651203, 32.371677>,  <24.609011, 34.415775, 32.394073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.649900, 34.651203, 32.371677>,  <24.718048, 35.043583, 32.334351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.649900, 34.651203, 32.371677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979129, -0.179179, -0.095927,
		0.110820, 0.075027, 0.991005,
		-0.170371, -0.980951, 0.093318,
		24.598789, 34.356918, 32.399673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.097281, 34.694431, 32.881626>,  <24.718048, 35.043583, 32.334351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.097281, 34.694431, 32.881626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043301, 34.446007, 32.572803>,  <25.010912, 34.296951, 32.387508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043301, 34.446007, 32.572803>,  <25.097281, 34.694431, 32.881626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.043301, 34.446007, 32.572803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987322, -0.149998, -0.051915,
		-0.083565, -0.769275, 0.633429,
		-0.134950, -0.621060, -0.772057,
		25.002815, 34.259689, 32.341187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.621689, 34.104599, 32.912930>,  <25.097281, 34.694431, 32.881626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.621689, 34.104599, 32.912930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524698, 34.170921, 32.530575>,  <25.466503, 34.210716, 32.301163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524698, 34.170921, 32.530575>,  <25.621689, 34.104599, 32.912930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524698, 34.170921, 32.530575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968569, 0.097727, -0.228745,
		0.055488, -0.981304, -0.184293,
		-0.242478, 0.165808, -0.955883,
		25.451954, 34.220665, 32.243809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955900, 33.602692, 32.437759>,  <25.621689, 34.104599, 32.912930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955900, 33.602692, 32.437759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892467, 33.950897, 32.251404>,  <25.854408, 34.159821, 32.139591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892467, 33.950897, 32.251404>,  <25.955900, 33.602692, 32.437759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.892467, 33.950897, 32.251404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966982, 0.041594, -0.251429,
		-0.199495, -0.490376, -0.848371,
		-0.158582, 0.870518, -0.465887,
		25.844893, 34.212051, 32.111637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.302526, 33.588390, 31.753414>,  <25.955900, 33.602692, 32.437759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.302526, 33.588390, 31.753414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247890, 33.974270, 31.843489>,  <26.215109, 34.205795, 31.897533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247890, 33.974270, 31.843489>,  <26.302526, 33.588390, 31.753414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247890, 33.974270, 31.843489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943433, 0.196002, -0.267429,
		-0.302124, 0.175919, -0.936896,
		-0.136588, 0.964694, 0.225185,
		26.206915, 34.263680, 31.911045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704370, 33.956028, 31.233551>,  <26.302526, 33.588390, 31.753414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704370, 33.956028, 31.233551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623638, 34.234245, 31.509371>,  <26.575199, 34.401176, 31.674864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623638, 34.234245, 31.509371>,  <26.704370, 33.956028, 31.233551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623638, 34.234245, 31.509371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873574, 0.446190, -0.194377,
		-0.442869, 0.563143, -0.697665,
		-0.201829, 0.695546, 0.689551,
		26.563089, 34.442909, 31.716236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991484, 34.474010, 30.928236>,  <26.704370, 33.956028, 31.233551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991484, 34.474010, 30.928236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929508, 34.615170, 31.297333>,  <26.892323, 34.699867, 31.518791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929508, 34.615170, 31.297333>,  <26.991484, 34.474010, 30.928236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929508, 34.615170, 31.297333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874531, 0.483474, -0.038061,
		-0.459554, 0.801070, -0.383533,
		-0.154939, 0.352902, 0.922742,
		26.883026, 34.721039, 31.574156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092869, 35.165112, 30.932159>,  <26.991484, 34.474010, 30.928236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092869, 35.165112, 30.932159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181427, 35.029739, 31.297989>,  <27.234562, 34.948517, 31.517487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181427, 35.029739, 31.297989>,  <27.092869, 35.165112, 30.932159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181427, 35.029739, 31.297989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895879, 0.441045, -0.053665,
		-0.385206, 0.831229, 0.400841,
		0.221397, -0.338434, 0.914574,
		27.247847, 34.928207, 31.572361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331373, 35.745125, 31.366238>,  <27.092869, 35.165112, 30.932159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331373, 35.745125, 31.366238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468735, 35.419853, 31.554203>,  <27.551151, 35.224689, 31.666983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468735, 35.419853, 31.554203>,  <27.331373, 35.745125, 31.366238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468735, 35.419853, 31.554203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913072, 0.406231, 0.035723,
		-0.219943, 0.416798, 0.881989,
		0.343401, -0.813176, 0.469915,
		27.571754, 35.175900, 31.695177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680712, 35.855408, 31.920214>,  <27.331373, 35.745125, 31.366238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680712, 35.855408, 31.920214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818195, 35.517414, 31.756327>,  <27.900684, 35.314617, 31.657993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818195, 35.517414, 31.756327>,  <27.680712, 35.855408, 31.920214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818195, 35.517414, 31.756327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917533, 0.395092, -0.045112,
		0.199996, -0.360426, 0.911095,
		0.343707, -0.844983, -0.409719,
		27.921307, 35.263920, 31.633411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184294, 35.482391, 32.216343>,  <27.680712, 35.855408, 31.920214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184294, 35.482391, 32.216343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337393, 35.471901, 31.846951>,  <28.429253, 35.465607, 31.625315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337393, 35.471901, 31.846951>,  <28.184294, 35.482391, 32.216343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337393, 35.471901, 31.846951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839418, 0.427361, 0.335769,
		0.385855, -0.903701, 0.185584,
		0.382746, -0.026225, -0.923481,
		28.452217, 35.464035, 31.569906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772474, 35.042450, 32.257927>,  <28.184294, 35.482391, 32.216343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772474, 35.042450, 32.257927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784542, 35.322197, 31.972277>,  <28.791782, 35.490047, 31.800888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784542, 35.322197, 31.972277>,  <28.772474, 35.042450, 32.257927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784542, 35.322197, 31.972277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728582, 0.473727, 0.494723,
		0.684294, -0.535223, -0.495256,
		0.030171, 0.699371, -0.714122,
		28.793594, 35.532009, 31.758039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406107, 34.977108, 31.761261>,  <28.772474, 35.042450, 32.257927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406107, 34.977108, 31.761261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259380, 35.337406, 31.854296>,  <29.171345, 35.553585, 31.910116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259380, 35.337406, 31.854296>,  <29.406107, 34.977108, 31.761261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259380, 35.337406, 31.854296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799757, 0.177614, 0.573448,
		0.475222, 0.396363, -0.785532,
		-0.366815, 0.900750, 0.232588,
		29.149336, 35.607632, 31.924072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033857, 35.391296, 31.733667>,  <29.406107, 34.977108, 31.761261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033857, 35.391296, 31.733667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761106, 35.501446, 32.004730>,  <29.597456, 35.567535, 32.167366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761106, 35.501446, 32.004730>,  <30.033857, 35.391296, 31.733667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761106, 35.501446, 32.004730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730374, 0.205653, 0.651353,
		0.040001, 0.939084, -0.341352,
		-0.681876, 0.275369, 0.677656,
		29.556543, 35.584057, 32.208027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108707, 36.126259, 32.037640>,  <30.033857, 35.391296, 31.733667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108707, 36.126259, 32.037640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941410, 35.881290, 32.305973>,  <29.841032, 35.734310, 32.466972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941410, 35.881290, 32.305973>,  <30.108707, 36.126259, 32.037640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941410, 35.881290, 32.305973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647309, 0.317151, 0.693114,
		-0.637232, 0.724124, 0.263779,
		-0.418243, -0.612421, 0.670830,
		29.815937, 35.697563, 32.507221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179874, 36.300640, 31.329723>,  <30.108707, 36.126259, 32.037640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179874, 36.300640, 31.329723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262886, 36.499744, 30.992876>,  <30.312693, 36.619205, 30.790768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262886, 36.499744, 30.992876>,  <30.179874, 36.300640, 31.329723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262886, 36.499744, 30.992876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868292, 0.302768, 0.392938,
		0.450556, -0.812752, -0.369369,
		0.207528, 0.497761, -0.842120,
		30.325144, 36.649075, 30.740240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875578, 36.115402, 31.084457>,  <30.179874, 36.300640, 31.329723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875578, 36.115402, 31.084457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788708, 36.473591, 30.929037>,  <30.736586, 36.688503, 30.835785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788708, 36.473591, 30.929037>,  <30.875578, 36.115402, 31.084457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788708, 36.473591, 30.929037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919468, 0.321310, 0.226581,
		0.327741, -0.308053, -0.893135,
		-0.217174, 0.895468, -0.388551,
		30.723555, 36.742229, 30.812471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242922, 36.373627, 30.449034>,  <30.875578, 36.115402, 31.084457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242922, 36.373627, 30.449034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175690, 36.666775, 30.712746>,  <31.135351, 36.842663, 30.870974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175690, 36.666775, 30.712746>,  <31.242922, 36.373627, 30.449034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175690, 36.666775, 30.712746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985745, 0.119873, 0.118057,
		0.007491, 0.669724, -0.742572,
		-0.168079, 0.732871, 0.659280,
		31.125265, 36.886635, 30.910530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501316, 37.026733, 30.313246>,  <31.242922, 36.373627, 30.449034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501316, 37.026733, 30.313246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509542, 37.025394, 30.713160>,  <31.514479, 37.024590, 30.953108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509542, 37.025394, 30.713160>,  <31.501316, 37.026733, 30.313246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509542, 37.025394, 30.713160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999295, 0.031489, -0.020450,
		-0.031414, 0.999498, 0.003991,
		0.020565, -0.003346, 0.999783,
		31.515713, 37.024391, 31.013094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924248, 37.582546, 30.611975>,  <31.501316, 37.026733, 30.313246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924248, 37.582546, 30.611975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919462, 37.248512, 30.831972>,  <31.916590, 37.048092, 30.963970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919462, 37.248512, 30.831972>,  <31.924248, 37.582546, 30.611975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919462, 37.248512, 30.831972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999911, -0.013233, 0.001661,
		0.005891, 0.549963, 0.835168,
		-0.011965, -0.835084, 0.549992,
		31.915873, 36.997986, 30.996969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555027, 37.547390, 31.017178>,  <31.924248, 37.582546, 30.611975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555027, 37.547390, 31.017178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410709, 37.174335, 31.019133>,  <32.324120, 36.950504, 31.020306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410709, 37.174335, 31.019133>,  <32.555027, 37.547390, 31.017178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410709, 37.174335, 31.019133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921628, -0.355720, 0.155132,
		-0.142943, 0.060473, 0.987882,
		-0.360790, -0.932634, 0.004886,
		32.302471, 36.894547, 31.020599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580097, 37.231735, 31.687496>,  <32.555027, 37.547390, 31.017178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580097, 37.231735, 31.687496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599133, 36.953053, 31.401186>,  <32.610554, 36.785843, 31.229401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599133, 36.953053, 31.401186>,  <32.580097, 37.231735, 31.687496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599133, 36.953053, 31.401186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942946, -0.205070, 0.262295,
		-0.329527, -0.687418, 0.647201,
		0.047585, -0.696709, -0.715774,
		32.613407, 36.744041, 31.186453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688271, 36.556412, 31.939819>,  <32.580097, 37.231735, 31.687496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688271, 36.556412, 31.939819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856548, 36.532372, 31.577736>,  <32.957516, 36.517948, 31.360487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856548, 36.532372, 31.577736>,  <32.688271, 36.556412, 31.939819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856548, 36.532372, 31.577736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715028, -0.592137, 0.371629,
		-0.558342, -0.803593, -0.206137,
		0.420700, -0.060102, -0.905207,
		32.982758, 36.514339, 31.306173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314587, 36.292564, 31.682491>,  <32.688271, 36.556412, 31.939819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314587, 36.292564, 31.682491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374043, 35.991505, 31.939062>,  <33.409718, 35.810867, 32.093006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374043, 35.991505, 31.939062>,  <33.314587, 36.292564, 31.682491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374043, 35.991505, 31.939062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601328, -0.446138, -0.662847,
		0.785054, 0.484234, 0.386273,
		0.148642, -0.752648, 0.641426,
		33.418636, 35.765709, 32.131489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968838, 36.208191, 31.732124>,  <33.314587, 36.292564, 31.682491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968838, 36.208191, 31.732124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769653, 35.867554, 31.797642>,  <33.650143, 35.663174, 31.836952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769653, 35.867554, 31.797642>,  <33.968838, 36.208191, 31.732124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769653, 35.867554, 31.797642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505226, -0.438401, -0.743337,
		0.704826, -0.287400, 0.648553,
		-0.497962, -0.851590, 0.163794,
		33.620266, 35.612076, 31.846781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472000, 35.716896, 31.784712>,  <33.968838, 36.208191, 31.732124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472000, 35.716896, 31.784712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109592, 35.645859, 31.631039>,  <33.892147, 35.603237, 31.538836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109592, 35.645859, 31.631039>,  <34.472000, 35.716896, 31.784712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109592, 35.645859, 31.631039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420490, -0.274340, -0.864827,
		0.048190, -0.945092, 0.323232,
		-0.906016, -0.177592, -0.384181,
		33.837788, 35.592583, 31.515785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288677, 34.928261, 31.591169>,  <34.472000, 35.716896, 31.784712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288677, 34.928261, 31.591169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146828, 35.229668, 31.369740>,  <34.061718, 35.410511, 31.236881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146828, 35.229668, 31.369740>,  <34.288677, 34.928261, 31.591169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146828, 35.229668, 31.369740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434305, -0.391560, -0.811209,
		-0.828021, -0.528097, -0.188401,
		-0.354626, 0.753521, -0.553575,
		34.040440, 35.455723, 31.203667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930744, 34.678074, 30.925385>,  <34.288677, 34.928261, 31.591169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930744, 34.678074, 30.925385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080448, 35.047958, 30.897545>,  <34.170269, 35.269890, 30.880842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080448, 35.047958, 30.897545>,  <33.930744, 34.678074, 30.925385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080448, 35.047958, 30.897545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460191, -0.250364, -0.851788,
		-0.805080, 0.286761, -0.519244,
		0.374259, 0.924709, -0.069598,
		34.192726, 35.325371, 30.876665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648209, 35.069614, 30.332830>,  <33.930744, 34.678074, 30.925385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648209, 35.069614, 30.332830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984776, 35.272652, 30.406977>,  <34.186718, 35.394474, 30.451464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984776, 35.272652, 30.406977>,  <33.648209, 35.069614, 30.332830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984776, 35.272652, 30.406977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306875, -0.166489, -0.937075,
		-0.444793, 0.845357, -0.295856,
		0.841420, 0.507595, 0.185366,
		34.237202, 35.424931, 30.462587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725842, 35.578175, 29.799986>,  <33.648209, 35.069614, 30.332830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725842, 35.578175, 29.799986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092678, 35.506069, 29.942223>,  <34.312782, 35.462807, 30.027565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092678, 35.506069, 29.942223>,  <33.725842, 35.578175, 29.799986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092678, 35.506069, 29.942223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339060, -0.116515, -0.933522,
		0.209712, 0.976693, -0.045735,
		0.917093, -0.180263, 0.355592,
		34.367805, 35.451992, 30.048901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112152, 35.703815, 29.358967>,  <33.725842, 35.578175, 29.799986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112152, 35.703815, 29.358967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400894, 35.511829, 29.558390>,  <34.574139, 35.396637, 29.678043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400894, 35.511829, 29.558390>,  <34.112152, 35.703815, 29.358967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400894, 35.511829, 29.558390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449963, -0.221832, -0.865057,
		0.525791, 0.848779, 0.055835,
		0.721857, -0.479963, 0.498557,
		34.617451, 35.367840, 29.707956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698162, 35.896053, 29.026764>,  <34.112152, 35.703815, 29.358967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698162, 35.896053, 29.026764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789455, 35.564404, 29.230909>,  <34.844231, 35.365414, 29.353395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789455, 35.564404, 29.230909>,  <34.698162, 35.896053, 29.026764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789455, 35.564404, 29.230909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567394, -0.312710, -0.761759,
		0.791185, 0.463435, 0.399067,
		0.228233, -0.829120, 0.510362,
		34.857925, 35.315666, 29.384018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429604, 35.691212, 28.914675>,  <34.698162, 35.896053, 29.026764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429604, 35.691212, 28.914675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259285, 35.352947, 29.043398>,  <35.157093, 35.149990, 29.120632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259285, 35.352947, 29.043398>,  <35.429604, 35.691212, 28.914675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259285, 35.352947, 29.043398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339580, -0.479016, -0.809462,
		0.838681, -0.235383, 0.491130,
		-0.425793, -0.845659, 0.321810,
		35.131546, 35.099251, 29.139940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952995, 35.139275, 29.046545>,  <35.429604, 35.691212, 28.914675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952995, 35.139275, 29.046545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603630, 34.976322, 28.939825>,  <35.394009, 34.878551, 28.875793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603630, 34.976322, 28.939825>,  <35.952995, 35.139275, 29.046545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603630, 34.976322, 28.939825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449044, -0.461773, -0.764934,
		0.188421, -0.787911, 0.586254,
		-0.873416, -0.407384, -0.266799,
		35.341606, 34.854107, 28.859785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152931, 34.443382, 28.784868>,  <35.952995, 35.139275, 29.046545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152931, 34.443382, 28.784868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772430, 34.509651, 28.680817>,  <35.544128, 34.549412, 28.618385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772430, 34.509651, 28.680817>,  <36.152931, 34.443382, 28.784868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772430, 34.509651, 28.680817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173801, -0.408806, -0.895919,
		-0.254769, -0.897459, 0.360085,
		-0.951255, 0.165669, -0.260130,
		35.487053, 34.559353, 28.602777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952751, 33.813435, 28.322281>,  <36.152931, 34.443382, 28.784868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952751, 33.813435, 28.322281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723660, 34.132488, 28.246630>,  <35.586205, 34.323921, 28.201239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723660, 34.132488, 28.246630>,  <35.952751, 33.813435, 28.322281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723660, 34.132488, 28.246630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071467, -0.181252, -0.980837,
		-0.816626, -0.575266, 0.046804,
		-0.572726, 0.797632, -0.189128,
		35.551842, 34.371777, 28.189892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616615, 33.570122, 27.801857>,  <35.952751, 33.813435, 28.322281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616615, 33.570122, 27.801857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508358, 33.951225, 27.746716>,  <35.443405, 34.179886, 27.713631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508358, 33.951225, 27.746716>,  <35.616615, 33.570122, 27.801857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508358, 33.951225, 27.746716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207793, -0.082006, -0.974729,
		-0.939987, -0.292447, -0.175783,
		-0.270641, 0.952759, -0.137853,
		35.427166, 34.237053, 27.705360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118336, 33.613316, 27.217157>,  <35.616615, 33.570122, 27.801857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118336, 33.613316, 27.217157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274601, 33.980236, 27.248007>,  <35.368359, 34.200386, 27.266516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274601, 33.980236, 27.248007>,  <35.118336, 33.613316, 27.217157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274601, 33.980236, 27.248007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156656, 0.016311, -0.987519,
		-0.907106, 0.397870, -0.137328,
		0.390664, 0.917297, 0.077124,
		35.391800, 34.255424, 27.271145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822147, 34.018730, 26.654650>,  <35.118336, 33.613316, 27.217157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822147, 34.018730, 26.654650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162125, 34.210312, 26.742464>,  <35.366112, 34.325260, 26.795153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162125, 34.210312, 26.742464>,  <34.822147, 34.018730, 26.654650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162125, 34.210312, 26.742464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275359, -0.048564, -0.960114,
		-0.449186, 0.876497, -0.173160,
		0.849947, 0.478951, 0.219538,
		35.417110, 34.353996, 26.808325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811714, 34.522324, 26.162973>,  <34.822147, 34.018730, 26.654650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811714, 34.522324, 26.162973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196941, 34.490108, 26.265739>,  <35.428078, 34.470779, 26.327400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196941, 34.490108, 26.265739>,  <34.811714, 34.522324, 26.162973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196941, 34.490108, 26.265739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257374, -0.004824, -0.966300,
		0.079066, 0.996740, 0.016083,
		0.963072, -0.080541, 0.256916,
		35.485863, 34.465946, 26.342813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136375, 35.075474, 25.846228>,  <34.811714, 34.522324, 26.162973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136375, 35.075474, 25.846228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431919, 34.815823, 25.918592>,  <35.609245, 34.660034, 25.962011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431919, 34.815823, 25.918592>,  <35.136375, 35.075474, 25.846228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431919, 34.815823, 25.918592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261049, 0.028215, -0.964913,
		0.621245, 0.760158, 0.190300,
		0.738856, -0.649125, 0.180911,
		35.653576, 34.621086, 25.972866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568489, 35.308285, 25.452072>,  <35.136375, 35.075474, 25.846228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568489, 35.308285, 25.452072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712997, 34.941723, 25.520987>,  <35.799702, 34.721786, 25.562336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712997, 34.941723, 25.520987>,  <35.568489, 35.308285, 25.452072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712997, 34.941723, 25.520987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215887, -0.097542, -0.971534,
		0.907124, 0.388185, 0.162600,
		0.361274, -0.916405, 0.172287,
		35.821381, 34.666801, 25.572672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272900, 35.342491, 25.086338>,  <35.568489, 35.308285, 25.452072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272900, 35.342491, 25.086338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141926, 34.967300, 25.131903>,  <36.063339, 34.742184, 25.159243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141926, 34.967300, 25.131903>,  <36.272900, 35.342491, 25.086338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141926, 34.967300, 25.131903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051279, -0.138022, -0.989101,
		0.943481, -0.318026, 0.093293,
		-0.327436, -0.937982, 0.113913,
		36.043694, 34.685905, 25.166077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709152, 35.006439, 24.763510>,  <36.272900, 35.342491, 25.086338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709152, 35.006439, 24.763510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403214, 34.748768, 24.760973>,  <36.219650, 34.594166, 24.759451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403214, 34.748768, 24.760973>,  <36.709152, 35.006439, 24.763510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403214, 34.748768, 24.760973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154650, -0.174047, -0.972518,
		0.625375, -0.744807, 0.232742,
		-0.764846, -0.644182, -0.006339,
		36.173759, 34.555511, 24.759071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134415, 34.524761, 24.569813>,  <36.709152, 35.006439, 24.763510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134415, 34.524761, 24.569813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747414, 34.451542, 24.500034>,  <36.515213, 34.407608, 24.458168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747414, 34.451542, 24.500034>,  <37.134415, 34.524761, 24.569813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747414, 34.451542, 24.500034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194759, -0.099452, -0.975796,
		0.161271, -0.978060, 0.131871,
		-0.967502, -0.183051, -0.174447,
		36.457165, 34.396626, 24.447701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117386, 34.007423, 24.048223>,  <37.134415, 34.524761, 24.569813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117386, 34.007423, 24.048223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753788, 34.172256, 24.023205>,  <36.535629, 34.271156, 24.008194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753788, 34.172256, 24.023205>,  <37.117386, 34.007423, 24.048223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753788, 34.172256, 24.023205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045629, -0.050781, -0.997667,
		-0.414295, -0.909732, 0.027357,
		-0.908998, 0.412080, -0.062549,
		36.481087, 34.295879, 24.004440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698257, 33.549942, 23.563011>,  <37.117386, 34.007423, 24.048223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698257, 33.549942, 23.563011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542259, 33.918240, 23.567772>,  <36.448662, 34.139217, 23.570629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542259, 33.918240, 23.567772>,  <36.698257, 33.549942, 23.563011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542259, 33.918240, 23.567772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134865, -0.044326, -0.989872,
		-0.910889, -0.387647, 0.141462,
		-0.389992, 0.920742, 0.011904,
		36.425262, 34.194462, 23.571342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185055, 33.473911, 23.204832>,  <36.698257, 33.549942, 23.563011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185055, 33.473911, 23.204832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238022, 33.870361, 23.209555>,  <36.269802, 34.108231, 23.212387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238022, 33.870361, 23.209555>,  <36.185055, 33.473911, 23.204832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238022, 33.870361, 23.209555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165773, 0.033888, -0.985582,
		-0.977233, 0.128552, 0.168789,
		0.132418, 0.991124, 0.011806,
		36.277748, 34.167698, 23.213097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683987, 33.762314, 22.671309>,  <36.185055, 33.473911, 23.204832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683987, 33.762314, 22.671309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965023, 34.036076, 22.749247>,  <36.133644, 34.200333, 22.796009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965023, 34.036076, 22.749247>,  <35.683987, 33.762314, 22.671309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965023, 34.036076, 22.749247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158280, 0.116651, -0.980479,
		-0.693771, 0.719713, -0.026369,
		0.702588, 0.684402, 0.194845,
		36.175800, 34.241398, 22.807701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438221, 34.316502, 22.300257>,  <35.683987, 33.762314, 22.671309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438221, 34.316502, 22.300257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827606, 34.361816, 22.379793>,  <36.061237, 34.389004, 22.427515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827606, 34.361816, 22.379793>,  <35.438221, 34.316502, 22.300257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827606, 34.361816, 22.379793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170463, 0.220770, -0.960314,
		-0.152688, 0.968724, 0.195600,
		0.973462, 0.113286, 0.198840,
		36.119644, 34.395802, 22.439445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725594, 34.922527, 21.976923>,  <35.438221, 34.316502, 22.300257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725594, 34.922527, 21.976923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044903, 34.686928, 22.027279>,  <36.236488, 34.545570, 22.057493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044903, 34.686928, 22.027279>,  <35.725594, 34.922527, 21.976923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044903, 34.686928, 22.027279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294091, 0.198768, -0.934881,
		0.525616, 0.783312, 0.331889,
		0.798272, -0.588994, 0.125889,
		36.284386, 34.510231, 22.065046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237385, 35.370029, 21.732777>,  <35.725594, 34.922527, 21.976923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237385, 35.370029, 21.732777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371368, 34.993523, 21.749840>,  <36.451759, 34.767620, 21.760078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371368, 34.993523, 21.749840>,  <36.237385, 35.370029, 21.732777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371368, 34.993523, 21.749840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379146, 0.093198, -0.920632,
		0.862585, 0.324545, 0.388095,
		0.334956, -0.941268, 0.042659,
		36.471855, 34.711143, 21.762638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943752, 35.489986, 21.610638>,  <36.237385, 35.370029, 21.732777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943752, 35.489986, 21.610638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895378, 35.103542, 21.519426>,  <36.866352, 34.871674, 21.464699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895378, 35.103542, 21.519426>,  <36.943752, 35.489986, 21.610638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895378, 35.103542, 21.519426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560147, 0.123229, -0.819177,
		0.819518, -0.226799, 0.526263,
		-0.120938, -0.966114, -0.228029,
		36.859097, 34.813709, 21.451017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530449, 35.407925, 21.243570>,  <36.943752, 35.489986, 21.610638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530449, 35.407925, 21.243570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297199, 35.098759, 21.143515>,  <37.157249, 34.913258, 21.083481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297199, 35.098759, 21.143515>,  <37.530449, 35.407925, 21.243570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297199, 35.098759, 21.143515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508918, -0.107545, -0.854070,
		0.633225, -0.625326, 0.456063,
		-0.583120, -0.772917, -0.250140,
		37.122265, 34.866882, 21.068472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952312, 34.793770, 21.163055>,  <37.530449, 35.407925, 21.243570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952312, 34.793770, 21.163055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630394, 34.740227, 20.931753>,  <37.437241, 34.708103, 20.792973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630394, 34.740227, 20.931753>,  <37.952312, 34.793770, 21.163055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630394, 34.740227, 20.931753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592690, -0.128904, -0.795049,
		0.031883, -0.982581, 0.183077,
		-0.804800, -0.133856, -0.578256,
		37.388954, 34.700069, 20.758276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149529, 34.280991, 20.787033>,  <37.952312, 34.793770, 21.163055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149529, 34.280991, 20.787033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835430, 34.433346, 20.591764>,  <37.646973, 34.524757, 20.474604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835430, 34.433346, 20.591764>,  <38.149529, 34.280991, 20.787033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835430, 34.433346, 20.591764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498894, -0.077761, -0.863167,
		-0.366731, -0.921345, -0.128961,
		-0.785247, 0.380888, -0.488171,
		37.599857, 34.547611, 20.445312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879539, 33.860886, 20.192482>,  <38.149529, 34.280991, 20.787033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879539, 33.860886, 20.192482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754864, 34.227425, 20.091961>,  <37.680058, 34.447350, 20.031649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754864, 34.227425, 20.091961>,  <37.879539, 33.860886, 20.192482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754864, 34.227425, 20.091961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574104, -0.029127, -0.818264,
		-0.757137, -0.399314, -0.517003,
		-0.311685, 0.916352, -0.251301,
		37.661358, 34.502331, 20.016571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850380, 33.896992, 19.337049>,  <37.879539, 33.860886, 20.192482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850380, 33.896992, 19.337049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836525, 34.271774, 19.476139>,  <37.828213, 34.496643, 19.559593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836525, 34.271774, 19.476139>,  <37.850380, 33.896992, 19.337049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836525, 34.271774, 19.476139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475491, 0.321482, -0.818876,
		-0.879038, 0.136973, -0.456651,
		-0.034641, 0.936957, 0.347725,
		37.826134, 34.552860, 19.580456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676739, 34.257622, 18.717997>,  <37.850380, 33.896992, 19.337049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676739, 34.257622, 18.717997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825569, 34.525070, 18.975527>,  <37.914867, 34.685539, 19.130045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825569, 34.525070, 18.975527>,  <37.676739, 34.257622, 18.717997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825569, 34.525070, 18.975527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493700, 0.444815, -0.747262,
		-0.786016, 0.595893, -0.164593,
		0.372074, 0.668619, 0.643824,
		37.937191, 34.725655, 19.168674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695122, 34.987465, 18.419893>,  <37.676739, 34.257622, 18.717997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695122, 34.987465, 18.419893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964302, 34.994225, 18.715693>,  <38.125809, 34.998280, 18.893171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964302, 34.994225, 18.715693>,  <37.695122, 34.987465, 18.419893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964302, 34.994225, 18.715693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540644, 0.671059, -0.507330,
		-0.504821, 0.741211, 0.442450,
		0.672948, 0.016903, 0.739496,
		38.166187, 34.999294, 18.937542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889477, 35.705261, 18.495970>,  <37.695122, 34.987465, 18.419893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889477, 35.705261, 18.495970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195671, 35.503582, 18.655878>,  <38.379387, 35.382576, 18.751823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195671, 35.503582, 18.655878>,  <37.889477, 35.705261, 18.495970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195671, 35.503582, 18.655878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642212, 0.637260, -0.425985,
		-0.039977, 0.582823, 0.811615,
		0.765484, -0.504200, 0.399771,
		38.425316, 35.352322, 18.775810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207809, 36.170467, 18.812487>,  <37.889477, 35.705261, 18.495970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207809, 36.170467, 18.812487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481770, 35.882610, 18.766821>,  <38.646145, 35.709896, 18.739422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481770, 35.882610, 18.766821>,  <38.207809, 36.170467, 18.812487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481770, 35.882610, 18.766821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699337, 0.693222, -0.174271,
		0.204554, 0.039517, 0.978057,
		0.684897, -0.719640, -0.114165,
		38.687241, 35.666718, 18.732571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785561, 36.373821, 19.174639>,  <38.207809, 36.170467, 18.812487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785561, 36.373821, 19.174639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923363, 36.106518, 18.910896>,  <39.006042, 35.946136, 18.752651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923363, 36.106518, 18.910896>,  <38.785561, 36.373821, 19.174639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923363, 36.106518, 18.910896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796887, 0.579449, -0.170908,
		0.496274, -0.466555, 0.732147,
		0.344503, -0.668256, -0.659357,
		39.026714, 35.906040, 18.713089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507214, 36.310616, 19.353586>,  <38.785561, 36.373821, 19.174639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507214, 36.310616, 19.353586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454422, 36.173187, 18.981663>,  <39.422749, 36.090729, 18.758509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454422, 36.173187, 18.981663>,  <39.507214, 36.310616, 19.353586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454422, 36.173187, 18.981663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670176, 0.660220, -0.339078,
		0.730375, -0.667885, 0.143119,
		-0.131975, -0.343569, -0.929808,
		39.414829, 36.070118, 18.702721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122242, 36.325287, 19.097889>,  <39.507214, 36.310616, 19.353586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122242, 36.325287, 19.097889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893684, 36.318649, 18.769686>,  <39.756550, 36.314667, 18.572763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893684, 36.318649, 18.769686>,  <40.122242, 36.325287, 19.097889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893684, 36.318649, 18.769686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691172, 0.529323, -0.492035,
		0.442478, -0.848258, -0.290984,
		-0.571397, -0.016594, -0.820506,
		39.722267, 36.313671, 18.523533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542576, 36.146698, 18.554184>,  <40.122242, 36.325287, 19.097889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542576, 36.146698, 18.554184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231243, 36.316360, 18.369019>,  <40.044445, 36.418156, 18.257919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231243, 36.316360, 18.369019>,  <40.542576, 36.146698, 18.554184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231243, 36.316360, 18.369019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627840, 0.530287, -0.569748,
		0.003817, -0.734090, -0.679041,
		-0.778333, 0.424154, -0.462915,
		39.997742, 36.443607, 18.230145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689053, 36.187267, 17.866123>,  <40.542576, 36.146698, 18.554184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689053, 36.187267, 17.866123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411793, 36.475262, 17.879795>,  <40.245438, 36.648056, 17.887999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411793, 36.475262, 17.879795>,  <40.689053, 36.187267, 17.866123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411793, 36.475262, 17.879795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648793, 0.643870, -0.405585,
		-0.314022, -0.258955, -0.913418,
		-0.693151, 0.719982, 0.034180,
		40.203846, 36.691257, 17.890049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847851, 36.545826, 17.288567>,  <40.689053, 36.187267, 17.866123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847851, 36.545826, 17.288567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615723, 36.793827, 17.499781>,  <40.476444, 36.942627, 17.626509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615723, 36.793827, 17.499781>,  <40.847851, 36.545826, 17.288567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615723, 36.793827, 17.499781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478667, 0.784242, -0.394770,
		-0.658867, 0.023661, -0.751887,
		-0.580320, 0.620004, 0.528037,
		40.441628, 36.979828, 17.658192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407337, 37.027161, 16.865566>,  <40.847851, 36.545826, 17.288567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407337, 37.027161, 16.865566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485184, 37.223164, 17.205452>,  <40.531891, 37.340767, 17.409384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485184, 37.223164, 17.205452>,  <40.407337, 37.027161, 16.865566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485184, 37.223164, 17.205452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533932, 0.673769, -0.510835,
		-0.822825, 0.553108, -0.130502,
		0.194619, 0.490006, 0.849716,
		40.543568, 37.370167, 17.460367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438656, 37.713268, 16.709507>,  <40.407337, 37.027161, 16.865566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438656, 37.713268, 16.709507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622250, 37.676750, 17.063004>,  <40.732407, 37.654839, 17.275101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622250, 37.676750, 17.063004>,  <40.438656, 37.713268, 16.709507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622250, 37.676750, 17.063004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774251, 0.528955, -0.347478,
		-0.435738, 0.843725, 0.313465,
		0.458985, -0.091292, 0.883741,
		40.759945, 37.649364, 17.328125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159813, 38.337234, 17.173536>,  <40.438656, 37.713268, 16.709507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159813, 38.337234, 17.173536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397381, 38.657024, 17.209539>,  <40.539921, 38.848896, 17.231142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397381, 38.657024, 17.209539>,  <40.159813, 38.337234, 17.173536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397381, 38.657024, 17.209539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219558, -0.053436, -0.974135,
		-0.773982, 0.598325, -0.207267,
		0.593924, 0.799470, 0.090008,
		40.575558, 38.896866, 17.236542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988926, 38.787609, 16.582354>,  <40.159813, 38.337234, 17.173536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988926, 38.787609, 16.582354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356121, 38.886589, 16.706327>,  <40.576439, 38.945976, 16.780712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356121, 38.886589, 16.706327>,  <39.988926, 38.787609, 16.582354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356121, 38.886589, 16.706327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305441, 0.057372, -0.950481,
		-0.252974, 0.967202, -0.022913,
		0.917992, 0.247446, 0.309937,
		40.631519, 38.960823, 16.799309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313438, 39.486446, 16.230324>,  <39.988926, 38.787609, 16.582354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313438, 39.486446, 16.230324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574715, 39.202534, 16.335814>,  <40.731480, 39.032185, 16.399107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574715, 39.202534, 16.335814>,  <40.313438, 39.486446, 16.230324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574715, 39.202534, 16.335814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425749, 0.056254, -0.903091,
		0.626165, 0.702169, 0.338935,
		0.653189, -0.709785, 0.263723,
		40.770672, 38.989597, 16.414930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887688, 39.746941, 15.966634>,  <40.313438, 39.486446, 16.230324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887688, 39.746941, 15.966634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932522, 39.352856, 16.018459>,  <40.959423, 39.116405, 16.049555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932522, 39.352856, 16.018459>,  <40.887688, 39.746941, 15.966634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932522, 39.352856, 16.018459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452115, -0.065546, -0.889548,
		0.884889, 0.158284, 0.438084,
		0.112087, -0.985216, 0.129563,
		40.966148, 39.057289, 16.057329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625706, 39.409294, 15.954557>,  <40.887688, 39.746941, 15.966634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625706, 39.409294, 15.954557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339413, 39.160786, 15.826964>,  <41.167637, 39.011681, 15.750408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339413, 39.160786, 15.826964>,  <41.625706, 39.409294, 15.954557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339413, 39.160786, 15.826964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487490, -0.117381, -0.865202,
		0.500087, -0.774750, 0.386879,
		-0.715728, -0.621276, -0.318982,
		41.124695, 38.974403, 15.731270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561958, 38.728806, 15.936083>,  <41.625706, 39.409294, 15.954557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561958, 38.728806, 15.936083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290474, 38.473400, 15.790953>,  <41.127583, 38.320156, 15.703875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290474, 38.473400, 15.790953>,  <41.561958, 38.728806, 15.936083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290474, 38.473400, 15.790953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339117, -0.165732, 0.926030,
		-0.651417, 0.751552, -0.104047,
		-0.678716, -0.638516, -0.362825,
		41.086861, 38.281845, 15.682105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884602, 38.716949, 16.633722>,  <41.561958, 38.728806, 15.936083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884602, 38.716949, 16.633722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540382, 38.913677, 16.580687>,  <41.333851, 39.031712, 16.548864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540382, 38.913677, 16.580687>,  <41.884602, 38.716949, 16.633722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540382, 38.913677, 16.580687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138632, 0.024341, 0.990045,
		0.490146, 0.870359, 0.047235,
		-0.860545, 0.491815, -0.132590,
		41.282219, 39.061222, 16.540909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884605, 39.355183, 16.990108>,  <41.884602, 38.716949, 16.633722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884605, 39.355183, 16.990108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500015, 39.251595, 16.953218>,  <41.269260, 39.189442, 16.931086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500015, 39.251595, 16.953218>,  <41.884605, 39.355183, 16.990108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500015, 39.251595, 16.953218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149587, 0.211395, 0.965886,
		-0.230644, 0.942467, -0.241990,
		-0.961471, -0.258975, -0.092224,
		41.211575, 39.173901, 16.925550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516296, 39.841599, 17.186499>,  <41.884605, 39.355183, 16.990108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516296, 39.841599, 17.186499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229141, 39.564930, 17.218060>,  <41.056847, 39.398930, 17.236996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229141, 39.564930, 17.218060>,  <41.516296, 39.841599, 17.186499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229141, 39.564930, 17.218060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345297, 0.452198, 0.822367,
		-0.604487, 0.563124, -0.563460,
		-0.717890, -0.691671, 0.078902,
		41.013775, 39.357430, 17.241730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960266, 40.208790, 17.401440>,  <41.516296, 39.841599, 17.186499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960266, 40.208790, 17.401440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880402, 39.835808, 17.521885>,  <40.832481, 39.612019, 17.594152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880402, 39.835808, 17.521885>,  <40.960266, 40.208790, 17.401440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880402, 39.835808, 17.521885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425983, 0.359343, 0.830308,
		-0.882425, 0.037512, -0.468956,
		-0.199662, -0.932451, 0.301114,
		40.820503, 39.556072, 17.612219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465290, 40.305676, 17.800406>,  <40.960266, 40.208790, 17.401440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465290, 40.305676, 17.800406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580318, 39.933964, 17.893141>,  <40.649334, 39.710938, 17.948782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580318, 39.933964, 17.893141>,  <40.465290, 40.305676, 17.800406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580318, 39.933964, 17.893141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212159, 0.174242, 0.961576,
		-0.933967, -0.325703, -0.147048,
		0.287566, -0.929278, 0.231837,
		40.666588, 39.655182, 17.962692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938690, 39.935040, 18.273167>,  <40.465290, 40.305676, 17.800406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938690, 39.935040, 18.273167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266502, 39.716652, 18.342783>,  <40.463188, 39.585617, 18.384552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266502, 39.716652, 18.342783>,  <39.938690, 39.935040, 18.273167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266502, 39.716652, 18.342783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183255, 0.038061, 0.982328,
		-0.542947, -0.836939, -0.068860,
		0.819528, -0.545971, 0.174039,
		40.512360, 39.552860, 18.394995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647369, 39.425865, 18.804844>,  <39.938690, 39.935040, 18.273167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647369, 39.425865, 18.804844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043953, 39.387344, 18.840023>,  <40.281902, 39.364231, 18.861132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043953, 39.387344, 18.840023>,  <39.647369, 39.425865, 18.804844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043953, 39.387344, 18.840023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103506, -0.170754, 0.979862,
		-0.079341, -0.980597, -0.179263,
		0.991459, -0.096298, 0.087950,
		40.341393, 39.358456, 18.866407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753426, 38.793167, 19.201601>,  <39.647369, 39.425865, 18.804844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753426, 38.793167, 19.201601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073402, 39.032619, 19.218264>,  <40.265388, 39.176292, 19.228262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073402, 39.032619, 19.218264>,  <39.753426, 38.793167, 19.201601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073402, 39.032619, 19.218264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121790, -0.229937, 0.965555,
		0.587594, -0.767310, -0.256843,
		0.799938, 0.598635, 0.041659,
		40.313385, 39.212212, 19.230761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237724, 38.368389, 19.476358>,  <39.753426, 38.793167, 19.201601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237724, 38.368389, 19.476358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364422, 38.741688, 19.544146>,  <40.440441, 38.965668, 19.584818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364422, 38.741688, 19.544146>,  <40.237724, 38.368389, 19.476358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364422, 38.741688, 19.544146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259958, -0.257238, 0.930726,
		0.912194, -0.250743, -0.324084,
		0.316740, 0.933250, 0.169468,
		40.459442, 39.021664, 19.594986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867008, 38.240334, 19.844940>,  <40.237724, 38.368389, 19.476358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867008, 38.240334, 19.844940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717163, 38.601513, 19.929182>,  <40.627258, 38.818222, 19.979727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717163, 38.601513, 19.929182>,  <40.867008, 38.240334, 19.844940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717163, 38.601513, 19.929182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138697, -0.170017, 0.975632,
		0.916750, 0.394691, -0.061547,
		-0.374609, 0.902947, 0.210606,
		40.604782, 38.872398, 19.992363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281895, 38.535202, 20.409883>,  <40.867008, 38.240334, 19.844940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281895, 38.535202, 20.409883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940693, 38.743958, 20.411573>,  <40.735973, 38.869213, 20.412588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940693, 38.743958, 20.411573>,  <41.281895, 38.535202, 20.409883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940693, 38.743958, 20.411573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091301, -0.157190, 0.983339,
		0.513861, 0.838404, 0.181732,
		-0.853001, 0.521892, 0.004226,
		40.684792, 38.900524, 20.412842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286015, 39.020290, 21.011934>,  <41.281895, 38.535202, 20.409883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286015, 39.020290, 21.011934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902668, 38.973507, 20.907742>,  <40.672661, 38.945438, 20.845226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902668, 38.973507, 20.907742>,  <41.286015, 39.020290, 21.011934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902668, 38.973507, 20.907742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233309, -0.205166, 0.950512,
		-0.164612, 0.971714, 0.169338,
		-0.958368, -0.116958, -0.260483,
		40.615158, 38.938419, 20.829597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880451, 39.411537, 21.515081>,  <41.286015, 39.020290, 21.011934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880451, 39.411537, 21.515081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624527, 39.151047, 21.351839>,  <40.470970, 38.994755, 21.253895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624527, 39.151047, 21.351839>,  <40.880451, 39.411537, 21.515081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624527, 39.151047, 21.351839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450821, -0.112033, 0.885556,
		-0.622416, 0.750571, -0.221905,
		-0.639812, -0.651223, -0.408104,
		40.432583, 38.955681, 21.229408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239773, 39.604084, 21.785246>,  <40.880451, 39.411537, 21.515081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239773, 39.604084, 21.785246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206245, 39.226089, 21.658773>,  <40.186127, 38.999290, 21.582890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206245, 39.226089, 21.658773>,  <40.239773, 39.604084, 21.785246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206245, 39.226089, 21.658773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375967, -0.263857, 0.888273,
		-0.922834, 0.193332, -0.333167,
		-0.083823, -0.944988, -0.316182,
		40.181099, 38.942593, 21.563919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626171, 39.387871, 21.980350>,  <40.239773, 39.604084, 21.785246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626171, 39.387871, 21.980350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823811, 39.043308, 21.933290>,  <39.942394, 38.836571, 21.905054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823811, 39.043308, 21.933290>,  <39.626171, 39.387871, 21.980350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823811, 39.043308, 21.933290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392254, -0.341642, 0.854059,
		-0.775889, -0.375839, -0.506696,
		0.494098, -0.861409, -0.117652,
		39.972038, 38.784885, 21.897995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120117, 38.966190, 22.227226>,  <39.626171, 39.387871, 21.980350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120117, 38.966190, 22.227226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464874, 38.763702, 22.239120>,  <39.671726, 38.642208, 22.246258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464874, 38.763702, 22.239120>,  <39.120117, 38.966190, 22.227226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464874, 38.763702, 22.239120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296733, -0.455920, 0.839099,
		-0.411209, -0.732038, -0.543165,
		0.861892, -0.506219, 0.029741,
		39.723442, 38.611835, 22.248041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984158, 38.162491, 22.306374>,  <39.120117, 38.966190, 22.227226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984158, 38.162491, 22.306374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353073, 38.242744, 22.438509>,  <39.574425, 38.290897, 22.517790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353073, 38.242744, 22.438509>,  <38.984158, 38.162491, 22.306374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353073, 38.242744, 22.438509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205911, -0.468234, 0.859277,
		0.327076, -0.860525, -0.390536,
		0.922292, 0.200633, 0.330340,
		39.629761, 38.302933, 22.537611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195683, 37.497208, 22.678106>,  <38.984158, 38.162491, 22.306374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195683, 37.497208, 22.678106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398514, 37.799984, 22.842989>,  <39.520214, 37.981651, 22.941919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398514, 37.799984, 22.842989>,  <39.195683, 37.497208, 22.678106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398514, 37.799984, 22.842989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013355, -0.471295, 0.881875,
		0.861796, -0.452685, -0.228875,
		0.507079, 0.756940, 0.412206,
		39.550636, 38.027065, 22.966650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558552, 37.223969, 23.147224>,  <39.195683, 37.497208, 22.678106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558552, 37.223969, 23.147224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567921, 37.609024, 23.255129>,  <39.573544, 37.840057, 23.319872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567921, 37.609024, 23.255129>,  <39.558552, 37.223969, 23.147224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567921, 37.609024, 23.255129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071455, -0.267532, 0.960896,
		0.997169, -0.041786, 0.062518,
		0.023426, 0.962642, 0.269760,
		39.574947, 37.897816, 23.336058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982258, 37.180443, 23.753193>,  <39.558552, 37.223969, 23.147224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982258, 37.180443, 23.753193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768730, 37.518505, 23.764196>,  <39.640614, 37.721340, 23.770800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768730, 37.518505, 23.764196>,  <39.982258, 37.180443, 23.753193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768730, 37.518505, 23.764196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243377, -0.184716, 0.952180,
		0.809821, 0.501593, 0.304295,
		-0.533815, 0.845154, 0.027511,
		39.608585, 37.772053, 23.772449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255489, 37.592300, 24.295744>,  <39.982258, 37.180443, 23.753193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255489, 37.592300, 24.295744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887115, 37.731647, 24.225855>,  <39.666092, 37.815254, 24.183922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887115, 37.731647, 24.225855>,  <40.255489, 37.592300, 24.295744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887115, 37.731647, 24.225855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180013, 0.017397, 0.983510,
		0.345662, 0.937197, 0.046689,
		-0.920930, 0.348367, -0.174721,
		39.610836, 37.836159, 24.173439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202965, 38.142105, 24.779421>,  <40.255489, 37.592300, 24.295744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202965, 38.142105, 24.779421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842735, 38.021049, 24.654602>,  <39.626598, 37.948418, 24.579710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842735, 38.021049, 24.654602>,  <40.202965, 38.142105, 24.779421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842735, 38.021049, 24.654602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361128, 0.121287, 0.924595,
		-0.241970, 0.945357, -0.218518,
		-0.900576, -0.302637, -0.312047,
		39.572563, 37.930260, 24.560987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840534, 38.610550, 25.010048>,  <40.202965, 38.142105, 24.779421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840534, 38.610550, 25.010048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568062, 38.324280, 24.948345>,  <39.404579, 38.152519, 24.911324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568062, 38.324280, 24.948345>,  <39.840534, 38.610550, 25.010048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568062, 38.324280, 24.948345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445991, 0.238557, 0.862660,
		-0.580587, 0.656428, -0.481687,
		-0.681184, -0.715677, -0.154258,
		39.363708, 38.109577, 24.902067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162106, 38.938942, 25.148365>,  <39.840534, 38.610550, 25.010048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162106, 38.938942, 25.148365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100040, 38.544571, 25.173260>,  <39.062801, 38.307949, 25.188196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100040, 38.544571, 25.173260>,  <39.162106, 38.938942, 25.148365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100040, 38.544571, 25.173260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489369, 0.131437, 0.862115,
		-0.858162, 0.103313, -0.502876,
		-0.155165, -0.985926, 0.062236,
		39.053490, 38.248795, 25.191931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559647, 38.901726, 25.496819>,  <39.162106, 38.938942, 25.148365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559647, 38.901726, 25.496819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689381, 38.524261, 25.523067>,  <38.767220, 38.297783, 25.538816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689381, 38.524261, 25.523067>,  <38.559647, 38.901726, 25.496819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689381, 38.524261, 25.523067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520403, -0.120073, 0.845437,
		-0.789928, -0.308355, -0.530029,
		0.324336, -0.943663, 0.065620,
		38.786682, 38.241161, 25.542753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986858, 38.461918, 25.659283>,  <38.559647, 38.901726, 25.496819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986858, 38.461918, 25.659283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313087, 38.270615, 25.789577>,  <38.508823, 38.155830, 25.867754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313087, 38.270615, 25.789577>,  <37.986858, 38.461918, 25.659283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313087, 38.270615, 25.789577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386166, -0.030613, 0.921921,
		-0.430949, -0.877683, -0.209656,
		0.815573, -0.478263, 0.325739,
		38.557758, 38.127136, 25.887299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730625, 37.857700, 25.939060>,  <37.986858, 38.461918, 25.659283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730625, 37.857700, 25.939060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095898, 37.900337, 26.096403>,  <38.315063, 37.925919, 26.190809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095898, 37.900337, 26.096403>,  <37.730625, 37.857700, 25.939060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095898, 37.900337, 26.096403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382667, -0.107783, 0.917578,
		0.140207, -0.988443, -0.057635,
		0.913185, 0.106596, 0.393357,
		38.369854, 37.932316, 26.214411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802708, 37.309200, 26.435598>,  <37.730625, 37.857700, 25.939060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802708, 37.309200, 26.435598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079872, 37.573181, 26.551762>,  <38.246170, 37.731571, 26.621460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079872, 37.573181, 26.551762>,  <37.802708, 37.309200, 26.435598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079872, 37.573181, 26.551762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275562, -0.129809, 0.952479,
		0.666288, -0.740008, 0.091912,
		0.692911, 0.659953, 0.290408,
		38.287746, 37.771168, 26.638884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076466, 37.023415, 26.994762>,  <37.802708, 37.309200, 26.435598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076466, 37.023415, 26.994762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160530, 37.414478, 26.993599>,  <38.210968, 37.649117, 26.992901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160530, 37.414478, 26.993599>,  <38.076466, 37.023415, 26.994762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160530, 37.414478, 26.993599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373646, 0.083066, 0.923844,
		0.903450, -0.193066, 0.382757,
		0.210157, 0.977663, -0.002908,
		38.223576, 37.707779, 26.992727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309383, 37.177483, 27.631945>,  <38.076466, 37.023415, 26.994762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309383, 37.177483, 27.631945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203793, 37.537270, 27.492645>,  <38.140438, 37.753143, 27.409065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203793, 37.537270, 27.492645>,  <38.309383, 37.177483, 27.631945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203793, 37.537270, 27.492645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363280, 0.241750, 0.899769,
		0.893502, 0.364027, 0.262943,
		-0.263974, 0.899467, -0.348248,
		38.124599, 37.807110, 27.388170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509071, 37.732811, 28.159885>,  <38.309383, 37.177483, 27.631945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509071, 37.732811, 28.159885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211292, 37.874149, 27.933279>,  <38.032623, 37.958950, 27.797316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211292, 37.874149, 27.933279>,  <38.509071, 37.732811, 28.159885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211292, 37.874149, 27.933279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539025, 0.182651, 0.822247,
		0.394011, 0.917489, 0.054487,
		-0.744451, 0.353344, -0.566517,
		37.987957, 37.980152, 27.763325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394905, 38.398155, 28.345772>,  <38.509071, 37.732811, 28.159885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394905, 38.398155, 28.345772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049091, 38.305149, 28.167553>,  <37.841602, 38.249344, 28.060621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049091, 38.305149, 28.167553>,  <38.394905, 38.398155, 28.345772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049091, 38.305149, 28.167553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492821, 0.218459, 0.842261,
		-0.098506, 0.947740, -0.303455,
		-0.864537, -0.232517, -0.445547,
		37.789730, 38.235394, 28.033890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876141, 39.024456, 28.411118>,  <38.394905, 38.398155, 28.345772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876141, 39.024456, 28.411118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672184, 38.682098, 28.376589>,  <37.549809, 38.476685, 28.355871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672184, 38.682098, 28.376589>,  <37.876141, 39.024456, 28.411118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672184, 38.682098, 28.376589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716020, 0.366653, 0.594037,
		-0.476782, 0.364707, -0.799792,
		-0.509896, -0.855894, -0.086324,
		37.519215, 38.425331, 28.350691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159733, 39.187702, 28.416162>,  <37.876141, 39.024456, 28.411118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159733, 39.187702, 28.416162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140377, 38.798382, 28.505919>,  <37.128765, 38.564789, 28.559772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140377, 38.798382, 28.505919>,  <37.159733, 39.187702, 28.416162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140377, 38.798382, 28.505919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608732, 0.206847, 0.765937,
		-0.791899, -0.099533, -0.602486,
		-0.048386, -0.973297, 0.224390,
		37.125862, 38.506393, 28.573236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550110, 39.108479, 28.453617>,  <37.159733, 39.187702, 28.416162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550110, 39.108479, 28.453617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685661, 38.780235, 28.637690>,  <36.766994, 38.583290, 28.748133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685661, 38.780235, 28.637690>,  <36.550110, 39.108479, 28.453617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685661, 38.780235, 28.637690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655942, 0.144566, 0.740838,
		-0.674462, -0.552908, -0.489278,
		0.338883, -0.820605, 0.460180,
		36.787327, 38.534054, 28.775743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916702, 38.856983, 28.808147>,  <36.550110, 39.108479, 28.453617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916702, 38.856983, 28.808147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216900, 38.664814, 28.989676>,  <36.397018, 38.549511, 29.098593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216900, 38.664814, 28.989676>,  <35.916702, 38.856983, 28.808147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216900, 38.664814, 28.989676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551777, -0.077560, 0.830378,
		-0.363737, -0.873599, -0.323296,
		0.750492, -0.480426, 0.453820,
		36.442047, 38.520687, 29.125822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639725, 38.230808, 29.154327>,  <35.916702, 38.856983, 28.808147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639725, 38.230808, 29.154327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991795, 38.286823, 29.335733>,  <36.203037, 38.320435, 29.444576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991795, 38.286823, 29.335733>,  <35.639725, 38.230808, 29.154327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991795, 38.286823, 29.335733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435606, -0.141145, 0.889003,
		0.188509, -0.980034, -0.063229,
		0.880177, 0.140042, 0.453516,
		36.255848, 38.328835, 29.471788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787102, 37.685547, 29.618315>,  <35.639725, 38.230808, 29.154327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787102, 37.685547, 29.618315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002831, 37.991043, 29.760210>,  <36.132267, 38.174339, 29.845346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002831, 37.991043, 29.760210>,  <35.787102, 37.685547, 29.618315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002831, 37.991043, 29.760210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282583, -0.232688, 0.930593,
		0.793273, -0.602129, 0.090326,
		0.539319, 0.763739, 0.354737,
		36.164627, 38.220165, 29.866631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943859, 37.526993, 30.212923>,  <35.787102, 37.685547, 29.618315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943859, 37.526993, 30.212923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059193, 37.906475, 30.264791>,  <36.128391, 38.134167, 30.295912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059193, 37.906475, 30.264791>,  <35.943859, 37.526993, 30.212923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059193, 37.906475, 30.264791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269115, -0.049675, 0.961826,
		0.918935, -0.312221, 0.240989,
		0.288331, 0.948710, 0.129672,
		36.145691, 38.191090, 30.303694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547794, 37.549061, 30.813984>,  <35.943859, 37.526993, 30.212923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547794, 37.549061, 30.813984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344208, 37.889641, 30.763411>,  <36.222057, 38.093990, 30.733067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344208, 37.889641, 30.763411>,  <36.547794, 37.549061, 30.813984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344208, 37.889641, 30.763411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047503, 0.118875, 0.991772,
		0.859476, 0.510782, -0.020057,
		-0.508964, 0.851452, -0.126434,
		36.191517, 38.145077, 30.725481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934883, 37.987286, 31.173674>,  <36.547794, 37.549061, 30.813984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934883, 37.987286, 31.173674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564812, 38.136715, 31.146889>,  <36.342770, 38.226372, 31.130817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564812, 38.136715, 31.146889>,  <36.934883, 37.987286, 31.173674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564812, 38.136715, 31.146889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059805, 0.030725, 0.997737,
		0.374783, 0.927092, -0.006085,
		-0.925181, 0.373571, -0.066960,
		36.287258, 38.248787, 31.126801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987400, 38.575073, 31.576096>,  <36.934883, 37.987286, 31.173674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987400, 38.575073, 31.576096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608929, 38.447800, 31.552418>,  <36.381844, 38.371437, 31.538212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608929, 38.447800, 31.552418>,  <36.987400, 38.575073, 31.576096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608929, 38.447800, 31.552418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061771, -0.001993, 0.998088,
		-0.317691, 0.948028, -0.017769,
		-0.946180, -0.318181, -0.059193,
		36.325073, 38.352345, 31.534660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150299, 39.145023, 31.047577>,  <36.987400, 38.575073, 31.576096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150299, 39.145023, 31.047577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031994, 38.814140, 30.856476>,  <36.961010, 38.615608, 30.741816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031994, 38.814140, 30.856476>,  <37.150299, 39.145023, 31.047577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031994, 38.814140, 30.856476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820834, -0.475894, 0.315842,
		-0.488628, -0.298743, 0.819753,
		-0.295760, -0.827211, -0.477753,
		36.943264, 38.565975, 30.713150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506805, 39.724625, 31.515148>,  <37.150299, 39.145023, 31.047577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506805, 39.724625, 31.515148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878216, 39.678078, 31.656170>,  <38.101063, 39.650150, 31.740784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878216, 39.678078, 31.656170>,  <37.506805, 39.724625, 31.515148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878216, 39.678078, 31.656170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350314, -0.039873, -0.935783,
		0.122952, 0.992406, 0.003741,
		0.928527, -0.116367, 0.352556,
		38.156773, 39.643169, 31.761936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866718, 40.260616, 31.104158>,  <37.506805, 39.724625, 31.515148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866718, 40.260616, 31.104158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118664, 39.985756, 31.248989>,  <38.269829, 39.820839, 31.335888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118664, 39.985756, 31.248989>,  <37.866718, 40.260616, 31.104158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118664, 39.985756, 31.248989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461224, -0.044185, -0.886183,
		0.624940, 0.725170, 0.289100,
		0.629859, -0.687151, 0.362078,
		38.307621, 39.779610, 31.357613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436481, 40.380371, 30.777496>,  <37.866718, 40.260616, 31.104158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436481, 40.380371, 30.777496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547520, 40.021713, 30.915468>,  <38.614143, 39.806519, 30.998251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547520, 40.021713, 30.915468>,  <38.436481, 40.380371, 30.777496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547520, 40.021713, 30.915468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539732, -0.151465, -0.828099,
		0.794752, 0.416045, 0.441900,
		0.277594, -0.896641, 0.344930,
		38.630798, 39.752720, 31.018948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160179, 40.306492, 30.661934>,  <38.436481, 40.380371, 30.777496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160179, 40.306492, 30.661934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999794, 39.940487, 30.679741>,  <38.903561, 39.720886, 30.690426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999794, 39.940487, 30.679741>,  <39.160179, 40.306492, 30.661934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999794, 39.940487, 30.679741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498781, -0.258816, -0.827183,
		0.768403, -0.309467, 0.560166,
		-0.400966, -0.915010, 0.044519,
		38.879505, 39.665985, 30.693096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693138, 39.860332, 30.466465>,  <39.160179, 40.306492, 30.661934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693138, 39.860332, 30.466465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367943, 39.633480, 30.413679>,  <39.172825, 39.497368, 30.382008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367943, 39.633480, 30.413679>,  <39.693138, 39.860332, 30.466465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367943, 39.633480, 30.413679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371738, -0.331080, -0.867293,
		0.448175, -0.754156, 0.479987,
		-0.812988, -0.567129, -0.131966,
		39.124046, 39.463341, 30.374088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985641, 39.217342, 30.582003>,  <39.693138, 39.860332, 30.466465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985641, 39.217342, 30.582003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657112, 39.220127, 30.353832>,  <39.459995, 39.221798, 30.216930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657112, 39.220127, 30.353832>,  <39.985641, 39.217342, 30.582003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657112, 39.220127, 30.353832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548572, -0.264735, -0.793085,
		-0.156536, -0.964296, 0.213611,
		-0.821319, 0.006965, -0.570427,
		39.410717, 39.222218, 30.182705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983135, 38.619663, 30.137789>,  <39.985641, 39.217342, 30.582003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983135, 38.619663, 30.137789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728397, 38.868961, 29.956244>,  <39.575554, 39.018539, 29.847317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728397, 38.868961, 29.956244>,  <39.983135, 38.619663, 30.137789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728397, 38.868961, 29.956244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499988, -0.114255, -0.858462,
		-0.586890, -0.773634, -0.238853,
		-0.636846, 0.623246, -0.453863,
		39.537342, 39.055935, 29.820086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647263, 38.178802, 29.539692>,  <39.983135, 38.619663, 30.137789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647263, 38.178802, 29.539692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601089, 38.571220, 29.477434>,  <39.573387, 38.806671, 29.440079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601089, 38.571220, 29.477434>,  <39.647263, 38.178802, 29.539692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601089, 38.571220, 29.477434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578992, -0.060869, -0.813058,
		-0.807121, -0.183968, -0.560992,
		-0.115429, 0.981046, -0.155645,
		39.566460, 38.865536, 29.430740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403641, 38.090061, 28.867821>,  <39.647263, 38.178802, 29.539692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403641, 38.090061, 28.867821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540188, 38.455315, 28.956947>,  <39.622116, 38.674469, 29.010424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540188, 38.455315, 28.956947>,  <39.403641, 38.090061, 28.867821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540188, 38.455315, 28.956947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503851, 0.022343, -0.863502,
		-0.793473, 0.407041, -0.452458,
		0.341371, 0.913137, 0.222817,
		39.642597, 38.729256, 29.023792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227493, 38.530540, 28.307135>,  <39.403641, 38.090061, 28.867821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227493, 38.530540, 28.307135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534752, 38.717091, 28.482607>,  <39.719109, 38.829021, 28.587891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534752, 38.717091, 28.482607>,  <39.227493, 38.530540, 28.307135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534752, 38.717091, 28.482607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443689, 0.106239, -0.889861,
		-0.461618, 0.878182, -0.125321,
		0.768146, 0.466380, 0.438682,
		39.765194, 38.857006, 28.614212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401138, 39.203091, 27.984425>,  <39.227493, 38.530540, 28.307135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401138, 39.203091, 27.984425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744381, 39.072922, 28.143297>,  <39.950325, 38.994820, 28.238621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744381, 39.072922, 28.143297>,  <39.401138, 39.203091, 27.984425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744381, 39.072922, 28.143297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448646, 0.098957, -0.888214,
		0.249744, 0.940375, 0.230917,
		0.858106, -0.325426, 0.397181,
		40.001812, 38.975292, 28.262451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912949, 39.683880, 27.731907>,  <39.401138, 39.203091, 27.984425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912949, 39.683880, 27.731907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140408, 39.385059, 27.869638>,  <40.276882, 39.205769, 27.952278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140408, 39.385059, 27.869638>,  <39.912949, 39.683880, 27.731907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140408, 39.385059, 27.869638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655635, 0.158816, -0.738187,
		0.496776, 0.645521, 0.580101,
		0.568644, -0.747048, 0.344330,
		40.311001, 39.160946, 27.972937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584312, 39.979328, 27.709314>,  <39.912949, 39.683880, 27.731907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584312, 39.979328, 27.709314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611012, 39.580227, 27.706949>,  <40.627033, 39.340767, 27.705530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611012, 39.580227, 27.706949>,  <40.584312, 39.979328, 27.709314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611012, 39.580227, 27.706949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701075, 0.051119, -0.711253,
		0.709956, 0.043332, 0.702911,
		0.066752, -0.997752, -0.005913,
		40.631039, 39.280903, 27.705175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281487, 39.788342, 27.614876>,  <40.584312, 39.979328, 27.709314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281487, 39.788342, 27.614876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114883, 39.437145, 27.520512>,  <41.014919, 39.226429, 27.463894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114883, 39.437145, 27.520512>,  <41.281487, 39.788342, 27.614876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114883, 39.437145, 27.520512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581962, -0.058132, -0.811136,
		0.698455, -0.475136, 0.535169,
		-0.416510, -0.877990, -0.235909,
		40.989929, 39.173748, 27.449739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804424, 39.315147, 27.567736>,  <41.281487, 39.788342, 27.614876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804424, 39.315147, 27.567736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500557, 39.201862, 27.333574>,  <41.318237, 39.133892, 27.193077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500557, 39.201862, 27.333574>,  <41.804424, 39.315147, 27.567736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500557, 39.201862, 27.333574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512861, 0.292576, -0.807077,
		0.399851, -0.913340, -0.077010,
		-0.759667, -0.283215, -0.585402,
		41.272655, 39.116898, 27.157953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145172, 38.828461, 27.041250>,  <41.804424, 39.315147, 27.567736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145172, 38.828461, 27.041250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784218, 38.935417, 26.906073>,  <41.567646, 38.999592, 26.824966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784218, 38.935417, 26.906073>,  <42.145172, 38.828461, 27.041250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784218, 38.935417, 26.906073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369862, 0.078128, -0.925796,
		-0.221151, -0.960414, -0.169401,
		-0.902383, 0.267395, -0.337942,
		41.513504, 39.015636, 26.804689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910156, 38.330849, 26.595314>,  <42.145172, 38.828461, 27.041250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910156, 38.330849, 26.595314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686195, 38.649223, 26.503227>,  <41.551819, 38.840248, 26.447975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686195, 38.649223, 26.503227>,  <41.910156, 38.330849, 26.595314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686195, 38.649223, 26.503227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313126, -0.053983, -0.948176,
		-0.767114, -0.602971, -0.219003,
		-0.559900, 0.795935, -0.230217,
		41.518227, 38.888004, 26.434162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446011, 38.098980, 26.093311>,  <41.910156, 38.330849, 26.595314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446011, 38.098980, 26.093311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487587, 38.495079, 26.056192>,  <41.512531, 38.732738, 26.033920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487587, 38.495079, 26.056192>,  <41.446011, 38.098980, 26.093311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487587, 38.495079, 26.056192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274040, -0.118205, -0.954426,
		-0.956085, 0.073774, -0.283653,
		0.103941, 0.990245, -0.092797,
		41.518768, 38.792152, 26.028353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989723, 38.340652, 25.519238>,  <41.446011, 38.098980, 26.093311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989723, 38.340652, 25.519238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215954, 38.669399, 25.546558>,  <41.351692, 38.866646, 25.562950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215954, 38.669399, 25.546558>,  <40.989723, 38.340652, 25.519238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215954, 38.669399, 25.546558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183623, -0.044754, -0.981977,
		-0.803997, 0.567921, -0.176225,
		0.565572, 0.821865, 0.068302,
		41.385624, 38.915958, 25.567049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787853, 38.776024, 24.949806>,  <40.989723, 38.340652, 25.519238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787853, 38.776024, 24.949806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142166, 38.935101, 25.045496>,  <41.354755, 39.030548, 25.102909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142166, 38.935101, 25.045496>,  <40.787853, 38.776024, 24.949806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142166, 38.935101, 25.045496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253294, 0.017653, -0.967228,
		-0.388882, 0.917349, -0.085096,
		0.885784, 0.397692, 0.239224,
		41.407902, 39.054409, 25.117264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904861, 39.410698, 24.485550>,  <40.787853, 38.776024, 24.949806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904861, 39.410698, 24.485550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264080, 39.285313, 24.609007>,  <41.479610, 39.210083, 24.683081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264080, 39.285313, 24.609007>,  <40.904861, 39.410698, 24.485550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264080, 39.285313, 24.609007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321355, -0.011677, -0.946887,
		0.300417, 0.949529, 0.090246,
		0.898043, -0.313462, 0.308644,
		41.533493, 39.191273, 24.701599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371807, 39.768059, 24.122677>,  <40.904861, 39.410698, 24.485550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371807, 39.768059, 24.122677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591145, 39.466545, 24.267521>,  <41.722748, 39.285637, 24.354427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591145, 39.466545, 24.267521>,  <41.371807, 39.768059, 24.122677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591145, 39.466545, 24.267521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479341, -0.071502, -0.874711,
		0.685238, 0.653217, 0.322113,
		0.548344, -0.753787, 0.362110,
		41.755650, 39.240410, 24.376154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925308, 39.883682, 23.784517>,  <41.371807, 39.768059, 24.122677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925308, 39.883682, 23.784517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956650, 39.501862, 23.899536>,  <41.975456, 39.272770, 23.968548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956650, 39.501862, 23.899536>,  <41.925308, 39.883682, 23.784517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956650, 39.501862, 23.899536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558021, -0.197021, -0.806099,
		0.826119, 0.223620, 0.517224,
		0.078355, -0.954556, 0.287547,
		41.980156, 39.215496, 23.985800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574364, 39.564041, 23.423292>,  <41.925308, 39.883682, 23.784517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574364, 39.564041, 23.423292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401188, 39.225395, 23.547096>,  <42.297283, 39.022205, 23.621380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401188, 39.225395, 23.547096>,  <42.574364, 39.564041, 23.423292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401188, 39.225395, 23.547096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523303, -0.515632, -0.678438,
		0.733973, -0.131754, 0.666276,
		-0.432940, -0.846619, 0.309512,
		42.271305, 38.971409, 23.639950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130100, 38.994297, 23.360495>,  <42.574364, 39.564041, 23.423292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130100, 38.994297, 23.360495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769863, 38.821224, 23.343935>,  <42.553719, 38.717381, 23.334000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769863, 38.821224, 23.343935>,  <43.130100, 38.994297, 23.360495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769863, 38.821224, 23.343935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316126, -0.586653, -0.745588,
		0.298315, -0.684561, 0.665120,
		-0.900596, -0.432682, -0.041400,
		42.499683, 38.691422, 23.331514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216751, 38.374958, 23.354710>,  <43.130100, 38.994297, 23.360495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216751, 38.374958, 23.354710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847248, 38.392326, 23.202505>,  <42.625546, 38.402748, 23.111183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847248, 38.392326, 23.202505>,  <43.216751, 38.374958, 23.354710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847248, 38.392326, 23.202505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272147, -0.624635, -0.731961,
		-0.269462, -0.779708, 0.565194,
		-0.923756, 0.043420, -0.380511,
		42.570122, 38.405354, 23.088352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939209, 37.692196, 23.294281>,  <43.216751, 38.374958, 23.354710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939209, 37.692196, 23.294281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730637, 37.907841, 23.029716>,  <42.605492, 38.037228, 22.870977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.730637, 37.907841, 23.029716>,  <42.939209, 37.692196, 23.294281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730637, 37.907841, 23.029716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175272, -0.690930, -0.701353,
		-0.835098, -0.481634, 0.265781,
		-0.521432, 0.539114, -0.661411,
		42.574207, 38.069576, 22.831293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609009, 37.269592, 22.826078>,  <42.939209, 37.692196, 23.294281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609009, 37.269592, 22.826078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575008, 37.618542, 22.633524>,  <42.554607, 37.827911, 22.517990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575008, 37.618542, 22.633524>,  <42.609009, 37.269592, 22.826078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575008, 37.618542, 22.633524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039370, -0.479818, -0.876484,
		-0.995603, -0.093454, 0.006440,
		-0.085001, 0.872376, -0.481388,
		42.549507, 37.880253, 22.489107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156219, 37.094448, 22.306711>,  <42.609009, 37.269592, 22.826078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156219, 37.094448, 22.306711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361599, 37.424053, 22.210901>,  <42.484825, 37.621819, 22.153416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361599, 37.424053, 22.210901>,  <42.156219, 37.094448, 22.306711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361599, 37.424053, 22.210901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052959, -0.248168, -0.967268,
		-0.856487, 0.509323, -0.083781,
		0.513444, 0.824016, -0.239526,
		42.515633, 37.671257, 22.139044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900665, 37.270664, 21.710747>,  <42.156219, 37.094448, 22.306711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900665, 37.270664, 21.710747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228802, 37.499363, 21.715420>,  <42.425686, 37.636581, 21.718224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228802, 37.499363, 21.715420>,  <41.900665, 37.270664, 21.710747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228802, 37.499363, 21.715420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072762, -0.084094, -0.993798,
		-0.567222, 0.816106, -0.110588,
		0.820344, 0.571751, 0.011682,
		42.474903, 37.670887, 21.718924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799297, 37.820492, 21.320089>,  <41.900665, 37.270664, 21.710747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799297, 37.820492, 21.320089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.198730, 37.800686, 21.327967>,  <42.438389, 37.788803, 21.332693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.198730, 37.800686, 21.327967>,  <41.799297, 37.820492, 21.320089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198730, 37.800686, 21.327967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022768, 0.062273, -0.997800,
		0.048177, 0.996830, 0.063312,
		0.998579, -0.049513, 0.019696,
		42.498302, 37.785831, 21.333876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989483, 38.052559, 20.641157>,  <41.799297, 37.820492, 21.320089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989483, 38.052559, 20.641157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343563, 37.905109, 20.754673>,  <42.556011, 37.816639, 20.822783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343563, 37.905109, 20.754673>,  <41.989483, 38.052559, 20.641157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343563, 37.905109, 20.754673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267519, -0.095719, -0.958787,
		0.380596, 0.924637, 0.013884,
		0.885201, -0.368625, 0.283788,
		42.609123, 37.794521, 20.839809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426926, 38.336807, 20.071833>,  <41.989483, 38.052559, 20.641157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426926, 38.336807, 20.071833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634319, 38.041889, 20.245068>,  <42.758755, 37.864937, 20.349009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634319, 38.041889, 20.245068>,  <42.426926, 38.336807, 20.071833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634319, 38.041889, 20.245068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449088, -0.196212, -0.871677,
		0.727660, 0.646449, 0.229377,
		0.518488, -0.737295, 0.433088,
		42.789867, 37.820702, 20.374994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003578, 38.200962, 19.584066>,  <42.426926, 38.336807, 20.071833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003578, 38.200962, 19.584066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995193, 37.873135, 19.813108>,  <42.990162, 37.676437, 19.950533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995193, 37.873135, 19.813108>,  <43.003578, 38.200962, 19.584066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995193, 37.873135, 19.813108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245900, -0.559363, -0.791610,
		0.969068, 0.124211, 0.213255,
		-0.020960, -0.819564, 0.572604,
		42.988907, 37.627266, 19.984890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710926, 37.915791, 19.589888>,  <43.003578, 38.200962, 19.584066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710926, 37.915791, 19.589888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431622, 37.636574, 19.653353>,  <43.264038, 37.469044, 19.691433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431622, 37.636574, 19.653353>,  <43.710926, 37.915791, 19.589888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431622, 37.636574, 19.653353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307571, -0.492698, -0.814033,
		0.646401, -0.519605, 0.558727,
		-0.698259, -0.698040, 0.158665,
		43.222145, 37.427162, 19.700953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009331, 37.197552, 19.396626>,  <43.710926, 37.915791, 19.589888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009331, 37.197552, 19.396626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618259, 37.113716, 19.390633>,  <43.383617, 37.063416, 19.387037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618259, 37.113716, 19.390633>,  <44.009331, 37.197552, 19.396626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.618259, 37.113716, 19.390633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117261, -0.485049, -0.866590,
		0.174361, -0.849000, 0.498797,
		-0.977675, -0.209589, -0.014981,
		43.324959, 37.050838, 19.386139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895649, 36.576233, 19.016014>,  <44.009331, 37.197552, 19.396626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895649, 36.576233, 19.016014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.522846, 36.716423, 18.979088>,  <43.299164, 36.800537, 18.956932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.522846, 36.716423, 18.979088>,  <43.895649, 36.576233, 19.016014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522846, 36.716423, 18.979088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073090, -0.431242, -0.899271,
		-0.354980, -0.831384, 0.427539,
		-0.932012, 0.350472, -0.092317,
		43.243244, 36.821564, 18.951393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835865, 36.035007, 19.606249>,  <43.895649, 36.576233, 19.016014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835865, 36.035007, 19.606249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161133, 35.843117, 19.738081>,  <44.356293, 35.727982, 19.817181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161133, 35.843117, 19.738081>,  <43.835865, 36.035007, 19.606249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161133, 35.843117, 19.738081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447740, -0.153796, 0.880838,
		-0.371872, -0.863835, -0.339854,
		0.813167, -0.479725, 0.329581,
		44.405083, 35.699200, 19.836956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638680, 35.726463, 20.083586>,  <43.835865, 36.035007, 19.606249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638680, 35.726463, 20.083586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021969, 35.662666, 20.178553>,  <44.251942, 35.624386, 20.235533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021969, 35.662666, 20.178553>,  <43.638680, 35.726463, 20.083586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021969, 35.662666, 20.178553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268953, -0.220018, 0.937687,
		-0.097320, -0.962369, -0.253723,
		0.958224, -0.159496, 0.237420,
		44.309437, 35.614819, 20.249779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.656410, 35.156445, 20.477516>,  <43.638680, 35.726463, 20.083586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.656410, 35.156445, 20.477516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012306, 35.307438, 20.580179>,  <44.225842, 35.398033, 20.641777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012306, 35.307438, 20.580179>,  <43.656410, 35.156445, 20.477516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012306, 35.307438, 20.580179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164157, -0.260046, 0.951540,
		0.425938, -0.888752, -0.169405,
		0.889736, 0.377487, 0.256659,
		44.279228, 35.420685, 20.657177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912048, 34.685375, 20.807560>,  <43.656410, 35.156445, 20.477516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912048, 34.685375, 20.807560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140816, 34.988369, 20.933502>,  <44.278076, 35.170166, 21.009068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140816, 34.988369, 20.933502>,  <43.912048, 34.685375, 20.807560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140816, 34.988369, 20.933502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205487, -0.239294, 0.948954,
		0.794157, -0.607421, 0.018796,
		0.571917, 0.757481, 0.314855,
		44.312389, 35.215614, 21.027958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267422, 34.480408, 21.461323>,  <43.912048, 34.685375, 20.807560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267422, 34.480408, 21.461323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300285, 34.879021, 21.466452>,  <44.320004, 35.118191, 21.469528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300285, 34.879021, 21.466452>,  <44.267422, 34.480408, 21.461323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300285, 34.879021, 21.466452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154358, 0.000014, 0.988015,
		0.984593, -0.083155, 0.153824,
		0.082161, 0.996537, 0.012822,
		44.324932, 35.177982, 21.470299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795265, 34.645142, 21.917143>,  <44.267422, 34.480408, 21.461323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795265, 34.645142, 21.917143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569534, 34.975143, 21.905155>,  <44.434097, 35.173145, 21.897963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569534, 34.975143, 21.905155>,  <44.795265, 34.645142, 21.917143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569534, 34.975143, 21.905155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046072, 0.067721, 0.996640,
		0.824265, 0.561050, -0.076226,
		-0.564327, 0.825007, -0.029971,
		44.400238, 35.222645, 21.896164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.983074, 35.034092, 22.586441>,  <44.795265, 34.645142, 21.917143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.983074, 35.034092, 22.586441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.637775, 35.193172, 22.462090>,  <44.430595, 35.288620, 22.387480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.637775, 35.193172, 22.462090>,  <44.983074, 35.034092, 22.586441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.637775, 35.193172, 22.462090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252222, 0.193644, 0.948096,
		0.437260, 0.896847, -0.066853,
		-0.863242, 0.397703, -0.310877,
		44.378803, 35.312485, 22.368826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.927647, 35.741726, 22.933962>,  <44.983074, 35.034092, 22.586441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.927647, 35.741726, 22.933962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564201, 35.634735, 22.805662>,  <44.346134, 35.570541, 22.728683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564201, 35.634735, 22.805662>,  <44.927647, 35.741726, 22.933962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564201, 35.634735, 22.805662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376837, 0.193977, 0.905741,
		-0.180045, 0.943838, -0.277045,
		-0.908613, -0.267475, -0.320748,
		44.291618, 35.554493, 22.709438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453465, 36.149895, 23.323204>,  <44.927647, 35.741726, 22.933962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453465, 36.149895, 23.323204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210014, 35.863529, 23.186359>,  <44.063942, 35.691711, 23.104252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210014, 35.863529, 23.186359>,  <44.453465, 36.149895, 23.323204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210014, 35.863529, 23.186359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488075, -0.002150, 0.872799,
		-0.625582, 0.698188, -0.348110,
		-0.608629, -0.715912, -0.342113,
		44.027424, 35.648754, 23.083725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809902, 36.391293, 23.151937>,  <44.453465, 36.149895, 23.323204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809902, 36.391293, 23.151937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761677, 36.005497, 23.245943>,  <43.732742, 35.774021, 23.302347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761677, 36.005497, 23.245943>,  <43.809902, 36.391293, 23.151937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761677, 36.005497, 23.245943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507806, 0.263342, 0.820234,
		-0.852994, -0.020453, -0.521520,
		-0.120562, -0.964486, 0.235015,
		43.725510, 35.716152, 23.316448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179035, 36.408970, 23.346647>,  <43.809902, 36.391293, 23.151937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179035, 36.408970, 23.346647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285801, 36.053211, 23.495094>,  <43.349861, 35.839756, 23.584162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285801, 36.053211, 23.495094>,  <43.179035, 36.408970, 23.346647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285801, 36.053211, 23.495094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237846, 0.312382, 0.919699,
		-0.933910, -0.333745, -0.128162,
		0.266910, -0.889399, 0.371117,
		43.365875, 35.786392, 23.606430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631237, 36.301762, 23.823282>,  <43.179035, 36.408970, 23.346647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631237, 36.301762, 23.823282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945499, 36.073013, 23.917696>,  <43.134056, 35.935764, 23.974344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945499, 36.073013, 23.917696>,  <42.631237, 36.301762, 23.823282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945499, 36.073013, 23.917696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279109, 0.012857, 0.960173,
		-0.552130, -0.820243, -0.149513,
		0.785653, -0.571870, 0.236036,
		43.181194, 35.901451, 23.988506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391472, 35.664196, 24.232101>,  <42.631237, 36.301762, 23.823282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391472, 35.664196, 24.232101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779278, 35.738373, 24.296165>,  <43.011963, 35.782879, 24.334604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.779278, 35.738373, 24.296165>,  <42.391472, 35.664196, 24.232101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779278, 35.738373, 24.296165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175113, 0.067179, 0.982254,
		0.171392, -0.980356, 0.097605,
		0.969516, 0.185442, 0.160159,
		43.070133, 35.794006, 24.344213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477245, 35.263783, 24.791550>,  <42.391472, 35.664196, 24.232101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477245, 35.263783, 24.791550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788933, 35.511608, 24.753708>,  <42.975945, 35.660305, 24.731003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788933, 35.511608, 24.753708>,  <42.477245, 35.263783, 24.791550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788933, 35.511608, 24.753708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027779, 0.184941, 0.982357,
		0.626132, -0.762846, 0.161320,
		0.779222, 0.619567, -0.094607,
		43.022701, 35.697479, 24.725327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907482, 35.067677, 25.347971>,  <42.477245, 35.263783, 24.791550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907482, 35.067677, 25.347971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997334, 35.440098, 25.232948>,  <43.051243, 35.663551, 25.163935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997334, 35.440098, 25.232948>,  <42.907482, 35.067677, 25.347971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997334, 35.440098, 25.232948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081071, 0.311930, 0.946640,
		0.971066, -0.189328, 0.145549,
		0.224627, 0.931050, -0.287555,
		43.064720, 35.719414, 25.146681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313446, 35.389950, 25.787958>,  <42.907482, 35.067677, 25.347971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.313446, 35.389950, 25.787958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155762, 35.717186, 25.620470>,  <43.061150, 35.913528, 25.519978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155762, 35.717186, 25.620470>,  <43.313446, 35.389950, 25.787958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155762, 35.717186, 25.620470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157302, 0.388831, 0.907781,
		0.905458, 0.423723, -0.024595,
		-0.394211, 0.818089, -0.418722,
		43.037498, 35.962612, 25.494854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380726, 35.896172, 26.328579>,  <43.313446, 35.389950, 25.787958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380726, 35.896172, 26.328579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127834, 36.059032, 26.064909>,  <42.976097, 36.156750, 25.906708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127834, 36.059032, 26.064909>,  <43.380726, 35.896172, 26.328579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127834, 36.059032, 26.064909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498568, 0.437438, 0.748383,
		0.593054, 0.801794, -0.073569,
		-0.632231, 0.407153, -0.659174,
		42.938164, 36.181179, 25.867157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479568, 36.629982, 26.311687>,  <43.380726, 35.896172, 26.328579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479568, 36.629982, 26.311687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111073, 36.523548, 26.198187>,  <42.889977, 36.459690, 26.130087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111073, 36.523548, 26.198187>,  <43.479568, 36.629982, 26.311687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111073, 36.523548, 26.198187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377241, 0.433188, 0.818558,
		-0.094886, 0.861132, -0.499448,
		-0.921241, -0.266083, -0.283751,
		42.834702, 36.443722, 26.113062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082268, 37.287655, 26.307735>,  <43.479568, 36.629982, 26.311687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082268, 37.287655, 26.307735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805836, 37.000595, 26.342108>,  <42.639977, 36.828358, 26.362730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805836, 37.000595, 26.342108>,  <43.082268, 37.287655, 26.307735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805836, 37.000595, 26.342108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363136, 0.447546, 0.817212,
		-0.624928, 0.533558, -0.569896,
		-0.691084, -0.717648, 0.085930,
		42.598511, 36.785301, 26.367887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652184, 37.602375, 26.779224>,  <43.082268, 37.287655, 26.307735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652184, 37.602375, 26.779224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505699, 37.230473, 26.794392>,  <42.417809, 37.007332, 26.803492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505699, 37.230473, 26.794392>,  <42.652184, 37.602375, 26.779224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505699, 37.230473, 26.794392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441894, 0.209623, 0.872231,
		-0.818913, 0.302668, -0.487621,
		-0.366213, -0.929758, 0.037916,
		42.395836, 36.951546, 26.805767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953041, 37.686749, 26.921001>,  <42.652184, 37.602375, 26.779224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953041, 37.686749, 26.921001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037945, 37.314793, 27.041170>,  <42.088886, 37.091618, 27.113272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037945, 37.314793, 27.041170>,  <41.953041, 37.686749, 26.921001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037945, 37.314793, 27.041170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461038, 0.175774, 0.869797,
		-0.861622, -0.323126, -0.391405,
		0.212255, -0.929889, 0.300424,
		42.101620, 37.035828, 27.131298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340500, 37.351452, 27.155613>,  <41.953041, 37.686749, 26.921001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340500, 37.351452, 27.155613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643257, 37.163815, 27.337633>,  <41.824909, 37.051231, 27.446846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643257, 37.163815, 27.337633>,  <41.340500, 37.351452, 27.155613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643257, 37.163815, 27.337633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487331, 0.058834, 0.871233,
		-0.435461, -0.881187, -0.184073,
		0.756889, -0.469093, 0.455050,
		41.870323, 37.023087, 27.474148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987526, 37.026638, 27.697571>,  <41.340500, 37.351452, 27.155613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987526, 37.026638, 27.697571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370068, 37.004383, 27.812319>,  <41.599594, 36.991032, 27.881168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370068, 37.004383, 27.812319>,  <40.987526, 37.026638, 27.697571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370068, 37.004383, 27.812319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284212, 0.051079, 0.957400,
		-0.067924, -0.997143, 0.033036,
		0.956352, -0.055641, 0.286869,
		41.656975, 36.987690, 27.898380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986641, 36.517723, 28.161304>,  <40.987526, 37.026638, 27.697571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986641, 36.517723, 28.161304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301422, 36.748451, 28.248915>,  <41.490292, 36.886890, 28.301481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301422, 36.748451, 28.248915>,  <40.986641, 36.517723, 28.161304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301422, 36.748451, 28.248915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188816, -0.112809, 0.975512,
		0.587408, -0.809041, 0.020138,
		0.786957, 0.576825, 0.219024,
		41.537510, 36.921497, 28.314623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197330, 36.289894, 28.823183>,  <40.986641, 36.517723, 28.161304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197330, 36.289894, 28.823183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379929, 36.645782, 28.822094>,  <41.489487, 36.859314, 28.821442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379929, 36.645782, 28.822094>,  <41.197330, 36.289894, 28.823183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379929, 36.645782, 28.822094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085656, 0.046991, 0.995216,
		0.885592, -0.454081, 0.097661,
		0.456498, 0.889721, -0.002721,
		41.516876, 36.912697, 28.821278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589756, 36.334030, 29.425310>,  <41.197330, 36.289894, 28.823183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589756, 36.334030, 29.425310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548069, 36.716694, 29.316536>,  <41.523056, 36.946293, 29.251270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548069, 36.716694, 29.316536>,  <41.589756, 36.334030, 29.425310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548069, 36.716694, 29.316536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070846, 0.265590, 0.961480,
		0.992028, 0.119464, 0.040098,
		-0.104213, 0.956656, -0.271936,
		41.516804, 37.003689, 29.234955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072315, 36.680027, 29.887529>,  <41.589756, 36.334030, 29.425310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072315, 36.680027, 29.887529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845303, 36.959618, 29.713474>,  <41.709095, 37.127373, 29.609041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845303, 36.959618, 29.713474>,  <42.072315, 36.680027, 29.887529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845303, 36.959618, 29.713474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288048, 0.326544, 0.900221,
		0.771323, 0.636242, 0.016015,
		-0.567528, 0.698974, -0.435140,
		41.675045, 37.169312, 29.582932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221378, 37.266487, 30.244808>,  <42.072315, 36.680027, 29.887529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221378, 37.266487, 30.244808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862041, 37.306156, 30.073627>,  <41.646439, 37.329956, 29.970919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862041, 37.306156, 30.073627>,  <42.221378, 37.266487, 30.244808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862041, 37.306156, 30.073627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387883, 0.278231, 0.878712,
		0.206211, 0.955381, -0.211481,
		-0.898345, 0.099170, -0.427950,
		41.592537, 37.335907, 29.945242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055588, 37.832623, 30.580757>,  <42.221378, 37.266487, 30.244808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055588, 37.832623, 30.580757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736275, 37.643677, 30.431295>,  <41.544685, 37.530312, 30.341619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736275, 37.643677, 30.431295>,  <42.055588, 37.832623, 30.580757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736275, 37.643677, 30.431295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484544, 0.135225, 0.864252,
		-0.357711, 0.870971, -0.336827,
		-0.798285, -0.472360, -0.373652,
		41.496788, 37.501968, 30.319201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520039, 38.244946, 30.667696>,  <42.055588, 37.832623, 30.580757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520039, 38.244946, 30.667696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331142, 37.893932, 30.634436>,  <41.217804, 37.683323, 30.614479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331142, 37.893932, 30.634436>,  <41.520039, 38.244946, 30.667696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331142, 37.893932, 30.634436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539851, 0.213363, 0.814271,
		-0.696811, 0.429424, -0.574499,
		-0.472244, -0.877537, -0.083151,
		41.189468, 37.630672, 30.609489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744862, 38.414207, 30.875713>,  <41.520039, 38.244946, 30.667696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744862, 38.414207, 30.875713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826851, 38.023323, 30.897797>,  <40.876045, 37.788792, 30.911047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826851, 38.023323, 30.897797>,  <40.744862, 38.414207, 30.875713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826851, 38.023323, 30.897797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582545, -0.076474, 0.809193,
		-0.786529, -0.198021, -0.584944,
		0.204970, -0.977210, 0.055207,
		40.888344, 37.730160, 30.914358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126427, 38.002869, 30.888777>,  <40.744862, 38.414207, 30.875713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126427, 38.002869, 30.888777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381855, 37.734619, 31.039764>,  <40.535114, 37.573669, 31.130358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381855, 37.734619, 31.039764>,  <40.126427, 38.002869, 30.888777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381855, 37.734619, 31.039764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672524, -0.247884, 0.697327,
		-0.374076, -0.699153, -0.609304,
		0.638575, -0.670625, 0.377470,
		40.573429, 37.533432, 31.153006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697102, 37.410942, 31.027647>,  <40.126427, 38.002869, 30.888777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697102, 37.410942, 31.027647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027542, 37.340252, 31.241682>,  <40.225807, 37.297836, 31.370104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027542, 37.340252, 31.241682>,  <39.697102, 37.410942, 31.027647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027542, 37.340252, 31.241682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557678, -0.392728, 0.731273,
		0.080909, -0.902515, -0.422990,
		0.826105, -0.176725, 0.535088,
		40.275375, 37.287235, 31.402208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713493, 36.678532, 31.190187>,  <39.697102, 37.410942, 31.027647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713493, 36.678532, 31.190187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914635, 36.877644, 31.472847>,  <40.035320, 36.997112, 31.642443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914635, 36.877644, 31.472847>,  <39.713493, 36.678532, 31.190187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914635, 36.877644, 31.472847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595191, -0.393435, 0.700683,
		0.626807, -0.772931, 0.098435,
		0.502852, 0.497781, 0.706650,
		40.065491, 37.026978, 31.684841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814480, 36.173344, 31.737572>,  <39.713493, 36.678532, 31.190187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814480, 36.173344, 31.737572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875462, 36.533638, 31.900263>,  <39.912052, 36.749817, 31.997877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875462, 36.533638, 31.900263>,  <39.814480, 36.173344, 31.737572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875462, 36.533638, 31.900263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437386, -0.307550, 0.845048,
		0.886256, -0.306729, 0.347083,
		0.152455, 0.900739, 0.406727,
		39.921200, 36.803860, 32.022282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950741, 35.892231, 32.384525>,  <39.814480, 36.173344, 31.737572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950741, 35.892231, 32.384525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905441, 36.286919, 32.431103>,  <39.878262, 36.523731, 32.459049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905441, 36.286919, 32.431103>,  <39.950741, 35.892231, 32.384525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905441, 36.286919, 32.431103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296611, -0.145433, 0.943860,
		0.948260, 0.072352, 0.309142,
		-0.113250, 0.986719, 0.116448,
		39.871468, 36.582935, 32.466038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262970, 36.179123, 33.071148>,  <39.950741, 35.892231, 32.384525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262970, 36.179123, 33.071148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969513, 36.432129, 32.971790>,  <39.793438, 36.583931, 32.912174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969513, 36.432129, 32.971790>,  <40.262970, 36.179123, 33.071148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969513, 36.432129, 32.971790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409885, -0.120338, 0.904164,
		0.542004, 0.765145, 0.347542,
		-0.733639, 0.632513, -0.248398,
		39.749420, 36.621883, 32.897270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076473, 36.507793, 33.788170>,  <40.262970, 36.179123, 33.071148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076473, 36.507793, 33.788170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781334, 36.625641, 33.545261>,  <39.604252, 36.696350, 33.399517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781334, 36.625641, 33.545261>,  <40.076473, 36.507793, 33.788170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781334, 36.625641, 33.545261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667948, -0.189323, 0.719724,
		0.097076, 0.936672, 0.336484,
		-0.737849, 0.294622, -0.607270,
		39.559978, 36.714027, 33.363079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577595, 37.049873, 34.211555>,  <40.076473, 36.507793, 33.788170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577595, 37.049873, 34.211555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364994, 36.877682, 33.919750>,  <39.237434, 36.774368, 33.744667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364994, 36.877682, 33.919750>,  <39.577595, 37.049873, 34.211555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364994, 36.877682, 33.919750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686385, -0.285799, 0.668726,
		-0.496368, 0.856158, -0.143573,
		-0.531502, -0.430480, -0.729515,
		39.205544, 36.748539, 33.700897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847263, 37.215118, 34.281258>,  <39.577595, 37.049873, 34.211555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847263, 37.215118, 34.281258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846058, 36.885677, 34.054398>,  <38.845333, 36.688011, 33.918282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846058, 36.885677, 34.054398>,  <38.847263, 37.215118, 34.281258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846058, 36.885677, 34.054398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724154, -0.389334, 0.569228,
		-0.689632, 0.412423, -0.595244,
		-0.003014, -0.823606, -0.567155,
		38.845154, 36.638596, 33.884251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198238, 37.129032, 34.161709>,  <38.847263, 37.215118, 34.281258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198238, 37.129032, 34.161709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405830, 36.789581, 34.120743>,  <38.530384, 36.585911, 34.096165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405830, 36.789581, 34.120743>,  <38.198238, 37.129032, 34.161709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405830, 36.789581, 34.120743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683103, -0.483775, 0.547112,
		-0.513842, -0.213978, -0.830770,
		0.518977, -0.848631, -0.102415,
		38.561523, 36.534992, 34.090019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680355, 36.719063, 33.790188>,  <38.198238, 37.129032, 34.161709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680355, 36.719063, 33.790188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960590, 36.502300, 33.975883>,  <38.128731, 36.372242, 34.087299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960590, 36.502300, 33.975883>,  <37.680355, 36.719063, 33.790188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960590, 36.502300, 33.975883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672989, -0.285539, 0.682314,
		-0.237192, -0.790447, -0.564742,
		0.700589, -0.541905, 0.464235,
		38.170769, 36.339729, 34.115154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244610, 36.138210, 34.189312>,  <37.680355, 36.719063, 33.790188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244610, 36.138210, 34.189312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619221, 36.135403, 34.329525>,  <37.843987, 36.133717, 34.413654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619221, 36.135403, 34.329525>,  <37.244610, 36.138210, 34.189312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619221, 36.135403, 34.329525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345117, -0.194654, 0.918152,
		0.061787, -0.980847, -0.184721,
		0.936524, -0.007021, 0.350534,
		37.900177, 36.133297, 34.434685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295765, 35.548908, 34.618744>,  <37.244610, 36.138210, 34.189312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295765, 35.548908, 34.618744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603470, 35.787289, 34.710892>,  <37.788094, 35.930317, 34.766182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603470, 35.787289, 34.710892>,  <37.295765, 35.548908, 34.618744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603470, 35.787289, 34.710892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054120, -0.298484, 0.952879,
		0.636633, -0.745484, -0.197361,
		0.769265, 0.595953, 0.230370,
		37.834251, 35.966076, 34.780003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771282, 35.074711, 35.001278>,  <37.295765, 35.548908, 34.618744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771282, 35.074711, 35.001278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787083, 35.461372, 35.102493>,  <37.796562, 35.693367, 35.163223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787083, 35.461372, 35.102493>,  <37.771282, 35.074711, 35.001278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787083, 35.461372, 35.102493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097132, -0.248319, 0.963796,
		0.994487, -0.062645, 0.084085,
		0.039497, 0.966651, 0.253035,
		37.798931, 35.751366, 35.178402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296341, 35.196835, 35.586842>,  <37.771282, 35.074711, 35.001278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296341, 35.196835, 35.586842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999584, 35.464840, 35.576477>,  <37.821529, 35.625645, 35.570259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999584, 35.464840, 35.576477>,  <38.296341, 35.196835, 35.586842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999584, 35.464840, 35.576477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201588, -0.186033, 0.961641,
		0.639494, 0.718661, 0.273084,
		-0.741896, 0.670014, -0.025907,
		37.777016, 35.665844, 35.568707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174660, 35.136364, 36.292641>,  <38.296341, 35.196835, 35.586842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174660, 35.136364, 36.292641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911831, 35.414349, 36.175823>,  <37.754135, 35.581139, 36.105732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911831, 35.414349, 36.175823>,  <38.174660, 35.136364, 36.292641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911831, 35.414349, 36.175823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401288, 0.005498, 0.915935,
		0.638142, 0.719029, 0.275266,
		-0.657071, 0.694958, -0.292046,
		37.714710, 35.622837, 36.088211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081448, 35.606388, 36.841160>,  <38.174660, 35.136364, 36.292641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081448, 35.606388, 36.841160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758121, 35.694466, 36.622749>,  <37.564125, 35.747314, 36.491703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758121, 35.694466, 36.622749>,  <38.081448, 35.606388, 36.841160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758121, 35.694466, 36.622749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553502, 0.031897, 0.832237,
		0.200673, 0.974934, 0.096097,
		-0.808311, 0.220198, -0.546028,
		37.515629, 35.760525, 36.458942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854435, 36.323090, 36.989548>,  <38.081448, 35.606388, 36.841160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854435, 36.323090, 36.989548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526924, 36.137463, 36.854347>,  <37.330418, 36.026085, 36.773228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526924, 36.137463, 36.854347>,  <37.854435, 36.323090, 36.989548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526924, 36.137463, 36.854347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463672, 0.187363, 0.865970,
		-0.338540, 0.865758, -0.368584,
		-0.818779, -0.464068, -0.337998,
		37.281292, 35.998241, 36.752949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398426, 36.873051, 37.179585>,  <37.854435, 36.323090, 36.989548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398426, 36.873051, 37.179585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217312, 36.519314, 37.134106>,  <37.108643, 36.307072, 37.106819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217312, 36.519314, 37.134106>,  <37.398426, 36.873051, 37.179585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217312, 36.519314, 37.134106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341519, 0.054220, 0.938310,
		-0.823619, 0.463686, -0.326569,
		-0.452788, -0.884339, -0.113701,
		37.081474, 36.254013, 37.099995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694363, 36.906788, 37.479855>,  <37.398426, 36.873051, 37.179585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694363, 36.906788, 37.479855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747448, 36.511932, 37.444183>,  <36.779301, 36.275021, 37.422779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747448, 36.511932, 37.444183>,  <36.694363, 36.906788, 37.479855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747448, 36.511932, 37.444183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412773, -0.136845, 0.900495,
		-0.901114, -0.082696, -0.425623,
		0.132712, -0.987135, -0.089178,
		36.787262, 36.215794, 37.417431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178387, 36.500351, 37.875381>,  <36.694363, 36.906788, 37.479855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178387, 36.500351, 37.875381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465054, 36.222786, 37.847443>,  <36.637054, 36.056248, 37.830677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465054, 36.222786, 37.847443>,  <36.178387, 36.500351, 37.875381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465054, 36.222786, 37.847443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183404, -0.284149, 0.941075,
		-0.672870, -0.661625, -0.330906,
		0.716665, -0.693911, -0.069850,
		36.680054, 36.014614, 37.826488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890030, 35.860611, 38.196449>,  <36.178387, 36.500351, 37.875381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890030, 35.860611, 38.196449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289494, 35.862106, 38.217121>,  <36.529171, 35.863003, 38.229527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289494, 35.862106, 38.217121>,  <35.890030, 35.860611, 38.196449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289494, 35.862106, 38.217121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049436, -0.230175, 0.971893,
		0.015532, -0.973142, -0.229680,
		0.998657, 0.003741, 0.051684,
		36.589092, 35.863228, 38.232628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068607, 35.248920, 38.388290>,  <35.890030, 35.860611, 38.196449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068607, 35.248920, 38.388290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376446, 35.464256, 38.525650>,  <36.561150, 35.593456, 38.608067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376446, 35.464256, 38.525650>,  <36.068607, 35.248920, 38.388290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376446, 35.464256, 38.525650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245095, -0.247545, 0.937363,
		0.589623, -0.805552, -0.058565,
		0.769593, 0.538337, 0.343395,
		36.607323, 35.625759, 38.628670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486088, 34.875137, 38.852921>,  <36.068607, 35.248920, 38.388290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486088, 34.875137, 38.852921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551773, 35.253368, 38.965286>,  <36.591187, 35.480309, 39.032707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551773, 35.253368, 38.965286>,  <36.486088, 34.875137, 38.852921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551773, 35.253368, 38.965286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292061, -0.225407, 0.929458,
		0.942196, -0.234677, 0.239152,
		0.164216, 0.945578, 0.280917,
		36.601036, 35.537041, 39.049561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963558, 34.849545, 39.474796>,  <36.486088, 34.875137, 38.852921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963558, 34.849545, 39.474796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755711, 35.191055, 39.461773>,  <36.631001, 35.395962, 39.453957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755711, 35.191055, 39.461773>,  <36.963558, 34.849545, 39.474796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755711, 35.191055, 39.461773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226357, -0.100815, 0.968813,
		0.823869, 0.510783, 0.245644,
		-0.519618, 0.853778, -0.032561,
		36.599827, 35.447189, 39.452003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142303, 35.125355, 40.054005>,  <36.963558, 34.849545, 39.474796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142303, 35.125355, 40.054005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809578, 35.315136, 39.938778>,  <36.609943, 35.429005, 39.869640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809578, 35.315136, 39.938778>,  <37.142303, 35.125355, 40.054005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809578, 35.315136, 39.938778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364421, -0.075352, 0.928181,
		0.418670, 0.877051, 0.235579,
		-0.831813, 0.474452, -0.288068,
		36.560036, 35.457470, 39.852356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049126, 35.434940, 40.647877>,  <37.142303, 35.125355, 40.054005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049126, 35.434940, 40.647877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703838, 35.463207, 40.447929>,  <36.496666, 35.480167, 40.327961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703838, 35.463207, 40.447929>,  <37.049126, 35.434940, 40.647877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703838, 35.463207, 40.447929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504389, -0.162496, 0.848049,
		-0.021301, 0.984176, 0.175911,
		-0.863214, 0.070663, -0.499868,
		36.444874, 35.484406, 40.297970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603924, 35.965694, 40.898174>,  <37.049126, 35.434940, 40.647877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603924, 35.965694, 40.898174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356503, 35.715668, 40.707729>,  <36.208050, 35.565651, 40.593464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356503, 35.715668, 40.707729>,  <36.603924, 35.965694, 40.898174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356503, 35.715668, 40.707729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554400, -0.082199, 0.828181,
		-0.556807, 0.776229, -0.295694,
		-0.618552, -0.625070, -0.476110,
		36.170937, 35.528145, 40.564896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958237, 36.190678, 41.046631>,  <36.603924, 35.965694, 40.898174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958237, 36.190678, 41.046631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884033, 35.813213, 40.937023>,  <35.839512, 35.586735, 40.871258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884033, 35.813213, 40.937023>,  <35.958237, 36.190678, 41.046631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884033, 35.813213, 40.937023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680411, -0.077838, 0.728686,
		-0.708962, 0.321628, -0.627638,
		-0.185512, -0.943662, -0.274023,
		35.828381, 35.530113, 40.854816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293705, 36.239468, 41.122250>,  <35.958237, 36.190678, 41.046631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293705, 36.239468, 41.122250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410152, 35.856926, 41.132408>,  <35.480019, 35.627403, 41.138504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410152, 35.856926, 41.132408>,  <35.293705, 36.239468, 41.122250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410152, 35.856926, 41.132408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511880, -0.133280, 0.848655,
		-0.808227, -0.260057, -0.528336,
		0.291115, -0.956351, 0.025397,
		35.497486, 35.570023, 41.140026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493034, 35.985172, 41.872601>,  <35.293705, 36.239468, 41.122250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493034, 35.985172, 41.872601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124836, 35.840973, 41.812294>,  <34.903915, 35.754452, 41.776112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124836, 35.840973, 41.812294>,  <35.493034, 35.985172, 41.872601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124836, 35.840973, 41.812294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048575, 0.488406, -0.871264,
		0.387721, -0.794671, -0.467087,
		-0.920496, -0.360496, -0.150764,
		34.848686, 35.732822, 41.767063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254349, 35.301380, 41.859142>,  <35.493034, 35.985172, 41.872601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254349, 35.301380, 41.859142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045654, 35.001034, 41.697159>,  <34.920437, 34.820827, 41.599968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045654, 35.001034, 41.697159>,  <35.254349, 35.301380, 41.859142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045654, 35.001034, 41.697159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578390, 0.037597, -0.814894,
		0.627100, -0.659385, 0.414677,
		-0.521738, -0.750865, -0.404959,
		34.889133, 34.775776, 41.575672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766735, 34.805763, 41.506207>,  <35.254349, 35.301380, 41.859142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766735, 34.805763, 41.506207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415070, 34.808174, 41.315617>,  <35.204071, 34.809620, 41.201263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415070, 34.808174, 41.315617>,  <35.766735, 34.805763, 41.506207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415070, 34.808174, 41.315617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468568, 0.192759, -0.862141,
		0.086642, -0.981227, -0.172295,
		-0.879169, 0.006034, -0.476473,
		35.151318, 34.809982, 41.172676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018360, 34.550255, 40.914406>,  <35.766735, 34.805763, 41.506207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018360, 34.550255, 40.914406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685955, 34.766411, 40.861660>,  <35.486511, 34.896107, 40.830013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685955, 34.766411, 40.861660>,  <36.018360, 34.550255, 40.914406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685955, 34.766411, 40.861660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419146, 0.452487, -0.787129,
		-0.365690, -0.709389, -0.602527,
		-0.831016, 0.540392, -0.131868,
		35.436649, 34.928528, 40.822102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662254, 34.462250, 40.297016>,  <36.018360, 34.550255, 40.914406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662254, 34.462250, 40.297016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637947, 34.837109, 40.434460>,  <35.623363, 35.062023, 40.516926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637947, 34.837109, 40.434460>,  <35.662254, 34.462250, 40.297016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637947, 34.837109, 40.434460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495697, 0.327127, -0.804533,
		-0.866367, 0.121436, -0.484418,
		-0.060767, 0.937145, 0.343607,
		35.619717, 35.118252, 40.537540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339165, 34.883068, 39.849422>,  <35.662254, 34.462250, 40.297016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339165, 34.883068, 39.849422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600071, 35.089520, 40.071468>,  <35.756615, 35.213390, 40.204697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600071, 35.089520, 40.071468>,  <35.339165, 34.883068, 39.849422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600071, 35.089520, 40.071468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496092, 0.263026, -0.827472,
		-0.573095, 0.815123, -0.084485,
		0.652270, 0.516132, 0.555114,
		35.795753, 35.244358, 40.238003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314987, 35.546085, 39.603539>,  <35.339165, 34.883068, 39.849422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314987, 35.546085, 39.603539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659447, 35.531322, 39.806343>,  <35.866123, 35.522465, 39.928024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659447, 35.531322, 39.806343>,  <35.314987, 35.546085, 39.603539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659447, 35.531322, 39.806343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441323, 0.549278, -0.709596,
		-0.252303, 0.834824, 0.489298,
		0.861149, -0.036905, 0.507012,
		35.917789, 35.520252, 39.958447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566994, 36.199333, 39.536613>,  <35.314987, 35.546085, 39.603539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566994, 36.199333, 39.536613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878113, 35.970139, 39.639931>,  <36.064785, 35.832623, 39.701920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878113, 35.970139, 39.639931>,  <35.566994, 36.199333, 39.536613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878113, 35.970139, 39.639931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545134, 0.410474, -0.730986,
		0.312824, 0.709363, 0.631621,
		0.777798, -0.572988, 0.258291,
		36.111454, 35.798241, 39.717419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136456, 36.669487, 39.524975>,  <35.566994, 36.199333, 39.536613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136456, 36.669487, 39.524975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301239, 36.305344, 39.509266>,  <36.400108, 36.086857, 39.499840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301239, 36.305344, 39.509266>,  <36.136456, 36.669487, 39.524975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301239, 36.305344, 39.509266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571403, 0.291667, -0.767091,
		0.709782, 0.293565, 0.640334,
		0.411955, -0.910357, -0.039276,
		36.424824, 36.032238, 39.497482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826008, 36.747471, 39.367153>,  <36.136456, 36.669487, 39.524975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826008, 36.747471, 39.367153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776283, 36.359669, 39.282677>,  <36.746449, 36.126987, 39.231991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776283, 36.359669, 39.282677>,  <36.826008, 36.747471, 39.367153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776283, 36.359669, 39.282677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528136, 0.115535, -0.841264,
		0.840011, -0.216117, 0.497669,
		-0.124313, -0.969508, -0.211189,
		36.738991, 36.068817, 39.219318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488544, 36.418091, 39.198982>,  <36.826008, 36.747471, 39.367153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488544, 36.418091, 39.198982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201637, 36.203960, 39.020565>,  <37.029491, 36.075481, 38.913517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201637, 36.203960, 39.020565>,  <37.488544, 36.418091, 39.198982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201637, 36.203960, 39.020565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560751, -0.063477, -0.825547,
		0.413626, -0.842255, 0.345716,
		-0.717266, -0.535329, -0.446040,
		36.986458, 36.043362, 38.886753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847366, 35.879639, 38.847294>,  <37.488544, 36.418091, 39.198982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847366, 35.879639, 38.847294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477207, 35.905960, 38.697998>,  <37.255112, 35.921753, 38.608421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477207, 35.905960, 38.697998>,  <37.847366, 35.879639, 38.847294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477207, 35.905960, 38.697998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354384, -0.198849, -0.913713,
		-0.134343, -0.977819, 0.160695,
		-0.925399, 0.065803, -0.373237,
		37.199589, 35.925701, 38.586025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835117, 35.606995, 38.133907>,  <37.847366, 35.879639, 38.847294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835117, 35.606995, 38.133907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443584, 35.684864, 38.159164>,  <37.208664, 35.731586, 38.174320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443584, 35.684864, 38.159164>,  <37.835117, 35.606995, 38.133907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443584, 35.684864, 38.159164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085121, -0.106660, -0.990645,
		-0.186124, -0.975050, 0.120973,
		-0.978832, 0.194680, 0.063146,
		37.149933, 35.743267, 38.178108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601448, 35.212421, 37.706310>,  <37.835117, 35.606995, 38.133907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601448, 35.212421, 37.706310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250938, 35.405102, 37.710663>,  <37.040634, 35.520710, 37.713272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250938, 35.405102, 37.710663>,  <37.601448, 35.212421, 37.706310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250938, 35.405102, 37.710663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039581, 0.094469, -0.994741,
		-0.480191, -0.871231, -0.101846,
		-0.876271, 0.481697, 0.010879,
		36.988056, 35.549610, 37.713928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078133, 34.953861, 37.210758>,  <37.601448, 35.212421, 37.706310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078133, 34.953861, 37.210758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983070, 35.334030, 37.290974>,  <36.926033, 35.562130, 37.339104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983070, 35.334030, 37.290974>,  <37.078133, 34.953861, 37.210758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983070, 35.334030, 37.290974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004622, 0.207559, -0.978212,
		-0.971339, -0.231549, -0.053721,
		-0.237654, 0.950423, 0.200540,
		36.911774, 35.619156, 37.351135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441574, 35.047104, 36.854870>,  <37.078133, 34.953861, 37.210758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441574, 35.047104, 36.854870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619759, 35.396381, 36.933968>,  <36.726669, 35.605946, 36.981426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619759, 35.396381, 36.933968>,  <36.441574, 35.047104, 36.854870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619759, 35.396381, 36.933968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020230, 0.211001, -0.977277,
		-0.895074, 0.439338, 0.076328,
		0.445459, 0.873190, 0.197749,
		36.753395, 35.658337, 36.993294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288414, 35.354465, 36.287567>,  <36.441574, 35.047104, 36.854870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288414, 35.354465, 36.287567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587227, 35.565269, 36.449650>,  <36.766514, 35.691753, 36.546902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587227, 35.565269, 36.449650>,  <36.288414, 35.354465, 36.287567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587227, 35.565269, 36.449650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373254, 0.171880, -0.911668,
		-0.550109, 0.832294, -0.068310,
		0.747035, 0.527014, 0.405209,
		36.811337, 35.723373, 36.571213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376762, 35.917545, 35.898293>,  <36.288414, 35.354465, 36.287567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376762, 35.917545, 35.898293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730606, 35.869560, 36.078548>,  <36.942913, 35.840767, 36.186703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730606, 35.869560, 36.078548>,  <36.376762, 35.917545, 35.898293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730606, 35.869560, 36.078548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466320, 0.219027, -0.857072,
		0.004116, 0.968316, 0.249696,
		0.884606, -0.119966, 0.450644,
		36.995987, 35.833569, 36.213741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838085, 36.434998, 35.572411>,  <36.376762, 35.917545, 35.898293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838085, 36.434998, 35.572411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104065, 36.204922, 35.762993>,  <37.263653, 36.066875, 35.877342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104065, 36.204922, 35.762993>,  <36.838085, 36.434998, 35.572411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104065, 36.204922, 35.762993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670312, 0.178209, -0.720363,
		0.329435, 0.798375, 0.504054,
		0.664947, -0.575187, 0.476452,
		37.303551, 36.032364, 35.905930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414867, 36.857014, 35.759624>,  <36.838085, 36.434998, 35.572411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414867, 36.857014, 35.759624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567284, 36.489902, 35.714920>,  <37.658733, 36.269634, 35.688099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567284, 36.489902, 35.714920>,  <37.414867, 36.857014, 35.759624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567284, 36.489902, 35.714920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609532, 0.340258, -0.716028,
		0.695182, 0.204714, 0.689067,
		0.381042, -0.917778, -0.111761,
		37.681595, 36.214569, 35.681393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010735, 36.967480, 35.640430>,  <37.414867, 36.857014, 35.759624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010735, 36.967480, 35.640430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939922, 36.602188, 35.493637>,  <37.897434, 36.383015, 35.405560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939922, 36.602188, 35.493637>,  <38.010735, 36.967480, 35.640430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939922, 36.602188, 35.493637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481572, 0.244813, -0.841520,
		0.858340, -0.325705, 0.396444,
		-0.177033, -0.913227, -0.366983,
		37.886814, 36.328220, 35.383541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605972, 36.654911, 35.488544>,  <38.010735, 36.967480, 35.640430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605972, 36.654911, 35.488544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339832, 36.471279, 35.253071>,  <38.180149, 36.361099, 35.111786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339832, 36.471279, 35.253071>,  <38.605972, 36.654911, 35.488544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339832, 36.471279, 35.253071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560704, 0.213310, -0.800069,
		0.492871, -0.862405, 0.115484,
		-0.665350, -0.459083, -0.588687,
		38.140228, 36.333553, 35.076466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048721, 36.391830, 35.021461>,  <38.605972, 36.654911, 35.488544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048721, 36.391830, 35.021461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691277, 36.301338, 34.866402>,  <38.476810, 36.247044, 34.773365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691277, 36.301338, 34.866402>,  <39.048721, 36.391830, 35.021461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691277, 36.301338, 34.866402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436333, -0.235444, -0.868435,
		0.105200, -0.945190, 0.309109,
		-0.893614, -0.226234, -0.387649,
		38.423191, 36.233467, 34.750107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131435, 35.701389, 34.710663>,  <39.048721, 36.391830, 35.021461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131435, 35.701389, 34.710663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836807, 35.916061, 34.546009>,  <38.660030, 36.044865, 34.447216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836807, 35.916061, 34.546009>,  <39.131435, 35.701389, 34.710663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836807, 35.916061, 34.546009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431573, -0.095675, -0.896990,
		-0.520781, -0.838343, -0.161146,
		-0.736568, 0.536682, -0.411632,
		38.615837, 36.077065, 34.422520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128979, 35.433575, 33.962872>,  <39.131435, 35.701389, 34.710663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128979, 35.433575, 33.962872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940025, 35.785889, 33.975956>,  <38.826653, 35.997276, 33.983807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940025, 35.785889, 33.975956>,  <39.128979, 35.433575, 33.962872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940025, 35.785889, 33.975956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394028, 0.244234, -0.886054,
		-0.788411, -0.405670, -0.462427,
		-0.472386, 0.880784, 0.032712,
		38.798309, 36.050125, 33.985771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547348, 36.039806, 34.021275>,  <39.128979, 35.433575, 33.962872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547348, 36.039806, 34.021275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636307, 35.693180, 33.842564>,  <39.689682, 35.485207, 33.735336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636307, 35.693180, 33.842564>,  <39.547348, 36.039806, 34.021275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636307, 35.693180, 33.842564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974083, 0.216884, 0.064215,
		0.041252, -0.449477, 0.892339,
		0.222397, -0.866563, -0.446775,
		39.703026, 35.433212, 33.708530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150043, 35.955830, 34.397415>,  <39.547348, 36.039806, 34.021275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150043, 35.955830, 34.397415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144215, 35.739655, 34.060913>,  <40.140717, 35.609947, 33.859013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144215, 35.739655, 34.060913>,  <40.150043, 35.955830, 34.397415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144215, 35.739655, 34.060913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999379, 0.019135, -0.029603,
		0.032096, -0.841164, 0.539827,
		-0.014572, -0.540442, -0.841255,
		40.139843, 35.577522, 33.808537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563328, 35.390331, 34.446026>,  <40.150043, 35.955830, 34.397415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563328, 35.390331, 34.446026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548565, 35.473103, 34.054962>,  <40.539707, 35.522766, 33.820324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548565, 35.473103, 34.054962>,  <40.563328, 35.390331, 34.446026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548565, 35.473103, 34.054962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995132, 0.097075, -0.017015,
		0.091386, -0.973528, -0.209505,
		-0.036903, 0.206930, -0.977660,
		40.537495, 35.535183, 33.761665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266056, 35.314785, 34.248333>,  <40.563328, 35.390331, 34.446026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266056, 35.314785, 34.248333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095798, 35.426430, 33.904026>,  <40.993645, 35.493416, 33.697441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095798, 35.426430, 33.904026>,  <41.266056, 35.314785, 34.248333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095798, 35.426430, 33.904026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886563, -0.061860, -0.458454,
		-0.181208, -0.958263, -0.221123,
		-0.425641, 0.279115, -0.860770,
		40.968105, 35.510162, 33.645794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768402, 35.019821, 34.745403>,  <41.266056, 35.314785, 34.248333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768402, 35.019821, 34.745403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865192, 34.725220, 34.492737>,  <41.923267, 34.548458, 34.341137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865192, 34.725220, 34.492737>,  <41.768402, 35.019821, 34.745403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865192, 34.725220, 34.492737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931911, -0.004861, 0.362653,
		-0.270167, -0.676412, 0.685184,
		0.241972, -0.736508, -0.631669,
		41.937782, 34.504269, 34.303238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271580, 34.502853, 35.142307>,  <41.768402, 35.019821, 34.745403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271580, 34.502853, 35.142307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299313, 34.505642, 34.743279>,  <42.315952, 34.507317, 34.503860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299313, 34.505642, 34.743279>,  <42.271580, 34.502853, 35.142307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299313, 34.505642, 34.743279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997591, 0.001961, 0.069349,
		0.002440, -0.999974, -0.006823,
		0.069334, 0.006976, -0.997569,
		42.320114, 34.507732, 34.444008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641788, 33.918213, 34.868839>,  <42.271580, 34.502853, 35.142307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641788, 33.918213, 34.868839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671402, 34.228710, 34.618408>,  <42.689171, 34.415009, 34.468151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671402, 34.228710, 34.618408>,  <42.641788, 33.918213, 34.868839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671402, 34.228710, 34.618408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996954, -0.042161, 0.065618,
		0.024539, -0.629025, -0.776998,
		0.074035, 0.776241, -0.626075,
		42.693611, 34.461582, 34.430584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169044, 33.803810, 34.403118>,  <42.641788, 33.918213, 34.868839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169044, 33.803810, 34.403118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144196, 34.202854, 34.415165>,  <43.129288, 34.442280, 34.422394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144196, 34.202854, 34.415165>,  <43.169044, 33.803810, 34.403118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144196, 34.202854, 34.415165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978938, 0.066782, -0.192929,
		-0.194480, 0.017501, -0.980751,
		-0.062120, 0.997614, 0.030120,
		43.125561, 34.502140, 34.424202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472569, 34.078327, 33.744518>,  <43.169044, 33.803810, 34.403118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472569, 34.078327, 33.744518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486496, 34.327068, 34.057461>,  <43.494850, 34.476315, 34.245228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486496, 34.327068, 34.057461>,  <43.472569, 34.078327, 33.744518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486496, 34.327068, 34.057461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996314, 0.039810, -0.075981,
		-0.078395, 0.782119, -0.618177,
		0.034817, 0.621855, 0.782358,
		43.496941, 34.513626, 34.292168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.024113, 34.736687, 33.811832>,  <43.472569, 34.078327, 33.744518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.024113, 34.736687, 33.811832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947620, 34.599705, 34.179779>,  <43.901726, 34.517517, 34.400547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947620, 34.599705, 34.179779>,  <44.024113, 34.736687, 33.811832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947620, 34.599705, 34.179779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956905, 0.143627, 0.252396,
		-0.218552, 0.928492, 0.300230,
		-0.191226, -0.342453, 0.919869,
		43.890251, 34.496967, 34.455738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321350, 35.183010, 34.305878>,  <44.024113, 34.736687, 33.811832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321350, 35.183010, 34.305878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.323421, 34.800838, 34.423946>,  <44.324665, 34.571537, 34.494789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.323421, 34.800838, 34.423946>,  <44.321350, 35.183010, 34.305878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.323421, 34.800838, 34.423946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970524, 0.075923, 0.228731,
		-0.240947, 0.285288, 0.927661,
		0.005176, -0.955430, 0.295172,
		44.324974, 34.514210, 34.512497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.909115, 35.366734, 34.673061>,  <44.321350, 35.183010, 34.305878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.909115, 35.366734, 34.673061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878689, 34.969669, 34.635445>,  <44.860432, 34.731430, 34.612873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878689, 34.969669, 34.635445>,  <44.909115, 35.366734, 34.673061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878689, 34.969669, 34.635445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935060, -0.103766, 0.338962,
		-0.346232, -0.062150, 0.936088,
		-0.076068, -0.992658, -0.094041,
		44.855869, 34.671871, 34.607231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048134, 34.937538, 35.347408>,  <44.909115, 35.366734, 34.673061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048134, 34.937538, 35.347408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.168068, 34.747498, 35.016502>,  <45.240028, 34.633472, 34.817959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.168068, 34.747498, 35.016502>,  <45.048134, 34.937538, 35.347408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.168068, 34.747498, 35.016502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897749, -0.152824, 0.413149,
		-0.322716, -0.866557, 0.380702,
		0.299837, -0.475105, -0.827269,
		45.258018, 34.604965, 34.768322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.691040, 34.862186, 35.490250>,  <45.048134, 34.937538, 35.347408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.691040, 34.862186, 35.490250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676716, 34.682789, 35.133022>,  <45.668121, 34.575150, 34.918686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676716, 34.682789, 35.133022>,  <45.691040, 34.862186, 35.490250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676716, 34.682789, 35.133022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927110, -0.348516, 0.137854,
		-0.373075, -0.823035, 0.428285,
		-0.035806, -0.448497, -0.893067,
		45.665974, 34.548241, 34.865101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.081642, 34.202755, 35.455418>,  <45.691040, 34.862186, 35.490250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.081642, 34.202755, 35.455418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.036915, 34.363457, 35.091862>,  <46.010078, 34.459877, 34.873726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.036915, 34.363457, 35.091862>,  <46.081642, 34.202755, 35.455418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.036915, 34.363457, 35.091862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982365, -0.093231, -0.162073,
		-0.149851, -0.910988, -0.384247,
		-0.111823, 0.401757, -0.908893,
		46.003368, 34.483982, 34.819195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.403549, 33.715698, 35.049103>,  <46.081642, 34.202755, 35.455418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.403549, 33.715698, 35.049103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.405010, 34.060883, 34.846996>,  <46.405888, 34.267994, 34.725731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.405010, 34.060883, 34.846996>,  <46.403549, 33.715698, 35.049103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.405010, 34.060883, 34.846996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948261, -0.163396, -0.272217,
		-0.317470, -0.478130, -0.818904,
		0.003650, 0.862956, -0.505266,
		46.406105, 34.319771, 34.695415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.505753, 33.677780, 34.367916>,  <46.403549, 33.715698, 35.049103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.505753, 33.677780, 34.367916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.662025, 34.025059, 34.490295>,  <46.755791, 34.233425, 34.563725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.662025, 34.025059, 34.490295>,  <46.505753, 33.677780, 34.367916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.662025, 34.025059, 34.490295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883123, -0.259726, -0.390685,
		-0.259726, 0.422828, -0.868193,
		0.390685, 0.868193, 0.305951,
		46.779232, 34.285515, 34.582081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.773788, 34.122776, 33.824997>,  <46.505753, 33.677780, 34.367916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.773788, 34.122776, 33.824997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.969219, 34.132465, 34.173870>,  <47.086479, 34.138279, 34.383194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.969219, 34.132465, 34.173870>,  <46.773788, 34.122776, 33.824997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.969219, 34.132465, 34.173870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849902, -0.239342, -0.469449,
		0.197379, 0.970633, -0.137524,
		0.488578, 0.024223, 0.872184,
		47.115791, 34.139732, 34.435524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.391342, 34.514412, 33.711227>,  <46.773788, 34.122776, 33.824997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.391342, 34.514412, 33.711227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.462849, 34.289516, 34.034195>,  <47.505753, 34.154579, 34.227974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.462849, 34.289516, 34.034195>,  <47.391342, 34.514412, 33.711227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.462849, 34.289516, 34.034195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881138, -0.273641, -0.385638,
		0.437765, 0.780388, 0.446494,
		0.178768, -0.562242, 0.807420,
		47.516479, 34.120846, 34.276421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.706261, 35.086178, 34.110363>,  <47.391342, 34.514412, 33.711227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.706261, 35.086178, 34.110363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.443737, 35.070950, 34.411777>,  <47.286224, 35.061813, 34.592625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.443737, 35.070950, 34.411777>,  <47.706261, 35.086178, 34.110363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.443737, 35.070950, 34.411777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596029, -0.638518, 0.486871,
		0.462611, 0.768665, 0.441753,
		-0.656308, -0.038066, 0.753532,
		47.246845, 35.059528, 34.637836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.180321, 34.846893, 34.627747>,  <47.706261, 35.086178, 34.110363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.180321, 34.846893, 34.627747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.834614, 34.767761, 34.812744>,  <47.627190, 34.720284, 34.923744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.834614, 34.767761, 34.812744>,  <48.180321, 34.846893, 34.627747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.834614, 34.767761, 34.812744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439138, -0.745162, 0.501888,
		0.245344, 0.636865, 0.730896,
		-0.864271, -0.197829, 0.462492,
		47.575333, 34.708412, 34.951492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.326221, 32.739891, 23.842331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.929585, 32.787403, 23.821817>,  <39.691601, 32.815910, 23.809509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.929585, 32.787403, 23.821817>,  <40.326221, 32.739891, 23.842331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929585, 32.787403, 23.821817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036413, 0.124147, 0.991596,
		0.124147, 0.985129, -0.118778,
		-0.991596, 0.118778, -0.051284,
		39.632107, 32.823036, 23.806433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130322, 33.064022, 24.451986>,  <40.326221, 32.739891, 23.842331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130322, 33.064022, 24.451986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.767277, 32.972790, 24.311010>,  <39.549450, 32.918049, 24.226425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.767277, 32.972790, 24.311010>,  <40.130322, 33.064022, 24.451986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767277, 32.972790, 24.311010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373880, 0.057375, 0.925701,
		-0.190914, 0.971950, -0.137350,
		-0.907615, -0.228082, -0.352439,
		39.494991, 32.904366, 24.205278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659206, 33.554153, 24.682508>,  <40.130322, 33.064022, 24.451986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659206, 33.554153, 24.682508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.459293, 33.216141, 24.606470>,  <39.339344, 33.013332, 24.560846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.459293, 33.216141, 24.606470>,  <39.659206, 33.554153, 24.682508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459293, 33.216141, 24.606470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476417, 0.084910, 0.875110,
		-0.723354, 0.527933, -0.445024,
		-0.499787, -0.845030, -0.190096,
		39.309357, 32.962631, 24.549440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860134, 33.722511, 24.618111>,  <39.659206, 33.554153, 24.682508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860134, 33.722511, 24.618111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932331, 33.339127, 24.706442>,  <38.975651, 33.109097, 24.759441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932331, 33.339127, 24.706442>,  <38.860134, 33.722511, 24.618111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932331, 33.339127, 24.706442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487300, 0.107882, 0.866545,
		-0.854377, -0.264018, -0.447588,
		0.180497, -0.958465, 0.220828,
		38.986481, 33.051586, 24.772690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232006, 33.577972, 24.992434>,  <38.860134, 33.722511, 24.618111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232006, 33.577972, 24.992434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.481876, 33.274609, 25.066830>,  <38.631798, 33.092590, 25.111467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.481876, 33.274609, 25.066830>,  <38.232006, 33.577972, 24.992434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481876, 33.274609, 25.066830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482439, -0.187543, 0.855617,
		-0.614027, -0.624214, -0.483040,
		0.624678, -0.758410, 0.185989,
		38.669281, 33.047085, 25.122627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716835, 33.107513, 25.220798>,  <38.232006, 33.577972, 24.992434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716835, 33.107513, 25.220798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088470, 33.040310, 25.352594>,  <38.311451, 32.999989, 25.431671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088470, 33.040310, 25.352594>,  <37.716835, 33.107513, 25.220798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088470, 33.040310, 25.352594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323963, 0.060102, 0.944159,
		-0.178429, -0.983952, 0.001412,
		0.929092, -0.168008, 0.329488,
		38.367199, 32.989906, 25.451441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685482, 32.565968, 25.690218>,  <37.716835, 33.107513, 25.220798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685482, 32.565968, 25.690218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.012779, 32.780117, 25.773989>,  <38.209156, 32.908607, 25.824251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.012779, 32.780117, 25.773989>,  <37.685482, 32.565968, 25.690218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012779, 32.780117, 25.773989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338768, 0.154721, 0.928061,
		0.464455, -0.830324, 0.307966,
		0.818240, 0.535372, 0.209426,
		38.258251, 32.940727, 25.836817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959885, 32.246166, 26.328568>,  <37.685482, 32.565968, 25.690218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959885, 32.246166, 26.328568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.101799, 32.618359, 26.292068>,  <38.186947, 32.841675, 26.270168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.101799, 32.618359, 26.292068>,  <37.959885, 32.246166, 26.328568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101799, 32.618359, 26.292068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296007, 0.204366, 0.933067,
		0.886854, -0.304025, 0.347936,
		0.354782, 0.930486, -0.091249,
		38.208233, 32.897503, 26.264694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356922, 32.325943, 27.012409>,  <37.959885, 32.246166, 26.328568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356922, 32.325943, 27.012409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265003, 32.684689, 26.861242>,  <38.209850, 32.899937, 26.770542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265003, 32.684689, 26.861242>,  <38.356922, 32.325943, 27.012409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265003, 32.684689, 26.861242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178273, 0.342950, 0.922282,
		0.956772, 0.279310, 0.081078,
		-0.229797, 0.896868, -0.377918,
		38.196064, 32.953751, 26.747868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644730, 32.798386, 27.457226>,  <38.356922, 32.325943, 27.012409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644730, 32.798386, 27.457226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396877, 33.037479, 27.253746>,  <38.248165, 33.180935, 27.131659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396877, 33.037479, 27.253746>,  <38.644730, 32.798386, 27.457226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396877, 33.037479, 27.253746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166886, 0.532960, 0.829519,
		0.766949, 0.598888, -0.230483,
		-0.619628, 0.597734, -0.508699,
		38.210987, 33.216801, 27.101137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936569, 33.503258, 27.485212>,  <38.644730, 32.798386, 27.457226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936569, 33.503258, 27.485212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.542316, 33.517292, 27.419117>,  <38.305767, 33.525711, 27.379459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.542316, 33.517292, 27.419117>,  <38.936569, 33.503258, 27.485212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542316, 33.517292, 27.419117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115762, 0.572113, 0.811965,
		0.123020, 0.819425, -0.559830,
		-0.985629, 0.035081, -0.165239,
		38.246628, 33.527817, 27.369545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807842, 34.317181, 27.597216>,  <38.936569, 33.503258, 27.485212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807842, 34.317181, 27.597216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.461582, 34.117950, 27.617485>,  <38.253826, 33.998413, 27.629646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.461582, 34.117950, 27.617485>,  <38.807842, 34.317181, 27.597216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461582, 34.117950, 27.617485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157459, 0.366938, 0.916822,
		-0.475237, 0.785672, -0.396067,
		-0.865654, -0.498072, 0.050672,
		38.201885, 33.968529, 27.632687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312393, 34.848465, 27.825430>,  <38.807842, 34.317181, 27.597216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312393, 34.848465, 27.825430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.162071, 34.492207, 27.927814>,  <38.071880, 34.278450, 27.989246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.162071, 34.492207, 27.927814>,  <38.312393, 34.848465, 27.825430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162071, 34.492207, 27.927814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212228, 0.351585, 0.911783,
		-0.902071, 0.288327, -0.321147,
		-0.375802, -0.890649, 0.255963,
		38.049332, 34.225014, 28.004604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808922, 34.949932, 28.379545>,  <38.312393, 34.848465, 27.825430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808922, 34.949932, 28.379545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864212, 34.556068, 28.422148>,  <37.897388, 34.319752, 28.447710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864212, 34.556068, 28.422148>,  <37.808922, 34.949932, 28.379545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864212, 34.556068, 28.422148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302012, 0.060511, 0.951382,
		-0.943229, -0.163675, -0.289014,
		0.138229, -0.984657, 0.106508,
		37.905682, 34.260670, 28.454100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266640, 34.772415, 28.689976>,  <37.808922, 34.949932, 28.379545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266640, 34.772415, 28.689976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.536366, 34.485523, 28.760258>,  <37.698200, 34.313389, 28.802427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.536366, 34.485523, 28.760258>,  <37.266640, 34.772415, 28.689976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536366, 34.485523, 28.760258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319854, -0.069228, 0.944935,
		-0.665573, -0.693387, -0.276091,
		0.674319, -0.717232, 0.175706,
		37.738663, 34.270355, 28.812969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942516, 34.345894, 29.144871>,  <37.266640, 34.772415, 28.689976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942516, 34.345894, 29.144871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.335510, 34.292618, 29.197004>,  <37.571308, 34.260651, 29.228285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.335510, 34.292618, 29.197004>,  <36.942516, 34.345894, 29.144871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335510, 34.292618, 29.197004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154863, -0.194542, 0.968592,
		-0.103653, -0.971810, -0.211760,
		0.982483, -0.133191, 0.130333,
		37.630257, 34.252663, 29.236105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901970, 33.762249, 29.516315>,  <36.942516, 34.345894, 29.144871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901970, 33.762249, 29.516315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278427, 33.867451, 29.601244>,  <37.504303, 33.930573, 29.652201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278427, 33.867451, 29.601244>,  <36.901970, 33.762249, 29.516315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278427, 33.867451, 29.601244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057854, -0.493545, 0.867794,
		0.333022, -0.829001, -0.449281,
		0.941142, 0.263002, 0.212323,
		37.560768, 33.946350, 29.664940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149803, 33.133030, 29.788336>,  <36.901970, 33.762249, 29.516315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149803, 33.133030, 29.788336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430450, 33.390839, 29.909876>,  <37.598839, 33.545525, 29.982800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430450, 33.390839, 29.909876>,  <37.149803, 33.133030, 29.788336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430450, 33.390839, 29.909876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035113, -0.457181, 0.888680,
		0.711688, -0.612844, -0.343398,
		0.701618, 0.644521, 0.303852,
		37.640934, 33.584194, 30.001032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789272, 32.718906, 30.002428>,  <37.149803, 33.133030, 29.788336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789272, 32.718906, 30.002428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.746471, 33.070957, 30.187437>,  <37.720791, 33.282188, 30.298443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.746471, 33.070957, 30.187437>,  <37.789272, 32.718906, 30.002428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746471, 33.070957, 30.187437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005098, -0.465675, 0.884941,
		0.994246, 0.092334, 0.054316,
		-0.107003, 0.880126, 0.462525,
		37.714371, 33.334995, 30.326195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266834, 32.641705, 30.629932>,  <37.789272, 32.718906, 30.002428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266834, 32.641705, 30.629932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.043598, 32.962280, 30.715937>,  <37.909657, 33.154625, 30.767540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.043598, 32.962280, 30.715937>,  <38.266834, 32.641705, 30.629932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043598, 32.962280, 30.715937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141840, -0.347445, 0.926910,
		0.817566, 0.486804, 0.307583,
		-0.558092, 0.801438, 0.215011,
		37.876171, 33.202713, 30.780439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465378, 32.869705, 31.246025>,  <38.266834, 32.641705, 30.629932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465378, 32.869705, 31.246025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.094261, 33.017822, 31.227747>,  <37.871593, 33.106693, 31.216780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.094261, 33.017822, 31.227747>,  <38.465378, 32.869705, 31.246025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094261, 33.017822, 31.227747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190194, -0.364022, 0.911764,
		0.320989, 0.854616, 0.408163,
		-0.927789, 0.370297, -0.045696,
		37.815926, 33.128910, 31.214039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435760, 33.294495, 31.725428>,  <38.465378, 32.869705, 31.246025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435760, 33.294495, 31.725428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045319, 33.209538, 31.707064>,  <37.811054, 33.158562, 31.696045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045319, 33.209538, 31.707064>,  <38.435760, 33.294495, 31.725428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045319, 33.209538, 31.707064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008373, -0.174355, 0.984647,
		-0.217140, 0.961503, 0.168411,
		-0.976105, -0.212396, -0.045910,
		37.752487, 33.145821, 31.693291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715549, 34.028851, 31.737125>,  <38.435760, 33.294495, 31.725428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715549, 34.028851, 31.737125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.047695, 34.171524, 31.908367>,  <39.246983, 34.257126, 32.011112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.047695, 34.171524, 31.908367>,  <38.715549, 34.028851, 31.737125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047695, 34.171524, 31.908367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296109, 0.368382, -0.881257,
		-0.472033, 0.858531, 0.200275,
		0.830364, 0.356679, 0.428107,
		39.296803, 34.278526, 32.036800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874138, 34.630989, 31.393681>,  <38.715549, 34.028851, 31.737125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874138, 34.630989, 31.393681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.226982, 34.533562, 31.554951>,  <39.438690, 34.475105, 31.651712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.226982, 34.533562, 31.554951>,  <38.874138, 34.630989, 31.393681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226982, 34.533562, 31.554951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463561, 0.296984, -0.834812,
		0.083597, 0.923296, 0.374882,
		0.882113, -0.243568, 0.403177,
		39.491615, 34.460491, 31.675903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459637, 35.227577, 31.297894>,  <38.874138, 34.630989, 31.393681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459637, 35.227577, 31.297894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.656212, 34.883869, 31.354664>,  <39.774158, 34.677643, 31.388727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.656212, 34.883869, 31.354664>,  <39.459637, 35.227577, 31.297894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656212, 34.883869, 31.354664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536465, 0.170294, -0.826562,
		0.686070, 0.482344, 0.544657,
		0.491439, -0.859270, 0.141928,
		39.803642, 34.626087, 31.397242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162056, 35.321735, 31.162018>,  <39.459637, 35.227577, 31.297894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162056, 35.321735, 31.162018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.127636, 34.924259, 31.133236>,  <40.106983, 34.685776, 31.115967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.127636, 34.924259, 31.133236>,  <40.162056, 35.321735, 31.162018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127636, 34.924259, 31.133236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705334, -0.009755, -0.708808,
		0.703632, -0.111749, 0.701722,
		-0.086054, -0.993688, -0.071957,
		40.101818, 34.626152, 31.111649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778130, 35.175777, 30.937754>,  <40.162056, 35.321735, 31.162018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778130, 35.175777, 30.937754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.553493, 34.856972, 30.848852>,  <40.418713, 34.665688, 30.795511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.553493, 34.856972, 30.848852>,  <40.778130, 35.175777, 30.937754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553493, 34.856972, 30.848852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552594, -0.161349, -0.817683,
		0.615841, -0.582015, 0.531035,
		-0.561586, -0.797010, -0.222253,
		40.385017, 34.617870, 30.782177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216934, 34.545536, 30.791088>,  <40.778130, 35.175777, 30.937754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216934, 34.545536, 30.791088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.870209, 34.427521, 30.630295>,  <40.662174, 34.356712, 30.533819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.870209, 34.427521, 30.630295>,  <41.216934, 34.545536, 30.791088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870209, 34.427521, 30.630295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449521, -0.113477, -0.886032,
		0.215799, -0.948723, 0.230990,
		-0.866811, -0.295040, -0.401983,
		40.610165, 34.339008, 30.509701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382458, 33.948990, 30.439741>,  <41.216934, 34.545536, 30.791088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382458, 33.948990, 30.439741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.050625, 34.105534, 30.280424>,  <40.851524, 34.199459, 30.184834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.050625, 34.105534, 30.280424>,  <41.382458, 33.948990, 30.439741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050625, 34.105534, 30.280424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326019, -0.239621, -0.914491,
		-0.453333, -0.888493, 0.071194,
		-0.829579, 0.391359, -0.398293,
		40.801750, 34.222942, 30.160936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117565, 33.424519, 30.016695>,  <41.382458, 33.948990, 30.439741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117565, 33.424519, 30.016695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.948082, 33.766468, 29.896917>,  <40.846390, 33.971638, 29.825050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.948082, 33.766468, 29.896917>,  <41.117565, 33.424519, 30.016695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948082, 33.766468, 29.896917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160304, -0.254599, -0.953668,
		-0.891499, -0.452082, -0.029163,
		-0.423711, 0.854869, -0.299445,
		40.820969, 34.022930, 29.807083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647507, 33.279083, 29.479246>,  <41.117565, 33.424519, 30.016695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647507, 33.279083, 29.479246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.740185, 33.662643, 29.413729>,  <40.795792, 33.892780, 29.374418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.740185, 33.662643, 29.413729>,  <40.647507, 33.279083, 29.479246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740185, 33.662643, 29.413729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307651, -0.231964, -0.922791,
		-0.922859, 0.163414, -0.348751,
		0.231695, 0.958900, -0.163796,
		40.809692, 33.950314, 29.364590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343773, 33.340786, 28.854328>,  <40.647507, 33.279083, 29.479246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343773, 33.340786, 28.854328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.613468, 33.633656, 28.892941>,  <40.775284, 33.809380, 28.916109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.613468, 33.633656, 28.892941>,  <40.343773, 33.340786, 28.854328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613468, 33.633656, 28.892941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195867, -0.051254, -0.979290,
		-0.712067, 0.679183, -0.177966,
		0.674238, 0.732177, 0.096533,
		40.815739, 33.853310, 28.921900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228390, 33.984352, 28.381676>,  <40.343773, 33.340786, 28.854328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228390, 33.984352, 28.381676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.622250, 33.959988, 28.447104>,  <40.858566, 33.945370, 28.486361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.622250, 33.959988, 28.447104>,  <40.228390, 33.984352, 28.381676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622250, 33.959988, 28.447104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164411, 0.009027, -0.986351,
		0.058606, 0.998102, 0.018904,
		0.984649, -0.060914, 0.163570,
		40.917645, 33.941715, 28.496174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427525, 34.374302, 27.811806>,  <40.228390, 33.984352, 28.381676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427525, 34.374302, 27.811806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.728703, 34.155598, 27.958296>,  <40.909409, 34.024376, 28.046190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.728703, 34.155598, 27.958296>,  <40.427525, 34.374302, 27.811806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728703, 34.155598, 27.958296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266587, -0.255380, -0.929361,
		0.601663, 0.797394, -0.046529,
		0.752949, -0.546758, 0.366227,
		40.954586, 33.991570, 28.068165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942886, 34.475067, 27.287628>,  <40.427525, 34.374302, 27.811806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942886, 34.475067, 27.287628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.056507, 34.147381, 27.486908>,  <41.124680, 33.950768, 27.606476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.056507, 34.147381, 27.486908>,  <40.942886, 34.475067, 27.287628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056507, 34.147381, 27.486908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399025, -0.371467, -0.838327,
		0.871835, 0.436919, 0.221373,
		0.284048, -0.819215, 0.498199,
		41.141720, 33.901615, 27.636368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584976, 34.351753, 27.043791>,  <40.942886, 34.475067, 27.287628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584976, 34.351753, 27.043791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.480972, 34.006752, 27.217445>,  <41.418568, 33.799751, 27.321638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.480972, 34.006752, 27.217445>,  <41.584976, 34.351753, 27.043791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480972, 34.006752, 27.217445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461007, -0.505934, -0.729043,
		0.848449, 0.010580, 0.529171,
		-0.260012, -0.862507, 0.434137,
		41.402969, 33.748001, 27.347687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155834, 33.946186, 27.007864>,  <41.584976, 34.351753, 27.043791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155834, 33.946186, 27.007864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.868813, 33.675686, 27.074562>,  <41.696598, 33.513386, 27.114580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.868813, 33.675686, 27.074562>,  <42.155834, 33.946186, 27.007864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868813, 33.675686, 27.074562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349955, -0.557038, -0.753154,
		0.602202, -0.482076, 0.636361,
		-0.717555, -0.676248, 0.166744,
		41.653545, 33.472813, 27.124586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501534, 33.238132, 27.056419>,  <42.155834, 33.946186, 27.007864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501534, 33.238132, 27.056419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.124508, 33.200069, 26.928345>,  <41.898293, 33.177231, 26.851500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.124508, 33.200069, 26.928345>,  <42.501534, 33.238132, 27.056419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124508, 33.200069, 26.928345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312751, -0.588063, -0.745901,
		-0.117309, -0.803198, 0.584048,
		-0.942563, -0.095161, -0.320186,
		41.841740, 33.171520, 26.832289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435719, 32.453911, 26.707119>,  <42.501534, 33.238132, 27.056419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435719, 32.453911, 26.707119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.127209, 32.669224, 26.571241>,  <41.942104, 32.798412, 26.489716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.127209, 32.669224, 26.571241>,  <42.435719, 32.453911, 26.707119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127209, 32.669224, 26.571241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110326, -0.412550, -0.904229,
		-0.626870, -0.734885, 0.258802,
		-0.771273, 0.538281, -0.339692,
		41.895828, 32.830708, 26.469334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910812, 31.971825, 26.375282>,  <42.435719, 32.453911, 26.707119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910812, 31.971825, 26.375282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.884861, 32.331013, 26.201185>,  <41.869289, 32.546528, 26.096727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.884861, 32.331013, 26.201185>,  <41.910812, 31.971825, 26.375282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884861, 32.331013, 26.201185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057823, -0.438811, -0.896717,
		-0.996216, -0.033013, 0.080393,
		-0.064881, 0.897973, -0.435242,
		41.865398, 32.600403, 26.070612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.969959, 32.032322, 25.577669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.237293, 32.329155, 25.557074>,  <41.397694, 32.507256, 25.544716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.237293, 32.329155, 25.557074>,  <40.969959, 32.032322, 25.577669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237293, 32.329155, 25.557074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177484, 0.091862, -0.979827,
		-0.722379, 0.663988, 0.193101,
		0.668332, 0.742079, -0.051488,
		41.437794, 32.551777, 25.541628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820332, 32.317123, 25.102142>,  <40.969959, 32.032322, 25.577669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820332, 32.317123, 25.102142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.170815, 32.502083, 25.156469>,  <41.381104, 32.613060, 25.189066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.170815, 32.502083, 25.156469>,  <40.820332, 32.317123, 25.102142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170815, 32.502083, 25.156469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019914, 0.316314, -0.948446,
		-0.481519, 0.828332, 0.286365,
		0.876209, 0.462397, 0.135816,
		41.433678, 32.640800, 25.197214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693928, 33.014187, 25.005806>,  <40.820332, 32.317123, 25.102142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693928, 33.014187, 25.005806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.070847, 32.911804, 24.919483>,  <41.296997, 32.850376, 24.867689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.070847, 32.911804, 24.919483>,  <40.693928, 33.014187, 25.005806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070847, 32.911804, 24.919483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153886, 0.241341, -0.958161,
		0.297328, 0.936078, 0.188026,
		0.942292, -0.255954, -0.215807,
		41.353535, 32.835018, 24.854740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836277, 33.473942, 24.472490>,  <40.693928, 33.014187, 25.005806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836277, 33.473942, 24.472490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.135231, 33.208294, 24.464909>,  <41.314606, 33.048904, 24.460360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.135231, 33.208294, 24.464909>,  <40.836277, 33.473942, 24.472490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135231, 33.208294, 24.464909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054650, 0.089886, -0.994452,
		0.662138, 0.742204, 0.103473,
		0.747387, -0.664119, -0.018955,
		41.359447, 33.009060, 24.459223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487808, 33.789127, 24.182981>,  <40.836277, 33.473942, 24.472490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487808, 33.789127, 24.182981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.529945, 33.396229, 24.120892>,  <41.555229, 33.160488, 24.083637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.529945, 33.396229, 24.120892>,  <41.487808, 33.789127, 24.182981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529945, 33.396229, 24.120892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317949, 0.181170, -0.930637,
		0.942237, 0.048683, 0.331389,
		0.105344, -0.982246, -0.155227,
		41.561550, 33.101555, 24.074324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951290, 33.759941, 23.660227>,  <41.487808, 33.789127, 24.182981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951290, 33.759941, 23.660227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.835831, 33.377289, 23.675875>,  <41.766556, 33.147697, 23.685263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.835831, 33.377289, 23.675875>,  <41.951290, 33.759941, 23.660227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835831, 33.377289, 23.675875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196517, -0.099184, -0.975471,
		0.937050, -0.273883, 0.216624,
		-0.288651, -0.956635, 0.039118,
		41.749237, 33.090298, 23.687611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397957, 33.422531, 23.315735>,  <41.951290, 33.759941, 23.660227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397957, 33.422531, 23.315735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.110855, 33.144146, 23.307135>,  <41.938595, 32.977116, 23.301973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.110855, 33.144146, 23.307135>,  <42.397957, 33.422531, 23.315735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110855, 33.144146, 23.307135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271422, -0.251217, -0.929096,
		0.641215, -0.672700, 0.369212,
		-0.717756, -0.695963, -0.021502,
		41.895527, 32.935356, 23.300684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786045, 32.715389, 23.216661>,  <42.397957, 33.422531, 23.315735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786045, 32.715389, 23.216661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.407017, 32.700764, 23.089687>,  <42.179600, 32.691990, 23.013502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.407017, 32.700764, 23.089687>,  <42.786045, 32.715389, 23.216661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407017, 32.700764, 23.089687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316790, -0.237410, -0.918303,
		-0.041788, -0.970721, 0.236546,
		-0.947575, -0.036562, -0.317435,
		42.122746, 32.689796, 22.994457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708313, 32.065723, 22.829090>,  <42.786045, 32.715389, 23.216661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708313, 32.065723, 22.829090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.439297, 32.338116, 22.713194>,  <42.277885, 32.501553, 22.643656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.439297, 32.338116, 22.713194>,  <42.708313, 32.065723, 22.829090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439297, 32.338116, 22.713194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259465, -0.149687, -0.954082,
		-0.693082, -0.716839, -0.076020,
		-0.672544, 0.680981, -0.289740,
		42.237534, 32.542412, 22.626272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446552, 31.748455, 22.204508>,  <42.708313, 32.065723, 22.829090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446552, 31.748455, 22.204508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.334412, 32.131489, 22.177862>,  <42.267128, 32.361309, 22.161875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.334412, 32.131489, 22.177862>,  <42.446552, 31.748455, 22.204508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334412, 32.131489, 22.177862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241637, 0.003242, -0.970361,
		-0.928987, -0.288134, -0.232297,
		-0.280347, 0.957585, -0.066612,
		42.250309, 32.418766, 22.157879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264980, 31.820856, 21.465078>,  <42.446552, 31.748455, 22.204508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264980, 31.820856, 21.465078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.325443, 32.189499, 21.608072>,  <42.361721, 32.410683, 21.693869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.325443, 32.189499, 21.608072>,  <42.264980, 31.820856, 21.465078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325443, 32.189499, 21.608072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319267, 0.296743, -0.900007,
		-0.935532, 0.250175, -0.249384,
		0.151157, 0.921605, 0.357486,
		42.370789, 32.465981, 21.715319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116997, 32.254341, 20.872347>,  <42.264980, 31.820856, 21.465078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116997, 32.254341, 20.872347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.344791, 32.480350, 21.111153>,  <42.481468, 32.615955, 21.254436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.344791, 32.480350, 21.111153>,  <42.116997, 32.254341, 20.872347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344791, 32.480350, 21.111153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513940, 0.322076, -0.795067,
		-0.641518, 0.759613, -0.106971,
		0.569491, 0.565027, 0.597013,
		42.515640, 32.649860, 21.290257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045670, 32.922077, 20.534422>,  <42.116997, 32.254341, 20.872347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045670, 32.922077, 20.534422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.373257, 32.921570, 20.763956>,  <42.569809, 32.921265, 20.901676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.373257, 32.921570, 20.763956>,  <42.045670, 32.922077, 20.534422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373257, 32.921570, 20.763956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516338, 0.437934, -0.735940,
		-0.250371, 0.899006, 0.359308,
		0.818968, -0.001267, 0.573837,
		42.618946, 32.921188, 20.936108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339897, 33.586212, 20.435335>,  <42.045670, 32.922077, 20.534422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339897, 33.586212, 20.435335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.637432, 33.356091, 20.571417>,  <42.815952, 33.218018, 20.653067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.637432, 33.356091, 20.571417>,  <42.339897, 33.586212, 20.435335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637432, 33.356091, 20.571417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601372, 0.353972, -0.716279,
		0.291652, 0.737383, 0.609266,
		0.743835, -0.575300, 0.340205,
		42.860584, 33.183502, 20.673479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922886, 34.050400, 20.439323>,  <42.339897, 33.586212, 20.435335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922886, 34.050400, 20.439323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.043709, 33.669197, 20.429945>,  <43.116203, 33.440475, 20.424318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.043709, 33.669197, 20.429945>,  <42.922886, 34.050400, 20.439323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043709, 33.669197, 20.429945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578198, 0.202702, -0.790316,
		0.757925, 0.225163, 0.612251,
		0.302055, -0.953002, -0.023444,
		43.134327, 33.383297, 20.422913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612514, 34.085884, 20.230560>,  <42.922886, 34.050400, 20.439323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612514, 34.085884, 20.230560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.533096, 33.697327, 20.178436>,  <43.485447, 33.464191, 20.147161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.533096, 33.697327, 20.178436>,  <43.612514, 34.085884, 20.230560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533096, 33.697327, 20.178436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505239, 0.012490, -0.862889,
		0.839830, -0.237160, 0.488304,
		-0.198544, -0.971390, -0.130312,
		43.473534, 33.405910, 20.139343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238091, 33.809212, 19.954102>,  <43.612514, 34.085884, 20.230560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238091, 33.809212, 19.954102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.943192, 33.565350, 19.837631>,  <43.766251, 33.419033, 19.767750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.943192, 33.565350, 19.837631>,  <44.238091, 33.809212, 19.954102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943192, 33.565350, 19.837631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420658, -0.076967, -0.903948,
		0.528689, -0.788919, 0.313202,
		-0.737248, -0.609658, -0.291174,
		43.722015, 33.382454, 19.750278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.536873, 33.401020, 19.499475>,  <44.238091, 33.809212, 19.954102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.536873, 33.401020, 19.499475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.155178, 33.333927, 19.400448>,  <43.926159, 33.293671, 19.341030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.155178, 33.333927, 19.400448>,  <44.536873, 33.401020, 19.499475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.155178, 33.333927, 19.400448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255271, -0.025661, -0.966529,
		0.155770, -0.985498, 0.067305,
		-0.954240, -0.167737, -0.247571,
		43.868908, 33.283607, 19.326176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681118, 33.131817, 18.928749>,  <44.536873, 33.401020, 19.499475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681118, 33.131817, 18.928749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.287663, 33.189247, 18.885235>,  <44.051590, 33.223705, 18.859125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.287663, 33.189247, 18.885235>,  <44.681118, 33.131817, 18.928749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287663, 33.189247, 18.885235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137259, 0.206303, -0.968813,
		-0.116654, -0.967897, -0.222636,
		-0.983642, 0.143575, -0.108786,
		43.992569, 33.232319, 18.852598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.369617, 32.701283, 18.303740>,  <44.681118, 33.131817, 18.928749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.369617, 32.701283, 18.303740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.142803, 33.023582, 18.372129>,  <44.006714, 33.216965, 18.413164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.142803, 33.023582, 18.372129>,  <44.369617, 32.701283, 18.303740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142803, 33.023582, 18.372129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155996, 0.308866, -0.938226,
		-0.808788, -0.505334, -0.300832,
		-0.567034, 0.805754, 0.170977,
		43.972694, 33.265308, 18.423422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959805, 32.811440, 17.775747>,  <44.369617, 32.701283, 18.303740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959805, 32.811440, 17.775747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.948463, 33.178417, 17.934490>,  <43.941658, 33.398605, 18.029736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.948463, 33.178417, 17.934490>,  <43.959805, 32.811440, 17.775747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.948463, 33.178417, 17.934490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034070, 0.395898, -0.917662,
		-0.999017, -0.039539, 0.020033,
		-0.028353, 0.917443, 0.396857,
		43.939957, 33.453651, 18.053547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343040, 33.247631, 17.599426>,  <43.959805, 32.811440, 17.775747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343040, 33.247631, 17.599426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.654514, 33.487556, 17.673054>,  <43.841396, 33.631512, 17.717230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.654514, 33.487556, 17.673054>,  <43.343040, 33.247631, 17.599426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654514, 33.487556, 17.673054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147560, 0.460223, -0.875455,
		-0.609820, 0.654540, 0.446876,
		0.778682, 0.599810, 0.184069,
		43.888119, 33.667500, 17.728275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255898, 33.968987, 17.575838>,  <43.343040, 33.247631, 17.599426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255898, 33.968987, 17.575838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.642014, 33.953785, 17.472477>,  <43.873684, 33.944664, 17.410461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.642014, 33.953785, 17.472477>,  <43.255898, 33.968987, 17.575838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642014, 33.953785, 17.472477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196068, 0.548179, -0.813054,
		0.172548, 0.835497, 0.521701,
		0.965290, -0.038002, -0.258402,
		43.931599, 33.942383, 17.394957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371407, 34.405239, 16.983593>,  <43.255898, 33.968987, 17.575838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371407, 34.405239, 16.983593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.703499, 34.182274, 16.984688>,  <43.902752, 34.048492, 16.985344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.703499, 34.182274, 16.984688>,  <43.371407, 34.405239, 16.983593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703499, 34.182274, 16.984688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021376, 0.026929, -0.999409,
		0.557014, 0.829796, 0.034273,
		0.830228, -0.557417, 0.002738,
		43.952568, 34.015049, 16.985510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675854, 34.498985, 16.892696>,  <43.371407, 34.405239, 16.983593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675854, 34.498985, 16.892696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.349129, 34.353413, 16.713644>,  <42.153095, 34.266071, 16.606213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.349129, 34.353413, 16.713644>,  <42.675854, 34.498985, 16.892696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349129, 34.353413, 16.713644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270435, -0.443840, 0.854325,
		-0.509588, 0.818879, 0.264116,
		-0.816814, -0.363928, -0.447629,
		42.104084, 34.244236, 16.579355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175957, 34.569935, 17.319195>,  <42.675854, 34.498985, 16.892696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175957, 34.569935, 17.319195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.983822, 34.330330, 17.062927>,  <41.868542, 34.186565, 16.909166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.983822, 34.330330, 17.062927>,  <42.175957, 34.569935, 17.319195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983822, 34.330330, 17.062927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463168, -0.447060, 0.765253,
		-0.744817, 0.664316, -0.062706,
		-0.480337, -0.599017, -0.640668,
		41.839722, 34.150623, 16.870728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495907, 34.710682, 17.456802>,  <42.175957, 34.569935, 17.319195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495907, 34.710682, 17.456802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.513737, 34.358128, 17.268690>,  <41.524433, 34.146595, 17.155823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.513737, 34.358128, 17.268690>,  <41.495907, 34.710682, 17.456802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513737, 34.358128, 17.268690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654749, -0.381323, 0.652607,
		-0.754531, 0.278826, -0.594087,
		0.044575, -0.881390, -0.470281,
		41.527111, 34.093712, 17.127605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902538, 34.484966, 17.530407>,  <41.495907, 34.710682, 17.456802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902538, 34.484966, 17.530407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.072407, 34.137299, 17.429054>,  <41.174328, 33.928699, 17.368242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.072407, 34.137299, 17.429054>,  <40.902538, 34.484966, 17.530407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072407, 34.137299, 17.429054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570844, -0.474297, 0.670208,
		-0.702701, -0.139979, -0.697580,
		0.424675, -0.869165, -0.253383,
		41.199810, 33.876549, 17.353039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429413, 34.096859, 17.290958>,  <40.902538, 34.484966, 17.530407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429413, 34.096859, 17.290958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.718231, 33.863438, 17.439615>,  <40.891521, 33.723385, 17.528809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.718231, 33.863438, 17.439615>,  <40.429413, 34.096859, 17.290958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718231, 33.863438, 17.439615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640871, -0.361782, 0.677052,
		-0.260638, -0.727039, -0.635202,
		0.722047, -0.583548, 0.371644,
		40.934845, 33.688374, 17.551107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228508, 33.342159, 17.386036>,  <40.429413, 34.096859, 17.290958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228508, 33.342159, 17.386036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535736, 33.373039, 17.640312>,  <40.720074, 33.391567, 17.792877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535736, 33.373039, 17.640312>,  <40.228508, 33.342159, 17.386036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535736, 33.373039, 17.640312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564657, -0.386572, 0.729195,
		0.302035, -0.919023, -0.253323,
		0.768074, 0.077202, 0.635690,
		40.766159, 33.396198, 17.831018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205711, 32.730938, 17.820295>,  <40.228508, 33.342159, 17.386036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205711, 32.730938, 17.820295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.432873, 33.002098, 18.007030>,  <40.569172, 33.164795, 18.119072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.432873, 33.002098, 18.007030>,  <40.205711, 32.730938, 17.820295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432873, 33.002098, 18.007030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444746, -0.224520, 0.867060,
		0.692593, -0.700032, 0.173986,
		0.567905, 0.677899, 0.466837,
		40.603245, 33.205467, 18.147081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181828, 32.455605, 18.475605>,  <40.205711, 32.730938, 17.820295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181828, 32.455605, 18.475605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.357075, 32.810230, 18.535015>,  <40.462223, 33.023006, 18.570662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.357075, 32.810230, 18.535015>,  <40.181828, 32.455605, 18.475605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357075, 32.810230, 18.535015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366809, 0.025478, 0.929947,
		0.820672, -0.461908, 0.336361,
		0.438120, 0.886562, 0.148523,
		40.488510, 33.076199, 18.579573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605175, 32.361748, 19.106455>,  <40.181828, 32.455605, 18.475605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605175, 32.361748, 19.106455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.511044, 32.744961, 19.040970>,  <40.454563, 32.974888, 19.001678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.511044, 32.744961, 19.040970>,  <40.605175, 32.361748, 19.106455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511044, 32.744961, 19.040970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238963, 0.106239, 0.965199,
		0.942081, 0.266259, 0.203933,
		-0.235327, 0.958029, -0.163712,
		40.440445, 33.032368, 18.991856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917824, 32.766106, 19.628420>,  <40.605175, 32.361748, 19.106455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917824, 32.766106, 19.628420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.631371, 33.022324, 19.517534>,  <40.459499, 33.176056, 19.451002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.631371, 33.022324, 19.517534>,  <40.917824, 32.766106, 19.628420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631371, 33.022324, 19.517534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379558, -0.024089, 0.924854,
		0.585735, 0.767541, 0.260376,
		-0.716136, 0.640547, -0.277216,
		40.416531, 33.214489, 19.434370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067783, 33.274994, 20.091799>,  <40.917824, 32.766106, 19.628420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067783, 33.274994, 20.091799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.688477, 33.297714, 19.966856>,  <40.460892, 33.311348, 19.891891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.688477, 33.297714, 19.966856>,  <41.067783, 33.274994, 20.091799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688477, 33.297714, 19.966856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313205, -0.006511, 0.949663,
		0.051908, 0.998364, 0.023965,
		-0.948266, 0.056801, -0.312355,
		40.403996, 33.314754, 19.873150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826736, 33.844669, 20.498247>,  <41.067783, 33.274994, 20.091799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826736, 33.844669, 20.498247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.539803, 33.589424, 20.386356>,  <40.367641, 33.436275, 20.319221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.539803, 33.589424, 20.386356>,  <40.826736, 33.844669, 20.498247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539803, 33.589424, 20.386356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310826, -0.066228, 0.948157,
		-0.623558, 0.767088, -0.150835,
		-0.717330, -0.638114, -0.279728,
		40.324604, 33.397991, 20.302439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277428, 33.978840, 20.933533>,  <40.826736, 33.844669, 20.498247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277428, 33.978840, 20.933533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.108753, 33.658386, 20.763651>,  <40.007549, 33.466114, 20.661722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.108753, 33.658386, 20.763651>,  <40.277428, 33.978840, 20.933533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108753, 33.658386, 20.763651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451516, -0.220665, 0.864546,
		-0.786331, 0.556326, -0.268672,
		-0.421683, -0.801129, -0.424706,
		39.982246, 33.418049, 20.636240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548618, 34.048534, 21.139957>,  <40.277428, 33.978840, 20.933533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548618, 34.048534, 21.139957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.612614, 33.665562, 21.043846>,  <39.651009, 33.435780, 20.986179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.612614, 33.665562, 21.043846>,  <39.548618, 34.048534, 21.139957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612614, 33.665562, 21.043846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242978, -0.274118, 0.930495,
		-0.956748, -0.090483, -0.276489,
		0.159985, -0.957430, -0.240276,
		39.660610, 33.378334, 20.971764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081219, 33.784428, 21.558912>,  <39.548618, 34.048534, 21.139957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081219, 33.784428, 21.558912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.307350, 33.471066, 21.455624>,  <39.443031, 33.283051, 21.393650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.307350, 33.471066, 21.455624>,  <39.081219, 33.784428, 21.558912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307350, 33.471066, 21.455624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109492, -0.381547, 0.917841,
		-0.817564, -0.490612, -0.301478,
		0.565332, -0.783404, -0.258221,
		39.476952, 33.236046, 21.378157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648735, 33.179142, 21.756613>,  <39.081219, 33.784428, 21.558912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648735, 33.179142, 21.756613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.029736, 33.057362, 21.759590>,  <39.258335, 32.984295, 21.761377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.029736, 33.057362, 21.759590>,  <38.648735, 33.179142, 21.756613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029736, 33.057362, 21.759590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056846, -0.153725, 0.986477,
		-0.299187, -0.940043, -0.163729,
		0.952500, -0.304448, 0.007446,
		39.315487, 32.966026, 21.761824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745518, 32.474392, 22.056055>,  <38.648735, 33.179142, 21.756613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745518, 32.474392, 22.056055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.096382, 32.660961, 22.101732>,  <39.306900, 32.772903, 22.129139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.096382, 32.660961, 22.101732>,  <38.745518, 32.474392, 22.056055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096382, 32.660961, 22.101732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022960, -0.196798, 0.980175,
		0.479647, -0.862393, -0.161915,
		0.877161, 0.466421, 0.114194,
		39.359531, 32.800888, 22.135990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252296, 32.013252, 22.356716>,  <38.745518, 32.474392, 22.056055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252296, 32.013252, 22.356716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.367882, 32.382900, 22.456717>,  <39.437233, 32.604691, 22.516716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.367882, 32.382900, 22.456717>,  <39.252296, 32.013252, 22.356716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367882, 32.382900, 22.456717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030624, -0.269931, 0.962393,
		0.956850, -0.270441, -0.106301,
		0.288965, 0.924121, 0.250002,
		39.454571, 32.660137, 22.531717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558037, 31.806417, 22.875624>,  <39.252296, 32.013252, 22.356716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558037, 31.806417, 22.875624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.543465, 32.203777, 22.919123>,  <39.534721, 32.442192, 22.945223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.543465, 32.203777, 22.919123>,  <39.558037, 31.806417, 22.875624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543465, 32.203777, 22.919123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001921, -0.108890, 0.994052,
		0.999334, 0.036007, 0.005875,
		-0.036433, 0.993402, 0.108749,
		39.532536, 32.501797, 22.951748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870552, 31.975920, 23.444838>,  <39.558037, 31.806417, 22.875624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870552, 31.975920, 23.444838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.638229, 32.296227, 23.386263>,  <39.498837, 32.488411, 23.351118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.638229, 32.296227, 23.386263>,  <39.870552, 31.975920, 23.444838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638229, 32.296227, 23.386263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270497, -0.020180, 0.962509,
		0.767789, 0.598638, 0.228325,
		-0.580802, 0.800765, -0.146436,
		39.463989, 32.536457, 23.342333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.006500, 33.445797, 28.563395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.681362, 33.620201, 28.408903>,  <41.486279, 33.724842, 28.316208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.681362, 33.620201, 28.408903>,  <42.006500, 33.445797, 28.563395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681362, 33.620201, 28.408903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123213, 0.519371, 0.845620,
		0.569293, 0.734950, -0.368449,
		-0.812850, 0.436007, -0.386229,
		41.437508, 33.751003, 28.293034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095531, 34.050797, 28.888960>,  <42.006500, 33.445797, 28.563395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095531, 34.050797, 28.888960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.723251, 34.004910, 28.750031>,  <41.499882, 33.977379, 28.666674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.723251, 34.004910, 28.750031>,  <42.095531, 34.050797, 28.888960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723251, 34.004910, 28.750031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365220, 0.343764, 0.865125,
		0.020156, 0.932023, -0.361838,
		-0.930703, -0.114713, -0.347323,
		41.444042, 33.970497, 28.645834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722504, 34.703171, 29.180014>,  <42.095531, 34.050797, 28.888960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722504, 34.703171, 29.180014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.438957, 34.445553, 29.064972>,  <41.268829, 34.290981, 28.995947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.438957, 34.445553, 29.064972>,  <41.722504, 34.703171, 29.180014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438957, 34.445553, 29.064972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597875, 0.332290, 0.729471,
		-0.374246, 0.689047, -0.620608,
		-0.708862, -0.644047, -0.287606,
		41.226299, 34.252338, 28.978689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043705, 35.154720, 29.132950>,  <41.722504, 34.703171, 29.180014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043705, 35.154720, 29.132950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.958248, 34.770729, 29.205400>,  <40.906975, 34.540337, 29.248871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.958248, 34.770729, 29.205400>,  <41.043705, 35.154720, 29.132950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958248, 34.770729, 29.205400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601777, 0.275375, 0.749688,
		-0.769559, 0.051168, -0.636522,
		-0.213643, -0.959974, 0.181125,
		40.894154, 34.482738, 29.259739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352020, 35.137085, 29.442694>,  <41.043705, 35.154720, 29.132950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352020, 35.137085, 29.442694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.497242, 34.780525, 29.551210>,  <40.584377, 34.566589, 29.616322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.497242, 34.780525, 29.551210>,  <40.352020, 35.137085, 29.442694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497242, 34.780525, 29.551210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561330, 0.023153, 0.827268,
		-0.743706, -0.452631, -0.491962,
		0.363057, -0.891397, 0.271294,
		40.606159, 34.513107, 29.632599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744061, 34.734703, 29.606750>,  <40.352020, 35.137085, 29.442694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744061, 34.734703, 29.606750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.070847, 34.585266, 29.782476>,  <40.266918, 34.495605, 29.887911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.070847, 34.585266, 29.782476>,  <39.744061, 34.734703, 29.606750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070847, 34.585266, 29.782476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536281, -0.212052, 0.816968,
		-0.212052, -0.903031, -0.373588,
		-0.816968, 0.373588, -0.439313,
		40.315937, 34.473190, 29.914270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523384, 33.975224, 29.906347>,  <39.744061, 34.734703, 29.606750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523384, 33.975224, 29.906347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850204, 34.124588, 30.082073>,  <40.046295, 34.214207, 30.187510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850204, 34.124588, 30.082073>,  <39.523384, 33.975224, 29.906347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850204, 34.124588, 30.082073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342767, -0.298105, 0.890867,
		0.463620, -0.878464, -0.115574,
		0.817048, 0.373409, 0.439316,
		40.095318, 34.236610, 30.213867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821274, 33.489227, 30.468388>,  <39.523384, 33.975224, 29.906347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821274, 33.489227, 30.468388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.970535, 33.847164, 30.566378>,  <40.060093, 34.061928, 30.625172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.970535, 33.847164, 30.566378>,  <39.821274, 33.489227, 30.468388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970535, 33.847164, 30.566378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336688, -0.115433, 0.934514,
		0.864521, -0.431198, 0.258208,
		0.373155, 0.894843, 0.244974,
		40.082481, 34.115616, 30.639870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004738, 33.356007, 31.049398>,  <39.821274, 33.489227, 30.468388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004738, 33.356007, 31.049398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.035797, 33.754707, 31.058014>,  <40.054432, 33.993927, 31.063183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.035797, 33.754707, 31.058014>,  <40.004738, 33.356007, 31.049398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035797, 33.754707, 31.058014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244754, -0.001884, 0.969583,
		0.966471, -0.080558, 0.243812,
		0.077649, 0.996748, 0.021538,
		40.059093, 34.053730, 31.064476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380054, 33.503330, 31.611599>,  <40.004738, 33.356007, 31.049398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380054, 33.503330, 31.611599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186356, 33.844131, 31.532007>,  <40.070137, 34.048611, 31.484253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186356, 33.844131, 31.532007>,  <40.380054, 33.503330, 31.611599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186356, 33.844131, 31.532007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381040, -0.000648, 0.924558,
		0.787597, 0.523537, 0.324961,
		-0.484251, 0.852003, -0.198979,
		40.041080, 34.099731, 31.472313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542694, 33.931770, 32.218819>,  <40.380054, 33.503330, 31.611599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542694, 33.931770, 32.218819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.231190, 34.115494, 32.047905>,  <40.044289, 34.225727, 31.945358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.231190, 34.115494, 32.047905>,  <40.542694, 33.931770, 32.218819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231190, 34.115494, 32.047905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380093, 0.196381, 0.903860,
		0.499061, 0.866296, 0.021647,
		-0.778760, 0.459310, -0.427280,
		39.997562, 34.253288, 31.919722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443417, 34.573475, 32.557156>,  <40.542694, 33.931770, 32.218819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443417, 34.573475, 32.557156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.087780, 34.470528, 32.405746>,  <39.874397, 34.408760, 32.314899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.087780, 34.470528, 32.405746>,  <40.443417, 34.573475, 32.557156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087780, 34.470528, 32.405746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380970, -0.042333, 0.923618,
		-0.253733, 0.965386, -0.060412,
		-0.889090, -0.257367, -0.378525,
		39.821053, 34.393318, 32.292191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976341, 34.876637, 32.957626>,  <40.443417, 34.573475, 32.557156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976341, 34.876637, 32.957626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.778187, 34.567844, 32.798313>,  <39.659294, 34.382568, 32.702724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.778187, 34.567844, 32.798313>,  <39.976341, 34.876637, 32.957626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778187, 34.567844, 32.798313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555884, -0.070603, 0.828257,
		-0.667519, 0.631712, -0.394156,
		-0.495391, -0.771981, -0.398287,
		39.629570, 34.336250, 32.678825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211258, 34.931000, 33.060230>,  <39.976341, 34.876637, 32.957626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211258, 34.931000, 33.060230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.317841, 34.545830, 33.077095>,  <39.381790, 34.314728, 33.087212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.317841, 34.545830, 33.077095>,  <39.211258, 34.931000, 33.060230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317841, 34.545830, 33.077095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716668, -0.168688, 0.676706,
		-0.644504, -0.210529, -0.735046,
		0.266460, -0.962923, 0.042159,
		39.397778, 34.256954, 33.089745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902821, 35.561790, 33.176483>,  <39.211258, 34.931000, 33.060230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902821, 35.561790, 33.176483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.862545, 35.893719, 33.396030>,  <38.838379, 36.092876, 33.527760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.862545, 35.893719, 33.396030>,  <38.902821, 35.561790, 33.176483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862545, 35.893719, 33.396030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322283, 0.549127, -0.771098,
		-0.941274, 0.099250, -0.322729,
		-0.100687, 0.829824, 0.548866,
		38.832340, 36.142666, 33.560692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566902, 36.140736, 32.726166>,  <38.902821, 35.561790, 33.176483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566902, 36.140736, 32.726166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.765209, 36.318256, 33.024765>,  <38.884193, 36.424767, 33.203922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.765209, 36.318256, 33.024765>,  <38.566902, 36.140736, 32.726166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765209, 36.318256, 33.024765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457010, 0.597603, -0.658796,
		-0.738480, 0.667768, 0.093453,
		0.495771, 0.443799, 0.746494,
		38.913940, 36.451397, 33.248714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482430, 36.838894, 32.671440>,  <38.566902, 36.140736, 32.726166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482430, 36.838894, 32.671440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.827415, 36.798210, 32.869755>,  <39.034409, 36.773800, 32.988743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.827415, 36.798210, 32.869755>,  <38.482430, 36.838894, 32.671440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827415, 36.798210, 32.869755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441989, 0.628603, -0.639925,
		-0.246563, 0.771047, 0.587106,
		0.862469, -0.101712, 0.495785,
		39.086155, 36.767696, 33.018490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869728, 37.513123, 32.648151>,  <38.482430, 36.838894, 32.671440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869728, 37.513123, 32.648151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.139484, 37.224724, 32.711853>,  <39.301338, 37.051685, 32.750072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.139484, 37.224724, 32.711853>,  <38.869728, 37.513123, 32.648151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139484, 37.224724, 32.711853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638699, 0.461406, -0.615767,
		0.370486, 0.516982, 0.771667,
		0.674392, -0.720995, 0.159251,
		39.341801, 37.008427, 32.759628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487720, 37.808407, 32.586685>,  <38.869728, 37.513123, 32.648151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487720, 37.808407, 32.586685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.566082, 37.421356, 32.523026>,  <39.613098, 37.189125, 32.484829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.566082, 37.421356, 32.523026>,  <39.487720, 37.808407, 32.586685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566082, 37.421356, 32.523026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614749, 0.247625, -0.748842,
		0.764006, 0.048864, 0.643356,
		0.195902, -0.967623, -0.159148,
		39.624851, 37.131069, 32.475281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155182, 38.055141, 32.412296>,  <39.487720, 37.808407, 32.586685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155182, 38.055141, 32.412296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.094955, 37.676418, 32.298538>,  <40.058819, 37.449184, 32.230282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.094955, 37.676418, 32.298538>,  <40.155182, 38.055141, 32.412296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094955, 37.676418, 32.298538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811180, 0.046113, -0.582976,
		0.565081, -0.318475, 0.761089,
		-0.150568, -0.946809, -0.284398,
		40.049786, 37.392376, 32.213219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789089, 37.673542, 32.469547>,  <40.155182, 38.055141, 32.412296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789089, 37.673542, 32.469547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.546703, 37.484432, 32.213646>,  <40.401272, 37.370968, 32.060104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.546703, 37.484432, 32.213646>,  <40.789089, 37.673542, 32.469547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546703, 37.484432, 32.213646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744583, -0.054019, -0.665341,
		0.279996, -0.879527, 0.384752,
		-0.605969, -0.472773, -0.639755,
		40.364914, 37.342602, 32.021721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232716, 37.053104, 32.191059>,  <40.789089, 37.673542, 32.469547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232716, 37.053104, 32.191059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.938301, 37.185318, 31.954758>,  <40.761650, 37.264645, 31.812977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.938301, 37.185318, 31.954758>,  <41.232716, 37.053104, 32.191059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938301, 37.185318, 31.954758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640435, 0.057314, -0.765871,
		-0.219287, -0.942053, -0.253870,
		-0.736041, 0.330533, -0.590755,
		40.717487, 37.284477, 31.777531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214485, 36.572403, 31.608242>,  <41.232716, 37.053104, 32.191059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214485, 36.572403, 31.608242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.019783, 36.891247, 31.465311>,  <40.902962, 37.082554, 31.379553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.019783, 36.891247, 31.465311>,  <41.214485, 36.572403, 31.608242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019783, 36.891247, 31.465311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470134, -0.105714, -0.876241,
		-0.736239, -0.594503, -0.323294,
		-0.486751, 0.797114, -0.357327,
		40.873756, 37.130383, 31.358112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053455, 36.439404, 30.974333>,  <41.214485, 36.572403, 31.608242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053455, 36.439404, 30.974333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.970112, 36.828644, 30.935007>,  <40.920105, 37.062187, 30.911411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.970112, 36.828644, 30.935007>,  <41.053455, 36.439404, 30.974333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970112, 36.828644, 30.935007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319943, -0.027177, -0.947047,
		-0.924242, -0.228781, -0.305674,
		-0.208359, 0.973099, -0.098314,
		40.907604, 37.120575, 30.905512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610794, 36.513828, 30.364620>,  <41.053455, 36.439404, 30.974333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610794, 36.513828, 30.364620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.769699, 36.871662, 30.446493>,  <40.865044, 37.086361, 30.495617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.769699, 36.871662, 30.446493>,  <40.610794, 36.513828, 30.364620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769699, 36.871662, 30.446493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216764, 0.125256, -0.968155,
		-0.891736, 0.428984, -0.144154,
		0.397267, 0.894586, 0.204684,
		40.888878, 37.140038, 30.507898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398823, 36.991486, 29.903246>,  <40.610794, 36.513828, 30.364620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398823, 36.991486, 29.903246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.741894, 37.154976, 30.028038>,  <40.947735, 37.253071, 30.102913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.741894, 37.154976, 30.028038>,  <40.398823, 36.991486, 29.903246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741894, 37.154976, 30.028038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313581, 0.065074, -0.947329,
		-0.407499, 0.910335, -0.072356,
		0.857678, 0.408725, 0.311982,
		40.999199, 37.277592, 30.121632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457588, 37.522381, 29.433861>,  <40.398823, 36.991486, 29.903246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457588, 37.522381, 29.433861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.817951, 37.463509, 29.597174>,  <41.034168, 37.428185, 29.695162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.817951, 37.463509, 29.597174>,  <40.457588, 37.522381, 29.433861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817951, 37.463509, 29.597174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424889, 0.107324, -0.898861,
		0.088480, 0.983269, 0.159226,
		0.900911, -0.147184, 0.408285,
		41.088226, 37.419353, 29.719660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905567, 38.145023, 29.197237>,  <40.457588, 37.522381, 29.433861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905567, 38.145023, 29.197237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.130260, 37.828518, 29.293861>,  <41.265076, 37.638615, 29.351837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.130260, 37.828518, 29.293861>,  <40.905567, 38.145023, 29.197237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130260, 37.828518, 29.293861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290627, -0.084643, -0.953085,
		0.774592, 0.605583, 0.182417,
		0.561732, -0.791268, 0.241563,
		41.298779, 37.591137, 29.366331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022804, 38.796173, 29.058392>,  <40.905567, 38.145023, 29.197237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022804, 38.796173, 29.058392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.725021, 38.848831, 28.796568>,  <40.546352, 38.880424, 28.639473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.725021, 38.848831, 28.796568>,  <41.022804, 38.796173, 29.058392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725021, 38.848831, 28.796568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604389, 0.283712, 0.744461,
		0.283712, 0.949830, -0.131647,
		-0.744461, 0.131647, -0.654559,
		40.501682, 38.888325, 28.600201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724812, 39.453773, 29.235697>,  <41.022804, 38.796173, 29.058392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724812, 39.453773, 29.235697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.428505, 39.268665, 29.040926>,  <40.250721, 39.157600, 28.924063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.428505, 39.268665, 29.040926>,  <40.724812, 39.453773, 29.235697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428505, 39.268665, 29.040926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624531, 0.207456, 0.752943,
		-0.247427, 0.861860, -0.442694,
		-0.740770, -0.462774, -0.486928,
		40.206272, 39.129833, 28.894848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173790, 39.894070, 29.186155>,  <40.724812, 39.453773, 29.235697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173790, 39.894070, 29.186155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.988628, 39.541004, 29.153580>,  <39.877533, 39.329166, 29.134035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.988628, 39.541004, 29.153580>,  <40.173790, 39.894070, 29.186155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988628, 39.541004, 29.153580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644004, 0.271759, 0.715127,
		-0.609082, 0.383481, -0.694234,
		-0.462902, -0.882661, -0.081440,
		39.849758, 39.276207, 29.129148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501904, 40.099785, 29.203207>,  <40.173790, 39.894070, 29.186155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501904, 40.099785, 29.203207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517117, 39.706932, 29.276920>,  <39.526245, 39.471218, 29.321148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517117, 39.706932, 29.276920>,  <39.501904, 40.099785, 29.203207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517117, 39.706932, 29.276920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741338, 0.095925, 0.664242,
		-0.670054, -0.161882, -0.724446,
		0.038037, -0.982137, 0.184284,
		39.528526, 39.412292, 29.332205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685440, 39.882477, 29.246901>,  <39.501904, 40.099785, 29.203207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685440, 39.882477, 29.246901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927216, 39.621872, 29.430285>,  <39.072281, 39.465508, 29.540314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927216, 39.621872, 29.430285>,  <38.685440, 39.882477, 29.246901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927216, 39.621872, 29.430285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682640, -0.126912, 0.719650,
		-0.410677, -0.747948, -0.521458,
		0.604440, -0.651512, 0.458459,
		39.108547, 39.426418, 29.567822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301743, 39.194477, 29.436840>,  <38.685440, 39.882477, 29.246901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301743, 39.194477, 29.436840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.632156, 39.211430, 29.661652>,  <38.830402, 39.221600, 29.796537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.632156, 39.211430, 29.661652>,  <38.301743, 39.194477, 29.436840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632156, 39.211430, 29.661652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558331, -0.074806, 0.826239,
		0.077062, -0.996297, -0.038128,
		0.826031, 0.042383, 0.562028,
		38.879967, 39.224144, 29.830259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288277, 38.643650, 29.991867>,  <38.301743, 39.194477, 29.436840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288277, 38.643650, 29.991867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.540218, 38.914795, 30.143545>,  <38.691383, 39.077480, 30.234552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.540218, 38.914795, 30.143545>,  <38.288277, 38.643650, 29.991867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540218, 38.914795, 30.143545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498722, -0.021320, 0.866499,
		0.595451, -0.734880, 0.324636,
		0.629852, 0.677862, 0.379197,
		38.729176, 39.118153, 30.257303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457188, 38.447533, 30.692896>,  <38.288277, 38.643650, 29.991867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457188, 38.447533, 30.692896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.578945, 38.828224, 30.708700>,  <38.652000, 39.056637, 30.718182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.578945, 38.828224, 30.708700>,  <38.457188, 38.447533, 30.692896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578945, 38.828224, 30.708700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353444, 0.074332, 0.932498,
		0.884547, -0.297809, 0.359009,
		0.304392, 0.951728, 0.039509,
		38.670261, 39.113743, 30.720552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731358, 38.484142, 31.245785>,  <38.457188, 38.447533, 30.692896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731358, 38.484142, 31.245785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.697792, 38.878147, 31.185497>,  <38.677650, 39.114548, 31.149324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.697792, 38.878147, 31.185497>,  <38.731358, 38.484142, 31.245785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697792, 38.878147, 31.185497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189984, 0.132665, 0.972783,
		0.978194, 0.110267, 0.176003,
		-0.083917, 0.985008, -0.150721,
		38.672619, 39.173649, 31.140282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072174, 38.798470, 31.804123>,  <38.731358, 38.484142, 31.245785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072174, 38.798470, 31.804123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.850269, 39.100281, 31.663876>,  <38.717129, 39.281368, 31.579727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.850269, 39.100281, 31.663876>,  <39.072174, 38.798470, 31.804123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850269, 39.100281, 31.663876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169062, 0.310391, 0.935455,
		0.814654, 0.578227, -0.044630,
		-0.554758, 0.754527, -0.350618,
		38.683842, 39.326637, 31.558691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278923, 39.271351, 32.286003>,  <39.072174, 38.798470, 31.804123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278923, 39.271351, 32.286003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.942837, 39.397972, 32.109898>,  <38.741184, 39.473946, 32.004234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.942837, 39.397972, 32.109898>,  <39.278923, 39.271351, 32.286003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942837, 39.397972, 32.109898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252824, 0.489573, 0.834505,
		0.479702, 0.812474, -0.331317,
		-0.840218, 0.316549, -0.440262,
		38.690773, 39.492935, 31.977819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208767, 40.073429, 32.294247>,  <39.278923, 39.271351, 32.286003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208767, 40.073429, 32.294247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.855888, 39.885098, 32.291637>,  <38.644161, 39.772099, 32.290070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.855888, 39.885098, 32.291637>,  <39.208767, 40.073429, 32.294247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855888, 39.885098, 32.291637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242163, 0.441770, 0.863827,
		-0.403832, 0.763649, -0.503747,
		-0.882200, -0.470829, -0.006526,
		38.591228, 39.743847, 32.289680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.550484, 39.577438, 25.487099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201744, 39.410938, 25.383860>,  <41.992500, 39.311039, 25.321917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201744, 39.410938, 25.383860>,  <42.550484, 39.577438, 25.487099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201744, 39.410938, 25.383860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346794, 0.152547, 0.925453,
		-0.345846, 0.896363, -0.277351,
		-0.871851, -0.416248, -0.258095,
		41.940189, 39.286064, 25.306431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994953, 40.084686, 25.774855>,  <42.550484, 39.577438, 25.487099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994953, 40.084686, 25.774855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822063, 39.729145, 25.714033>,  <41.718330, 39.515820, 25.677540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822063, 39.729145, 25.714033>,  <41.994953, 40.084686, 25.774855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822063, 39.729145, 25.714033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457507, 0.070841, 0.886380,
		-0.777091, 0.452679, -0.437276,
		-0.432223, -0.888855, -0.152053,
		41.692398, 39.462490, 25.668417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349163, 40.135262, 25.992838>,  <41.994953, 40.084686, 25.774855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349163, 40.135262, 25.992838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403236, 39.738953, 25.988983>,  <41.435680, 39.501167, 25.986670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403236, 39.738953, 25.988983>,  <41.349163, 40.135262, 25.992838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403236, 39.738953, 25.988983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454442, -0.070645, 0.887971,
		-0.880458, -0.115662, -0.459799,
		0.135187, -0.990773, -0.009638,
		41.443794, 39.441719, 25.986092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743492, 39.887775, 26.107676>,  <41.349163, 40.135262, 25.992838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743492, 39.887775, 26.107676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971386, 39.570248, 26.192770>,  <41.108124, 39.379730, 26.243826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971386, 39.570248, 26.192770>,  <40.743492, 39.887775, 26.107676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971386, 39.570248, 26.192770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514475, -0.142646, 0.845557,
		-0.640872, -0.591191, -0.489670,
		0.569736, -0.793817, 0.212736,
		41.142307, 39.332104, 26.256590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294903, 39.335648, 26.289162>,  <40.743492, 39.887775, 26.107676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294903, 39.335648, 26.289162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638054, 39.207729, 26.450048>,  <40.843945, 39.130978, 26.546581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638054, 39.207729, 26.450048>,  <40.294903, 39.335648, 26.289162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638054, 39.207729, 26.450048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489244, -0.268972, 0.829636,
		-0.157126, -0.908508, -0.387201,
		0.857877, -0.319793, 0.402219,
		40.895416, 39.111790, 26.570715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224991, 38.558064, 26.607521>,  <40.294903, 39.335648, 26.289162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224991, 38.558064, 26.607521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552261, 38.719494, 26.771332>,  <40.748623, 38.816353, 26.869617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552261, 38.719494, 26.771332>,  <40.224991, 38.558064, 26.607521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552261, 38.719494, 26.771332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365140, -0.185484, 0.912288,
		0.444142, -0.895946, -0.004396,
		0.818176, 0.403580, 0.409527,
		40.797714, 38.840569, 26.894190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461884, 38.044956, 27.194040>,  <40.224991, 38.558064, 26.607521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461884, 38.044956, 27.194040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598766, 38.415989, 27.254030>,  <40.680897, 38.638607, 27.290024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598766, 38.415989, 27.254030>,  <40.461884, 38.044956, 27.194040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598766, 38.415989, 27.254030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334624, -0.028842, 0.941910,
		0.878021, -0.372514, 0.300520,
		0.342207, 0.927578, 0.149976,
		40.701427, 38.694263, 27.299023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846378, 37.979939, 27.831095>,  <40.461884, 38.044956, 27.194040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846378, 37.979939, 27.831095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775623, 38.369007, 27.770941>,  <40.733170, 38.602448, 27.734848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775623, 38.369007, 27.770941>,  <40.846378, 37.979939, 27.831095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775623, 38.369007, 27.770941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284976, 0.095633, 0.953752,
		0.942071, 0.211567, 0.260272,
		-0.176892, 0.972673, -0.150385,
		40.722557, 38.660809, 27.725824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055588, 38.300537, 28.470444>,  <40.846378, 37.979939, 27.831095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055588, 38.300537, 28.470444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808086, 38.551033, 28.280722>,  <40.659584, 38.701332, 28.166889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808086, 38.551033, 28.280722>,  <41.055588, 38.300537, 28.470444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808086, 38.551033, 28.280722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519000, 0.127368, 0.845232,
		0.589729, 0.769156, 0.246209,
		-0.618756, 0.626240, -0.474304,
		40.622459, 38.738907, 28.138430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565952, 38.287724, 28.918018>,  <41.055588, 38.300537, 28.470444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565952, 38.287724, 28.918018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547775, 37.896999, 29.001715>,  <41.536869, 37.662567, 29.051931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547775, 37.896999, 29.001715>,  <41.565952, 38.287724, 28.918018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547775, 37.896999, 29.001715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555491, -0.198792, -0.807410,
		0.830280, 0.079543, 0.551642,
		-0.045438, -0.976808, 0.209239,
		41.534145, 37.603958, 29.064486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163074, 38.054260, 28.757202>,  <41.565952, 38.287724, 28.918018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163074, 38.054260, 28.757202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960648, 37.710354, 28.784595>,  <41.839191, 37.504009, 28.801031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960648, 37.710354, 28.784595>,  <42.163074, 38.054260, 28.757202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960648, 37.710354, 28.784595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414213, -0.311919, -0.855063,
		0.756520, -0.404353, 0.513981,
		-0.506068, -0.859771, 0.068485,
		41.808826, 37.452423, 28.805141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627529, 37.489613, 28.651133>,  <42.163074, 38.054260, 28.757202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627529, 37.489613, 28.651133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287426, 37.310108, 28.541092>,  <42.083366, 37.202404, 28.475067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287426, 37.310108, 28.541092>,  <42.627529, 37.489613, 28.651133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287426, 37.310108, 28.541092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422849, -0.271076, -0.864706,
		0.313473, -0.851547, 0.420242,
		-0.850255, -0.448761, -0.275101,
		42.032349, 37.175480, 28.458561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894474, 36.949734, 28.351963>,  <42.627529, 37.489613, 28.651133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894474, 36.949734, 28.351963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516796, 36.981491, 28.224091>,  <42.290188, 37.000546, 28.147367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516796, 36.981491, 28.224091>,  <42.894474, 36.949734, 28.351963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516796, 36.981491, 28.224091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300629, -0.188924, -0.934842,
		-0.134613, -0.978777, 0.154513,
		-0.944194, 0.079391, -0.319680,
		42.233540, 37.005310, 28.128187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867081, 36.347977, 27.888405>,  <42.894474, 36.949734, 28.351963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867081, 36.347977, 27.888405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534363, 36.532597, 27.765055>,  <42.334732, 36.643368, 27.691044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534363, 36.532597, 27.765055>,  <42.867081, 36.347977, 27.888405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534363, 36.532597, 27.765055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158920, -0.334280, -0.928979,
		-0.531851, -0.821725, 0.204702,
		-0.831793, 0.461547, -0.308375,
		42.284824, 36.671059, 27.672543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361786, 35.823120, 27.514477>,  <42.867081, 36.347977, 27.888405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361786, 35.823120, 27.514477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267456, 36.193470, 27.396395>,  <42.210857, 36.415680, 27.325546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267456, 36.193470, 27.396395>,  <42.361786, 35.823120, 27.514477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267456, 36.193470, 27.396395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152392, -0.264781, -0.952191,
		-0.959773, -0.269534, -0.078655,
		-0.235821, 0.925874, -0.295205,
		42.196709, 36.471233, 27.307833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030056, 35.672447, 26.776134>,  <42.361786, 35.823120, 27.514477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030056, 35.672447, 26.776134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125763, 36.060066, 26.800489>,  <42.183186, 36.292637, 26.815104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125763, 36.060066, 26.800489>,  <42.030056, 35.672447, 26.776134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.125763, 36.060066, 26.800489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282270, -0.009420, -0.959289,
		-0.929018, 0.246713, -0.275785,
		0.239266, 0.969043, 0.060888,
		42.197544, 36.350780, 26.818756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701679, 35.884872, 26.243235>,  <42.030056, 35.672447, 26.776134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701679, 35.884872, 26.243235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004406, 36.139114, 26.304201>,  <42.186043, 36.291660, 26.340780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004406, 36.139114, 26.304201>,  <41.701679, 35.884872, 26.243235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004406, 36.139114, 26.304201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267110, -0.087929, -0.959646,
		-0.596557, 0.766988, -0.236323,
		0.756817, 0.635608, 0.152416,
		42.231453, 36.329796, 26.349926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616470, 36.229515, 25.621403>,  <41.701679, 35.884872, 26.243235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616470, 36.229515, 25.621403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984745, 36.282669, 25.768194>,  <42.205711, 36.314560, 25.856268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984745, 36.282669, 25.768194>,  <41.616470, 36.229515, 25.621403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984745, 36.282669, 25.768194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379163, -0.081577, -0.921727,
		-0.092544, 0.987769, -0.125491,
		0.920690, 0.132882, 0.366976,
		42.260952, 36.322533, 25.878286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990021, 36.708035, 25.190464>,  <41.616470, 36.229515, 25.621403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990021, 36.708035, 25.190464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286068, 36.524296, 25.386921>,  <42.463696, 36.414051, 25.504795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286068, 36.524296, 25.386921>,  <41.990021, 36.708035, 25.190464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286068, 36.524296, 25.386921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497361, -0.117651, -0.859529,
		0.452607, 0.880430, 0.141386,
		0.740121, -0.459349, 0.491141,
		42.508102, 36.386490, 25.534264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536087, 36.951046, 24.827284>,  <41.990021, 36.708035, 25.190464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536087, 36.951046, 24.827284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687180, 36.649128, 25.041801>,  <42.777836, 36.467979, 25.170511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687180, 36.649128, 25.041801>,  <42.536087, 36.951046, 24.827284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687180, 36.649128, 25.041801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592258, -0.248254, -0.766551,
		0.711722, 0.607175, 0.353257,
		0.377734, -0.754790, 0.536292,
		42.800499, 36.422691, 25.202688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259098, 36.906315, 24.663748>,  <42.536087, 36.951046, 24.827284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259098, 36.906315, 24.663748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173489, 36.546955, 24.817154>,  <43.122124, 36.331341, 24.909197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173489, 36.546955, 24.817154>,  <43.259098, 36.906315, 24.663748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173489, 36.546955, 24.817154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430314, -0.439173, -0.788642,
		0.876941, -0.003753, 0.480584,
		-0.214019, -0.898395, 0.383514,
		43.109283, 36.277435, 24.932207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018578, 36.543579, 24.740925>,  <43.259098, 36.906315, 24.663748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018578, 36.543579, 24.740925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.720245, 36.277126, 24.739937>,  <43.541245, 36.117256, 24.739344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.720245, 36.277126, 24.739937>,  <44.018578, 36.543579, 24.740925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720245, 36.277126, 24.739937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310475, -0.344336, -0.886024,
		0.589360, -0.661589, 0.463633,
		-0.745829, -0.666133, -0.002469,
		43.496498, 36.077286, 24.739197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.338570, 35.926197, 24.534462>,  <44.018578, 36.543579, 24.740925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.338570, 35.926197, 24.534462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944931, 35.875893, 24.484297>,  <43.708748, 35.845711, 24.454199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944931, 35.875893, 24.484297>,  <44.338570, 35.926197, 24.534462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.944931, 35.875893, 24.484297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169016, -0.446154, -0.878852,
		0.054577, -0.886075, 0.460317,
		-0.984101, -0.125766, -0.125411,
		43.649700, 35.838161, 24.446674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.283283, 33.918533, 20.676733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.545994, 34.195610, 20.795938>,  <36.703621, 34.361858, 20.867462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.545994, 34.195610, 20.795938>,  <36.283283, 33.918533, 20.676733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545994, 34.195610, 20.795938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380878, -0.036358, 0.923910,
		0.650824, -0.720313, 0.239954,
		0.656780, 0.692696, 0.298014,
		36.743027, 34.403419, 20.885344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604660, 33.530785, 21.260704>,  <36.283283, 33.918533, 20.676733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604660, 33.530785, 21.260704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.687336, 33.915440, 21.332853>,  <36.736942, 34.146233, 21.376143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.687336, 33.915440, 21.332853>,  <36.604660, 33.530785, 21.260704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687336, 33.915440, 21.332853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137518, -0.153971, 0.978459,
		0.968694, -0.227040, 0.100419,
		0.206687, 0.961637, 0.180373,
		36.749344, 34.203930, 21.386965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064232, 33.523579, 21.780630>,  <36.604660, 33.530785, 21.260704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064232, 33.523579, 21.780630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.871262, 33.873665, 21.766392>,  <36.755478, 34.083717, 21.757849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.871262, 33.873665, 21.766392>,  <37.064232, 33.523579, 21.780630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871262, 33.873665, 21.766392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166575, -0.051770, 0.984669,
		0.859952, 0.480959, 0.170764,
		-0.482426, 0.875213, -0.035596,
		36.726532, 34.136230, 21.755713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376526, 33.915470, 22.287794>,  <37.064232, 33.523579, 21.780630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376526, 33.915470, 22.287794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.035603, 34.112045, 22.216171>,  <36.831051, 34.229992, 22.173197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.035603, 34.112045, 22.216171>,  <37.376526, 33.915470, 22.287794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035603, 34.112045, 22.216171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125054, 0.140946, 0.982087,
		0.507874, 0.859431, -0.058672,
		-0.852306, 0.491439, -0.179058,
		36.779911, 34.259476, 22.162455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427998, 34.560493, 22.681587>,  <37.376526, 33.915470, 22.287794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427998, 34.560493, 22.681587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.038498, 34.504681, 22.609642>,  <36.804798, 34.471195, 22.566475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.038498, 34.504681, 22.609642>,  <37.427998, 34.560493, 22.681587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038498, 34.504681, 22.609642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194414, 0.098733, 0.975938,
		-0.118412, 0.985284, -0.123267,
		-0.973746, -0.139528, -0.179862,
		36.746372, 34.462822, 22.555683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094906, 35.132481, 23.001753>,  <37.427998, 34.560493, 22.681587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094906, 35.132481, 23.001753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.833286, 34.835087, 22.945976>,  <36.676315, 34.656651, 22.912510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.833286, 34.835087, 22.945976>,  <37.094906, 35.132481, 23.001753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833286, 34.835087, 22.945976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366044, 0.149753, 0.918470,
		-0.661989, 0.651767, -0.370095,
		-0.654051, -0.743488, -0.139440,
		36.637070, 34.612041, 22.904144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448544, 35.469025, 23.256266>,  <37.094906, 35.132481, 23.001753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448544, 35.469025, 23.256266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.397449, 35.072838, 23.235653>,  <36.366795, 34.835125, 23.223286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.397449, 35.072838, 23.235653>,  <36.448544, 35.469025, 23.256266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397449, 35.072838, 23.235653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257012, -0.017126, 0.966256,
		-0.957930, 0.136666, -0.252374,
		-0.127732, -0.990469, -0.051530,
		36.359131, 34.775696, 23.220194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836899, 35.327583, 23.620758>,  <36.448544, 35.469025, 23.256266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836899, 35.327583, 23.620758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.031864, 34.978374, 23.614393>,  <36.148846, 34.768848, 23.610575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.031864, 34.978374, 23.614393>,  <35.836899, 35.327583, 23.620758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031864, 34.978374, 23.614393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183850, -0.120428, 0.975549,
		-0.853595, -0.472573, -0.219204,
		0.487417, -0.873025, -0.015914,
		36.178089, 34.716469, 23.609619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423882, 34.979073, 24.071308>,  <35.836899, 35.327583, 23.620758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423882, 34.979073, 24.071308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739120, 34.735371, 24.036192>,  <35.928265, 34.589149, 24.015121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739120, 34.735371, 24.036192>,  <35.423882, 34.979073, 24.071308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739120, 34.735371, 24.036192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104459, -0.272929, 0.956346,
		-0.606621, -0.744524, -0.278738,
		0.788098, -0.609257, -0.087793,
		35.975552, 34.552593, 24.009853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192318, 34.207390, 24.223783>,  <35.423882, 34.979073, 24.071308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192318, 34.207390, 24.223783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.582287, 34.265476, 24.291239>,  <35.816269, 34.300327, 24.331713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.582287, 34.265476, 24.291239>,  <35.192318, 34.207390, 24.223783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582287, 34.265476, 24.291239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113181, -0.328913, 0.937553,
		0.191616, -0.933128, -0.304229,
		0.974922, 0.145218, 0.168638,
		35.874763, 34.309040, 24.341829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329376, 33.618851, 24.649096>,  <35.192318, 34.207390, 24.223783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329376, 33.618851, 24.649096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.592491, 33.915546, 24.701454>,  <35.750362, 34.093563, 24.732868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.592491, 33.915546, 24.701454>,  <35.329376, 33.618851, 24.649096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592491, 33.915546, 24.701454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018414, -0.157896, 0.987284,
		0.752977, -0.651835, -0.090204,
		0.657790, 0.741741, 0.130895,
		35.789829, 34.138069, 24.740723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737919, 33.375729, 25.259439>,  <35.329376, 33.618851, 24.649096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737919, 33.375729, 25.259439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.830727, 33.764210, 25.237782>,  <35.886410, 33.997299, 25.224787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.830727, 33.764210, 25.237782>,  <35.737919, 33.375729, 25.259439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830727, 33.764210, 25.237782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117964, 0.027157, 0.992646,
		0.965533, -0.236695, -0.108267,
		0.232015, 0.971204, -0.054143,
		35.900330, 34.055573, 25.221539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247890, 33.467804, 25.742664>,  <35.737919, 33.375729, 25.259439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247890, 33.467804, 25.742664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.110790, 33.840599, 25.695486>,  <36.028530, 34.064278, 25.667179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.110790, 33.840599, 25.695486>,  <36.247890, 33.467804, 25.742664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110790, 33.840599, 25.695486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098514, 0.160519, 0.982104,
		0.934246, 0.325000, -0.146833,
		-0.342753, 0.931992, -0.117947,
		36.007965, 34.120197, 25.660103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685654, 33.852848, 26.183386>,  <36.247890, 33.467804, 25.742664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685654, 33.852848, 26.183386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.341923, 34.049538, 26.127144>,  <36.135685, 34.167553, 26.093399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.341923, 34.049538, 26.127144>,  <36.685654, 33.852848, 26.183386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341923, 34.049538, 26.127144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083626, 0.136125, 0.987156,
		0.504548, 0.860045, -0.075855,
		-0.859324, 0.491724, -0.140604,
		36.084126, 34.197056, 26.084963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355282, 33.846016, 26.405884>,  <36.685654, 33.852848, 26.183386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355282, 33.846016, 26.405884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.631195, 33.660538, 26.628302>,  <37.796741, 33.549252, 26.761753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.631195, 33.660538, 26.628302>,  <37.355282, 33.846016, 26.405884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631195, 33.660538, 26.628302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435720, -0.347496, -0.830298,
		0.578233, 0.815002, -0.037652,
		0.689778, -0.463700, 0.556047,
		37.838127, 33.521427, 26.795116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012722, 34.109169, 26.160515>,  <37.355282, 33.846016, 26.405884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012722, 34.109169, 26.160515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.067753, 33.755932, 26.339945>,  <38.100773, 33.543991, 26.447603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.067753, 33.755932, 26.339945>,  <38.012722, 34.109169, 26.160515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067753, 33.755932, 26.339945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557729, -0.305194, -0.771878,
		0.818542, 0.356377, 0.450539,
		0.137577, -0.883093, 0.448575,
		38.109028, 33.491005, 26.474518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792927, 34.003387, 26.314865>,  <38.012722, 34.109169, 26.160515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792927, 34.003387, 26.314865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.599010, 33.653866, 26.299635>,  <38.482658, 33.444153, 26.290497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.599010, 33.653866, 26.299635>,  <38.792927, 34.003387, 26.314865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599010, 33.653866, 26.299635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679380, -0.348797, -0.645587,
		0.550834, -0.338843, 0.762737,
		-0.484793, -0.873800, -0.038074,
		38.453571, 33.391727, 26.288212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368275, 33.501129, 26.221865>,  <38.792927, 34.003387, 26.314865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368275, 33.501129, 26.221865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023880, 33.330925, 26.110411>,  <38.817242, 33.228802, 26.043539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023880, 33.330925, 26.110411>,  <39.368275, 33.501129, 26.221865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023880, 33.330925, 26.110411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485585, -0.524681, -0.699226,
		0.151332, -0.737328, 0.658366,
		-0.860991, -0.425508, -0.278635,
		38.765583, 33.203274, 26.026821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612270, 32.870628, 25.919786>,  <39.368275, 33.501129, 26.221865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612270, 32.870628, 25.919786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.236233, 32.902447, 25.787182>,  <39.010612, 32.921539, 25.707619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.236233, 32.902447, 25.787182>,  <39.612270, 32.870628, 25.919786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236233, 32.902447, 25.787182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254913, -0.481673, -0.838457,
		-0.226376, -0.872733, 0.432539,
		-0.940092, 0.079547, -0.331510,
		38.954205, 32.926311, 25.687729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442696, 32.201691, 25.602764>,  <39.612270, 32.870628, 25.919786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442696, 32.201691, 25.602764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.170296, 32.446693, 25.442230>,  <39.006855, 32.593697, 25.345909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.170296, 32.446693, 25.442230>,  <39.442696, 32.201691, 25.602764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170296, 32.446693, 25.442230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323404, -0.240153, -0.915280,
		-0.656996, -0.753102, -0.034542,
		-0.681004, 0.612506, -0.401336,
		38.965996, 32.630444, 25.321829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970535, 31.811810, 25.089869>,  <39.442696, 32.201691, 25.602764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970535, 31.811810, 25.089869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.955650, 32.201542, 25.001055>,  <38.946720, 32.435379, 24.947767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.955650, 32.201542, 25.001055>,  <38.970535, 31.811810, 25.089869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955650, 32.201542, 25.001055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286535, -0.202452, -0.936435,
		-0.957347, -0.098471, -0.271645,
		-0.037216, 0.974329, -0.222032,
		38.944485, 32.493839, 24.934444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568367, 31.941088, 24.421280>,  <38.970535, 31.811810, 25.089869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568367, 31.941088, 24.421280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.817730, 32.252861, 24.446089>,  <38.967346, 32.439926, 24.460974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.817730, 32.252861, 24.446089>,  <38.568367, 31.941088, 24.421280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817730, 32.252861, 24.446089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019866, 0.095088, -0.995271,
		-0.781646, 0.619225, 0.074762,
		0.623406, 0.779435, 0.062024,
		39.004753, 32.486691, 24.464695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328892, 32.450901, 23.907568>,  <38.568367, 31.941088, 24.421280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328892, 32.450901, 23.907568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.693569, 32.588680, 23.997166>,  <38.912376, 32.671349, 24.050924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.693569, 32.588680, 23.997166>,  <38.328892, 32.450901, 23.907568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693569, 32.588680, 23.997166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131596, 0.271650, -0.953357,
		-0.389228, 0.898645, 0.202333,
		0.911693, 0.344447, 0.223992,
		38.967075, 32.692013, 24.064363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362774, 33.076717, 23.569666>,  <38.328892, 32.450901, 23.907568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362774, 33.076717, 23.569666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.749107, 33.004303, 23.643852>,  <38.980907, 32.960854, 23.688364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.749107, 33.004303, 23.643852>,  <38.362774, 33.076717, 23.569666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749107, 33.004303, 23.643852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227041, 0.245873, -0.942337,
		0.124996, 0.952246, 0.278574,
		0.965830, -0.181036, 0.185466,
		39.038857, 32.949993, 23.699492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779091, 33.603020, 23.353134>,  <38.362774, 33.076717, 23.569666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779091, 33.603020, 23.353134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.010902, 33.277061, 23.349190>,  <39.149990, 33.081486, 23.346823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.010902, 33.277061, 23.349190>,  <38.779091, 33.603020, 23.353134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010902, 33.277061, 23.349190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314510, 0.234800, -0.919757,
		0.751821, 0.529919, 0.392365,
		0.579524, -0.814895, -0.009863,
		39.184761, 33.032593, 23.346231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377304, 33.821102, 23.032145>,  <38.779091, 33.603020, 23.353134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377304, 33.821102, 23.032145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.431740, 33.425682, 23.006073>,  <39.464401, 33.188431, 22.990431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.431740, 33.425682, 23.006073>,  <39.377304, 33.821102, 23.032145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431740, 33.425682, 23.006073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291943, 0.102884, -0.950886,
		0.946705, 0.110374, 0.302601,
		0.136086, -0.988551, -0.065178,
		39.472565, 33.129116, 22.986519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050072, 33.718937, 22.811222>,  <39.377304, 33.821102, 23.032145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050072, 33.718937, 22.811222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.819851, 33.409798, 22.704304>,  <39.681717, 33.224316, 22.640152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.819851, 33.409798, 22.704304>,  <40.050072, 33.718937, 22.811222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819851, 33.409798, 22.704304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408944, 0.011046, -0.912493,
		0.708169, -0.634497, 0.309693,
		-0.575554, -0.772846, -0.267296,
		39.647186, 33.177944, 22.624115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493538, 33.248783, 22.417967>,  <40.050072, 33.718937, 22.811222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493538, 33.248783, 22.417967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.117088, 33.172794, 22.306118>,  <39.891216, 33.127201, 22.239008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.117088, 33.172794, 22.306118>,  <40.493538, 33.248783, 22.417967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117088, 33.172794, 22.306118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314759, -0.190725, -0.929812,
		0.123312, -0.963085, 0.239293,
		-0.941128, -0.189977, -0.279621,
		39.834751, 33.115803, 22.222231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918770, 32.697124, 22.620119>,  <40.493538, 33.248783, 22.417967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918770, 32.697124, 22.620119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.296665, 32.699219, 22.751236>,  <41.523403, 32.700478, 22.829906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.296665, 32.699219, 22.751236>,  <40.918770, 32.697124, 22.620119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296665, 32.699219, 22.751236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323061, -0.155088, 0.933584,
		0.055729, -0.987887, -0.144824,
		0.944736, 0.005241, 0.327790,
		41.580086, 32.700790, 22.849573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918762, 32.111465, 23.148596>,  <40.918770, 32.697124, 22.620119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918762, 32.111465, 23.148596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.229691, 32.355061, 23.211737>,  <41.416248, 32.501217, 23.249622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.229691, 32.355061, 23.211737>,  <40.918762, 32.111465, 23.148596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229691, 32.355061, 23.211737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125420, -0.095870, 0.987461,
		0.616482, -0.787367, 0.001857,
		0.777316, 0.608984, 0.157854,
		41.462887, 32.537754, 23.259092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258293, 31.839828, 23.692228>,  <40.918762, 32.111465, 23.148596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258293, 31.839828, 23.692228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.398422, 32.214199, 23.677717>,  <41.482502, 32.438820, 23.669010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.398422, 32.214199, 23.677717>,  <41.258293, 31.839828, 23.692228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398422, 32.214199, 23.677717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022495, 0.047130, 0.998636,
		0.936358, -0.349032, 0.037565,
		0.350326, 0.935925, -0.036279,
		41.503521, 32.494976, 23.666834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872486, 31.850296, 23.943100>,  <41.258293, 31.839828, 23.692228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872486, 31.850296, 23.943100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.765335, 32.233696, 23.982128>,  <41.701042, 32.463737, 24.005545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.765335, 32.233696, 23.982128>,  <41.872486, 31.850296, 23.943100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765335, 32.233696, 23.982128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186451, -0.047783, 0.981301,
		0.945239, 0.281063, -0.165913,
		-0.267879, 0.958499, 0.097571,
		41.684971, 32.521244, 24.011400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361584, 32.112633, 24.302607>,  <41.872486, 31.850296, 23.943100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361584, 32.112633, 24.302607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.052608, 32.365067, 24.331091>,  <41.867222, 32.516525, 24.348181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.052608, 32.365067, 24.331091>,  <42.361584, 32.112633, 24.302607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052608, 32.365067, 24.331091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118007, 0.032448, 0.992482,
		0.624030, 0.775035, -0.099537,
		-0.772438, 0.631085, 0.071211,
		41.820877, 32.554394, 24.352455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637100, 32.582836, 24.619074>,  <42.361584, 32.112633, 24.302607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637100, 32.582836, 24.619074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.251781, 32.658436, 24.695328>,  <42.020592, 32.703796, 24.741079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.251781, 32.658436, 24.695328>,  <42.637100, 32.582836, 24.619074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251781, 32.658436, 24.695328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161506, -0.159202, 0.973946,
		0.214421, 0.968987, 0.122835,
		-0.963296, 0.188996, 0.190633,
		41.962791, 32.715134, 24.752518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658634, 33.080631, 25.203945>,  <42.637100, 32.582836, 24.619074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658634, 33.080631, 25.203945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.282063, 32.945744, 25.203484>,  <42.056122, 32.864811, 25.203207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.282063, 32.945744, 25.203484>,  <42.658634, 33.080631, 25.203945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282063, 32.945744, 25.203484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027168, 0.072441, 0.997003,
		-0.336125, 0.938635, -0.077359,
		-0.941425, -0.337219, -0.001152,
		41.999634, 32.844578, 25.203138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239876, 33.602089, 25.439936>,  <42.658634, 33.080631, 25.203945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239876, 33.602089, 25.439936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.038235, 33.260017, 25.488180>,  <41.917252, 33.054775, 25.517126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.038235, 33.260017, 25.488180>,  <42.239876, 33.602089, 25.439936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038235, 33.260017, 25.488180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288329, 0.298287, 0.909886,
		-0.814095, 0.423897, -0.396940,
		-0.504100, -0.855182, 0.120612,
		41.887005, 33.003464, 25.524364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602036, 33.841999, 25.741837>,  <42.239876, 33.602089, 25.439936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602036, 33.841999, 25.741837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.653469, 33.459698, 25.847672>,  <41.684330, 33.230316, 25.911173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.653469, 33.459698, 25.847672>,  <41.602036, 33.841999, 25.741837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653469, 33.459698, 25.847672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148721, 0.245202, 0.957997,
		-0.980483, -0.162536, -0.110610,
		0.128587, -0.955750, 0.264589,
		41.692043, 33.172974, 25.927048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871990, 33.502342, 26.090506>,  <41.602036, 33.841999, 25.741837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871990, 33.502342, 26.090506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.195629, 33.287144, 26.185091>,  <41.389812, 33.158024, 26.241842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.195629, 33.287144, 26.185091>,  <40.871990, 33.502342, 26.090506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195629, 33.287144, 26.185091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221229, 0.093937, 0.970687,
		-0.544441, -0.837695, -0.043017,
		0.809099, -0.537999, 0.236466,
		41.438358, 33.125744, 26.256031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512901, 33.069744, 26.645739>,  <40.871990, 33.502342, 26.090506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512901, 33.069744, 26.645739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.907734, 33.059593, 26.709017>,  <41.144634, 33.053501, 26.746983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.907734, 33.059593, 26.709017>,  <40.512901, 33.069744, 26.645739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907734, 33.059593, 26.709017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148187, 0.230762, 0.961660,
		-0.060911, -0.972679, 0.224020,
		0.987082, -0.025379, 0.158194,
		41.203857, 33.051979, 26.756475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778820, 32.576481, 27.155642>,  <40.512901, 33.069744, 26.645739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778820, 32.576481, 27.155642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.037937, 32.881207, 27.155260>,  <41.193409, 33.064041, 27.155031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.037937, 32.881207, 27.155260>,  <40.778820, 32.576481, 27.155642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037937, 32.881207, 27.155260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242037, 0.206999, 0.947929,
		0.722343, -0.613833, 0.318480,
		0.647795, 0.761814, -0.000954,
		41.232277, 33.109749, 27.154974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163937, 32.497417, 27.783497>,  <40.778820, 32.576481, 27.155642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163937, 32.497417, 27.783497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.211376, 32.876007, 27.663416>,  <41.239841, 33.103161, 27.591368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.211376, 32.876007, 27.663416>,  <41.163937, 32.497417, 27.783497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211376, 32.876007, 27.663416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127834, 0.314376, 0.940652,
		0.984679, -0.073183, 0.158276,
		0.118598, 0.946474, -0.300205,
		41.246956, 33.159950, 27.573355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382362, 32.850895, 28.361950>,  <41.163937, 32.497417, 27.783497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382362, 32.850895, 28.361950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.304035, 33.171551, 28.136019>,  <41.257038, 33.363945, 28.000460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.304035, 33.171551, 28.136019>,  <41.382362, 32.850895, 28.361950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304035, 33.171551, 28.136019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239683, 0.519385, 0.820238,
		0.950897, 0.296000, 0.090432,
		-0.195822, 0.801638, -0.564829,
		41.245289, 33.412041, 27.966570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.191330, 35.114574, 24.305817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.876377, 35.339176, 24.204033>,  <43.687405, 35.473938, 24.142962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.876377, 35.339176, 24.204033>,  <44.191330, 35.114574, 24.305817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876377, 35.339176, 24.204033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065930, -0.333703, -0.940370,
		-0.612936, -0.757203, 0.225730,
		-0.787377, 0.561504, -0.254461,
		43.640163, 35.507626, 24.127695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787769, 34.618908, 23.999767>,  <44.191330, 35.114574, 24.305817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787769, 34.618908, 23.999767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.690044, 34.989941, 23.886696>,  <43.631409, 35.212559, 23.818853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.690044, 34.989941, 23.886696>,  <43.787769, 34.618908, 23.999767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690044, 34.989941, 23.886696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247787, -0.222118, -0.943008,
		-0.937504, -0.300432, -0.175576,
		-0.244311, 0.927580, -0.282680,
		43.616753, 35.268215, 23.801891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654617, 34.460484, 23.315760>,  <43.787769, 34.618908, 23.999767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654617, 34.460484, 23.315760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.660725, 34.859241, 23.346670>,  <43.664387, 35.098495, 23.365215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.660725, 34.859241, 23.346670>,  <43.654617, 34.460484, 23.315760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660725, 34.859241, 23.346670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266893, 0.070418, -0.961150,
		-0.963605, 0.035297, -0.264989,
		0.015266, 0.996893, 0.077275,
		43.665306, 35.158310, 23.369852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325966, 34.664284, 22.675774>,  <43.654617, 34.460484, 23.315760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325966, 34.664284, 22.675774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.548218, 34.973961, 22.797028>,  <43.681568, 35.159767, 22.869780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.548218, 34.973961, 22.797028>,  <43.325966, 34.664284, 22.675774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548218, 34.973961, 22.797028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225544, 0.210573, -0.951204,
		-0.800251, 0.596891, -0.057614,
		0.555633, 0.774196, 0.303136,
		43.714909, 35.206219, 22.887968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181503, 35.118752, 22.182261>,  <43.325966, 34.664284, 22.675774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181503, 35.118752, 22.182261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.499004, 35.275417, 22.368401>,  <43.689507, 35.369415, 22.480085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.499004, 35.275417, 22.368401>,  <43.181503, 35.118752, 22.182261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499004, 35.275417, 22.368401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351615, 0.328814, -0.876498,
		-0.496307, 0.859349, 0.123283,
		0.793755, 0.391663, 0.465353,
		43.737129, 35.392918, 22.508007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224380, 35.952164, 22.104725>,  <43.181503, 35.118752, 22.182261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224380, 35.952164, 22.104725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.581554, 35.779106, 22.154491>,  <43.795860, 35.675270, 22.184351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.581554, 35.779106, 22.154491>,  <43.224380, 35.952164, 22.104725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581554, 35.779106, 22.154491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248662, 0.243627, -0.937450,
		0.375272, 0.868023, 0.325126,
		0.892938, -0.432645, 0.124418,
		43.849434, 35.649311, 22.191816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726574, 36.321121, 21.738634>,  <43.224380, 35.952164, 22.104725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726574, 36.321121, 21.738634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.937851, 35.986141, 21.794752>,  <44.064617, 35.785152, 21.828423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.937851, 35.986141, 21.794752>,  <43.726574, 36.321121, 21.738634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.937851, 35.986141, 21.794752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273337, 0.011262, -0.961852,
		0.803927, 0.546392, 0.234856,
		0.528194, -0.837454, 0.140295,
		44.096310, 35.734905, 21.836842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.360790, 36.464439, 21.560242>,  <43.726574, 36.321121, 21.738634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.360790, 36.464439, 21.560242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.332439, 36.066414, 21.532440>,  <44.315430, 35.827599, 21.515759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.332439, 36.066414, 21.532440>,  <44.360790, 36.464439, 21.560242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332439, 36.066414, 21.532440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418062, 0.033633, -0.907796,
		0.905650, -0.093396, 0.413614,
		-0.070874, -0.995061, -0.069505,
		44.311176, 35.767895, 21.511589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.985725, 36.254925, 21.357206>,  <44.360790, 36.464439, 21.560242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.985725, 36.254925, 21.357206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.765915, 35.934155, 21.263443>,  <44.634029, 35.741692, 21.207184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.765915, 35.934155, 21.263443>,  <44.985725, 36.254925, 21.357206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.765915, 35.934155, 21.263443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404605, -0.009960, -0.914437,
		0.730972, -0.597347, 0.329934,
		-0.549522, -0.801921, -0.234410,
		44.601059, 35.693577, 21.193121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.403786, 35.886971, 20.984785>,  <44.985725, 36.254925, 21.357206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.403786, 35.886971, 20.984785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.049843, 35.736603, 20.874723>,  <44.837475, 35.646381, 20.808687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.049843, 35.736603, 20.874723>,  <45.403786, 35.886971, 20.984785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049843, 35.736603, 20.874723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371228, -0.212149, -0.903981,
		0.281450, -0.902041, 0.327274,
		-0.884859, -0.375919, -0.275153,
		44.784386, 35.623829, 20.792177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.567318, 35.466183, 20.498411>,  <45.403786, 35.886971, 20.984785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.567318, 35.466183, 20.498411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.172760, 35.489765, 20.437021>,  <44.936028, 35.503914, 20.400187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.172760, 35.489765, 20.437021>,  <45.567318, 35.466183, 20.498411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172760, 35.489765, 20.437021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138433, -0.205790, -0.968755,
		-0.088696, -0.976819, 0.194829,
		-0.986392, 0.058954, -0.153476,
		44.876842, 35.507450, 20.390978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.418324, 34.885509, 20.128336>,  <45.567318, 35.466183, 20.498411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.418324, 34.885509, 20.128336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.131756, 35.150578, 20.041065>,  <44.959816, 35.309620, 19.988703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.131756, 35.150578, 20.041065>,  <45.418324, 34.885509, 20.128336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131756, 35.150578, 20.041065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068465, -0.244436, -0.967245,
		-0.694300, -0.707894, 0.129749,
		-0.716422, 0.662674, -0.218178,
		44.916828, 35.349380, 19.975613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795788, 34.494724, 19.925669>,  <45.418324, 34.885509, 20.128336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795788, 34.494724, 19.925669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.815762, 34.852242, 19.747395>,  <44.827747, 35.066753, 19.640430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.815762, 34.852242, 19.747395>,  <44.795788, 34.494724, 19.925669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815762, 34.852242, 19.747395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073249, -0.441763, -0.894137,
		-0.996063, 0.077292, 0.043411,
		0.049933, 0.893796, -0.445685,
		44.830742, 35.120380, 19.613689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384247, 34.448112, 19.260193>,  <44.795788, 34.494724, 19.925669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384247, 34.448112, 19.260193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.594643, 34.786091, 19.221420>,  <44.720882, 34.988876, 19.198156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.594643, 34.786091, 19.221420>,  <44.384247, 34.448112, 19.260193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594643, 34.786091, 19.221420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177102, -0.220291, -0.959222,
		-0.831844, 0.487378, -0.265514,
		0.525994, 0.844947, -0.096932,
		44.752441, 35.039574, 19.192341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562489, 34.674152, 18.389362>,  <44.384247, 34.448112, 19.260193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562489, 34.674152, 18.389362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.318932, 34.425354, 18.192436>,  <44.172798, 34.276073, 18.074282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.318932, 34.425354, 18.192436>,  <44.562489, 34.674152, 18.389362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318932, 34.425354, 18.192436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157983, -0.513107, 0.843660,
		-0.777364, 0.591474, 0.214161,
		-0.608890, -0.621997, -0.492314,
		44.136265, 34.238754, 18.044743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874493, 34.586483, 18.705580>,  <44.562489, 34.674152, 18.389362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874493, 34.586483, 18.705580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.889538, 34.246876, 18.494768>,  <43.898567, 34.043114, 18.368280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.889538, 34.246876, 18.494768>,  <43.874493, 34.586483, 18.705580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.889538, 34.246876, 18.494768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297046, -0.513064, 0.805313,
		-0.954122, 0.126260, -0.271495,
		0.037615, -0.849013, -0.527031,
		43.900822, 33.992172, 18.336658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267570, 34.263828, 18.751553>,  <43.874493, 34.586483, 18.705580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267570, 34.263828, 18.751553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.495102, 33.956200, 18.634964>,  <43.631622, 33.771622, 18.565010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.495102, 33.956200, 18.634964>,  <43.267570, 34.263828, 18.751553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.495102, 33.956200, 18.634964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469308, -0.594554, 0.652883,
		-0.675411, -0.234589, -0.699134,
		0.568832, -0.769073, -0.291473,
		43.665752, 33.725479, 18.547522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746197, 33.674500, 18.811668>,  <43.267570, 34.263828, 18.751553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746197, 33.674500, 18.811668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.117138, 33.524940, 18.817596>,  <43.339703, 33.435204, 18.821154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.117138, 33.524940, 18.817596>,  <42.746197, 33.674500, 18.811668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117138, 33.524940, 18.817596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214477, -0.498670, 0.839838,
		-0.306622, -0.782004, -0.542634,
		0.927353, -0.373895, 0.014819,
		43.395344, 33.412773, 18.822042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680401, 32.937485, 18.943163>,  <42.746197, 33.674500, 18.811668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680401, 32.937485, 18.943163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.039688, 33.042503, 19.084175>,  <43.255260, 33.105515, 19.168783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.039688, 33.042503, 19.084175>,  <42.680401, 32.937485, 18.943163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039688, 33.042503, 19.084175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264408, -0.317960, 0.910489,
		0.351140, -0.911026, -0.216176,
		0.898214, 0.262550, 0.352531,
		43.309151, 33.121269, 19.189934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889217, 32.460510, 19.401318>,  <42.680401, 32.937485, 18.943163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889217, 32.460510, 19.401318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.148762, 32.740917, 19.519672>,  <43.304489, 32.909161, 19.590685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.148762, 32.740917, 19.519672>,  <42.889217, 32.460510, 19.401318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148762, 32.740917, 19.519672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245862, -0.174841, 0.953406,
		0.720089, -0.691377, 0.058906,
		0.648864, 0.701019, 0.295885,
		43.343422, 32.951221, 19.608438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196560, 32.148643, 19.968445>,  <42.889217, 32.460510, 19.401318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196560, 32.148643, 19.968445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.276131, 32.537968, 20.014204>,  <43.323872, 32.771564, 20.041658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.276131, 32.537968, 20.014204>,  <43.196560, 32.148643, 19.968445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276131, 32.537968, 20.014204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116223, -0.092476, 0.988909,
		0.973099, -0.210013, 0.094726,
		0.198924, 0.973315, 0.114397,
		43.335808, 32.829964, 20.048523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628288, 32.235302, 20.508230>,  <43.196560, 32.148643, 19.968445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628288, 32.235302, 20.508230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.482555, 32.606754, 20.480209>,  <43.395115, 32.829624, 20.463396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.482555, 32.606754, 20.480209>,  <43.628288, 32.235302, 20.508230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482555, 32.606754, 20.480209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124386, 0.026025, 0.991893,
		0.922925, 0.370093, 0.106027,
		-0.364333, 0.928630, -0.070054,
		43.373257, 32.885342, 20.459194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737831, 32.381786, 21.166849>,  <43.628288, 32.235302, 20.508230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737831, 32.381786, 21.166849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.483471, 32.649170, 21.012552>,  <43.330856, 32.809601, 20.919973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.483471, 32.649170, 21.012552>,  <43.737831, 32.381786, 21.166849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483471, 32.649170, 21.012552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475898, 0.053856, 0.877850,
		0.607578, 0.741800, 0.283870,
		-0.635901, 0.668455, -0.385743,
		43.292702, 32.849705, 20.896830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.698700, 32.991180, 21.631720>,  <43.737831, 32.381786, 21.166849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.698700, 32.991180, 21.631720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.364395, 32.969204, 21.413183>,  <43.163815, 32.956020, 21.282063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.364395, 32.969204, 21.413183>,  <43.698700, 32.991180, 21.631720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364395, 32.969204, 21.413183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546549, -0.012454, 0.837334,
		-0.052806, 0.998412, -0.019618,
		-0.835760, -0.054938, -0.546339,
		43.113667, 32.952721, 21.249281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224777, 33.469372, 21.998983>,  <43.698700, 32.991180, 21.631720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224777, 33.469372, 21.998983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.999287, 33.228638, 21.772705>,  <42.863995, 33.084198, 21.636938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.999287, 33.228638, 21.772705>,  <43.224777, 33.469372, 21.998983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999287, 33.228638, 21.772705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610371, -0.157890, 0.776220,
		-0.556474, 0.782857, -0.278336,
		-0.563723, -0.601835, -0.565695,
		42.830170, 33.048088, 21.602997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497852, 33.691902, 22.151007>,  <43.224777, 33.469372, 21.998983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497852, 33.691902, 22.151007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.450264, 33.318645, 22.015303>,  <42.421711, 33.094692, 21.933880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.450264, 33.318645, 22.015303>,  <42.497852, 33.691902, 22.151007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450264, 33.318645, 22.015303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751052, -0.138914, 0.645463,
		-0.649435, 0.331597, -0.684308,
		-0.118974, -0.933138, -0.339262,
		42.414574, 33.038704, 21.913525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841942, 33.610085, 21.945665>,  <42.497852, 33.691902, 22.151007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841942, 33.610085, 21.945665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.986324, 33.249775, 22.042263>,  <42.072956, 33.033588, 22.100222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.986324, 33.249775, 22.042263>,  <41.841942, 33.610085, 21.945665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986324, 33.249775, 22.042263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731704, -0.112996, 0.672191,
		-0.578202, -0.419337, -0.699884,
		0.360959, -0.900771, 0.241496,
		42.094612, 32.979542, 22.114712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263287, 33.183777, 22.104954>,  <41.841942, 33.610085, 21.945665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263287, 33.183777, 22.104954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.580288, 33.010506, 22.276672>,  <41.770489, 32.906544, 22.379704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.580288, 33.010506, 22.276672>,  <41.263287, 33.183777, 22.104954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580288, 33.010506, 22.276672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558016, -0.231006, 0.797028,
		-0.246116, -0.871185, -0.424810,
		0.792493, -0.433212, 0.429281,
		41.818039, 32.880550, 22.405460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653919, 32.825527, 21.874977>,  <41.263287, 33.183777, 22.104954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653919, 32.825527, 21.874977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.256516, 32.845177, 21.833944>,  <40.018074, 32.856968, 21.809324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.256516, 32.845177, 21.833944>,  <40.653919, 32.825527, 21.874977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256516, 32.845177, 21.833944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098660, -0.076541, -0.992173,
		-0.056586, -0.995856, 0.071198,
		-0.993511, 0.049119, -0.102582,
		39.958462, 32.859913, 21.803169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427544, 32.368999, 21.335234>,  <40.653919, 32.825527, 21.874977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427544, 32.368999, 21.335234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.138153, 32.642323, 21.374571>,  <39.964520, 32.806316, 21.398172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.138153, 32.642323, 21.374571>,  <40.427544, 32.368999, 21.335234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138153, 32.642323, 21.374571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043848, 0.096680, -0.994349,
		-0.688957, -0.723698, -0.039983,
		-0.723474, 0.683311, 0.098341,
		39.921112, 32.847317, 21.404074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960758, 32.152512, 20.814554>,  <40.427544, 32.368999, 21.335234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960758, 32.152512, 20.814554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.885662, 32.543304, 20.855055>,  <39.840607, 32.777782, 20.879354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.885662, 32.543304, 20.855055>,  <39.960758, 32.152512, 20.814554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885662, 32.543304, 20.855055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107308, 0.082064, -0.990833,
		-0.976340, -0.196881, 0.089432,
		-0.187737, 0.976987, 0.101249,
		39.829342, 32.836399, 20.885429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549610, 32.272633, 20.233278>,  <39.960758, 32.152512, 20.814554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549610, 32.272633, 20.233278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.683025, 32.630783, 20.351299>,  <39.763073, 32.845673, 20.422112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.683025, 32.630783, 20.351299>,  <39.549610, 32.272633, 20.233278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683025, 32.630783, 20.351299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159930, 0.254698, -0.953704,
		-0.929072, 0.365284, -0.058246,
		0.333537, 0.895375, 0.295052,
		39.783085, 32.899395, 20.439816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217693, 32.737843, 19.843525>,  <39.549610, 32.272633, 20.233278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217693, 32.737843, 19.843525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.538235, 32.933918, 19.980671>,  <39.730560, 33.051563, 20.062958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.538235, 32.933918, 19.980671>,  <39.217693, 32.737843, 19.843525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538235, 32.933918, 19.980671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277142, 0.203713, -0.938985,
		-0.530123, 0.847478, 0.027395,
		0.801350, 0.490185, 0.342865,
		39.778641, 33.080975, 20.083530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204548, 33.418106, 19.460089>,  <39.217693, 32.737843, 19.843525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204548, 33.418106, 19.460089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.579575, 33.380840, 19.594131>,  <39.804588, 33.358482, 19.674557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.579575, 33.380840, 19.594131>,  <39.204548, 33.418106, 19.460089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579575, 33.380840, 19.594131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346640, 0.329453, -0.878238,
		-0.028581, 0.939564, 0.341177,
		0.937563, -0.093165, 0.335106,
		39.860844, 33.352890, 19.694664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477261, 33.966885, 19.104185>,  <39.204548, 33.418106, 19.460089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477261, 33.966885, 19.104185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782963, 33.738426, 19.223997>,  <39.966385, 33.601353, 19.295883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782963, 33.738426, 19.223997>,  <39.477261, 33.966885, 19.104185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782963, 33.738426, 19.223997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527292, 0.285963, -0.800118,
		0.371326, 0.769430, 0.519706,
		0.764251, -0.571141, 0.299529,
		40.012238, 33.567085, 19.313856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370102, 34.654026, 19.310141>,  <39.477261, 33.966885, 19.104185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370102, 34.654026, 19.310141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.085388, 34.886421, 19.152248>,  <38.914558, 35.025860, 19.057512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.085388, 34.886421, 19.152248>,  <39.370102, 34.654026, 19.310141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085388, 34.886421, 19.152248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680178, -0.429898, 0.593755,
		0.175271, 0.691114, 0.701171,
		-0.711785, 0.580990, -0.394732,
		38.871853, 35.060719, 19.033829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002529, 34.964523, 19.870916>,  <39.370102, 34.654026, 19.310141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002529, 34.964523, 19.870916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.732029, 34.994404, 19.577766>,  <38.569729, 35.012333, 19.401876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.732029, 34.994404, 19.577766>,  <39.002529, 34.964523, 19.870916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732029, 34.994404, 19.577766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705321, -0.352802, 0.614860,
		-0.212629, 0.932711, 0.291271,
		-0.676248, 0.074702, -0.732877,
		38.529156, 35.016815, 19.357903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463188, 35.520409, 20.106346>,  <39.002529, 34.964523, 19.870916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463188, 35.520409, 20.106346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.291012, 35.299747, 19.820576>,  <38.187706, 35.167351, 19.649115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.291012, 35.299747, 19.820576>,  <38.463188, 35.520409, 20.106346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291012, 35.299747, 19.820576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701728, -0.293306, 0.649269,
		-0.567717, 0.780800, -0.260861,
		-0.430436, -0.551654, -0.714424,
		38.161880, 35.134251, 19.606249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763771, 35.771175, 20.002743>,  <38.463188, 35.520409, 20.106346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763771, 35.771175, 20.002743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.802536, 35.391247, 19.883785>,  <37.825794, 35.163288, 19.812410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.802536, 35.391247, 19.883785>,  <37.763771, 35.771175, 20.002743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802536, 35.391247, 19.883785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703653, -0.276706, 0.654452,
		-0.703904, 0.145837, -0.695162,
		0.096912, -0.949824, -0.297393,
		37.831608, 35.106300, 19.794567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120411, 35.601658, 19.716864>,  <37.763771, 35.771175, 20.002743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120411, 35.601658, 19.716864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.312534, 35.274055, 19.842421>,  <37.427811, 35.077496, 19.917755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.312534, 35.274055, 19.842421>,  <37.120411, 35.601658, 19.716864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312534, 35.274055, 19.842421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754910, -0.203816, 0.623354,
		-0.446555, -0.536365, -0.716172,
		0.480312, -0.819006, 0.313892,
		37.456627, 35.028355, 19.936588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503796, 35.039787, 19.788919>,  <37.120411, 35.601658, 19.716864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503796, 35.039787, 19.788919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.813686, 34.876217, 19.981827>,  <36.999622, 34.778076, 20.097570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.813686, 34.876217, 19.981827>,  <36.503796, 35.039787, 19.788919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813686, 34.876217, 19.981827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613672, -0.302515, 0.729308,
		-0.152338, -0.860968, -0.485311,
		0.774725, -0.408924, 0.482268,
		37.046104, 34.753540, 20.126507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331993, 34.366676, 20.060831>,  <36.503796, 35.039787, 19.788919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331993, 34.366676, 20.060831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.650032, 34.477985, 20.276379>,  <36.840855, 34.544769, 20.405708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.650032, 34.477985, 20.276379>,  <36.331993, 34.366676, 20.060831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650032, 34.477985, 20.276379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514153, -0.161965, 0.842267,
		0.321657, -0.946748, 0.014296,
		0.795099, 0.278272, 0.538871,
		36.888561, 34.561466, 20.438040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.210773, 37.518291, 18.946159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.489429, 37.231777, 18.962343>,  <42.656624, 37.059868, 18.972054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.489429, 37.231777, 18.962343>,  <42.210773, 37.518291, 18.946159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489429, 37.231777, 18.962343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067119, 0.121219, 0.990354,
		-0.714278, -0.687201, 0.132522,
		0.696636, -0.716283, 0.040460,
		42.698421, 37.016891, 18.974482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024307, 36.953941, 19.469938>,  <42.210773, 37.518291, 18.946159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024307, 36.953941, 19.469938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.418240, 36.995770, 19.414551>,  <42.654598, 37.020866, 19.381319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.418240, 36.995770, 19.414551>,  <42.024307, 36.953941, 19.469938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418240, 36.995770, 19.414551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115280, 0.202128, 0.972550,
		0.129686, -0.973760, 0.187008,
		0.984831, 0.104568, -0.138469,
		42.713688, 37.027142, 19.373011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385124, 36.460136, 19.909367>,  <42.024307, 36.953941, 19.469938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385124, 36.460136, 19.909367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.625977, 36.776108, 19.862959>,  <42.770489, 36.965691, 19.835114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.625977, 36.776108, 19.862959>,  <42.385124, 36.460136, 19.909367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625977, 36.776108, 19.862959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042811, 0.177052, 0.983270,
		0.797251, -0.587088, 0.140425,
		0.602128, 0.789925, -0.116021,
		42.806614, 37.013084, 19.828152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750614, 36.433319, 20.485535>,  <42.385124, 36.460136, 19.909367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750614, 36.433319, 20.485535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.832844, 36.801109, 20.351486>,  <42.882183, 37.021782, 20.271057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.832844, 36.801109, 20.351486>,  <42.750614, 36.433319, 20.485535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832844, 36.801109, 20.351486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112484, 0.317967, 0.941405,
		0.972155, -0.231227, -0.038060,
		0.205576, 0.919473, -0.335123,
		42.894516, 37.076950, 20.250950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332668, 36.701073, 20.875166>,  <42.750614, 36.433319, 20.485535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332668, 36.701073, 20.875166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.206547, 37.056702, 20.742418>,  <43.130875, 37.270077, 20.662769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.206547, 37.056702, 20.742418>,  <43.332668, 36.701073, 20.875166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206547, 37.056702, 20.742418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002479, 0.350478, 0.936568,
		0.948987, 0.294482, -0.112712,
		-0.315305, 0.889070, -0.331869,
		43.111954, 37.323421, 20.642859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611324, 37.126484, 21.250332>,  <43.332668, 36.701073, 20.875166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611324, 37.126484, 21.250332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.312061, 37.351337, 21.109329>,  <43.132504, 37.486248, 21.024727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.312061, 37.351337, 21.109329>,  <43.611324, 37.126484, 21.250332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312061, 37.351337, 21.109329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016090, 0.515747, 0.856590,
		0.663322, 0.646539, -0.376817,
		-0.748161, 0.562132, -0.352509,
		43.087612, 37.519978, 21.003576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777752, 37.725582, 21.475094>,  <43.611324, 37.126484, 21.250332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777752, 37.725582, 21.475094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.383308, 37.767529, 21.423561>,  <43.146645, 37.792698, 21.392641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.383308, 37.767529, 21.423561>,  <43.777752, 37.725582, 21.475094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383308, 37.767529, 21.423561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072853, 0.423968, 0.902742,
		0.149290, 0.899585, -0.410437,
		-0.986106, 0.104868, -0.128832,
		43.087475, 37.798988, 21.384911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619713, 38.403721, 21.691120>,  <43.777752, 37.725582, 21.475094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.619713, 38.403721, 21.691120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.268223, 38.213127, 21.702536>,  <43.057331, 38.098770, 21.709385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.268223, 38.213127, 21.702536>,  <43.619713, 38.403721, 21.691120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268223, 38.213127, 21.702536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239355, 0.491562, 0.837303,
		-0.412989, 0.728924, -0.545995,
		-0.878720, -0.476483, 0.028538,
		43.004608, 38.070183, 21.711098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185436, 38.828930, 21.908640>,  <43.619713, 38.403721, 21.691120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185436, 38.828930, 21.908640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.961662, 38.501247, 21.959141>,  <42.827400, 38.304638, 21.989441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.961662, 38.501247, 21.959141>,  <43.185436, 38.828930, 21.908640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961662, 38.501247, 21.959141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387000, 0.392847, 0.834207,
		-0.732985, 0.417822, -0.536804,
		-0.559432, -0.819204, 0.126254,
		42.793831, 38.255486, 21.997017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538754, 39.053783, 21.984787>,  <43.185436, 38.828930, 21.908640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538754, 39.053783, 21.984787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.523361, 38.678272, 22.121731>,  <42.514126, 38.452965, 22.203897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.523361, 38.678272, 22.121731>,  <42.538754, 39.053783, 21.984787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523361, 38.678272, 22.121731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504132, 0.314054, 0.804501,
		-0.862769, -0.141640, -0.485353,
		-0.038478, -0.938780, 0.342362,
		42.511818, 38.396637, 22.224440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804176, 38.918243, 22.182281>,  <42.538754, 39.053783, 21.984787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804176, 38.918243, 22.182281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.024414, 38.638016, 22.363853>,  <42.156559, 38.469879, 22.472797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.024414, 38.638016, 22.363853>,  <41.804176, 38.918243, 22.182281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024414, 38.638016, 22.363853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404886, 0.251413, 0.879124,
		-0.730007, -0.667833, -0.145222,
		0.550597, -0.700565, 0.453929,
		42.189594, 38.427845, 22.500032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403316, 38.558750, 22.661608>,  <41.804176, 38.918243, 22.182281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403316, 38.558750, 22.661608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.777683, 38.491714, 22.785526>,  <42.002304, 38.451492, 22.859877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.777683, 38.491714, 22.785526>,  <41.403316, 38.558750, 22.661608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777683, 38.491714, 22.785526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246972, 0.314849, 0.916447,
		-0.251127, -0.934229, 0.253282,
		0.935917, -0.167591, 0.309795,
		42.058460, 38.441437, 22.878466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894714, 37.999542, 22.480028>,  <41.403316, 38.558750, 22.661608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894714, 37.999542, 22.480028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.546669, 38.174107, 22.388416>,  <40.337841, 38.278847, 22.333448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.546669, 38.174107, 22.388416>,  <40.894714, 37.999542, 22.480028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546669, 38.174107, 22.388416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302618, 0.106280, -0.947168,
		-0.389015, -0.893448, -0.224541,
		-0.870109, 0.436412, -0.229029,
		40.285637, 38.305031, 22.319708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667469, 37.725887, 21.855772>,  <40.894714, 37.999542, 22.480028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667469, 37.725887, 21.855772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.432175, 38.049355, 21.853312>,  <40.290997, 38.243435, 21.851835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.432175, 38.049355, 21.853312>,  <40.667469, 37.725887, 21.855772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432175, 38.049355, 21.853312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242008, 0.168774, -0.955483,
		-0.771629, -0.563537, -0.294983,
		-0.588235, 0.808667, -0.006149,
		40.255703, 38.291954, 21.851467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101856, 37.716812, 21.192341>,  <40.667469, 37.725887, 21.855772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101856, 37.716812, 21.192341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.153030, 38.092495, 21.319792>,  <40.183735, 38.317905, 21.396261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.153030, 38.092495, 21.319792>,  <40.101856, 37.716812, 21.192341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153030, 38.092495, 21.319792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214556, 0.287448, -0.933455,
		-0.968296, 0.187786, -0.164738,
		0.127936, 0.939207, 0.318625,
		40.191410, 38.374256, 21.415379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558228, 38.043316, 20.836287>,  <40.101856, 37.716812, 21.192341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558228, 38.043316, 20.836287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.831051, 38.318253, 20.936174>,  <39.994743, 38.483215, 20.996107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.831051, 38.318253, 20.936174>,  <39.558228, 38.043316, 20.836287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831051, 38.318253, 20.936174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025696, 0.318741, -0.947493,
		-0.730847, 0.652662, 0.199738,
		0.682058, 0.687340, 0.249721,
		40.035667, 38.524456, 21.011091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407681, 38.656399, 20.519167>,  <39.558228, 38.043316, 20.836287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407681, 38.656399, 20.519167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.786121, 38.736248, 20.621187>,  <40.013184, 38.784157, 20.682400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.786121, 38.736248, 20.621187>,  <39.407681, 38.656399, 20.519167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786121, 38.736248, 20.621187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126946, 0.495920, -0.859039,
		-0.297966, 0.845112, 0.443848,
		0.946098, 0.199620, 0.255051,
		40.069950, 38.796135, 20.697702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494160, 39.392574, 20.421270>,  <39.407681, 38.656399, 20.519167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494160, 39.392574, 20.421270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.856106, 39.223949, 20.397612>,  <40.073273, 39.122772, 20.383417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.856106, 39.223949, 20.397612>,  <39.494160, 39.392574, 20.421270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856106, 39.223949, 20.397612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201188, 0.545946, -0.813306,
		0.375152, 0.724035, 0.578822,
		0.904867, -0.421565, -0.059146,
		40.127567, 39.097481, 20.379868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012043, 39.989628, 20.240450>,  <39.494160, 39.392574, 20.421270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012043, 39.989628, 20.240450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.185631, 39.640285, 20.151970>,  <40.289783, 39.430679, 20.098881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.185631, 39.640285, 20.151970>,  <40.012043, 39.989628, 20.240450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185631, 39.640285, 20.151970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326036, 0.381123, -0.865127,
		0.839866, 0.303316, 0.450139,
		0.433965, -0.873352, -0.221201,
		40.315819, 39.378281, 20.085609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686947, 40.200935, 19.945171>,  <40.012043, 39.989628, 20.240450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686947, 40.200935, 19.945171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.622990, 39.820015, 19.841208>,  <40.584618, 39.591461, 19.778830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.622990, 39.820015, 19.841208>,  <40.686947, 40.200935, 19.945171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622990, 39.820015, 19.841208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377153, 0.184390, -0.907610,
		0.912245, -0.243145, 0.329682,
		-0.159890, -0.952303, -0.259911,
		40.575024, 39.534325, 19.763233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243187, 40.162945, 19.378561>,  <40.686947, 40.200935, 19.945171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243187, 40.162945, 19.378561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.977432, 39.865204, 19.351645>,  <40.817978, 39.686558, 19.335495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.977432, 39.865204, 19.351645>,  <41.243187, 40.162945, 19.378561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977432, 39.865204, 19.351645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077760, 0.020700, -0.996757,
		0.743333, -0.667465, 0.044128,
		-0.664387, -0.744354, -0.067289,
		40.778114, 39.641899, 19.331457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585152, 39.614559, 19.007927>,  <41.243187, 40.162945, 19.378561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585152, 39.614559, 19.007927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.201717, 39.509323, 18.964310>,  <40.971657, 39.446182, 18.938139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.201717, 39.509323, 18.964310>,  <41.585152, 39.614559, 19.007927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201717, 39.509323, 18.964310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176329, -0.247612, -0.952679,
		0.223642, -0.932454, 0.283748,
		-0.958589, -0.263092, -0.109042,
		40.914139, 39.430397, 18.931597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590527, 38.918015, 18.613907>,  <41.585152, 39.614559, 19.007927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590527, 38.918015, 18.613907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.246246, 39.106445, 18.536686>,  <41.039677, 39.219505, 18.490353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.246246, 39.106445, 18.536686>,  <41.590527, 38.918015, 18.613907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246246, 39.106445, 18.536686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075095, -0.257580, -0.963335,
		-0.503535, -0.843644, 0.186324,
		-0.860705, 0.471081, -0.193053,
		40.988033, 39.247768, 18.478769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122108, 38.480320, 18.268658>,  <41.590527, 38.918015, 18.613907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122108, 38.480320, 18.268658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.975941, 38.841595, 18.178566>,  <40.888241, 39.058357, 18.124512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.975941, 38.841595, 18.178566>,  <41.122108, 38.480320, 18.268658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975941, 38.841595, 18.178566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183209, -0.307014, -0.933904,
		-0.912634, -0.300005, 0.277660,
		-0.365421, 0.903183, -0.225228,
		40.866314, 39.112549, 18.110998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481743, 38.318565, 17.887547>,  <41.122108, 38.480320, 18.268658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481743, 38.318565, 17.887547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.587975, 38.696350, 17.810127>,  <40.651714, 38.923019, 17.763676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.587975, 38.696350, 17.810127>,  <40.481743, 38.318565, 17.887547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587975, 38.696350, 17.810127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106241, -0.170866, -0.979550,
		-0.958218, 0.280708, 0.054962,
		0.265576, 0.944462, -0.193550,
		40.667648, 38.979687, 17.752062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466007, 38.063126, 18.528435>,  <40.481743, 38.318565, 17.887547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466007, 38.063126, 18.528435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.479465, 37.862396, 18.182709>,  <40.487541, 37.741959, 17.975273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.479465, 37.862396, 18.182709>,  <40.466007, 38.063126, 18.528435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479465, 37.862396, 18.182709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766227, -0.568201, 0.300072,
		-0.641688, 0.652164, -0.403632,
		0.033648, -0.501826, -0.864314,
		40.489559, 37.711849, 17.923414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823196, 37.931190, 18.330849>,  <40.466007, 38.063126, 18.528435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823196, 37.931190, 18.330849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.996693, 37.636391, 18.123507>,  <40.100792, 37.459511, 17.999102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.996693, 37.636391, 18.123507>,  <39.823196, 37.931190, 18.330849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996693, 37.636391, 18.123507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786202, -0.590606, 0.181858,
		-0.440174, 0.328652, -0.835605,
		0.433745, -0.737003, -0.518356,
		40.126816, 37.415291, 17.968000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285858, 37.559452, 18.126261>,  <39.823196, 37.931190, 18.330849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285858, 37.559452, 18.126261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.581944, 37.300968, 18.051962>,  <39.759594, 37.145878, 18.007383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.581944, 37.300968, 18.051962>,  <39.285858, 37.559452, 18.126261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581944, 37.300968, 18.051962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636480, -0.762482, 0.116248,
		-0.216748, 0.032175, -0.975697,
		0.740212, -0.646209, -0.185745,
		39.804008, 37.107105, 17.996239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963352, 37.018486, 17.777624>,  <39.285858, 37.559452, 18.126261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963352, 37.018486, 17.777624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.294392, 36.827152, 17.895117>,  <39.493015, 36.712353, 17.965612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.294392, 36.827152, 17.895117>,  <38.963352, 37.018486, 17.777624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294392, 36.827152, 17.895117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507927, -0.860907, 0.029135,
		0.238940, -0.173307, -0.955444,
		0.827597, -0.478335, 0.293732,
		39.542671, 36.683651, 17.983236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996700, 36.319881, 17.455687>,  <38.963352, 37.018486, 17.777624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996700, 36.319881, 17.455687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.216225, 36.311573, 17.789963>,  <39.347939, 36.306587, 17.990528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.216225, 36.311573, 17.789963>,  <38.996700, 36.319881, 17.455687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216225, 36.311573, 17.789963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387625, -0.892044, 0.232391,
		0.740645, -0.451472, -0.497613,
		0.548810, -0.020768, 0.835689,
		39.380867, 36.305344, 18.040670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217388, 35.609219, 17.474365>,  <38.996700, 36.319881, 17.455687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217388, 35.609219, 17.474365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.292606, 35.742855, 17.843803>,  <39.337738, 35.823036, 18.065466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.292606, 35.742855, 17.843803>,  <39.217388, 35.609219, 17.474365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292606, 35.742855, 17.843803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289572, -0.879710, 0.377172,
		0.938503, -0.338372, -0.068682,
		0.188044, 0.334088, 0.923593,
		39.349018, 35.843082, 18.120882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450142, 35.081047, 17.855675>,  <39.217388, 35.609219, 17.474365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450142, 35.081047, 17.855675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.322079, 35.331322, 18.140213>,  <39.245239, 35.481487, 18.310936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.322079, 35.331322, 18.140213>,  <39.450142, 35.081047, 17.855675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322079, 35.331322, 18.140213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303089, -0.779054, 0.548828,
		0.897570, -0.039887, 0.439063,
		-0.320162, 0.625687, 0.711345,
		39.226028, 35.519028, 18.353617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575115, 34.743774, 18.458433>,  <39.450142, 35.081047, 17.855675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575115, 34.743774, 18.458433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.296070, 35.019070, 18.538107>,  <39.128643, 35.184246, 18.585911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.296070, 35.019070, 18.538107>,  <39.575115, 34.743774, 18.458433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296070, 35.019070, 18.538107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510414, -0.672479, 0.535956,
		0.502810, 0.272222, 0.820412,
		-0.697610, 0.688234, 0.199183,
		39.086788, 35.225540, 18.597862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097424, 34.226639, 18.788822>,  <39.575115, 34.743774, 18.458433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097424, 34.226639, 18.788822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.244137, 33.869915, 18.894766>,  <40.332165, 33.655880, 18.958332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.244137, 33.869915, 18.894766>,  <40.097424, 34.226639, 18.788822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244137, 33.869915, 18.894766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683083, 0.064887, -0.727453,
		0.631562, 0.447737, 0.632978,
		0.366780, -0.891808, 0.264861,
		40.354172, 33.602371, 18.974224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865894, 34.266228, 18.838228>,  <40.097424, 34.226639, 18.788822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865894, 34.266228, 18.838228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.737953, 33.896400, 18.755421>,  <40.661186, 33.674503, 18.705736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.737953, 33.896400, 18.755421>,  <40.865894, 34.266228, 18.838228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737953, 33.896400, 18.755421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647081, -0.053567, -0.760537,
		0.692082, -0.377222, 0.615407,
		-0.319857, -0.924572, -0.207020,
		40.641994, 33.619030, 18.693316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492641, 33.941395, 18.768005>,  <40.865894, 34.266228, 18.838228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492641, 33.941395, 18.768005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.218601, 33.707375, 18.594404>,  <41.054176, 33.566963, 18.490244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.218601, 33.707375, 18.594404>,  <41.492641, 33.941395, 18.768005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218601, 33.707375, 18.594404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545991, -0.018010, -0.837598,
		0.482218, -0.810799, 0.331769,
		-0.685098, -0.585047, -0.434004,
		41.013073, 33.531860, 18.464203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866383, 33.382641, 18.512691>,  <41.492641, 33.941395, 18.768005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866383, 33.382641, 18.512691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.524734, 33.392590, 18.304897>,  <41.319748, 33.398560, 18.180220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.524734, 33.392590, 18.304897>,  <41.866383, 33.382641, 18.512691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524734, 33.392590, 18.304897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517927, -0.050175, -0.853952,
		-0.047171, -0.998435, 0.030055,
		-0.854123, 0.024715, -0.519483,
		41.268501, 33.400051, 18.149052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950054, 33.005562, 17.908237>,  <41.866383, 33.382641, 18.512691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950054, 33.005562, 17.908237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.634090, 33.225513, 17.799662>,  <41.444511, 33.357483, 17.734516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.634090, 33.225513, 17.799662>,  <41.950054, 33.005562, 17.908237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634090, 33.225513, 17.799662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375039, 0.082986, -0.923287,
		-0.485169, -0.831113, -0.271776,
		-0.789910, 0.549877, -0.271438,
		41.397118, 33.390476, 17.718229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857613, 32.785355, 17.181540>,  <41.950054, 33.005562, 17.908237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857613, 32.785355, 17.181540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.662270, 33.128315, 17.246492>,  <41.545063, 33.334091, 17.285463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.662270, 33.128315, 17.246492>,  <41.857613, 32.785355, 17.181540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662270, 33.128315, 17.246492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374675, 0.374072, -0.848345,
		-0.788116, -0.353454, -0.503928,
		-0.488356, 0.857403, 0.162381,
		41.515762, 33.385536, 17.295206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517303, 32.851421, 16.640057>,  <41.857613, 32.785355, 17.181540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517303, 32.851421, 16.640057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.574276, 33.218220, 16.789099>,  <41.608459, 33.438297, 16.878525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.574276, 33.218220, 16.789099>,  <41.517303, 32.851421, 16.640057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574276, 33.218220, 16.789099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244073, 0.332283, -0.911052,
		-0.959240, 0.220705, -0.176487,
		0.142430, 0.916994, 0.372607,
		41.617004, 33.493317, 16.900881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320866, 33.217621, 16.089766>,  <41.517303, 32.851421, 16.640057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320866, 33.217621, 16.089766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.477196, 33.502144, 16.323450>,  <41.570992, 33.672855, 16.463661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.477196, 33.502144, 16.323450>,  <41.320866, 33.217621, 16.089766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477196, 33.502144, 16.323450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414548, 0.430664, -0.801672,
		-0.821833, 0.555495, -0.126558,
		0.390821, 0.711305, 0.584213,
		41.594440, 33.715534, 16.498714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102757, 33.932583, 15.872132>,  <41.320866, 33.217621, 16.089766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102757, 33.932583, 15.872132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.439373, 33.977047, 16.083588>,  <41.641342, 34.003723, 16.210461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.439373, 33.977047, 16.083588>,  <41.102757, 33.932583, 15.872132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439373, 33.977047, 16.083588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282827, 0.743092, -0.606485,
		-0.460243, 0.659893, 0.593901,
		0.841537, 0.111159, 0.528638,
		41.691833, 34.010395, 16.242180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.625492, 32.977890, 31.202467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.962173, 33.088364, 31.388048>,  <37.164185, 33.154648, 31.499397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.962173, 33.088364, 31.388048>,  <36.625492, 32.977890, 31.202467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962173, 33.088364, 31.388048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253386, 0.556725, -0.791109,
		-0.476785, 0.783441, 0.398618,
		0.841708, 0.276185, 0.463951,
		37.214687, 33.171219, 31.527233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670528, 33.676010, 31.137699>,  <36.625492, 32.977890, 31.202467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670528, 33.676010, 31.137699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022888, 33.487984, 31.159788>,  <37.234306, 33.375168, 31.173040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022888, 33.487984, 31.159788>,  <36.670528, 33.676010, 31.137699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022888, 33.487984, 31.159788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334905, 0.536628, -0.774512,
		0.334437, 0.700765, 0.630144,
		0.880904, -0.470063, 0.055221,
		37.287159, 33.346966, 31.176355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068268, 34.210442, 31.049650>,  <36.670528, 33.676010, 31.137699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068268, 34.210442, 31.049650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.302128, 33.902401, 30.947571>,  <37.442444, 33.717575, 30.886322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.302128, 33.902401, 30.947571>,  <37.068268, 34.210442, 31.049650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302128, 33.902401, 30.947571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469456, 0.577688, -0.667748,
		0.661660, 0.270594, 0.699275,
		0.584651, -0.770101, -0.255200,
		37.477524, 33.671371, 30.871010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756783, 34.504478, 30.841227>,  <37.068268, 34.210442, 31.049650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756783, 34.504478, 30.841227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.742268, 34.142483, 30.671673>,  <37.733559, 33.925285, 30.569941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.742268, 34.142483, 30.671673>,  <37.756783, 34.504478, 30.841227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742268, 34.142483, 30.671673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445673, 0.364993, -0.817408,
		0.894460, -0.218578, 0.390084,
		-0.036289, -0.904989, -0.423886,
		37.731380, 33.870987, 30.544508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443047, 34.472038, 30.498201>,  <37.756783, 34.504478, 30.841227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443047, 34.472038, 30.498201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.179897, 34.218842, 30.334972>,  <38.022007, 34.066925, 30.237034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.179897, 34.218842, 30.334972>,  <38.443047, 34.472038, 30.498201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179897, 34.218842, 30.334972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298368, 0.278448, -0.912931,
		0.691504, -0.722350, 0.005681,
		-0.657874, -0.632991, -0.408074,
		37.982536, 34.028946, 30.212549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821396, 34.182461, 30.000832>,  <38.443047, 34.472038, 30.498201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821396, 34.182461, 30.000832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.445377, 34.120968, 29.879063>,  <38.219765, 34.084072, 29.806002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.445377, 34.120968, 29.879063>,  <38.821396, 34.182461, 30.000832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445377, 34.120968, 29.879063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252664, 0.285595, -0.924444,
		0.229050, -0.945941, -0.229633,
		-0.940051, -0.153724, -0.304421,
		38.163361, 34.074848, 29.787737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811619, 33.761463, 29.516232>,  <38.821396, 34.182461, 30.000832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811619, 33.761463, 29.516232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.454071, 33.913471, 29.421076>,  <38.239544, 34.004677, 29.363983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.454071, 33.913471, 29.421076>,  <38.811619, 33.761463, 29.516232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454071, 33.913471, 29.421076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194299, -0.149836, -0.969431,
		-0.404048, -0.912762, 0.060096,
		-0.893864, 0.380020, -0.237889,
		38.185913, 34.027477, 29.349709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613541, 33.364578, 28.948799>,  <38.811619, 33.761463, 29.516232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613541, 33.364578, 28.948799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.322514, 33.637054, 28.916231>,  <38.147900, 33.800541, 28.896690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.322514, 33.637054, 28.916231>,  <38.613541, 33.364578, 28.948799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322514, 33.637054, 28.916231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095127, -0.217709, -0.971367,
		-0.679413, -0.698986, 0.223197,
		-0.727564, 0.681191, -0.081422,
		38.104244, 33.841412, 28.891804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108479, 33.015209, 28.659620>,  <38.613541, 33.364578, 28.948799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108479, 33.015209, 28.659620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.040718, 33.403053, 28.589012>,  <38.000061, 33.635761, 28.546648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.040718, 33.403053, 28.589012>,  <38.108479, 33.015209, 28.659620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040718, 33.403053, 28.589012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162667, -0.204160, -0.965328,
		-0.972030, -0.134816, 0.192309,
		-0.169403, 0.969610, -0.176520,
		37.989899, 33.693935, 28.536057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490368, 33.123543, 28.380686>,  <38.108479, 33.015209, 28.659620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490368, 33.123543, 28.380686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.655708, 33.463131, 28.248997>,  <37.754913, 33.666885, 28.169983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.655708, 33.463131, 28.248997>,  <37.490368, 33.123543, 28.380686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655708, 33.463131, 28.248997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256962, -0.238107, -0.936630,
		-0.873564, 0.471753, 0.119732,
		0.413349, 0.848973, -0.329224,
		37.779713, 33.717823, 28.150230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073738, 33.379219, 27.859640>,  <37.490368, 33.123543, 28.380686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073738, 33.379219, 27.859640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.420578, 33.557053, 27.769773>,  <37.628681, 33.663754, 27.715855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.420578, 33.557053, 27.769773>,  <37.073738, 33.379219, 27.859640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420578, 33.557053, 27.769773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027965, -0.406861, -0.913062,
		-0.497343, 0.798001, -0.340358,
		0.867103, 0.444587, -0.224666,
		37.680710, 33.690430, 27.702374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993736, 33.593586, 27.103195>,  <37.073738, 33.379219, 27.859640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993736, 33.593586, 27.103195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.386017, 33.606499, 27.180325>,  <37.621384, 33.614246, 27.226603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.386017, 33.606499, 27.180325>,  <36.993736, 33.593586, 27.103195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386017, 33.606499, 27.180325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187810, -0.429590, -0.883278,
		0.054323, 0.902447, -0.427362,
		0.980702, 0.032280, 0.192825,
		37.680229, 33.616184, 27.238173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653297, 34.195545, 26.867495>,  <36.993736, 33.593586, 27.103195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653297, 34.195545, 26.867495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.303326, 34.302826, 26.706217>,  <36.093342, 34.367195, 26.609449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.303326, 34.302826, 26.706217>,  <36.653297, 34.195545, 26.867495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303326, 34.302826, 26.706217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264684, 0.432373, 0.861972,
		0.405511, 0.860885, -0.307308,
		-0.874930, 0.268200, -0.403194,
		36.040848, 34.383286, 26.585258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498123, 34.915806, 27.155272>,  <36.653297, 34.195545, 26.867495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498123, 34.915806, 27.155272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.151997, 34.757816, 27.031837>,  <35.944321, 34.663021, 26.957777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.151997, 34.757816, 27.031837>,  <36.498123, 34.915806, 27.155272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151997, 34.757816, 27.031837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421949, 0.241731, 0.873800,
		-0.270538, 0.886318, -0.375834,
		-0.865314, -0.394978, -0.308584,
		35.892403, 34.639324, 26.939262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051968, 35.392220, 27.212526>,  <36.498123, 34.915806, 27.155272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051968, 35.392220, 27.212526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844921, 35.051525, 27.245058>,  <35.720692, 34.847107, 27.264576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844921, 35.051525, 27.245058>,  <36.051968, 35.392220, 27.212526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844921, 35.051525, 27.245058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428968, 0.340578, 0.836656,
		-0.740310, 0.398180, -0.541657,
		-0.517617, -0.851739, 0.081327,
		35.689636, 34.796005, 27.269457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344284, 35.522369, 27.651686>,  <36.051968, 35.392220, 27.212526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344284, 35.522369, 27.651686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361221, 35.122925, 27.664221>,  <35.371384, 34.883259, 27.671741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361221, 35.122925, 27.664221>,  <35.344284, 35.522369, 27.651686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361221, 35.122925, 27.664221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284263, 0.018027, 0.958577,
		-0.957811, -0.049501, -0.283104,
		0.042347, -0.998611, 0.031338,
		35.373924, 34.823341, 27.673622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692333, 35.266369, 27.966238>,  <35.344284, 35.522369, 27.651686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692333, 35.266369, 27.966238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.954750, 34.973480, 28.039417>,  <35.112198, 34.797749, 28.083324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.954750, 34.973480, 28.039417>,  <34.692333, 35.266369, 27.966238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954750, 34.973480, 28.039417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329911, -0.060204, 0.942090,
		-0.678802, -0.678403, -0.281064,
		0.656038, -0.732219, 0.182946,
		35.151562, 34.753815, 28.094301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236771, 34.777424, 28.300701>,  <34.692333, 35.266369, 27.966238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236771, 34.777424, 28.300701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618633, 34.687828, 28.379143>,  <34.847752, 34.634071, 28.426208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618633, 34.687828, 28.379143>,  <34.236771, 34.777424, 28.300701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618633, 34.687828, 28.379143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168664, 0.135868, 0.976265,
		-0.245317, -0.965075, 0.091929,
		0.954658, -0.223989, 0.196104,
		34.905029, 34.620632, 28.437973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195324, 34.213177, 28.773773>,  <34.236771, 34.777424, 28.300701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195324, 34.213177, 28.773773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.549606, 34.396500, 28.803396>,  <34.762177, 34.506493, 28.821171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.549606, 34.396500, 28.803396>,  <34.195324, 34.213177, 28.773773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549606, 34.396500, 28.803396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189994, 0.212277, 0.958562,
		0.423597, -0.863071, 0.275090,
		0.885702, 0.458310, 0.074058,
		34.815315, 34.533993, 28.825613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644371, 33.986355, 29.466324>,  <34.195324, 34.213177, 28.773773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644371, 33.986355, 29.466324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.802483, 34.339924, 29.366367>,  <34.897350, 34.552063, 29.306395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.802483, 34.339924, 29.366367>,  <34.644371, 33.986355, 29.466324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802483, 34.339924, 29.366367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036816, 0.287070, 0.957202,
		0.917824, -0.369160, 0.146015,
		0.395277, 0.883919, -0.249889,
		34.921066, 34.605099, 29.291401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053528, 34.174946, 30.048077>,  <34.644371, 33.986355, 29.466324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053528, 34.174946, 30.048077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004578, 34.516991, 29.846558>,  <34.975208, 34.722218, 29.725647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004578, 34.516991, 29.846558>,  <35.053528, 34.174946, 30.048077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004578, 34.516991, 29.846558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147124, 0.486375, 0.861274,
		0.981518, 0.179522, 0.066285,
		-0.122379, 0.855109, -0.503798,
		34.967865, 34.773521, 29.695417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551964, 34.698730, 30.252312>,  <35.053528, 34.174946, 30.048077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551964, 34.698730, 30.252312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.234299, 34.883522, 30.094389>,  <35.043697, 34.994396, 29.999636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.234299, 34.883522, 30.094389>,  <35.551964, 34.698730, 30.252312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234299, 34.883522, 30.094389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075453, 0.569682, 0.818394,
		0.602997, 0.679731, -0.417565,
		-0.794167, 0.461983, -0.394805,
		34.996048, 35.022118, 29.975948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528934, 35.346775, 30.563770>,  <35.551964, 34.698730, 30.252312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528934, 35.346775, 30.563770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.166405, 35.371334, 30.396528>,  <34.948887, 35.386070, 30.296183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.166405, 35.371334, 30.396528>,  <35.528934, 35.346775, 30.563770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166405, 35.371334, 30.396528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247867, 0.724080, 0.643638,
		0.342261, 0.686977, -0.641030,
		-0.906322, 0.061402, -0.418103,
		34.894508, 35.389755, 30.271097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308910, 36.106247, 30.675146>,  <35.528934, 35.346775, 30.563770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308910, 36.106247, 30.675146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974586, 35.893856, 30.619303>,  <34.773994, 35.766422, 30.585796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974586, 35.893856, 30.619303>,  <35.308910, 36.106247, 30.675146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974586, 35.893856, 30.619303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383410, 0.382497, 0.840650,
		-0.392966, 0.756149, -0.523275,
		-0.835808, -0.530976, -0.139606,
		34.723843, 35.734562, 30.577421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791245, 36.460503, 31.022865>,  <35.308910, 36.106247, 30.675146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791245, 36.460503, 31.022865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.598114, 36.114147, 30.970522>,  <34.482235, 35.906334, 30.939116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.598114, 36.114147, 30.970522>,  <34.791245, 36.460503, 31.022865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598114, 36.114147, 30.970522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536772, 0.174560, 0.825472,
		-0.691921, 0.468799, -0.549065,
		-0.482825, -0.865885, -0.130856,
		34.453266, 35.854382, 30.931265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070751, 36.584038, 30.992109>,  <34.791245, 36.460503, 31.022865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070751, 36.584038, 30.992109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138390, 36.219070, 31.141186>,  <34.178974, 36.000092, 31.230631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138390, 36.219070, 31.141186>,  <34.070751, 36.584038, 30.992109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138390, 36.219070, 31.141186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611261, 0.199542, 0.765860,
		-0.773153, -0.357315, -0.523985,
		0.169096, -0.912419, 0.372690,
		34.189117, 35.945343, 31.252993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477768, 36.955273, 31.495876>,  <34.070751, 36.584038, 30.992109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477768, 36.955273, 31.495876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.198235, 37.235443, 31.553896>,  <34.030514, 37.403545, 31.588709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.198235, 37.235443, 31.553896>,  <34.477768, 36.955273, 31.495876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198235, 37.235443, 31.553896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312465, 0.116518, 0.942756,
		0.643429, 0.704151, -0.300285,
		-0.698831, 0.700425, 0.145051,
		33.988586, 37.445572, 31.597412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745010, 37.578609, 31.567928>,  <34.477768, 36.955273, 31.495876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745010, 37.578609, 31.567928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.401451, 37.512493, 31.761826>,  <34.195316, 37.472824, 31.878164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.401451, 37.512493, 31.761826>,  <34.745010, 37.578609, 31.567928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401451, 37.512493, 31.761826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424718, 0.299046, 0.854510,
		-0.286199, 0.939815, -0.186649,
		-0.858897, -0.165287, 0.484743,
		34.143784, 37.462906, 31.907248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023804, 38.178310, 31.257420>,  <34.745010, 37.578609, 31.567928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023804, 38.178310, 31.257420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.402454, 38.245712, 31.367336>,  <35.629642, 38.286156, 31.433287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.402454, 38.245712, 31.367336>,  <35.023804, 38.178310, 31.257420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402454, 38.245712, 31.367336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234503, 0.224903, -0.945741,
		-0.221168, 0.959700, 0.173383,
		0.946622, 0.168509, 0.274794,
		35.686440, 38.296265, 31.449774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161243, 38.799511, 30.973120>,  <35.023804, 38.178310, 31.257420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161243, 38.799511, 30.973120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.521954, 38.632656, 31.018372>,  <35.738380, 38.532543, 31.045523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.521954, 38.632656, 31.018372>,  <35.161243, 38.799511, 30.973120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521954, 38.632656, 31.018372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197760, 0.165487, -0.966181,
		0.384312, 0.893648, 0.231726,
		0.901773, -0.417141, 0.113129,
		35.792484, 38.507515, 31.052311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672588, 39.315899, 30.740814>,  <35.161243, 38.799511, 30.973120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672588, 39.315899, 30.740814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840599, 38.953270, 30.724302>,  <35.941406, 38.735691, 30.714396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840599, 38.953270, 30.724302>,  <35.672588, 39.315899, 30.740814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840599, 38.953270, 30.724302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357455, 0.207079, -0.910684,
		0.834151, 0.367751, 0.411037,
		0.420022, -0.906575, -0.041281,
		35.966606, 38.681297, 30.711918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307999, 39.445671, 30.423531>,  <35.672588, 39.315899, 30.740814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307999, 39.445671, 30.423531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.304585, 39.046471, 30.398468>,  <36.302536, 38.806950, 30.383430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.304585, 39.046471, 30.398468>,  <36.307999, 39.445671, 30.423531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304585, 39.046471, 30.398468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383542, 0.054600, -0.921908,
		0.923484, -0.031897, 0.382309,
		-0.008532, -0.997999, -0.062656,
		36.302025, 38.747070, 30.379671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015003, 39.191933, 30.191423>,  <36.307999, 39.445671, 30.423531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015003, 39.191933, 30.191423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.763462, 38.891594, 30.110649>,  <36.612537, 38.711391, 30.062185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.763462, 38.891594, 30.110649>,  <37.015003, 39.191933, 30.191423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763462, 38.891594, 30.110649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487287, -0.178202, -0.854866,
		0.605887, -0.635983, 0.477940,
		-0.628850, -0.750846, -0.201936,
		36.574806, 38.666340, 30.050068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412167, 38.625797, 29.992693>,  <37.015003, 39.191933, 30.191423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412167, 38.625797, 29.992693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.046726, 38.551586, 29.847961>,  <36.827461, 38.507061, 29.761124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.046726, 38.551586, 29.847961>,  <37.412167, 38.625797, 29.992693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046726, 38.551586, 29.847961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377452, -0.056002, -0.924334,
		0.151225, -0.981042, 0.121191,
		-0.913598, -0.185526, -0.361827,
		36.772648, 38.495930, 29.739414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563843, 38.110897, 29.675842>,  <37.412167, 38.625797, 29.992693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563843, 38.110897, 29.675842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.213947, 38.195042, 29.501219>,  <37.004009, 38.245529, 29.396444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.213947, 38.195042, 29.501219>,  <37.563843, 38.110897, 29.675842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213947, 38.195042, 29.501219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409137, -0.162192, -0.897942,
		-0.259705, -0.964074, 0.055806,
		-0.874735, 0.210368, -0.436561,
		36.951527, 38.258152, 29.370251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335350, 37.546158, 29.272371>,  <37.563843, 38.110897, 29.675842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335350, 37.546158, 29.272371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142292, 37.862865, 29.122623>,  <37.026459, 38.052891, 29.032774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142292, 37.862865, 29.122623>,  <37.335350, 37.546158, 29.272371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142292, 37.862865, 29.122623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335328, -0.227823, -0.914140,
		-0.809081, -0.566739, -0.155546,
		-0.482642, 0.791772, -0.374371,
		36.997498, 38.100395, 29.010313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013638, 37.223526, 28.601864>,  <37.335350, 37.546158, 29.272371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013638, 37.223526, 28.601864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.045074, 37.622169, 28.592104>,  <37.063938, 37.861355, 28.586248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.045074, 37.622169, 28.592104>,  <37.013638, 37.223526, 28.601864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045074, 37.622169, 28.592104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464581, -0.058271, -0.883612,
		-0.882036, 0.058113, -0.467585,
		0.078596, 0.996608, -0.024399,
		37.068653, 37.921150, 28.584784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767635, 37.498074, 27.927744>,  <37.013638, 37.223526, 28.601864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767635, 37.498074, 27.927744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.989716, 37.801014, 28.065254>,  <37.122963, 37.982777, 28.147760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.989716, 37.801014, 28.065254>,  <36.767635, 37.498074, 27.927744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989716, 37.801014, 28.065254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469557, 0.055745, -0.881141,
		-0.686494, 0.650628, -0.324669,
		0.555196, 0.757348, 0.343775,
		37.156273, 38.028217, 28.168386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659954, 37.993149, 27.431852>,  <36.767635, 37.498074, 27.927744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659954, 37.993149, 27.431852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.007614, 38.051468, 27.620882>,  <37.216209, 38.086460, 27.734299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.007614, 38.051468, 27.620882>,  <36.659954, 37.993149, 27.431852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007614, 38.051468, 27.620882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483316, -0.047867, -0.874137,
		-0.104828, 0.988155, -0.112070,
		0.869147, 0.145799, 0.472573,
		37.268360, 38.095207, 27.762653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111210, 38.518108, 26.970686>,  <36.659954, 37.993149, 27.431852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111210, 38.518108, 26.970686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.364864, 38.325817, 27.212931>,  <37.517059, 38.210442, 27.358278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.364864, 38.325817, 27.212931>,  <37.111210, 38.518108, 26.970686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364864, 38.325817, 27.212931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654637, -0.083019, -0.751371,
		0.411481, 0.872932, 0.262056,
		0.634140, -0.480726, 0.605614,
		37.555107, 38.181599, 27.394615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696064, 38.984932, 27.100706>,  <37.111210, 38.518108, 26.970686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696064, 38.984932, 27.100706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.808285, 38.604088, 27.149338>,  <37.875618, 38.375580, 27.178516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.808285, 38.604088, 27.149338>,  <37.696064, 38.984932, 27.100706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808285, 38.604088, 27.149338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606978, 0.077860, -0.790896,
		0.743553, 0.295679, 0.599752,
		0.280548, -0.952109, 0.121577,
		37.892448, 38.318455, 27.185810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388767, 39.003010, 26.934240>,  <37.696064, 38.984932, 27.100706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388767, 39.003010, 26.934240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.337975, 38.606255, 26.936745>,  <38.307499, 38.368202, 26.938248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.337975, 38.606255, 26.936745>,  <38.388767, 39.003010, 26.934240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337975, 38.606255, 26.936745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725682, -0.097203, -0.681129,
		0.676210, -0.081950, 0.732136,
		-0.126984, -0.991885, 0.006261,
		38.299881, 38.308689, 26.938623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105915, 38.714195, 26.895666>,  <38.388767, 39.003010, 26.934240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105915, 38.714195, 26.895666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.844646, 38.427685, 26.797432>,  <38.687885, 38.255779, 26.738491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.844646, 38.427685, 26.797432>,  <39.105915, 38.714195, 26.895666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844646, 38.427685, 26.797432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647932, -0.360857, -0.670795,
		0.391856, -0.597266, 0.699801,
		-0.653171, -0.716279, -0.245584,
		38.648697, 38.212803, 26.723757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530651, 38.041122, 26.786173>,  <39.105915, 38.714195, 26.895666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530651, 38.041122, 26.786173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.179218, 38.031086, 26.595402>,  <38.968357, 38.025063, 26.480940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.179218, 38.031086, 26.595402>,  <39.530651, 38.041122, 26.786173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179218, 38.031086, 26.595402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462047, -0.297331, -0.835528,
		-0.120839, -0.954445, 0.272825,
		-0.878584, -0.025094, -0.476927,
		38.915642, 38.023560, 26.452324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651688, 37.534401, 26.291004>,  <39.530651, 38.041122, 26.786173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651688, 37.534401, 26.291004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.328468, 37.731220, 26.161423>,  <39.134537, 37.849312, 26.083673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.328468, 37.731220, 26.161423>,  <39.651688, 37.534401, 26.291004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328468, 37.731220, 26.161423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276750, -0.168388, -0.946073,
		-0.520065, -0.854127, -0.000109,
		-0.808048, 0.492050, -0.323952,
		39.086052, 37.878834, 26.064238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302021, 37.078365, 25.890795>,  <39.651688, 37.534401, 26.291004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302021, 37.078365, 25.890795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.147945, 37.431965, 25.784834>,  <39.055500, 37.644123, 25.721258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.147945, 37.431965, 25.784834>,  <39.302021, 37.078365, 25.890795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147945, 37.431965, 25.784834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158162, -0.219564, -0.962692,
		-0.909182, -0.412718, -0.055241,
		-0.385192, 0.883999, -0.264900,
		39.032387, 37.697166, 25.705364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906734, 36.946571, 25.292170>,  <39.302021, 37.078365, 25.890795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906734, 36.946571, 25.292170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.957401, 37.342056, 25.260181>,  <38.987801, 37.579350, 25.240990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.957401, 37.342056, 25.260181>,  <38.906734, 36.946571, 25.292170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957401, 37.342056, 25.260181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017028, -0.078439, -0.996773,
		-0.991799, 0.127617, 0.006901,
		0.126664, 0.988717, -0.079969,
		38.995399, 37.638672, 25.236191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502815, 37.156662, 24.786604>,  <38.906734, 36.946571, 25.292170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502815, 37.156662, 24.786604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.766891, 37.456764, 24.800835>,  <38.925339, 37.636826, 24.809372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.766891, 37.456764, 24.800835>,  <38.502815, 37.156662, 24.786604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766891, 37.456764, 24.800835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045273, 0.007529, -0.998946,
		-0.749733, 0.661104, -0.028996,
		0.660189, 0.750256, 0.035575,
		38.964947, 37.681843, 24.811508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405544, 37.526932, 24.065554>,  <38.502815, 37.156662, 24.786604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405544, 37.526932, 24.065554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.733826, 37.686646, 24.229025>,  <38.930794, 37.782475, 24.327106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.733826, 37.686646, 24.229025>,  <38.405544, 37.526932, 24.065554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733826, 37.686646, 24.229025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366578, 0.180668, -0.912677,
		-0.438254, 0.898849, 0.001906,
		0.820703, 0.399286, 0.408677,
		38.980038, 37.806431, 24.351627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478962, 38.286945, 23.841408>,  <38.405544, 37.526932, 24.065554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478962, 38.286945, 23.841408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.842812, 38.163589, 23.952751>,  <39.061123, 38.089577, 24.019556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.842812, 38.163589, 23.952751>,  <38.478962, 38.286945, 23.841408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842812, 38.163589, 23.952751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378459, 0.338806, -0.861382,
		0.171331, 0.888880, 0.424898,
		0.909624, -0.308388, 0.278356,
		39.115700, 38.071072, 24.036259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895889, 38.850044, 23.840195>,  <38.478962, 38.286945, 23.841408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895889, 38.850044, 23.840195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.151455, 38.542473, 23.830898>,  <39.304794, 38.357929, 23.825321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.151455, 38.542473, 23.830898>,  <38.895889, 38.850044, 23.840195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151455, 38.542473, 23.830898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437512, 0.388053, -0.811171,
		0.632748, 0.508103, 0.584347,
		0.638916, -0.768926, -0.023239,
		39.343128, 38.311794, 23.823927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621708, 39.113197, 23.688089>,  <38.895889, 38.850044, 23.840195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621708, 39.113197, 23.688089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.606922, 38.730541, 23.572527>,  <39.598049, 38.500946, 23.503189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.606922, 38.730541, 23.572527>,  <39.621708, 39.113197, 23.688089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606922, 38.730541, 23.572527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558575, 0.219942, -0.799762,
		0.828630, -0.190940, 0.526227,
		-0.036967, -0.956644, -0.288905,
		39.595833, 38.443546, 23.485855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303402, 38.882435, 23.553671>,  <39.621708, 39.113197, 23.688089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303402, 38.882435, 23.553671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.059990, 38.648178, 23.339487>,  <39.913940, 38.507626, 23.210978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.059990, 38.648178, 23.339487>,  <40.303402, 38.882435, 23.553671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059990, 38.648178, 23.339487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555497, 0.167477, -0.814478,
		0.566666, -0.793082, 0.223405,
		-0.608532, -0.585638, -0.535459,
		39.877430, 38.472488, 23.178850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735104, 38.405830, 23.144594>,  <40.303402, 38.882435, 23.553671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735104, 38.405830, 23.144594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.394653, 38.397381, 22.934780>,  <40.190384, 38.392311, 22.808891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.394653, 38.397381, 22.934780>,  <40.735104, 38.405830, 23.144594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394653, 38.397381, 22.934780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501040, 0.265498, -0.823693,
		0.156661, -0.963880, -0.215389,
		-0.851126, -0.021123, -0.524536,
		40.139317, 38.391045, 22.777420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338284, 38.091667, 23.295662>,  <40.735104, 38.405830, 23.144594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338284, 38.091667, 23.295662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.701736, 38.256714, 23.321392>,  <41.919807, 38.355740, 23.336830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.701736, 38.256714, 23.321392>,  <41.338284, 38.091667, 23.295662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701736, 38.256714, 23.321392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235876, 0.379999, 0.894406,
		0.344595, -0.827862, 0.442605,
		0.908635, 0.412608, 0.064327,
		41.974327, 38.380497, 23.340689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549252, 37.951298, 23.857981>,  <41.338284, 38.091667, 23.295662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549252, 37.951298, 23.857981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.790581, 38.263817, 23.794008>,  <41.935379, 38.451328, 23.755625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.790581, 38.263817, 23.794008>,  <41.549252, 37.951298, 23.857981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790581, 38.263817, 23.794008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193281, 0.337812, 0.921154,
		0.773720, -0.524843, 0.354820,
		0.603323, 0.781296, -0.159930,
		41.971577, 38.498207, 23.746029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112419, 37.938316, 24.358608>,  <41.549252, 37.951298, 23.857981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112419, 37.938316, 24.358608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.072929, 38.317001, 24.235983>,  <42.049236, 38.544212, 24.162407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.072929, 38.317001, 24.235983>,  <42.112419, 37.938316, 24.358608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072929, 38.317001, 24.235983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031936, 0.304896, 0.951850,
		0.994602, 0.103765, 0.000132,
		-0.098728, 0.946716, -0.306564,
		42.043312, 38.601017, 24.144014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558292, 38.310184, 24.795460>,  <42.112419, 37.938316, 24.358608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558292, 38.310184, 24.795460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.294041, 38.585743, 24.676132>,  <42.135490, 38.751076, 24.604536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.294041, 38.585743, 24.676132>,  <42.558292, 38.310184, 24.795460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294041, 38.585743, 24.676132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033473, 0.424015, 0.905036,
		0.749965, 0.587908, -0.303176,
		-0.660630, 0.688894, -0.298318,
		42.095852, 38.792412, 24.586637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750767, 39.003025, 25.129484>,  <42.558292, 38.310184, 24.795460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750767, 39.003025, 25.129484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.374256, 39.057560, 25.005926>,  <42.148350, 39.090279, 24.931791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.374256, 39.057560, 25.005926>,  <42.750767, 39.003025, 25.129484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374256, 39.057560, 25.005926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210236, 0.479223, 0.852142,
		0.264207, 0.867040, -0.422418,
		-0.941273, 0.136335, -0.308897,
		42.091873, 39.098461, 24.913258>
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
